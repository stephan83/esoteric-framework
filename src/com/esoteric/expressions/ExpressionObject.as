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
	import com.esoteric.Esoteric;
	import com.esoteric.events.ExpressionEvent;
	import com.esoteric.events.PropertyChangeEvent;
	import com.esoteric.utils.BindableObject;
	import com.esoteric.utils.Enumerator;
	import com.esoteric.utils.ICloneable;
	import com.esoteric.utils.IDestroyable;
	import com.esoteric.utils.Watcher;
	
	/**
	* Expression object.
	* 
	* Enumerable bindable object whose properties can be expressions. 
	* Expressions are dealt with automatically. Getting the value of a property
	* which is an expression will return the value of that expression.
	* 
	* @author Stephan Florquin
	*/
	public dynamic class ExpressionObject extends Enumerator implements IDestroyable
	{
		
		//---------------------------------------------------------------------
		//
		//  Class constructor
		//
		//---------------------------------------------------------------------
		
		/**
		 * Constructor.
		 * 
		 * @param	vm					the virtual machine
		 * @param	expressionQueue		the expression queue
		 */
		public function ExpressionObject(vm:ExpressionVm, expressionQueue:ExpressionQueue)
		{
			_vm = vm;
			_expressionQueue = expressionQueue;
		}
		
		//---------------------------------------------------------------------
		//
		//  Variables
		//
		//---------------------------------------------------------------------
		
		/**
		 * @private
		 */
		private var _properties:Object = new Object();
		private var _expressionRegExp:RegExp = Esoteric.EXPRESSION_REG_EXP;
		private var _expressionEngine:Class = Esoteric.EXPRESSION_ENGINE;
		private var _context:BindableObject = new BindableObject();
		private var _expressionQueue:ExpressionQueue;
		private var _vm:ExpressionVm;
		private var _enabled:Boolean = true;
		private var _items:Array = new Array();
		
		//---------------------------------------------------------------------
		//
		//  Getters and setters
		//
		//---------------------------------------------------------------------
		
		public function get context():BindableObject { return _context; }
		
		public function set context(value:BindableObject):void 
		{
			var oldValue:Object = _context;
			
			_context = value;
			
			dispatchEvent(new PropertyChangeEvent(
				PropertyChangeEvent.PROPERTY_UPDATED,
				false,
				false,
				'context',
				oldValue,
				value
			));
		}
		
		public function get expressionQueue():ExpressionQueue { return _expressionQueue; }
		
		public function set expressionQueue(value:ExpressionQueue):void 
		{
			var oldValue:Object = _expressionQueue;
			
			_expressionQueue = value;
			
			dispatchEvent(new PropertyChangeEvent(
				PropertyChangeEvent.PROPERTY_UPDATED,
				false,
				false,
				'expressionQueue',
				oldValue,
				value
			));
		}
		
		public function get vm():ExpressionVm { return _vm; }
		
		public function set vm(value:ExpressionVm):void 
		{
			var oldValue:ExpressionVm = _vm;
			
			_vm = value;
			
			dispatchEvent(new PropertyChangeEvent(
				PropertyChangeEvent.PROPERTY_UPDATED,
				false,
				false,
				'vm',
				oldValue,
				value
			));
		}
		
		public function get enabled():Boolean { return _enabled; }
		
		public function set enabled(value:Boolean):void 
		{
			var oldValue:Boolean = _enabled;
			
			_enabled = value;
			
			updateExpressionsWatchers();
			
			dispatchEvent(new PropertyChangeEvent(
				PropertyChangeEvent.PROPERTY_UPDATED,
				false,
				false,
				'enabled',
				oldValue,
				value
			));
		}
		
		public function get expressionRegExp():RegExp { return _expressionRegExp; }
		
		public function set expressionRegExp(value:RegExp):void 
		{
			var oldValue:RegExp = _expressionRegExp;
			
			_expressionRegExp = value;
			
			dispatchEvent(new PropertyChangeEvent(
				PropertyChangeEvent.PROPERTY_UPDATED,
				false,
				false,
				'expressionRegExp',
				oldValue,
				value
			));
		}
		
		//---------------------------------------------------------------------
		//
		//  Methods
		//
		//---------------------------------------------------------------------

		//---------------------------------------
		// private
		//---------------------------------------
		
		/**
		 * @private
		 */
		private function createProperty(name:*, value:* = null):void
		{
			_properties[name] = {
				value:		value,
				expression: null,
				watcher:	null
			};
			
			dispatchEvent(new PropertyChangeEvent(
				PropertyChangeEvent.PROPERTY_ADDED,
				false,
				false,
				name,
				null,
				value
			));
		}
		
		/**
		 * @private
		 */
		private function setProperty(name:*, value:*):void
		{
			var oldValue:* = this[name];
			
			if (_properties[name].expression)
			{
				_properties[name].expression.destroy();
				_properties[name].expression = null;
				_properties[name].watcher.destroy();
				_properties[name].watcher = null;
			}
			
			if (value is String)
				var match:Array = _expressionRegExp.exec(value);
				
			if (match)
			{
				_properties[name].expression = new _expressionEngine(match[1], _vm, _context, !_enabled);
				_properties[name].watcher = new Watcher(_properties[name].expression, "value", createExpressionValueHandler(name));
				_properties[name].expression.addEventListener(ExpressionEvent.OUTDATED, outdatedExpressionHandler, false, 0, true);
				_expressionQueue.add(_properties[name].expression);
			}
			else
			{
				_properties[name].value = value;
				
				dispatchEvent(new PropertyChangeEvent(
					PropertyChangeEvent.PROPERTY_UPDATED,
					false,
					false,
					name,
					oldValue,
					value
				));
			}
		}
		
		/**
		 * @private
		 */
		private function createExpressionValueHandler(name:*):Function
		{
			return function(e:PropertyChangeEvent):void
			{
				_properties[name].value = e.newValue;
				
				dispatchEvent(new PropertyChangeEvent(
					e.type,
					false,
					false,
					name,
					e.oldValue,
					e.newValue
				));
			}
		}
		
		/**
		 * @private
		 */
		private function updateExpressionsWatchers():void
		{
			if (_enabled)
			{
				for(var name:String in _properties)
				{
					_properties[name].expression.resumeWatchers();
				}
			}
			else
			{
				for(name in _properties)
				{
					_properties[name].expression.pauseWatchers();
				}
			}
		}
		
		/**
		 * @private
		 */
		private function outdatedExpressionHandler(e:ExpressionEvent):void 
		{
			_expressionQueue.add(Expression(e.target));
		}
		
		//---------------------------------------------------------------------
		//
		//  Interface implementations
		//
		//---------------------------------------------------------------------
		
		//---------------------------------------
		// ICloneable
		//---------------------------------------
		
		public override function clone():ICloneable
		{
			return null;
		}
		
		//---------------------------------------
		// IDestroyable
		//---------------------------------------
		
		public function destroy():void
		{
			for each(var property:Object in _properties)
			{
				if (property.expression)
				{
					property.expression.destroy();
					property.watcher.destroy();
				}
			}
		}
		
		//---------------------------------------------------------------------
		//
		//  Overriden properties
		//
		//---------------------------------------------------------------------
		
		//---------------------------------------
		// Enumerable
		//---------------------------------------
		
		/*override enumerator function getEnumerableProperty(name:*):*
		{
			if (_properties.hasOwnProperty(name))
				return _properties[name].value;
			
			return undefined;
		}
		
		override enumerator function setEnumerableProperty(name:*, value:*):void
		{
			if (_properties.hasOwnProperty(name))
			{
				setProperty(name, value);
			}
			else
			{
				createProperty(name, value);
				setProperty(name, value);
			}
		}
		
		override enumerator function hasEnumerableProperty(name:*):Boolean
		{
			return _properties.hasOwnProperty(name);
		}
		
		override enumerator function nextEnumerableNameIndex(index:int):int
		{
			if (index == 0)
			{
				_items.splice(0, _items.length);
			
				for (var name:String in _properties)
				{
					_items.push(name);
				}
			}
			
			if (index < _items.length)
				return index + 1;
			
			return 0;
		}
		
		override enumerator function nextEnumerableName(index:int):String
		{
			return _items[index - 1];
		}*/
		
		// TODO: finish enumerable overrides
		
		/*
		override enumerator function nextEnumerableValue(index:int):*
		{
			return null;
		}
		
		override enumerator function callProperty(name:*, ...args):*
		{
			return null;
		}*/
		
	}
	
}