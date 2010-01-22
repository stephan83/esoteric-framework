grammar Expression;

options {
	//language=Java;
	language=ActionScript;
	output=AST;
	ASTLabelType=CommonTree;
	backtrack=true;
	memoize=true;
}

tokens {
	StmtList;
	InstrList;
	FuncCall;
	PropRef;
	PropExp;
	CondExp;
	CreateArray;
	CreateObject;
	IfStmt;
	WhileStmt;
	ForStmt;
	FuncDef;
	Return;
	Local;
}

@parser::package {com.esoteric.expressions}
@lexer::package {com.esoteric.expressions}

@members {
	private var _errorReporter:IErrorReporter;
	
	public function set errorReporter(reporter:IErrorReporter):void { _errorReporter = reporter; }
	
	override public function displayRecognitionError(tokenNames:Array, e:RecognitionException):void
	{
		var header:String = getErrorHeader(e);
		var msg:String = getErrorMessage(e, tokenNames);
		
		_errorReporter.report(header, msg, e.line);
	}
}

//-----------------------------------------------------------------------------
// PARSER RULES
//-----------------------------------------------------------------------------

main
	:	stmtList^ EOF!
	|	EOF
	;
	
stmtList
	:	stmt*					-> ^(StmtList stmt*)
	;
	
stmt		
	:	ifStmt^
	|	whileStmt^
	|	instrList^
	;
	
ifStmt
	:	'if' '(' exp ')' l=block 'else' r=block	-> ^(IfStmt exp $l $r)
	|	'if' '(' exp ')' block 'else' ifStmt	-> ^(IfStmt exp block ifStmt)
	|	'if' '(' exp ')' block			-> ^(IfStmt exp block)
	;
	
whileStmt
	:	'while' '(' exp ')' block		-> ^(WhileStmt exp block)
	;
	
block
	:	'{' stmtList '}'			-> ^(stmtList)
	;

instrList
	:	instr
		(
			';' instr
		|	';'
		)*					-> ^(InstrList instr+)
	;
	
instr
	:	exp
	|	ret
	;
		
exp
	:	assignExp^
	|	local^
	|	condExp^
	;
	
assignExp
	:	reference
		(
			'=' exp				-> ^('=' exp reference)
		|	'*=' exp			-> ^('*=' exp reference)
		|	'/=' exp			-> ^('/=' exp reference)
		|	'%=' exp			-> ^('%=' exp reference)
		|	'+=' exp			-> ^('+=' exp reference)
		|	'-=' exp			-> ^('-=' exp reference)
		|	'<<=' exp			-> ^('<<=' exp reference)
		|	'>>=' exp			-> ^('>>=' exp reference)
		|	'>>>=' exp			-> ^('>>>=' exp reference)
		|	'&=' exp			-> ^('&=' exp reference)
		|	'^=' exp			-> ^('^=' exp reference)
		|	'|=' exp			-> ^('|=' exp reference)
		)
	;
		
local	:	'var' i=Identifier			-> ^(Local $i)
	|	'var' i=Identifier '=' exp		-> ^(Local exp $i)
	;
	
condExp
	:	(l=logicalOr				-> $l)
		(
			'?'
			e1=exp
			':'
			e2=exp				-> ^(CondExp $condExp $e1 $e2)
		)*
	;

logicalOr
	:	logicalAnd
		(
			'||'^ logicalAnd
		|	'or'^ logicalAnd
		)*
	;
	
logicalAnd
	:	bitwiseOr
		(
			'&&'^ bitwiseOr
		|	'and'^ bitwiseOr
		)*
	;

bitwiseOr
	:	bitwiseXor
		(
			'|'^ bitwiseXor
		)*
	;

bitwiseXor
	:	bitwiseAnd
		(
			'^'^ bitwiseAnd
		)?
	;

bitwiseAnd
	:	equalExp
		(
			'&'^ equalExp
		)*
	;

equalExp
	:	relExp
		(
			'=='^ relExp
		|	'!='^ relExp
		|	'==='^ relExp
		|	'!=='^ relExp
		)*
	;
	
relExp
	:	shiftExp
		(
			'<'^ shiftExp
		|	'lt'^ shiftExp
		|	'>'^ shiftExp
		|	'gt'^ shiftExp
		|	'<='^ shiftExp
		|	'lte'^ shiftExp
		|	'>='^ shiftExp
		|	'gte'^ shiftExp
		)*
	;

shiftExp
	:	addExp
		(
			'<<'^ addExp
		|	'>>'^ addExp
		|	'>>>'^ addExp
		)*
	;

addExp
	:	multExp
		(
			'+'^ multExp
		|	'-'^ multExp
		)*
 	;

multExp
	: 	unaryExp
		(
			'*'^ unaryExp
		|	'/'^ unaryExp
		|	'%'^ unaryExp
		)*
 	;
 	
unaryExp
	:	'+'^ atom
	|	'-'^ atom
	|	'~'^ atom
	|	'!'^ atom
	| 	atom
	;
	
atom
	:	NumberLiteral
	|	StringLiteral
	|	'true'
	|	'false'
	|	'null'
	|	referenceOrFuncCall
	|	funcDef
	|	'('! exp ')'!
	;

reference
	:	(l=object		 		-> $l)
		(
			'[' e=exp ']'			-> ^(PropExp $reference $e)
			
		|	'.' i=Identifier		-> ^(PropRef $reference $i)
		
		|	'(' p=params? ')'
			'[' e=exp ']'			-> ^(PropExp ^(FuncCall $reference $p) $e)
			
		|	'(' p=params? ')'
			'.' i=Identifier		-> ^(PropRef ^(FuncCall $reference $p) $i)
		)*
	;
	
referenceOrFuncCall
	:	(l=object	 			-> $l)
		(
			'[' e=exp ']'			-> ^(PropExp $referenceOrFuncCall $e)
		|	'.' i=Identifier		-> ^(PropRef $referenceOrFuncCall $i)
		|	'(' p=params ')'		-> ^(FuncCall $referenceOrFuncCall $p)
		|	'(' ')'				-> ^(FuncCall $referenceOrFuncCall)
		)*
	;
	
funcDef
	:	'function'
		(
			'(' a=args ')'	b=block		-> ^(FuncDef $a $b)	
		|	'(' ')'	b=block			-> ^(FuncDef $b)
		)
	;
	
args
	:	Identifier
		(
			','!
			Identifier
		)*
	;
	
object
	:	Identifier
	|	array
	|	createObj
	;
	
params
	:	exp
		(
			','!
			exp
		)*
	;
	
array
	:	'[' i=items ']'			-> ^(CreateArray $i)
	|	'[' ']'					-> ^(CreateArray)
	;
	
items
	:	exp
		(
			','!
			exp
		)*
	;
	
createObj
	:	'{' o=objItems '}'			-> ^(CreateObject $o)
	|	'{' '}'					-> ^(CreateObject $o)
	;
	
objItems
	:	(Identifier | StringLiteral) ':'! exp
		(
			','!
			(Identifier | StringLiteral) ':'! exp
		)*
	;

ret
	:
		'return' e=exp			-> ^(Return $e)
	|	'return'			-> ^(Return)
	;

//-----------------------------------------------------------------------------
// LEXER RULES
//-----------------------------------------------------------------------------

LineComment
	:	'//' ~( '\n'|'\r' )* '\r'? '\n'
		{
			$channel = HIDDEN;
		}
	;

MultilineComment
	:	'/*' (options {greedy=false;} : .)* '*/'
		{
			$channel = HIDDEN;
		}
	;

NumberLiteral
 	:	'-'? '.'? Digit+ Exponent?
	|	'-'? Digit+ '.' Digit + Exponent?
	|	'0' ( 'x' | 'X' ) HexDigit+
	;
	
Exponent
	:	( 'e'|'E' ) ( '-' | '+' )? Digit+
	;

	
StringLiteral
	:	'"' ( EscapeSequence | ~('\u0000'..'\u001f' | '\\' | '\"' ) )* '"'
	|	'\'' ( EscapeSequence | ~('\u0000'..'\u001f' | '\\' | '\'' ) )* '\''
	;

WhiteSpace
	:	( '\t' | ' ' | '\r' | '\n'| '\u000C' )+
		{
			$channel = HIDDEN;
		}
	;
	
Identifier
	:	( Letter | '_' ) ( Letter | Digit | '_' )*
	;
	
fragment Digit
	:	'0'..'9'
	;

fragment HexDigit
	:	Digit
	|	'a'..'f'
	|	'A'..'F'
	;
	
fragment Letter
	:	'a'..'z'
	|	'A'..'Z'
	;
	
fragment EscapeSequence
	:	'\\' (UnicodeEscapeChar |'b'|'t'|'n'|'f'|'r'|'\"'|'\''|'\\')
	;
    	
fragment UnicodeEscapeChar
	:	'u' HexDigit HexDigit HexDigit HexDigit
	;