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
	import com.esoteric.utils.BindableArray;
	import com.esoteric.utils.BindableObject;
	import com.esoteric.utils.IBindable;
	import com.esoteric.utils.ICloneable;
	import flash.events.EventDispatcher;
	
	/**
	* Expression virtual machine.
	* 
	* @author Stephan Florquin
	*/
	public class ExpressionVm extends EventDispatcher implements ICloneable
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
			ret:		"ret"
		}
		
		//---------------------------------------------------------------------
		// MEMBERS
		//---------------------------------------------------------------------
		
		private var _debug:Boolean = false;
		private var _stack:Array = new Array(32);
		private var _top:int = -1;
		private var context:Object;
		private var _bindablePropertiesEnabled:Boolean;
		private var _instructionCounter:int;
		
		//---------------------------------------------------------------------
		// CONSTRUCTOR
		//---------------------------------------------------------------------
		
		/**
		 * Class constructor.
		 * 
		 * @param	context	the context used to resolve identifiers
		 * @param	bindablePropertiesEnabled	whether to dispatch an event when a bindable property is detected
		 */
		public function ExpressionVm(context:Object = null, bindablePropertiesEnabled:Boolean = true)
		{
			context = context;
			_bindablePropertiesEnabled = bindablePropertiesEnabled;
		}
		
		//---------------------------------------------------------------------
		// ICLONEABLE
		//---------------------------------------------------------------------
		
		public function clone():ICloneable
		{
			return new ExpressionVm(context, bindablePropertiesEnabled);
		}
		
		//---------------------------------------------------------------------
		// PUBLIC FUNCTIONS
		//---------------------------------------------------------------------
		
		public function eval(instructions:Vector.<Array>, closure:Closure, bind:Boolean = true):*
		{
			var initialTop:int = _top;
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
								var r:* = _stack[_top - 1][_stack[_top]] = _stack[_top - 2];
								_stack[_top - 2] = r;
								break;
							}
							
							case "*=":
							{
								r = _stack[_top - 1][_stack[_top]] *= _stack[_top - 2];
								_stack[_top - 2] = r;
								break;
							}
							
							case "/=":
							{
								r = _stack[_top - 1][_stack[_top]] /= _stack[_top - 2];
								_stack[_top - 2] = r;
								break;
							}
							
							case "%=":
							{
								r = _stack[_top - 1][_stack[_top]] %= _stack[_top - 2];
								_stack[_top - 2] = r;
								break;
							}
							
							case "+=":
							{
								r = _stack[_top - 1][_stack[_top]] += _stack[_top - 2];
								_stack[_top - 2] = r;
								break;
							}
							
							case "-=":
							{
								r = _stack[_top - 1][_stack[_top]] -= _stack[_top - 2];
								_stack[_top - 2] = r;
								break;
							}
							
							case "<<=":
							{
								r = _stack[_top - 1][_stack[_top]] <<= _stack[_top - 2];
								_stack[_top - 2] = r;
								break;
							}
							
							case ">>=":
							{
								r = _stack[_top - 1][_stack[_top]] >>= _stack[_top - 2];
								_stack[_top - 2] = r;
								break;
							}
							
							case ">>>=":
							{
								r = _stack[_top - 1][_stack[_top]] >>>= _stack[_top - 2];
								_stack[_top - 2] = r;
								break;
							}
							
							case "&=":
							{
								r = _stack[_top - 1][_stack[_top]] &= _stack[_top - 2];
								_stack[_top - 2] = r;
								break;
							}
							
							case "^=":
							{
								r = _stack[_top - 1][_stack[_top]] ^= _stack[_top - 2];
								_stack[_top - 2] = r;
								break;
							}
							
							case "|=":
							{
								r = _stack[_top - 1][_stack[_top]] |= _stack[_top - 2];
								_stack[_top - 2] = r;
								break;
							}
						}
						
						_top -= 2;
						
						break;
					}
					
					case instructionTypes.local:
					{
						if (instruction[2])
						{
							closure.setLocal(instruction[1], _stack[_top]);
						}
						else
						{
							closure.setLocal(instruction[1], undefined);
							_stack[++_top] = undefined;
						}
						break;
					}
					
					case instructionTypes.pushc:
					{
						_stack[++_top] = closure;
						break;
					}
					
					case instructionTypes.push:
					{
						_stack[++_top] = instruction[1];
						break;
					}
					
					case instructionTypes.binop:
					{
						switch(instruction[1])
						{
							case "||":
							case "or":
							{
								if (!_stack[--_top])
								{
									_stack[_top] = _stack[_top + 1];
								}
								break;
							}
							
							case "&&":
							case "and":
							{
								if (_stack[--_top])
								{
									_stack[_top] = _stack[_top + 1];
								}
								break;
							}
							
							case "|":
							{
								_stack[--_top] = _stack[_top] | _stack[_top + 1] ;
								break;
							}
							
							case "^":
							{
								_stack[--_top] = _stack[_top] ^ _stack[_top + 1];
								break;
							}
							
							case "&":
							{
								_stack[--_top] = _stack[_top] & _stack[_top + 1];
								break;
							}
							
							case "==":
							{
								_stack[--_top] = _stack[_top] == _stack[_top + 1];
								break;
							}
							
							case "!=":
							{
								_stack[--_top] = _stack[_top] != _stack[_top + 1];
								break;
							}
							
							case "===":
							{
								_stack[--_top] = _stack[_top] === _stack[_top + 1];
								break;
							}
							
							case "!==":
							{
								_stack[--_top] = _stack[_top] !== _stack[_top + 1];
								break;
							}
							
							case "<":
							case "lt":
							{
								_stack[--_top] = _stack[_top] < _stack[_top + 1];
								break;
							}
							
							case ">":
							case "gt":
							{
								_stack[--_top] = _stack[_top] > _stack[_top + 1];
								break;
							}
							
							case "<=":
							case "lte":
							{
								_stack[--_top] = _stack[_top] <= _stack[_top + 1];
								break;
							}
							
							case ">=":
							case "gte":
							{
								_stack[--_top] = _stack[_top] >= _stack[_top + 1];
								break;
							}
							
							case "<<":
							{
								_stack[--_top] = _stack[_top] << _stack[_top + 1];
								break;
							}
							
							case ">>":
							{
								_stack[--_top] = _stack[_top] >> _stack[_top + 1];
								break;
							}
							
							case ">>>":
							{
								_stack[--_top] = _stack[_top] >>> _stack[_top + 1];
								break;
							}
							
							case "+":
							{
								_stack[--_top] = _stack[_top] + _stack[_top + 1];
								break;
							}
							
							case "-":
							{
								_stack[--_top] = _stack[_top] - _stack[_top + 1];
								break;
							}
							
							case "*":
							{
								_stack[--_top] = _stack[_top] * _stack[_top + 1];
								break;
							}
							
							case "/":
							{
								_stack[--_top] = _stack[_top] / _stack[_top + 1];
								break;
							}
							
							case "%":
							{
								_stack[--_top] = _stack[_top] % _stack[_top + 1];
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
								_stack[_top] = -_stack[_top] ;
								break;
							}
							
							case "+":
							{
								break;
							}
							
							case "!":
							{
								_stack[_top] = !_stack[_top] ;
								break;
							}
							
							case "~":
							{
								_stack[_top] = ~_stack[_top] ;
								break;
							}
						}
						
						break;
					}
					
					case instructionTypes.load:
					{
						var target:Object = _stack[_top - 1];
						var prop:* = _stack[_top];
						
						_top--;
						
						if (target)
						{
							try
							{
								if (bind && target is IBindable && bindablePropertiesEnabled)
								{
									dispatchEvent(new ExpressionEvent(ExpressionEvent.BINDABLE_PROPERTY_LOADED, false, false, IBindable(target), prop));
								}
								
								_stack[_top] = target[prop];
							}
							catch (error:Error)
							{
								_stack[_top] = null;
							}
							/*if (target.hasOwnProperty(prop))
							{
								_stack[--_top] = target[prop];
							}
							else
							{
								_stack[--_top] = null;
							}*/
						}
						else
						{
							_stack[_top] = null;
						}
						
						break;
					}
					
					case instructionTypes.call:
					{
						_top -= instruction[1];
						var f:Function = _stack[_top];
						_stack[_top] = f.apply(closure, _stack.slice(_top + 1, _top + instruction[1] + 1));
						break;
					}
					
					case instructionTypes.jump:
					{
						i += _stack[_top];
						_top--;
						break;
					}
					
					case instructionTypes.jumpc:
					{
						if (_stack[_top - 1])
							i += _stack[_top];
							
						_top -= 2;
						break;
					}
					
					case instructionTypes.array:
					{
						_top -= instruction[1] - 1;
						_stack[_top] = BindableArray.fromArray(_stack.slice(_top, _top + instruction[1]));
						break;
					}
					
					case instructionTypes.object:
					{
						_top -= instruction[1] - 1;
						
						var object:BindableObject = new BindableObject();
						
						for (var offset:int = 0; offset < instruction[1]; offset += 2)
						{
							object[_stack[_top + offset + 1]] = _stack[_top + offset];
						}
						
						_stack[_top] = object;
						break;
					}
					
					case instructionTypes.func:
					{
						_stack[++_top] = makeFunc(instruction[1], new Closure(closure), bind);
						break;
					}
					
					case instructionTypes.arg:
					{
						closure.setLocal(instruction[1], _stack[_top]);
						_top--;
						break;
					}
					
					case instructionTypes.ret:
					{
						_top = initialTop;
						
						if (instruction[1])
						{
							return _stack[_top + 1];
						}
						else
						{
							return null;
						}
						break;
					}
				}
				
				if (_debug)
				{
					var info:String = instruction[0] + "\t";
					
					if (instruction.length > 1)
						info += instruction[1] + "\t";
					
					for (var j:int = 0; j <= _top; j++)
					{
						info += _stack[j] + ";";
					}
					
					trace(info);
				}
			}
			
			_top = initialTop;
			
			return _stack[_top + 1];
		}
		
		public function bindsTo(bindable:IBindable, property:*):void
		{
			dispatchEvent(new ExpressionEvent(ExpressionEvent.BINDABLE_PROPERTY_LOADED, false, false, bindable, property));
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
				
				return eval(header.concat(instructions), closure, bind);
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