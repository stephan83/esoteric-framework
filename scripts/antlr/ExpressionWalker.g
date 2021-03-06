tree grammar ExpressionWalker;

options {
	language=ActionScript;
	tokenVocab=Expression;
	backtrack=true;
	memoize=true;
}

@treeparser::package {com.esoteric.expressions}

@treeparser::members {
	private var _codegen:ExpressionCodegen = new ExpressionCodegen();
	
	public function get instructions():Vector.<Array> { return _codegen.instructions; }
			
	private function cleanUpString(s:String):String
	{
		if (s.charAt(0) == '"')
		{
			var result:String = s.substr(1, s.length - 2).replace(/\\\"/g, '"');
		}
		else
		{
			result = s.substr(1, s.length - 2).replace(/\\\'/g, "'");
		}
		
		result = result.replace(/\\\\/g, '\\');
		result = result.replace(/\\b/g, '\b');
		result = result.replace(/\\t/g, '\t');
		result = result.replace(/\\n/g, '\n');
		result = result.replace(/\\r/g, '\r');
		
		return result;
	}
}

//-----------------------------------------------------------------------------
// TREE RULES
//-----------------------------------------------------------------------------

main	:	stmtList
	;
	
stmtList:	^(StmtList stmt*)
	|	EOF
	;
	
stmt	:	instrList
	|	ifStmt
	|	whileStmt
	;
	
instrList
	:	^(InstrList instr*)
	;
	
ifStmt	:	^(
			IfStmt
			exp						{ _codegen.beginif() }
			stmtList					{ _codegen.beginelse() }
			stmtList					{ _codegen.endif() }
		)
		
	|	^(
			IfStmt
			exp						{ _codegen.beginif() }
			stmtList					{ _codegen.beginelse() }
			ifStmt						{ _codegen.endif() }
		)
		
	|	^(
			IfStmt
			exp						{ _codegen.beginif() }
			stmtList					{ _codegen.endif(false) }
		)
	;
	
whileStmt
	:	^(
			WhileStmt					{ _codegen.prewhile() }
			exp						{ _codegen.beginwhile() }
			stmtList					{ _codegen.endwhile() }
		)
	;
	
instr	:	exp
	|	ret
	;

exp	:	set
	|	local
	|	value
	;
	
set	:	^(
			o=('=' | '*=' | '/=' | '%=' | '+=' | '-=' | '<<=' | '>>=' | '>>>=' | '&=' | '^=' | '|=')
			exp (seti | sete | setr)
		)							{ _codegen.save($o.text); }
	;

local	:	^(
			Local
			(
				exp i=Identifier			{ _codegen.local($i.text, true) }
			|	i=Identifier				{ _codegen.local($i.text, false) }
			)
		)
	;

seti	:	i=Identifier						{ _codegen.pushc();  }
									{ _codegen.push($i.text); }
	;
	
sete	:	^(PropExp exp exp)					{  }
	;

setr	:	^(PropRef exp i=Identifier)				{ _codegen.push($i.text);  }
	;
	
value	:	^(
			o=('|' | '^' | '&' | '==' | '!=' | '===' | '!==' | '<' | 'lt' | '>' | 'gt' | '<=' | 'lte' | '>=' | 'gte' | '<<' | '>>' | '>>>' | '+' | '-' | '*' | '/' | '%')
			exp exp						{ _codegen.binop($o.text) }
		)	
				
	|	^(
			o=('||' | 'or')
			exp						{ _codegen.unaryop('!'); _codegen.beginif(); }
			exp						{ _codegen.endif(false, true) }
		)
				
	|	^(
			o=('&&' | 'and')
			exp						{  _codegen.beginif(); }
			exp						{ _codegen.endif(false, true) }
		)
	
	|
		^(
			PreInc i=Identifier				{ _codegen.pushc(); _codegen.push($i.text); _codegen.preinc() }
		)
	
	|
		^(
			PreInc ^(PropRef exp i=Identifier)		{ _codegen.push($i.text); _codegen.preinc() }
		)
	
	|
		^(
			PreDec i=Identifier				{ _codegen.pushc(); _codegen.push($i.text); _codegen.predec() }
		)
	
	|
		^(
			PreDec ^(PropRef exp i=Identifier)		{ _codegen.push($i.text); _codegen.predec() }
		)
	
	|
		^(
			PostInc i=Identifier				{ _codegen.pushc(); _codegen.push($i.text); _codegen.postinc() }
		)
	
	|
		^(
			PostInc ^(PropRef exp i=Identifier)		{ _codegen.push($i.text); _codegen.postinc() }
		)
	
	|
		^(
			PostDec i=Identifier				{ _codegen.pushc(); _codegen.push($i.text); _codegen.postdec() }
		)
	
	|
		^(
			PostDec ^(PropRef exp i=Identifier)		{ _codegen.push($i.text); _codegen.postdec() }
		)
		
	|	^(
			CondExp						
			exp						{ _codegen.beginif() }
			exp						{ _codegen.beginelse() }
			exp						{ _codegen.endif() }
		)
		
	|	^(
			o=('-' | '+' | '~' | '!')
			exp
		)							{ _codegen.unaryop($o.text) }
		
	|	^(f=FuncCall exp+)					{ _codegen.call($f.childCount - 1); }
	
	|	^(PropRef exp i=Identifier)				{ _codegen.push($i.text); }
									{ _codegen.load(); }
	
	|	^(PropExp exp exp)					{ _codegen.load(); }
	
	|	NumberLiteral						{ _codegen.push(Number($text)); }
	
	|	StringLiteral						{ _codegen.push(cleanUpString($text)); }
	
	|	'true'							{ _codegen.push(true); }
	|	'false'							{ _codegen.push(false); }
	|	'null'							{ _codegen.push(null); }
	
	|	'this'							{ _codegen.pusht(); }
	
	|	i=Identifier						{ _codegen.pushc(); }
									{ _codegen.push($i.text); }
									{ _codegen.load(); }
									
	|	^(a=CreateArray exp*)					{ _codegen.array($a.childCount); }
	|	^(
			o=CreateObject
			(
				i=Identifier exp			{ _codegen.push($i.text) }
			|	s=StringLiteral exp			{ _codegen.push(cleanUpString($s.text)) }
			)*						{ _codegen.object($o.childCount) }
		)
	|	funcDef
	;
	
funcDef	:	^(
			FuncDef						{ _codegen.beginfunc() }
			arg*
			stmtList					{ _codegen.endfunc() }
		)
	;
	
arg	:	i=Identifier						{ _codegen.arg($i.text) }
	;

ret
	:
		^(Return exp)						{ _codegen.ret(true) }
	|	Return							{ _codegen.ret(false) }
	;
