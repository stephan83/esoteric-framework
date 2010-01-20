/*
	DO NOT MODIFY THIS FILE, THE CODE GENERATOR WILL ERASE ANY CHANGES MADE.
	MAKE CHANGES TO THE DERIVED CLASS INSTEAD.

	Last generated 2010-01-20 20:05:47.853000 UTC.

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
	import com.esoteric.core.ScriptElement;
	import flash.utils.Timer;

	import com.esoteric.core.Context;
	import com.esoteric.events.ElementEvent;
	import com.esoteric.events.PropertyChangeEvent;
	
	public class AbstractTimerElement extends ScriptElement
	{
		
		//---------------------------------------------------------------------
		// Constructor
		//---------------------------------------------------------------------
		
		/**
		 * Constructor.
		 */
		public function AbstractTimerElement(context:Context, kind:String) 
		{
			super(context, kind);
			
			timer.delay = _delay;
			timer.repeatCount = _repeatCount;

		}
		
		//---------------------------------------------------------------------
		// Overrides
		//---------------------------------------------------------------------
		
		/**
		 * @inheritDoc
		 */
		
		public override function initialize():void
		{
			super.initialize();
			

		}

		//---------------------------------------------------------------------
		// Variables
		//---------------------------------------------------------------------
		
		/**
		 * @private
		 */
		private var _timer:Timer = new Timer(1000);

		/**
		 * @private
		 */
		private var _delay:int = 1000;

		/**
		 * @private
		 */
		private var _repeatCount:int = 0;


		//---------------------------------------------------------------------
		// Getters and setters
		//---------------------------------------------------------------------
		
		/**
		 * The timer object. [default = new Timer(1000)]
		 *
		 * @default	new Timer(1000)
		 */
		protected function get timer():Timer { return _timer; }
		
		protected function set timer(value:Timer):void 
		{
			if(_timer != value)
			{
				var oldValue:Timer = _timer;
			
				if(value)
				{
					value.delay = _delay;
					value.repeatCount = _repeatCount;

				}
			
				_timer = value;


			}
		}


		/**
		 * The delay, in milliseconds, between timer events. [default = 1000]
		 *
		 * @default	1000
		 */
		public function get delay():int { return _delay; }
		
		public function set delay(value:int):void 
		{

			if(delay != value)
			{
				var oldValue:int = _delay;


				
				_delay = value;

				if(timer)
				{
					timer.delay = value;
				}

							
				if(hasEventListener(PropertyChangeEvent.PROPERTY_UPDATED))
				{
					dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'delay', oldValue, value));
				}
			}
		}

		/**
		 * The total number of times the timer is set to run. [default = 0]
		 *
		 * @default	0
		 */
		public function get repeatCount():int { return _repeatCount; }
		
		public function set repeatCount(value:int):void 
		{

			if(repeatCount != value)
			{
				var oldValue:int = _repeatCount;


				
				_repeatCount = value;

				if(timer)
				{
					timer.repeatCount = value;
				}

							
				if(hasEventListener(PropertyChangeEvent.PROPERTY_UPDATED))
				{
					dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'repeatCount', oldValue, value));
				}
			}
		}


	}
	
}
