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
	import com.esoteric.events.ExpressionEvent;
	import com.esoteric.events.VerboseEventDispatcher;
	import com.esoteric.utils.BindableArray;
	import com.esoteric.utils.BindableObject;
	import com.esoteric.utils.IBindable;
	import com.esoteric.utils.ICloneable;
	
	/**
	* Expression virtual machine.
	* 
	* @author Stephan Florquin
	*/
	public class ExpressionVm extends VerboseEventDispatcher implements ICloneable
	{
		//---------------------------------------------------------------------
		// CONSTANTS
		//---------------------------------------------------------------------
		
		/**
		 * Instructions.
		 */
		public static var instructionTypes:Object = {
			save:		"save",
			local:		"local",
			pushc:		"pushc",
			pusht:		"pusht",
			push:		"push",
			binop:		"binop",
			unaryop:	"unaryop",
			call:		"call",
			load:		"load",
			jump:		"jump",
			jumpc:		"jumpc",
			array:		"array",
			object:		"object",
			func:		"func",
			arg:		"arg",
			ret:		"ret",
			preinc:		"preinc",
			predec:		"predec",
			postinc:	"postinc",
			postdec:	"postdec"
		}
		
		//---------------------------------------------------------------------
		// MEMBERS
		//---------------------------------------------------------------------
		
		private var _debug:Boolean = false;
		private var _bindablePropertiesEnabled:Boolean;
		private var _instructionCounter:int;
		
		//---------------------------------------------------------------------
		// CONSTRUCTOR
		//---------------------------------------------------------------------
		
		/**
		 * Class constructor.
		 * 
		 * @param	bindablePropertiesEnabled	whether to dispatch an event when a bindable property is detected
		 */
		public function ExpressionVm(bindablePropertiesEnabled:Boolean = true)
		{
			_bindablePropertiesEnabled = bindablePropertiesEnabled;
		}
		
		//---------------------------------------------------------------------
		// ICLONEABLE
		//---------------------------------------------------------------------
		
		public function clone():ICloneable
		{
			return new ExpressionVm(bindablePropertiesEnabled);
		}
		
		//---------------------------------------------------------------------
		// PUBLIC FUNCTIONS
		//---------------------------------------------------------------------
		
		public function eval(instructions:Vector.<Array>, closure:Closure, thisArg:*, bind:Boolean = true, stack:Array = null, top:int = -1):*
		{
			stack = stack || new Array(32);
			var length:int = instructions.length;
			
			for (var i:int = 0; i < length; i++) 
			{
				var instruction:Array = instructions[i];
				
				_instructionCounter++;
				
				switch(instruction[0])
				{
					case instructionTypes.save:
					{
						switch(instruction[1])
						{
							case "=":
							{
								var r:* = stack[top - 1][stack[top]] = stack[top - 2];
								stack[top - 2] = r;
								break;
							}
							
							case "*=":
							{
								r = stack[top - 1][stack[top]] *= stack[top - 2];
								stack[top - 2] = r;
								break;
							}
							
							case "/=":
							{
								r = stack[top - 1][stack[top]] /= stack[top - 2];
								stack[top - 2] = r;
								break;
							}
							
							case "%=":
							{
								r = stack[top - 1][stack[top]] %= stack[top - 2];
								stack[top - 2] = r;
								break;
							}
							
							case "+=":
							{
								r = stack[top - 1][stack[top]] += stack[top - 2];
								stack[top - 2] = r;
								break;
							}
							
							case "-=":
							{
								r = stack[top - 1][stack[top]] -= stack[top - 2];
								stack[top - 2] = r;
								break;
							}
							
							case "<<=":
							{
								r = stack[top - 1][stack[top]] <<= stack[top - 2];
								stack[top - 2] = r;
								break;
							}
							
							case ">>=":
							{
								r = stack[top - 1][stack[top]] >>= stack[top - 2];
								stack[top - 2] = r;
								break;
							}
							
							case ">>>=":
							{
								r = stack[top - 1][stack[top]] >>>= stack[top - 2];
								stack[top - 2] = r;
								break;
							}
							
							case "&=":
							{
								r = stack[top - 1][stack[top]] &= stack[top - 2];
								stack[top - 2] = r;
								break;
							}
							
							case "^=":
							{
								r = stack[top - 1][stack[top]] ^= stack[top - 2];
								stack[top - 2] = r;
								break;
							}
							
							case "|=":
							{
								r = stack[top - 1][stack[top]] |= stack[top - 2];
								stack[top - 2] = r;
								break;
							}
						}
						
						top -= 2;
						
						break;
					}
					
					case instructionTypes.local:
					{
						if (instruction[2])
						{
							closure.setLocal(instruction[1], stack[top]);
						}
						else
						{
							closure.setLocal(instruction[1], undefined);
							stack[++top] = undefined;
						}
						break;
					}
					
					case instructionTypes.pushc:
					{
						stack[++top] = closure;
						break;
					}
					
					case instructionTypes.pusht:
					{
						stack[++top] = thisArg;
						break;
					}
					
					case instructionTypes.push:
					{
						stack[++top] = instruction[1];
						break;
					}
					
					case instructionTypes.binop:
					{
						switch(instruction[1])
						{
							case "|":
							{
								stack[--top] = stack[top] | stack[top + 1] ;
								break;
							}
							
							case "^":
							{
								stack[--top] = stack[top] ^ stack[top + 1];
								break;
							}
							
							case "&":
							{
								stack[--top] = stack[top] & stack[top + 1];
								break;
							}
							
							case "==":
							{
								stack[--top] = stack[top] == stack[top + 1];
								break;
							}
							
							case "!=":
							{
								stack[--top] = stack[top] != stack[top + 1];
								break;
							}
							
							case "===":
							{
								stack[--top] = stack[top] === stack[top + 1];
								break;
							}
							
							case "!==":
							{
								stack[--top] = stack[top] !== stack[top + 1];
								break;
							}
							
							case "<":
							case "lt":
							{
								stack[--top] = stack[top] < stack[top + 1];
								break;
							}
							
							case ">":
							case "gt":
							{
								stack[--top] = stack[top] > stack[top + 1];
								break;
							}
							
							case "<=":
							case "lte":
							{
								stack[--top] = stack[top] <= stack[top + 1];
								break;
							}
							
							case ">=":
							case "gte":
							{
								stack[--top] = stack[top] >= stack[top + 1];
								break;
							}
							
							case "<<":
							{
								stack[--top] = stack[top] << stack[top + 1];
								break;
							}
							
							case ">>":
							{
								stack[--top] = stack[top] >> stack[top + 1];
								break;
							}
							
							case ">>>":
							{
								stack[--top] = stack[top] >>> stack[top + 1];
								break;
							}
							
							case "+":
							{
								stack[--top] = stack[top] + stack[top + 1];
								break;
							}
							
							case "-":
							{
								stack[--top] = stack[top] - stack[top + 1];
								break;
							}
							
							case "*":
							{
								stack[--top] = stack[top] * stack[top + 1];
								break;
							}
							
							case "/":
							{
								stack[--top] = stack[top] / stack[top + 1];
								break;
							}
							
							case "%":
							{
								stack[--top] = stack[top] % stack[top + 1];
								break;
							}
						}
						
						break;
					}
					
					case instructionTypes.unaryop:
					{
						switch(instruction[1])
						{
							case "-":
							{
								stack[top] = -stack[top] ;
								break;
							}
							
							case "+":
							{
								break;
							}
							
							case "!":
							{
								stack[top] = !stack[top] ;
								break;
							}
							
							case "~":
							{
								stack[top] = ~stack[top] ;
								break;
							}
						}
						
						break;
					}
					
					case instructionTypes.load:
					{
						var target:Object = stack[top - 1];
						var prop:* = stack[top];
						
						if (target)
						{
							try
							{
								if (bind && target is IBindable && bindablePropertiesEnabled)
								{
									dispatchEvent(new ExpressionEvent(ExpressionEvent.BINDABLE_PROPERTY_LOADED, false, false, target as IBindable, prop, instructions.slice(i, instructions.length), stack.slice(0), top));
								}
								
								top--;
								
								stack[top] = target[prop];
							}
							catch (error:Error)
							{
								stack[top] = null;
							}
							/*if (target.hasOwnProperty(prop))
							{
								stack[--top] = target[prop];
							}
							else
							{
								stack[--top] = null;
							}*/
						}
						else
						{
							stack[--top] = null;
						}
						
						break;
					}
					
					case instructionTypes.call:
					{
						top -= instruction[1];
						var f:Function = stack[top];
						stack[top] = f.apply(target, stack.slice(top + 1, top + instruction[1] + 1));
						break;
					}
					
					case instructionTypes.jump:
					{
						i += stack[top];
						top--;
						break;
					}
					
					case instructionTypes.jumpc:
					{
						if (stack[top - 1])
							i += stack[top];
							
						top -= instruction[1] && stack[top - 1] ? 1 : 2;
						break;
					}
					
					case instructionTypes.array:
					{
						top -= instruction[1] - 1;
						stack[top] = BindableArray.fromArray(stack.slice(top, top + instruction[1]));
						break;
					}
					
					case instructionTypes.object:
					{
						top -= instruction[1] - 1;
						
						var object:BindableObject = new BindableObject();
						
						for (var offset:int = 0; offset < instruction[1]; offset += 2)
						{
							object[stack[top + offset + 1]] = stack[top + offset];
						}
						
						stack[top] = object;
						break;
					}
					
					case instructionTypes.func:
					{
						stack[++top] = makeFunc(instruction[1], new Closure(closure), bind);
						break;
					}
					
					case instructionTypes.arg:
					{
						closure.setLocal(instruction[1], stack[top--]);
						break;
					}
					
					case instructionTypes.ret:
					{
						return instruction[1] ? stack[top] : undefined;
						break;
					}
					
					case instructionTypes.preinc:
					{
						stack[--top] = ++stack[top][stack[top + 1]];
						break;
					}
					
					case instructionTypes.predec:
					{
						stack[--top] = --stack[top][stack[top + 1]];
						break;
					}
					
					case instructionTypes.postinc:
					{
						stack[--top] = stack[top][stack[top + 1]]++;
						break;
					}
					
					case instructionTypes.postdec:
					{
						stack[--top] = stack[top][stack[top + 1]]--;
						break;
					}
				}
				
				if (_debug)
				{
					var info:String = instruction[0] + "\t";
					
					if (instruction.length > 1)
						info += instruction[1] + "\t";
					
					for (var j:int = 0; j <= top; j++)
					{
						info += stack[j] + ";";
					}
					
					trace(info);
				}
			}
			
			return top >= 0 ? stack[top] : null;
		}
		
		private function makeFunc(instructions:Vector.<Array>, closure:Closure, bind:Boolean):Function
		{
			return function(...args):* {
				args.reverse();
				
				var header:Vector.<Array> = new Vector.<Array>();
				
				for each (var arg:* in args) 
				{
					header.push([instructionTypes.push, arg]);
				}
				
				return eval(header.concat(instructions), closure, this, bind);
			}
		}
		
		//---------------------------------------------------------------------
		// GETTERS & SETTERS
		//---------------------------------------------------------------------
		
		public function get bindablePropertiesEnabled():Boolean { return _bindablePropertiesEnabled; }
		
		public function set bindablePropertiesEnabled(value:Boolean):void 
		{
			_bindablePropertiesEnabled = value;
		}
		
		public function get instructionCounter():int { return _instructionCounter; }
		
	}
	
}