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

package com.esoteric.utils 
{
	import com.esoteric.events.PropertyChangeEvent;
	
	/**
	* Bindable object.
	* 
	* @author Stephan Florquin
	*/
	public dynamic class BindableObject extends Enumerator
	{
		
		//---------------------------------------------------------------------
		// MEMBERS
		//---------------------------------------------------------------------
		
		private var _object:Object;
		private var _items:Array;
		
		//---------------------------------------------------------------------
		// CONSTRUCTOR
		//---------------------------------------------------------------------
		
		/**
		 * Class constructor
		 * 
		 * @param	object	the object
		 */
		public function BindableObject(object:Object=null) 
		{
			super();
			
			_object = object ? object : new Object();
			_items = new Array();
		}
		
		public function toString():String
		{
			var s:String = '{';
			
			for (var p:* in _object) 
			{
				s += p + ': ' + _object[p] + ', ';
			}
			
			s += '}';
			
			return s;
		}
		
		//---------------------------------------------------------------------
		// OVERRIDES
		//---------------------------------------------------------------------
		
		override public function clone():ICloneable
		{
			var objectCopy:Object = new Object();
			
			for (var name:String in _object)
			{
				objectCopy[name] = _object[name];
			}
			
			return new BindableObject(objectCopy);
		}
		
		override enumerator function getProperty(name:*):*
		{
			return _object[name];
		}
		
		override enumerator function setProperty(name:*, value:*):void
		{
			if (_object.hasOwnProperty(name))
			{
				var oldValue:* = _object[name];
				
				_object[name] = value;
				
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
				_object[name] = value;
				
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
			return _object.hasOwnProperty(name);
		}
		
		override enumerator function nextNameIndex(index:int):int
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
		}
		
		//---------------------------------------------------------------------
		// GETTERS & SETTERS
		//---------------------------------------------------------------------
		
		public function get object():Object { return _object; }
		
	}
	
}