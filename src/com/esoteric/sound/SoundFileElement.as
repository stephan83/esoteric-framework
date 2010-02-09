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

package com.esoteric.sound
{
	import com.esoteric.core.IElement;
	import com.esoteric.core.Context;
	import com.esoteric.events.PlaybackEvent;
	import flash.events.Event;
	import flash.events.TimerEvent;
	import flash.media.Sound;
	import flash.media.SoundChannel;
	import flash.media.SoundTransform;
	import flash.net.URLRequest;
	
	public class SoundFileElement extends AbstractSoundFileElement
	{
		
		//---------------------------------------------------------------------
		// Constructor
		//---------------------------------------------------------------------
		
		/**
		 * Constructor.
		 */
		public function SoundFileElement(context:Context, kind:String) 
		{
			super(context, kind);
			
			timer.addEventListener(TimerEvent.TIMER, timerHandler, false, 0, true);
		}
		
		//---------------------------------------------------------------------
		// Variables
		//---------------------------------------------------------------------
		
		/**
		 * @private
		 */
		private var _sound:Sound;
		
		/**
		 * @private
		 */
		private var _ready:Boolean;
		
		//---------------------------------------------------------------------
		// Overridden properties
		//---------------------------------------------------------------------
		
		/**
		 * @inheritDoc
		 */
		override public function set url(value:String):void
		{
			if (_ready && playing)
			{
				pause();
			}
			
			if (value)
			{
				load(value);
			}
			
			super.url = value;
			position = 0;
		}
		
		/**
		 * @inheritDoc
		 */
		override public function set playing(value:Boolean):void
		{
			if (_ready)
			{
				if (value && !playing)
				{
					play();
				}
				else if (!value && playing)
				{
					pause();
				}
			}
			
			super.playing = value;
		}
		
		/**
		 * @inheritDoc
		 */
		override public function set position(value:int):void
		{
			if (playing && (int(soundChannel.position % length) != value))
			{
				seek(value);
			}
			else
			{
				super.position = value;
			}
		}
		
		/**
		 * @inheritDoc
		 */
		override public function set volume(value:Number):void
		{
			if (!mute)
			{
				soundTransform.volume = value;
				
				if (soundChannel)
				{
					soundChannel.soundTransform = soundTransform;
				}	
			}
			
			super.volume = value;
		}
		
		/**
		 * @inheritDoc
		 */
		override public function set mute(value:Boolean):void
		{
			if (!value)
			{
				soundTransform.volume = volume;
				
				if (soundChannel)
				{
					soundChannel.soundTransform = soundTransform;
				}
			}
			else
			{
				soundTransform.volume = 0;
				
				if (soundChannel)
				{
					soundChannel.soundTransform = soundTransform;
				}
			}
			
			super.mute = value;
		}
		
		/**
		 * @inheritDoc
		 */
		override public function destroy():void
		{
			super.destroy();
			
			if (!_ready)
			{
				_sound.close();
			}
		}
		
		//---------------------------------------------------------------------
		// Methods
		//---------------------------------------------------------------------
		
		/**
		 * @private
		 */
		private function load(url:String):void
		{
			_sound = new Sound(new URLRequest(url));
			_sound.addEventListener(Event.OPEN, openHandler, false, 0, true);
			_sound.addEventListener(Event.ID3, ID3Handler, false, 0, true);
		}
		
		/**
		 * @private
		 */
		private function play():void
		{
			soundChannel = _sound.play(position, loops);
			soundChannel.addEventListener(Event.SOUND_COMPLETE, soundCompleteHandler, false, 0, true);
			
			timer.reset();
			timer.start();
			
			dispatchEvent(new PlaybackEvent(PlaybackEvent.PLAYBACK_STARTED, false, false, position, length));
		}
		
		/**
		 * @private
		 */
		private function pause():void
		{
			soundChannel.stop();
			
			timer.stop();
			
			dispatchEvent(new PlaybackEvent(PlaybackEvent.PLAYBACK_PAUSED, false, false, position, length));
		}
		
		/**
		 * @private
		 */
		private function seek(position:int):void
		{
			soundChannel.stop();
			
			soundChannel = _sound.play(position, loops);
			soundChannel.addEventListener(Event.SOUND_COMPLETE, soundCompleteHandler, false, 0, true);
		}
		
		/**
		 * @private
		 */
		private function openHandler(e:Event):void 
		{
			if (playing)
			{
				play();
			}
			
			_ready = true;
		}
		
		/**
		 * @private
		 */
		private function soundCompleteHandler(e:Event):void 
		{
			playing = false;
			dispatchEvent(new PlaybackEvent(PlaybackEvent.PLAYBACK_COMPLETE, false, false, position, length));
		}
		
		/**
		 * @private
		 */
		private function timerHandler(e:TimerEvent):void 
		{
			
			var estimatedLength:uint = Math.ceil(_sound.length / (_sound.bytesLoaded / _sound.bytesTotal));
			
			if (length != estimatedLength)
			{
				length = estimatedLength;
			}
			
			position = soundChannel.position % length;
			
			dispatchEvent(new PlaybackEvent(PlaybackEvent.PLAYBACK_UPDATED, false, false, position, length));
		}
		
		/**
		 * @private
		 */
		private function ID3Handler(e:Event):void 
		{
			album = _sound.id3.album;
			artist = _sound.id3.artist;
			comment = _sound.id3.comment;
			genre = _sound.id3.genre;
			songName = _sound.id3.songName;
			track = _sound.id3.track;
			year = _sound.id3.year;
		}

	}
	
}
