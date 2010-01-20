/*
	DO NOT MODIFY THIS FILE, THE CODE GENERATOR WILL ERASE ANY CHANGES MADE.
	MAKE CHANGES TO THE DERIVED CLASS INSTEAD.

	Last generated 2010-01-20 20:05:47.833000 UTC.

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

package com.esoteric.sound 
{
	import com.esoteric.core.TweenableElement;
	import flash.media.SoundChannel;
	import flash.media.SoundTransform;
	import flash.utils.Timer;

	import com.esoteric.core.Context;
	import com.esoteric.events.ElementEvent;
	import com.esoteric.events.PropertyChangeEvent;
	
	public class AbstractSoundFileElement extends TweenableElement
	{
		
		//---------------------------------------------------------------------
		// Constructor
		//---------------------------------------------------------------------
		
		/**
		 * Constructor.
		 */
		public function AbstractSoundFileElement(context:Context, kind:String) 
		{
			super(context, kind);
			
			timer.delay = _delay;

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
		private var _album:String = null;

		/**
		 * @private
		 */
		private var _comment:String = null;

		/**
		 * @private
		 */
		private var _soundChannel:SoundChannel = null;

		/**
		 * @private
		 */
		private var _artist:String = null;

		/**
		 * @private
		 */
		private var _url:String = null;

		/**
		 * @private
		 */
		private var _mute:Boolean = false;

		/**
		 * @private
		 */
		private var _timer:Timer = new Timer(100);

		/**
		 * @private
		 */
		private var _volume:Number = 1.0;

		/**
		 * @private
		 */
		private var _genre:String = null;

		/**
		 * @private
		 */
		private var _length:int = 0;

		/**
		 * @private
		 */
		private var _track:String = null;

		/**
		 * @private
		 */
		private var _year:String = null;

		/**
		 * @private
		 */
		private var _loops:int = 1;

		/**
		 * @private
		 */
		private var _position:int = 0;

		/**
		 * @private
		 */
		private var _playing:Boolean = false;

		/**
		 * @private
		 */
		private var _songName:String = null;

		/**
		 * @private
		 */
		private var _delay:Number = 100;

		/**
		 * @private
		 */
		private var _soundTransform:SoundTransform = new SoundTransform();


		//---------------------------------------------------------------------
		// Getters and setters
		//---------------------------------------------------------------------
		
		/**
		 * The name of the album; corresponds to the ID3 2.0 tag TALB. [default = null]
		 *
		 * @default	null
		 */
		public function get album():String { return _album; }
		
		public function set album(value:String):void 
		{
			if(_album != value)
			{
				var oldValue:String = _album;
			

			
				_album = value;
				if(hasEventListener(PropertyChangeEvent.PROPERTY_UPDATED))
				{
					dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'album', oldValue, value));
				}
				
			}
		}

		/**
		 * A comment about the recording; corresponds to the ID3 2.0 tag COMM. [default = null]
		 *
		 * @default	null
		 */
		public function get comment():String { return _comment; }
		
		public function set comment(value:String):void 
		{
			if(_comment != value)
			{
				var oldValue:String = _comment;
			

			
				_comment = value;
				if(hasEventListener(PropertyChangeEvent.PROPERTY_UPDATED))
				{
					dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'comment', oldValue, value));
				}
				
			}
		}

		/**
		 * The SoundChannel object. [default = null]
		 *
		 * @default	null
		 */
		protected function get soundChannel():SoundChannel { return _soundChannel; }
		
		protected function set soundChannel(value:SoundChannel):void 
		{
			if(_soundChannel != value)
			{
				var oldValue:SoundChannel = _soundChannel;
			
				if(value)
				{
					value.soundTransform = _soundTransform;

				}
			
				_soundChannel = value;


			}
		}

		/**
		 * The name of the artist; corresponds to the ID3 2.0 tag TPE1. [default = null]
		 *
		 * @default	null
		 */
		public function get artist():String { return _artist; }
		
		public function set artist(value:String):void 
		{
			if(_artist != value)
			{
				var oldValue:String = _artist;
			

			
				_artist = value;
				if(hasEventListener(PropertyChangeEvent.PROPERTY_UPDATED))
				{
					dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'artist', oldValue, value));
				}
				
			}
		}

		/**
		 * The url of the sound file. [default = null]
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
		 * Whether the sound is mute. [default = false]
		 *
		 * @default	false
		 */
		public function get mute():Boolean { return _mute; }
		
		public function set mute(value:Boolean):void 
		{
			if(_mute != value)
			{
				var oldValue:Boolean = _mute;
			

			
				_mute = value;
				if(hasEventListener(PropertyChangeEvent.PROPERTY_UPDATED))
				{
					dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'mute', oldValue, value));
				}
				
			}
		}

		/**
		 * The Timer object. [default = new Timer(100)]
		 *
		 * @default	new Timer(100)
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

				}
			
				_timer = value;


			}
		}

		/**
		 * The volume of the sound, between 0.0 and 1.0. [default = 1.0]
		 *
		 * @default	1.0
		 */
		public function get volume():Number { return _volume; }
		
		public function set volume(value:Number):void 
		{
			if(_volume != value)
			{
				var oldValue:Number = _volume;
			

			
				_volume = value;
				if(hasEventListener(PropertyChangeEvent.PROPERTY_UPDATED))
				{
					dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'volume', oldValue, value));
				}
				
			}
		}

		/**
		 * The genre of the song; corresponds to the ID3 2.0 tag TCON. [default = null]
		 *
		 * @default	null
		 */
		public function get genre():String { return _genre; }
		
		public function set genre(value:String):void 
		{
			if(_genre != value)
			{
				var oldValue:String = _genre;
			

			
				_genre = value;
				if(hasEventListener(PropertyChangeEvent.PROPERTY_UPDATED))
				{
					dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'genre', oldValue, value));
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
		 * The track number; corresponds to the ID3 2.0 tag TRCK. [default = null]
		 *
		 * @default	null
		 */
		public function get track():String { return _track; }
		
		public function set track(value:String):void 
		{
			if(_track != value)
			{
				var oldValue:String = _track;
			

			
				_track = value;
				if(hasEventListener(PropertyChangeEvent.PROPERTY_UPDATED))
				{
					dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'track', oldValue, value));
				}
				
			}
		}

		/**
		 * The year of the recording; corresponds to the ID3 2.0 tag TYER. [default = null]
		 *
		 * @default	null
		 */
		public function get year():String { return _year; }
		
		public function set year(value:String):void 
		{
			if(_year != value)
			{
				var oldValue:String = _year;
			

			
				_year = value;
				if(hasEventListener(PropertyChangeEvent.PROPERTY_UPDATED))
				{
					dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'year', oldValue, value));
				}
				
			}
		}

		/**
		 * How many times to loop the sound. [default = 1]
		 *
		 * @default	1
		 */
		public function get loops():int { return _loops; }
		
		public function set loops(value:int):void 
		{
			if(_loops != value)
			{
				var oldValue:int = _loops;
			

			
				_loops = value;
				if(hasEventListener(PropertyChangeEvent.PROPERTY_UPDATED))
				{
					dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'loops', oldValue, value));
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
		 * Whether the sound is playing. [default = false]
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
		 * The name of the song; corresponds to the ID3 2.0 tag TIT2. [default = null]
		 *
		 * @default	null
		 */
		public function get songName():String { return _songName; }
		
		public function set songName(value:String):void 
		{
			if(_songName != value)
			{
				var oldValue:String = _songName;
			

			
				_songName = value;
				if(hasEventListener(PropertyChangeEvent.PROPERTY_UPDATED))
				{
					dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'songName', oldValue, value));
				}
				
			}
		}


		/**
		 * The delay between playhead updates, in milliseconds. [default = 100]
		 *
		 * @default	100
		 */
		public function get delay():Number { return _delay; }
		
		public function set delay(value:Number):void 
		{

			if(delay != value)
			{
				var oldValue:Number = _delay;


				
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
		 * The SoundChannel object [default = new SoundTransform()]
		 *
		 * @default	new SoundTransform()
		 */
		protected function get soundTransform():SoundTransform { return _soundTransform; }
		
		protected function set soundTransform(value:SoundTransform):void 
		{

			if(soundTransform != value)
			{
				var oldValue:SoundTransform = _soundTransform;


				
				_soundTransform = value;

				if(soundChannel)
				{
					soundChannel.soundTransform = value;
				}

			

			}
		}


	}
	
}
