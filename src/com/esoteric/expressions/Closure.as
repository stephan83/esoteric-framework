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
	import com.esoteric.events.PropertyChangeEvent;
	import com.esoteric.utils.Enumerator;
	import com.esoteric.utils.IBindable;
	import flash.events.Event;
	import flash.utils.Dictionary;
	
	/**
	 * Expression closure
	 * 
	 * @author Stephan Florquin
	 */
	public class Closure extends Enumerator implements IBindable
	{
		
		//---------------------------------------------------------------------
		// Constructor
		//---------------------------------------------------------------------
		
		/**
		 * Constructor.
		 */
		public function Closure(parent:Closure = null, base:IBindable = null) 
		{
			_parent = parent;
			_base = base;
			
			if (_parent)
			{
				_parent.addEventListener(PropertyChangeEvent.PROPERTY_ADDED, parentPropertyAddedHandler);
				_parent.addEventListener(PropertyChangeEvent.PROPERTY_UPDATED, parentPropertyUpdatedHandler);
			}
			
			if (_base)
			{
				_base.addEventListener(PropertyChangeEvent.PROPERTY_ADDED, parentPropertyAddedHandler);
				_base.addEventListener(PropertyChangeEvent.PROPERTY_UPDATED, parentPropertyUpdatedHandler);
			}
		}
		
		//---------------------------------------------------------------------
		// Members
		//---------------------------------------------------------------------
		
		/**
		 * @private
		 */
		private var _parent:Closure;
		
		/**
		 * @private
		 */
		private var _base:IBindable;
		
		/**
		 * @private
		 */
		private var _dict:Dictionary = new Dictionary();
		
		//---------------------------------------------------------------------
		// Overrides
		//---------------------------------------------------------------------
		
		public function toString():String
		{
			return 'closure';
		}
		
		override enumerator function getProperty(name:*):*
		{
			if (Object(_base).hasOwnProperty(name))
			{
				return _base[name];
			}
			
			if (_dict.hasOwnProperty(name))
			{
				return _dict[name];
			}
			
			if (_parent)
			{
				return _parent[name];
			}
			
			return null;
		}
		
		override enumerator function setProperty(name:*, value:*):void
		{
			if (Object(_base).hasOwnProperty(name))
			{
				_base[name] = value;
			}
			else if (hasOwnProperty(name))
			{
				if (_dict.hasOwnProperty(name))
				{
					var oldValue:* = _dict[name];
				
					_dict[name] = value;
					
					dispatchEvent(new PropertyChangeEvent(
						PropertyChangeEvent.PROPERTY_UPDATED,
						false,
						false,
						name,
						oldValue,
						value
					));
				}
				else
				{
					_parent[name] = value;
				}
			}
			else
			{
				_dict[name] = value;
				
				dispatchEvent(new PropertyChangeEvent(
					PropertyChangeEvent.PROPERTY_ADDED,
					false,
					false,
					name,
					null,
					value
				));
			}
		}
		
		override enumerator function hasProperty(name:*):Boolean
		{
			if (Object(_base).hasOwnProperty(name))
			{
				return true;
			}
			
			if (_dict.hasOwnProperty(name))
			{
				return true;
			}
			
			if (_parent)
			{
				return _parent.hasOwnProperty(name);
			}
			
			return false;
		}
		
		/*override enumerator function nextNameIndex(index:int):int
		{
			if (index == 0)
			{
				_items.splice(0, _items.length);
			
				for (var name:String in _object)
				{
					_items.push(name);
				}
			}
			
			if (index < _items.length)
				return index + 1;
			
			return 0;
		}
		
		override enumerator function nextName(index:int):String
		{
			return _items[index - 1];
		}*/
		
		/**
		 * @inheritDoc
		 */
		override public function hasEventListener(type:String):Boolean
		{
			if (type != PropertyChangeEvent.PROPERTY_ADDED && type != PropertyChangeEvent.PROPERTY_REMOVED && type != PropertyChangeEvent.PROPERTY_UPDATED)
			{
				return _base.hasEventListener(type);
			}
			
			return super.hasEventListener(type);
		}
		
		/**
		 * @inheritDoc
		 */
		override public function willTrigger(type:String):Boolean
		{
			if (type != PropertyChangeEvent.PROPERTY_ADDED && type != PropertyChangeEvent.PROPERTY_REMOVED && type != PropertyChangeEvent.PROPERTY_UPDATED)
			{
				return _base.willTrigger(type);
			}
			
			return super.willTrigger(type);
		}

		/**
		 * @inheritDoc
		 */
		override public function addEventListener(type:String, listener:Function, useCapture:Boolean=false, priority:int=0.0, useWeakReference:Boolean=false):void
		{
			if (type != PropertyChangeEvent.PROPERTY_ADDED && type != PropertyChangeEvent.PROPERTY_REMOVED && type != PropertyChangeEvent.PROPERTY_UPDATED)
			{
				_base.addEventListener(type, listener, useCapture, priority, useWeakReference);
			}
			
			super.addEventListener(type, listener, useCapture, priority, useWeakReference);
		}

		/**
		 * @inheritDoc
		 */
		override public function removeEventListener(type:String, listener:Function, useCapture:Boolean=false):void
		{
			if (type != PropertyChangeEvent.PROPERTY_ADDED && type != PropertyChangeEvent.PROPERTY_REMOVED && type != PropertyChangeEvent.PROPERTY_UPDATED)
			{
				_base.removeEventListener(type, listener, useCapture);
			}
			
			super.removeEventListener(type, listener, useCapture);
		}

		/**
		 * @inheritDoc
		 */
		override public function dispatchEvent(event:Event):Boolean
		{
			if (event.type != PropertyChangeEvent.PROPERTY_ADDED && event.type != PropertyChangeEvent.PROPERTY_REMOVED && event.type != PropertyChangeEvent.PROPERTY_UPDATED)
			{
				return _base.dispatchEvent(event);
			}
			
			return super.dispatchEvent(event);
		}
		
		//---------------------------------------------------------------------
		// Methods
		//---------------------------------------------------------------------
		
		/**
		 * Forces a variable to be set within current closure and children
		 * only.
		 * 
		 * @param	name	local name
		 * @param	value	global name
		 */
		public function setLocal(name:*, value:*):void
		{
			if (Object(_base).hasOwnProperty(name))
			{
				_base[name] = value;
			}
			else if (_dict.hasOwnProperty(name))
			{
				var oldValue:* = _dict[name];
			
				_dict[name] = value;
				
				dispatchEvent(new PropertyChangeEvent(
					PropertyChangeEvent.PROPERTY_UPDATED,
					false,
					false,
					name,
					oldValue,
					value
				));
			}
			else
			{
				_dict[name] = value;
				
				dispatchEvent(new PropertyChangeEvent(
					PropertyChangeEvent.PROPERTY_ADDED,
					false,
					false,
					name,
					null,
					value
				));
			}
		}
		
		/**
		 * @private
		 */
		private function parentPropertyUpdatedHandler(e:PropertyChangeEvent):void 
		{
			dispatchEvent(e.clone());
		}
		
		/**
		 * @private
		 */
		private function parentPropertyAddedHandler(e:PropertyChangeEvent):void 
		{
			dispatchEvent(e.clone());
		}
		
		/**
		 * @private
		 */
		private function basePropertyUpdatedHandler(e:PropertyChangeEvent):void 
		{
			dispatchEvent(e.clone());
		}
		
		/**
		 * @private
		 */
		private function basePropertyAddedHandler(e:PropertyChangeEvent):void 
		{
			dispatchEvent(e.clone());
		}
		
	}

}