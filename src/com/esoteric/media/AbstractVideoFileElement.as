/*
	DO NOT MODIFY THIS FILE, THE CODE GENERATOR WILL ERASE ANY CHANGES MADE.
	MAKE CHANGES TO THE DERIVED CLASS INSTEAD.

	Last generated 2010-01-20 20:05:47.818000 UTC.

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

package com.esoteric.media 
{
	import com.esoteric.display.DisplayObjectElement;

	import com.esoteric.core.Context;
	import com.esoteric.events.ElementEvent;
	import com.esoteric.events.PropertyChangeEvent;
	
	public class AbstractVideoFileElement extends DisplayObjectElement
	{
		
		//---------------------------------------------------------------------
		// Constructor
		//---------------------------------------------------------------------
		
		/**
		 * Constructor.
		 */
		public function AbstractVideoFileElement(context:Context, kind:String) 
		{
			super(context, kind);
			

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
		private var _url:String = null;

		/**
		 * @private
		 */
		private var _videoWidth:int = 0;

		/**
		 * @private
		 */
		private var _length:int = 0;

		/**
		 * @private
		 */
		private var _bufferLength:Number = 0;

		/**
		 * @private
		 */
		private var _position:int = 0;

		/**
		 * @private
		 */
		private var _buffering:Boolean = false;

		/**
		 * @private
		 */
		private var _playing:Boolean = false;

		/**
		 * @private
		 */
		private var _videoHeight:int = 0;


		//---------------------------------------------------------------------
		// Getters and setters
		//---------------------------------------------------------------------
		
		/**
		 * The URL of the video. [default = null]
		 *
		 * @default	null
		 */
		public function get url():String { return _url; }
		
		public function set url(value:String):void 
		{
			if(_url != value)
			{
				var oldValue:String = _url;
			

			
				_url = value;
				if(hasEventListener(PropertyChangeEvent.PROPERTY_UPDATED))
				{
					dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'url', oldValue, value));
				}
				
			}
		}

		/**
		 * The width of the video source. [default = 0]
		 *
		 * @default	0
		 */
		public function get videoWidth():int { return _videoWidth; }
		
		public function set videoWidth(value:int):void 
		{
			if(_videoWidth != value)
			{
				var oldValue:int = _videoWidth;
			

			
				_videoWidth = value;
				if(hasEventListener(PropertyChangeEvent.PROPERTY_UPDATED))
				{
					dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'videoWidth', oldValue, value));
				}
				
			}
		}

		/**
		 * The length of the sound file, in milliseconds. [default = 0]
		 *
		 * @default	0
		 */
		public function get length():int { return _length; }
		
		public function set length(value:int):void 
		{
			if(_length != value)
			{
				var oldValue:int = _length;
			

			
				_length = value;
				if(hasEventListener(PropertyChangeEvent.PROPERTY_UPDATED))
				{
					dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'length', oldValue, value));
				}
				
			}
		}

		/**
		 * The length of the data in the buffer. [default = 0]
		 *
		 * @default	0
		 */
		public function get bufferLength():Number { return _bufferLength; }
		
		public function set bufferLength(value:Number):void 
		{
			if(_bufferLength != value)
			{
				var oldValue:Number = _bufferLength;
			

			
				_bufferLength = value;
				if(hasEventListener(PropertyChangeEvent.PROPERTY_UPDATED))
				{
					dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'bufferLength', oldValue, value));
				}
				
			}
		}

		/**
		 * The position of the playhead in the sound file, in milliseconds. [default = 0]
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
					dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'position', oldValue, value));
				}
				
			}
		}

		/**
		 * Whether the video is buffering. [default = false]
		 *
		 * @default	false
		 */
		public function get buffering():Boolean { return _buffering; }
		
		public function set buffering(value:Boolean):void 
		{
			if(_buffering != value)
			{
				var oldValue:Boolean = _buffering;
			

			
				_buffering = value;
				if(hasEventListener(PropertyChangeEvent.PROPERTY_UPDATED))
				{
					dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'buffering', oldValue, value));
				}
				
			}
		}

		/**
		 * Whether the video is playing. [default = false]
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
					dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'playing', oldValue, value));
				}
				
			}
		}

		/**
		 * The height of the video source. [default = 0]
		 *
		 * @default	0
		 */
		public function get videoHeight():int { return _videoHeight; }
		
		public function set videoHeight(value:int):void 
		{
			if(_videoHeight != value)
			{
				var oldValue:int = _videoHeight;
			

			
				_videoHeight = value;
				if(hasEventListener(PropertyChangeEvent.PROPERTY_UPDATED))
				{
					dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'videoHeight', oldValue, value));
				}
				
			}
		}



	}
	
}
