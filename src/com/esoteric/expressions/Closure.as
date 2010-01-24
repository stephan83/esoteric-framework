﻿/*

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
	import com.esoteric.utils.IDestroyable;
	import flash.events.Event;
	import flash.utils.Dictionary;
	
	/**
	 * Expression closure
	 * 
	 * @author Stephan Florquin
	 */
	public class Closure extends Enumerator implements IBindable, IDestroyable
	{
		
		//---------------------------------------------------------------------
		// Constructor
		//---------------------------------------------------------------------
		
		/**
		 * Constructor.
		 */
		public function Closure(parent:Closure = null) 
		{
			_parent = parent;
			
			if (_parent)
			{
				_parent.addEventListener(PropertyChangeEvent.PROPERTY_ADDED, parentPropertyAddedHandler);
				_parent.addEventListener(PropertyChangeEvent.PROPERTY_UPDATED, parentPropertyUpdatedHandler);
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
		private var _dict:Dictionary = new Dictionary();
		
		//---------------------------------------------------------------------
		// Implementations
		//---------------------------------------------------------------------
		
		/**
		 * @inheritDoc
		 */
		public function destroy():void
		{
			_parent = null;
			_dict = null;
		}
		
		//---------------------------------------------------------------------
		// Overrides
		//---------------------------------------------------------------------
		
		public function toString():String
		{
			return 'closure';
		}
		
		override enumerator function getProperty(name:*):*
		{
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
			if (hasOwnProperty(name))
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
		
	}

}