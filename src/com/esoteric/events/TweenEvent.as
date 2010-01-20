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
	* @author Stephan Florquin
	*/
	public class TweenEvent extends Event
	{
		
		//---------------------------------------------------------------------
		// Class constants
		//---------------------------------------------------------------------
		
		public static const MOTION_FINISH:String = "motionFinish";
		
		//---------------------------------------------------------------------
		// Constructor
		//---------------------------------------------------------------------
		
		/**
		 * Constructor.
		 */
		public function TweenEvent(type:String, bubbles:Boolean = false, cancelable:Boolean = false, obj:Object = null, prop:* = null) 
		{
			super(type, bubbles, cancelable);
			
			_obj = obj;
			_prop = prop;
		}
		
		//---------------------------------------------------------------------
		// Variables
		//---------------------------------------------------------------------
		
		/**
		 * @private
		 */
		private var _obj:Object;
		
		/**
		 * @private
		 */
		private var _prop:*;
		
		//---------------------------------------------------------------------
		// Getters & setters
		//---------------------------------------------------------------------
		
		//---------------------------------------
		// public
		//---------------------------------------
		
		public function get obj():Object { return _obj; }
		
		public function set obj(value:Object):void 
		{
			_obj = value;
		}
		
		public function get prop():* { return _prop; }
		
		public function set prop(value:*):void 
		{
			_prop = value;
		}
		
		//---------------------------------------------------------------------
		// Overriden properties
		//---------------------------------------------------------------------
		
		/**
		 * @inheritDoc
		 */
		public override function clone():Event
		{
			return new TweenEvent(type, bubbles, cancelable, _obj, _prop);
		}
		
	}
	
}