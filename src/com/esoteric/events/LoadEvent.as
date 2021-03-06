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

package com.esoteric.events 
{
	import flash.events.Event;
	
	/**
	* @author Stephan Florquin
	*/
	public class LoadEvent extends Event
	{
		
		//---------------------------------------------------------------------
		// Class constants
		//---------------------------------------------------------------------
		
		public static const BEGIN:String = "begin";
		public static const FINISH:String = "finish";
		public static const DESCENDANT_BEGIN:String = "descendantBegin";
		public static const DESCENDANT_FINISH:String = "descendantEnd";
		public static const DESCENDANT_ERROR:String = "descendantError";
		public static const PARSED:String = "parsed";
		public static const ERROR:String = "error";
		
		//---------------------------------------------------------------------
		// Constructor
		//---------------------------------------------------------------------
		
		/**
		 * Constructor.
		 */
		public function LoadEvent(type:String, bubbles:Boolean = false, cancelable:Boolean = false, elements:Array = null) 
		{
			super(type, bubbles, cancelable);
			
			_elements = elements;
		}
		
		//---------------------------------------------------------------------
		// Variables
		//---------------------------------------------------------------------
		
		/**
		 * @private
		 */
		private var _elements:Array;
		
		//---------------------------------------------------------------------
		// Getters & setters
		//---------------------------------------------------------------------
		
		//---------------------------------------
		// public
		//---------------------------------------
		
		public function get elements():Array { return _elements; }
		
		public function set elements(value:Array):void 
		{
			_elements = value;
		}
		
		//---------------------------------------------------------------------
		// Overriden properties
		//---------------------------------------------------------------------
		
		/**
		 * @inheritDoc
		 */
		public override function clone():Event
		{
			return new LoadEvent(type, bubbles, cancelable, _elements);
		}
		
	}
	
}