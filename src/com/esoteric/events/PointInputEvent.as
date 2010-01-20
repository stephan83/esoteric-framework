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
	* Point input event.
	* 
	* @author Stephan Florquin
	*/
	public class PointInputEvent extends Event
	{
		
		//---------------------------------------------------------------------
		// CONSTANTS
		//---------------------------------------------------------------------
		
		public static const CLICK:String = "click";
		public static const CLICK_NOW:String = "clickNow";
		public static const MOVE:String = "move";
		public static const OUT:String = "out";
		public static const OVER:String = "over";
		public static const PRESS:String = "press";
		public static const RELEASE:String = "release";
		public static const RELEASE_OUTSIDE:String = "releaseOutside";
		public static const DRAG:String = "drag";
		
		//---------------------------------------------------------------------
		// MEMBERS
		//---------------------------------------------------------------------
		
		private var _localX:int;
		private var _localY:int;
		private var _localZ:int;
		private var _globalX:int;
		private var _globalY:int;
		private var _globalZ:int;
		
		//---------------------------------------------------------------------
		// CONSTRUCTOR
		//---------------------------------------------------------------------
		
		public function PointInputEvent(type:String, bubbles:Boolean = false, cancelable:Boolean = false, localX:int = 0, localY:int = 0, localZ:int = 0, globalX:int = 0, globalY:int = 0, globalZ:int = 0) 
		{
			super(type, bubbles, cancelable);
			
			_localX = localX;
			_localY = localY;
			_localZ = localZ;
			_globalX = globalX;
			_globalY = globalY;
			_globalZ = globalZ;
		}
		
		//---------------------------------------------------------------------
		// OVERRIDES
		//---------------------------------------------------------------------
		
		public override function clone():Event
		{
			return new PointInputEvent(type, bubbles, cancelable, _localX, _localY, _localZ, _globalX, _globalY, _globalZ);
		}
		
		//---------------------------------------------------------------------
		// GETTERS & SETTERS
		//---------------------------------------------------------------------
		
		public function get localX():int { return _localX; }
		
		public function set localX(value:int):void 
		{
			_localX = value;
		}
		
		public function get localY():int { return _localY; }
		
		public function set localY(value:int):void 
		{
			_localY = value;
		}
		
		public function get localZ():int { return _localZ; }
		
		public function set localZ(value:int):void 
		{
			_localZ = value;
		}
		
		public function get globalX():int { return _globalX; }
		
		public function set globalX(value:int):void 
		{
			_globalX = value;
		}
		
		public function get globalY():int { return _globalY; }
		
		public function set globalY(value:int):void 
		{
			_globalY = value;
		}
		
		public function get globalZ():int { return _globalZ; }
		
		public function set globalZ(value:int):void 
		{
			_globalZ = value;
		}
		
	}
	
}