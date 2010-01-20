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
	import com.esoteric.utils.IBindable;
	import flash.events.Event;
	
	/**
	* Expression event.
	* 
	* @author Stephan Florquin
	*/
	public class ExpressionEvent extends Event
	{
		
		//---------------------------------------------------------------------
		// CONSTANTS
		//---------------------------------------------------------------------
		
		public static const BINDABLE_PROPERTY_LOADED:String = "bindablePropertyLoaded";
		public static const BINDABLE_PROPERTY_SET:String = "bindablePropertySet";
		public static const OUTDATED:String = "outdated";
		
		//---------------------------------------------------------------------
		// MEMBERS
		//---------------------------------------------------------------------
		
		private var _bindable:IBindable;
		private var _property:*;
		
		//---------------------------------------------------------------------
		// CONSTRUCTOR
		//---------------------------------------------------------------------
		
		public function ExpressionEvent(type:String, bubbles:Boolean = false, cancelable:Boolean = false, bindable:IBindable = null, property:* = null) 
		{
			super(type, bubbles, cancelable);
			
			_bindable = bindable;
			_property = property;
		}
		
		//---------------------------------------------------------------------
		// OVERRIDES
		//---------------------------------------------------------------------
		
		public override function clone():Event
		{
			return new ExpressionEvent(type, bubbles, cancelable, _bindable, _property);
		}
		
		//---------------------------------------------------------------------
		// GETTERS & SETTERS
		//---------------------------------------------------------------------
		
		public function get bindable():IBindable { return _bindable; }
		
		public function set bindable(value:IBindable):void 
		{
			_bindable = value;
		}
		
		public function get property():* { return _property; }
		
		public function set property(value:*):void 
		{
			_property = value;
		}
		
	}
	
}