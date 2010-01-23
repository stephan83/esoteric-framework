/*
	~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	~                           Esoteric Framework                            ~
	~                       framework.esotericorp.com                         ~
	~                                                                         ~
	~                  Crafted with care by Stephan Florquin                  ~
	~                       stephan.florquin@gmail.com                        ~
	~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	
	-----                                                                 -----

	Copyright (c) 2009 Stephan Florquin

	Permission is hereby granted, free of charge, to any person	obtaining a
	copy of this software and associated documentationfiles (the "Software"),
	to deal in the Software without	restriction, including without limitation
	the rights to use, copy, modify, merge, publish, distribute, sublicense,
	and / or sell	copies of the Software, and to permit persons to whom the
	Software is furnished to do so, subject to the following conditions:

	The above copyright notice and this permission notice shall be included in
	all copies or substantial portions of the Software.

	THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,	EXPRESS OR
	IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
	FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
	AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
	LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
	FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
	DEALINGS IN THE SOFTWARE.
	
	-----                                                                 -----
*/

package com.esoteric.expressions 
{
	import com.esoteric.utils.ICloneable;
	import org.antlr.runtime.tree.Tree;
	
	/**
	* Expression code generator.
	* 
	* @author Stephan Florquin
	*/
	public class ExpressionCodegen implements ICloneable
	{
		//---------------------------------------------------------------------
		// MEMBERS
		//---------------------------------------------------------------------
		
		private var _instructions:Vector.<Array> = new Vector.<Array>();
		private var _currStateStack:Array = new Array();
		private var _offsets:Array = new Array();
		private var _debug:Boolean = false;
		
		private var _stateStacks:Object = {
			"if":	new Array(),
			"else":	new Array(),
			"while": new Array(),
			"func": new Array()
		};
		
		//---------------------------------------------------------------------
		// ICLONEABLE
		//---------------------------------------------------------------------
		
		public function clone():ICloneable
		{
			var clone:ExpressionCodegen = new ExpressionCodegen();
			var length:int = _instructions.length;
			
			clone._instructions = new Vector.<Array>(length);
			
			for (var i:int = 0; i < length; i++)
			{
				clone._instructions[i] = _instructions[i].slice();
			}
			
			return clone;
		}
		
		//---------------------------------------------------------------------
		// PUBLIC FUNCTIONS
		//---------------------------------------------------------------------
		
		public function save(op:String):void
		{
			addInstruction([ExpressionVm.instructionTypes.save, op]);
		}
		
		public function local(name:String, hasValue:Boolean):void
		{
			addInstruction([ExpressionVm.instructionTypes.local, name, hasValue]);
		}
		
		public function pushc():void
		{
			addInstruction([ExpressionVm.instructionTypes.pushc]);
		}
		
		public function push(v:*):void
		{
			addInstruction([ExpressionVm.instructionTypes.push, v]);
		}
		
		public function binop(op:String):void
		{
			addInstruction([ExpressionVm.instructionTypes.binop, op]);
		}
		
		public function unaryop(op:String):void
		{
			if (op == '!' && _instructions[_instructions.length - 1][0] == ExpressionVm.instructionTypes.unaryop && _instructions[_instructions.length - 1][1] == '!')
			{
				removeInstruction();
			}
			else
			{
				addInstruction([ExpressionVm.instructionTypes.unaryop, op]); 
			}
		}
		
		public function call(i:int):void
		{
			addInstruction([ExpressionVm.instructionTypes.call, i]);
		}
		
		public function load():void
		{
			addInstruction([ExpressionVm.instructionTypes.load]);
		}
		
		public function beginif():void
		{
			pushStateStack("if");
			pushState("if");
		}
		
		public function beginelse():void
		{
			popState();
			pushStateStack("else");
			pushState("else");
		}
		
		public function endif(hasElse:Boolean = true, andor:Boolean = false):void
		{
			popState();
			
			var ifInstructions:Vector.<Array> = popStateStack("if");
			
			if (hasElse)
			{
				var elseInstructions:Vector.<Array> = popStateStack("else");
				
				addInstruction([ExpressionVm.instructionTypes.push, elseInstructions.length + 2]);
				addInstruction([ExpressionVm.instructionTypes.jumpc, andor]);
				addInstructions(elseInstructions);
				addInstruction([ExpressionVm.instructionTypes.push, ifInstructions.length]);
				addInstruction([ExpressionVm.instructionTypes.jump]);
				addInstructions(ifInstructions);
			}
			else
			{
				unaryop('!');
				addInstruction([ExpressionVm.instructionTypes.push, ifInstructions.length]);
				addInstruction([ExpressionVm.instructionTypes.jumpc, andor]);
				addInstructions(ifInstructions);
			}
		}
		
		public function prewhile():void
		{
			pushOffset();
		}
		
		public function beginwhile():void
		{
			pushStateStack("while");
			pushState("while");
		}
		
		public function endwhile():void
		{
			popState();
			
			var whileInstructions:Vector.<Array> = popStateStack("while");
			var offset:int = popOffset();
			
			addInstruction([ExpressionVm.instructionTypes.unaryop, "!"]);
			addInstruction([ExpressionVm.instructionTypes.push, whileInstructions.length + 2]);
			addInstruction([ExpressionVm.instructionTypes.jumpc]);
			addInstructions(whileInstructions);
			addInstruction([ExpressionVm.instructionTypes.push, offset - getOffset() - 2]);
			addInstruction([ExpressionVm.instructionTypes.jump]);
		}
		
		public function array(i:int):void		
		{
			addInstruction([ExpressionVm.instructionTypes.array, i]);
		}
		
		public function object(i:int):void		
		{
			addInstruction([ExpressionVm.instructionTypes.object, i]);
		}
		
		public function beginfunc():void
		{
			pushStateStack("func");
			pushState("func");
		}
		
		public function endfunc():void
		{
			popState();
			var instructions:Vector.<Array> = popStateStack("func");
			
			addInstruction([ExpressionVm.instructionTypes.func, instructions]);
		}
		
		public function arg(identifier:String):void
		{
			if (identifier)
			{
				addInstruction([ExpressionVm.instructionTypes.arg, identifier]);
			}
		}
		
		public function ret(hasValue:Boolean):void
		{
			addInstruction([ExpressionVm.instructionTypes.ret, hasValue]);
		}
		
		//---------------------------------------------------------------------
		// GETTERS & SETTERS
		//---------------------------------------------------------------------
		
		/**
		 * Returns the instructions.
		 * 
		 * @return	the instructions
		 */
		public function get instructions():Vector.<Array> { return _instructions; }
		
		//---------------------------------------------------------------------
		// PRIVATE FUNCTIONS
		//---------------------------------------------------------------------
		
		private function addInstruction(instruction:Array):void
		{
			if (_currStateStack.length)
			{
				_stateStacks[currState][_stateStacks[currState].length - 1].push(instruction);
			}
			else
			{
				_instructions.push(instruction);
				
				if (_debug)
				{
					if (instruction.length > 1)
						trace(ExpressionVm.instructionTypes[instruction[0]] + "\t" + instruction[1]);
					else
						trace(ExpressionVm.instructionTypes[instruction[0]]);
				}
			}
		}
		private function removeInstruction():void
		{
			if (_currStateStack.length)
			{
				_stateStacks[currState][_stateStacks[currState].length - 1].length--;
			}
			else
			{
				var instruction:Array = _instructions.pop();
				
				if (_debug)
				{
					if (instruction.length > 1)
						trace('-', ExpressionVm.instructionTypes[instruction[0]] + "\t" + instruction[1]);
					else
						trace('-', ExpressionVm.instructionTypes[instruction[0]]);
				}
			}
		}
		
		private function addInstructions(instructionList:Vector.<Array>):void
		{
			if (_currStateStack.length)
			{
				var stateStack:Array = _stateStacks[currState];
				
				stateStack[stateStack.length - 1] = stateStack[stateStack.length - 1].concat(instructionList);
			}
			else
			{
				_instructions = _instructions.concat(instructionList);
				
				if (_debug)
				{
					for each(var instruction:Array in instructionList)
					{
						if (instruction.length > 1)
							trace(ExpressionVm.instructionTypes[instruction[0]] + "\t" + instruction[1]);
						else
							trace(ExpressionVm.instructionTypes[instruction[0]]);
					}
				}
			}
		}
		
		private function pushState(state:String):void
		{
			_currStateStack.push(state);
		}
		
		private function popState():void
		{
			_currStateStack.pop();
		}
		
		private function pushStateStack(state:String):void
		{
			_stateStacks[state].push(new Vector.<Array>());
		}
		
		private function popStateStack(state:String):Vector.<Array>
		{
			return _stateStacks[state].pop();
		}
		
		private function get currState():String
		{
			return _currStateStack[_currStateStack.length - 1];
		}
		
		private function getOffset():int
		{
			if (_currStateStack.length)
			{
				var stateStack:Array = _stateStacks[currState];
				
				return stateStack[stateStack.length - 1].length - 1;
			}
			else
			{
				return _instructions.length - 1;
			}
		}
		
		private function pushOffset():void
		{
			_offsets.push(getOffset());
		}
		
		private function popOffset():int
		{
			return _offsets.pop();
		}
		
	}
	
}