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

package com.esoteric.events 
{
	import flash.events.Event;
	
	/**
	* Property change event.
	* 
	* @author Stephan Florquin
	*/
	public class ClosureEvent extends Event
	{
		
		//---------------------------------------------------------------------
		// CONSTANTS
		//---------------------------------------------------------------------
		
		public static const CLOSURE_PROPERTY_ADDED:String = "closurePropertyAdded";
		public static const CLOSURE_PROPERTY_UPDATED:String = "closurePropertyUpdated";
		public static const CLOSURE_PROPERTY_REMOVED:String = "closurePropertyRemoved";
		
		//---------------------------------------------------------------------
		// MEMBERS
		//---------------------------------------------------------------------
		
		private var _property:*;
		private var _oldValue:*;
		private var _newValue:*;
		
		//---------------------------------------------------------------------
		// CONSTRUCTOR
		//---------------------------------------------------------------------
		
		public function ClosureEvent(type:String, bubbles:Boolean = false, cancelable:Boolean = false, property:* = null, oldValue:* = null, newValue:* = null) 
		{
			super(type, bubbles, cancelable);
			
			_property = property;
			_oldValue = oldValue;
			_newValue = newValue;
		}
		
		//---------------------------------------------------------------------
		// OVERRIDES
		//---------------------------------------------------------------------
		
		public override function clone():Event
		{
			return new ClosureEvent(type, bubbles, cancelable, _property, _oldValue, _newValue);
		}
		
		//---------------------------------------------------------------------
		// GETTERS & SETTERS
		//---------------------------------------------------------------------
		
		public function get oldValue():* { return _oldValue; }
		
		public function set oldValue(value:*):void 
		{
			_oldValue = value;
		}
		
		public function get newValue():* { return _newValue; }
		
		public function set newValue(value:*):void 
		{
			_newValue = value;
		}
		
		public function get property():* { return _property; }
		
		public function set property(value:*):void 
		{
			_property = value;
		}
		
	}
	
}