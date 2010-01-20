/*
	DO NOT MODIFY THIS FILE, THE CODE GENERATOR WILL ERASE ANY CHANGES MADE.
	MAKE CHANGES TO THE DERIVED CLASS INSTEAD.

	Last generated 2010-01-06 17:00:07.581000 UTC.

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

package com.esoteric.motion 
{
	import com.esoteric.core.AbstractElement;

	import com.esoteric.core.IElement;
	import com.esoteric.display.ApplicationElement;
	import com.esoteric.events.ElementEvent;
	import com.esoteric.events.PropertyChangeEvent;
	
	public class AbstractTimelineElement extends AbstractElement
	{
		
		//---------------------------------------------------------------------
		// Constructor
		//---------------------------------------------------------------------
		
		/**
		 * Constructor.
		 */
		public function AbstractTimelineElement(root:ApplicationElement, parent:IElement, kind:String) 
		{
			super(root, parent, kind);
			

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
		private var _duration:int = 10000;

		/**
		 * @private
		 */
		private var _position:int = 0;

		/**
		 * @private
		 */
		private var _repeat:int = 1;

		/**
		 * @private
		 */
		private var _playing:Boolean = false;


		//---------------------------------------------------------------------
		// Getters and setters
		//---------------------------------------------------------------------
		
		/**
		 * The duration of the timeline, in milliseconds. [default = 10000]
		 *
		 * @default	10000
		 */
		public function get duration():int { return _duration; }
		
		public function set duration(value:int):void 
		{
			if(_duration != value)
			{
				var oldValue:int = _duration;
			

			
				_duration = value;
				if(hasEventListener(PropertyChangeEvent.PROPERTY_UPDATED))
				{
					dispatchEventNow(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'duration', oldValue, value));
				}
				root.renderQueue.add(this);
			}
		}

		/**
		 * The position of the timeline, in milliseconds. [default = 0]
		 *
		 * @default	0
		 */
		public function get position():int { return _position; }
		
		public function set position(value:int):void 
		{
			if(_position != value)
			{
				var oldValue:int = _position;
			

			
				_position = value;
				if(hasEventListener(PropertyChangeEvent.PROPERTY_UPDATED))
				{
					dispatchEventNow(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'position', oldValue, value));
				}
				root.renderQueue.add(this);
			}
		}

		/**
		 * How many times should the timeline repeat, 0 = infinite. [default = 1]
		 *
		 * @default	1
		 */
		public function get repeat():int { return _repeat; }
		
		public function set repeat(value:int):void 
		{
			if(_repeat != value)
			{
				var oldValue:int = _repeat;
			

			
				_repeat = value;
				if(hasEventListener(PropertyChangeEvent.PROPERTY_UPDATED))
				{
					dispatchEventNow(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'repeat', oldValue, value));
				}
				root.renderQueue.add(this);
			}
		}

		/**
		 * Whether the timeline is playing. [default = false]
		 *
		 * @default	false
		 */
		public function get playing():Boolean { return _playing; }
		
		public function set playing(value:Boolean):void 
		{
			if(_playing != value)
			{
				var oldValue:Boolean = _playing;
			

			
				_playing = value;
				if(hasEventListener(PropertyChangeEvent.PROPERTY_UPDATED))
				{
					dispatchEventNow(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'playing', oldValue, value));
				}
				root.renderQueue.add(this);
			}
		}



	}
	
}
