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
	* List class.
	* 
	* @author Stephan Florquin
	*/
	public dynamic class List extends Enumerator implements IList
	{
		
		//---------------------------------------------------------------------
		// MEMBERS
		//---------------------------------------------------------------------
		
		private var _items:Array;
		
		//---------------------------------------------------------------------
		// CONSTRUCTOR
		//---------------------------------------------------------------------	
		
		/**
		 * Class constuctor.
		 * 
		 * @param	items	the items
		 */
		public function List(items:Array = null) 
		{
			super();
			
			_items = items ? items : new Array();
		}
		
		
		//---------------------------------------------------------------------
		// IMPLEMENTATION
		//---------------------------------------------------------------------
		
		public function add(item:*):void
		{
			_items.push(item);
			dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_ADDED, false, false, _items.length - 1, null, item));
			dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'length', length - 1, length));
		}
		
		public function addArray(items:Array):void
		{
			for each(var item:* in items)
			{
				add(item);
			}
		}
		
		public function remove(item:*):void
		{
			var length:int = _items.length;
			
			for (var i:uint = 0; i < length; i++)
			{
				if (item == _items[i])
				{
					_items.splice(i, 1);
					dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_REMOVED, false, false, i, item));
					dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'length', length + 1, length));
					
					return;
				}
			}
		}
		
		public function removeArray(items:Array):void
		{
			for each(var item:* in items)
			{
				remove(item);
			}
		}
		
		public function clear():void
		{
			while (_items.length)
			{
				remove(_items[0]);
			}
		}
		
		public function toArray():Array
		{
			return _items.concat();
		}
		
		//---------------------------------------------------------------------
		// OVERRIDES
		//---------------------------------------------------------------------
		
		override public function clone():ICloneable
		{
			return new List(_items.concat());
		}
		
		override public function get length():uint { return _items.length; }
		
		override enumerator function nextNameIndex(index:int):int
		{
			if (index < _items.length)
				return index + 1;
			
			return 0;
		}
		
		override enumerator function nextValue(index:int):*
		{
			return _items[index - 1];
		}
		
		override enumerator function getProperty(name:*):*
		{
			return _items[name];
		}
		
	}
	
}