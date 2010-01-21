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

package com.esoteric.media
{
	import com.esoteric.core.IElement;
	import com.esoteric.core.Context;
	import com.esoteric.events.AudioFileEvent;
	import flash.display.DisplayObject;
	import flash.events.NetStatusEvent;
	import flash.events.TimerEvent;
	import flash.media.Video;
	import flash.net.NetConnection;
	import flash.net.NetStream;
	import flash.utils.Timer;
	
	public class VideoFileElement extends AbstractVideoFileElement
	{
		
		//---------------------------------------------------------------------
		// Constructor
		//---------------------------------------------------------------------
		
		/**
		 * Constructor.
		 */
		public function VideoFileElement(context:Context, kind:String) 
		{
			super(context, kind);
			
			var nc:NetConnection = new NetConnection();
			
			nc.connect(null);
			
			_ns = new NetStream(nc);
			_ns.bufferTime = 5;
			
			_ns.client = {
				'onMetaData': function(data:Object):void {
					length = data.duration * 1000;
					
					videoWidth = data.width;
					videoHeight = data.height;
				}
			}
			
			_video.attachNetStream(_ns);
			
			_ns.addEventListener(NetStatusEvent.NET_STATUS, netStatusHandler);
			_timer.addEventListener(TimerEvent.TIMER, timerHandler);
		}
		
		//---------------------------------------------------------------------
		// Members
		//---------------------------------------------------------------------
		
		/**
		 * @private
		 */
		private var _video:Video = new Video();
		
		/**
		 * @private
		 */
		private var _ns:NetStream;
		
		/**
		 * @private
		 */
		private var _timer:Timer = new Timer(200);
		
		//---------------------------------------------------------------------
		// Overridden properties
		//---------------------------------------------------------------------
		
		/**
		 * @inheritDoc
		 */
		override protected function createDisplayObject():DisplayObject
		{
			return _video;
		}
		
		/**
		 * @inheritDoc
		 */
		override public function set url(value:String):void
		{
			if (value)
			{
				_ns.play(value);
				
				if (!playing)
				{
					_ns.pause();
				}
			}
			
			super.url = value;
		}
		
		/**
		 * @inheritDoc
		 */
		override public function set playing(value:Boolean):void
		{
			if (value && !playing)
			{
				buffering = true;
				
				_ns.resume();
				_timer.start();
			}
			else if (!value && playing)
			{
				_ns.pause();
				_timer.stop();
			}
			
			super.playing = value;
		}
		
		/**
		 * @inheritDoc
		 */
		override public function set position(value:int):void
		{
			_ns.seek(value / 1000);
			
			super.position = value;
		}
		
		//---------------------------------------------------------------------
		// Functions
		//---------------------------------------------------------------------
		
		/**
		 * @private
		 */
		private function timerHandler(e:TimerEvent):void
		{
			var newPosition:int = _ns.time * 1000;
			
			if (super.position < newPosition)
			{
				buffering = false;
			}
			
			super.position = newPosition;
			
			bufferLength = _ns.bufferLength * 1000;
		}
		
		/**
		 * @private
		 */
		private function netStatusHandler(e:NetStatusEvent):void
		{
			switch(e.info.code)
			{
				case 'NetStream.Play.Stop':
				playing = false;
				buffering = false;
				dispatchEvent(new AudioFileEvent(AudioFileEvent.PLAYBACK_COMPLETE));
				break;
				
				case 'NetStream.Buffer.Empty':
				buffering = true;
				break;
				
				case 'NetStream.Buffer.Full':
				buffering = false;
				break;
				
				case 'NetStream.Buffer.Flush':
				//buffering = false;
				break;
			}
		}

	}
	
}
