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
	ExpList;
	FuncCall;
	PropRef;
	PropExp;
	CondExp;
	CreateArray;
	IfStmt;
	WhileStmt;
	ForStmt;
}

@parser::package {com.esoteric.expressions}
@lexer::package {com.esoteric.expressions}

//-----------------------------------------------------------------------------
// PARSER RULES
//-----------------------------------------------------------------------------

main
	:	stmtList^ EOF!
	|	EOF
	;
	
stmtList
	:	stmt
		(
			stmt
		)*					-> ^(StmtList stmt+)
	;
	
stmt		
	:	ifStmt^
	|	whileStmt^
	|	expList^
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

expList
	:	exp
		(
			';' exp
		|	';'
		)*					-> ^(ExpList exp+)
	;
	
exp
	:	assignExp^
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
		)*
	;
	
logicalAnd
	:	bitwiseOr
		(
			'&&'^ bitwiseOr
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
		|	'>'^ shiftExp
		|	'<='^ shiftExp
		|	'>='^ shiftExp
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
	|	referenceOrFuncCall
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
	
object
	:	Identifier
	|	array
	;
	
params
	:	exp
		(
			','!
			exp
		)*
	;
	
array
	:	'[' i=items? ']'			-> ^(CreateArray $i)
	;
	
items
	:	exp
		(
			','!
			exp
		)*
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
