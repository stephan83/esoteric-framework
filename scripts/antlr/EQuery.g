grammar EQuery;

options {
	//language=Java;
	language=ActionScript;
	output=AST;
	ASTLabelType=CommonTree;
	backtrack=true;
	memoize=true;
}

tokens {
	Query;
	AllSelector;
	KindSelector;
	IdSelector;
	ChildSelector;
	ClassSelector;
	FirstSelector;
	LastSelector;
	AttrSelector;
}

@parser::package {com.esoteric.equery}
@lexer::package {com.esoteric.equery}

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
	:	query EOF!
	|	EOF
	;
	
query
	:	selector*			-> ^(Query selector*)
	;
	
selector
	:	allSelector
	|	kindSelector
	|	idSelector
	|	childSelector
	|	classSelector
	|	firstSelector
	|	lastSelector
	|	attrSelector
	;
	
allSelector
	:	'*'				-> ^(AllSelector)
	;
	
idSelector
	:	'#' Identifier			-> ^(IdSelector Identifier)
	;
	
kindSelector
	:	Identifier			-> ^(KindSelector Identifier)
	;
	
childSelector
	:	'>'				-> ^(ChildSelector)
	;
	
	
classSelector
	:	'.' Identifier			-> ^(ClassSelector Identifier)
	;
	
firstSelector
	:	':first-child'			-> ^(FirstSelector)
	;
	
lastSelector
	:	':last-child'			-> ^(LastSelector)
	;
	
attrSelector
	:	'[' Identifier op exp ']'	-> ^(AttrSelector Identifier op exp)
	;
	
op
	:	'=' | '!=' | '<' | '<=' | '>' | '>='
	;
	
exp
	:	NumberLiteral
	|	StringLiteral
	|	Identifier
	;

//-----------------------------------------------------------------------------
// LEXER RULES
//-----------------------------------------------------------------------------

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
	:	( Letter | '_' ) (Letter | Digit | '_' )*
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