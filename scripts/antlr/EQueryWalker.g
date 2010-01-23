tree grammar EQueryWalker;

options {
	language=ActionScript;
	tokenVocab=Equery;
	backtrack=true;
	memoize=true;
}

@treeparser::package {com.esoteric.equery}

@treeparser::members {
	private var _elementSet:ElementSet;
	
	public function get elementSet():ElementSet { return _elementSet; }
	
	public function set elementSet(value:ElementSet):void { _elementSet = value; }
			
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
	
main	:	^(Query selector*)
	|	EOF
	;
	
selector
	:	allSelector
	|	idSelector
	|	childSelector
	|	classSelector
	|	firstSelector
	|	lastSelector
	|	attrSelector
	;
	
allSelector
	:	^(
			AllSelector					{ _elementSet.selectAll() }
		)
	;
	
idSelector
	:	^(
			IdSelector i=Identifier				{ _elementSet.selectId($i.text) }
		)
	;
		
childSelector
	:	^(
			ChildSelector					{ _elementSet.selectChild() }
		)
	;
		
classSelector
	:	^(
			ClassSelector i=Identifier			{ _elementSet.selectClass($i.text) }
		)
	;
		
firstSelector
	:	^(
			FirstSelector					{ _elementSet.selectFirst() }
		)
	;
		
lastSelector
	:	^(
			LastSelector					{ _elementSet.selectLast() }
		)
	;
		
attrSelector
	:	^(
			AttrSelector i=Identifier
			o=('=' | '!=' | '<' | '<=' | '>' | '>=')
			(
				n=NumberLiteral				{ _elementSet.selectAttrNum($i.text, $o.text, Number($n.text)) }
			|	s=StringLiteral				{ _elementSet.selectAttrStr($i.text, $o.text, cleanUpString($s.text)) }
			|	v=Identifier				{ _elementSet.selectAttrStr($i.text, $o.text, $v.text) }
			)
		)
	;

