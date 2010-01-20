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
	public class ProgressEvent extends Event
	{
		
		//---------------------------------------------------------------------
		// Class constants
		//---------------------------------------------------------------------
		
		public static const START:String = "start";
		public static const COMPLETE:String = "complete";
		public static const INCOMPLETE:String = "incomplete";
		public static const PROGRESS:String = "progress";
		
		//---------------------------------------------------------------------
		// Constructor
		//---------------------------------------------------------------------
		
		/**
		 * Constructor.
		 */
		public function ProgressEvent(type:String, bubbles:Boolean = false, cancelable:Boolean = false, loaded:Number = 0.0, total:Number = 0.0) 
		{
			super(type, bubbles, cancelable);
			
			_loaded = loaded;
			_total = total;
		}
		
		//---------------------------------------------------------------------
		// Variables
		//---------------------------------------------------------------------
		
		/**
		 * @private
		 */
		private var _loaded:Number;
		
		/**
		 * @private
		 */
		private var _total:Number;
		
		//---------------------------------------------------------------------
		// Getters & setters
		//---------------------------------------------------------------------
		
		//---------------------------------------
		// public
		//---------------------------------------
		
		public function get loaded():Number { return _loaded; }
		
		public function set loaded(value:Number):void 
		{
			_loaded = value;
		}
		
		public function get total():Number { return _total; }
		
		public function set total(value:Number):void 
		{
			_total = value;
		}
		
		//---------------------------------------------------------------------
		// Overriden properties
		//---------------------------------------------------------------------
		
		/**
		 * @inheritDoc
		 */
		public override function clone():Event
		{
			return new ProgressEvent(type, bubbles, cancelable, _loaded, _total);
		}
		
	}
	
}