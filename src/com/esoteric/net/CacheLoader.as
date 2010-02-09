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
	
package com.esoteric.net 
{
	import com.carlcalderon.arthropod.Debug;
	import com.esoteric.events.VerboseEventDispatcher;
	import flash.display.Bitmap;
	import flash.display.Loader;
	import flash.events.Event;
	import flash.events.IOErrorEvent;
	import flash.net.URLLoader;
	import flash.net.URLLoaderDataFormat;
	import flash.net.URLRequest;
	import flash.utils.ByteArray;
	
	/**
	 * A cache loader.
	 * 
	 * @author Stephan Florquin
	 */
	public class CacheLoader extends VerboseEventDispatcher
	{
		
		//---------------------------------------------------------------------
		// Constructor
		//---------------------------------------------------------------------
		
		/**
		 * Constructor.
		 * 
		 * @param	cache	the cache
		 * @param	url		the URL
		 * @param	format	the format
		 */
		public function CacheLoader(
			cache:Cache,
			urlReq:URLRequest,
			format:int = CacheFormat.BIT_ARRAY
		)
		{
			_cache = cache;
			_urlReq = urlReq;
			_format = format;
			
			_urlLoader.dataFormat = URLLoaderDataFormat.BINARY;
		}
		
		//---------------------------------------------------------------------
		// Members
		//---------------------------------------------------------------------
		
		/**
		 * @private
		 */
		private var _cache:Cache;
		
		/**
		 * @private
		 */
		private var _urlReq:URLRequest;
		
		/**
		 * @private
		 */
		private var _format:int;
		
		/**
		 * @private
		 */
		private var _urlLoader:URLLoader = new URLLoader();
		
		/**
		 * @private
		 */
		private var _loader:Loader = new Loader();
		
		//---------------------------------------------------------------------
		// Functions
		//---------------------------------------------------------------------
		
		/**
		 * Loads the resource and caches it.
		 */
		public function load():void
		{
			if (_urlReq)
			{
				try
				{
					_urlLoader.close();
				}
				catch (error:Error)
				{
					
				}
				
				var data:* = _cache.get(_urlReq.url, _format);
				
				if (data)
				{
					dispatchEvent(new Event(Event.COMPLETE));
					return;
				}
				
				if (_format != CacheFormat.BIT_ARRAY)
				{
					data = _cache.get(_urlReq.url, CacheFormat.BIT_ARRAY);
					
					if (data)
					{
						_loader.loadBytes(ByteArray(data));
						_loader.contentLoaderInfo.addEventListener(Event.COMPLETE, bytesLoadedHandler);
						_loader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR, bytesIoErrorHandler);
						
						return;
					}
				}
				
				_urlLoader.addEventListener(Event.COMPLETE, completeHandler);
				_urlLoader.addEventListener(IOErrorEvent.IO_ERROR, ioErrorHandler);
				_urlLoader.load(_urlReq);
			}
		}
		
		/**
		 * @private
		 */
		private function completeHandler(event:Event):void
		{
			switch(_format)
			{
				case CacheFormat.BIT_ARRAY:
				_cache.set(_urlReq.url, ByteArray(_urlLoader.data), CacheFormat.BIT_ARRAY);
				dispatchEvent(new Event(Event.COMPLETE));
				break;
				
				case CacheFormat.BITMAP_DATA:
				_loader.loadBytes(ByteArray(_urlLoader.data));
				_loader.contentLoaderInfo.addEventListener(Event.COMPLETE, bytesLoadedHandler);
				_loader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR, bytesIoErrorHandler);
				break;
			}
			
			_urlLoader.removeEventListener(Event.COMPLETE, completeHandler);
			_urlLoader.removeEventListener(IOErrorEvent.IO_ERROR, ioErrorHandler);
		}
		
		/**
		 * @private
		 */
		private function ioErrorHandler(event:IOErrorEvent):void
		{
			_cache.set(_urlReq.url, null, CacheFormat.BIT_ARRAY);
			
			_urlLoader.removeEventListener(Event.COMPLETE, completeHandler);
			_urlLoader.removeEventListener(IOErrorEvent.IO_ERROR, ioErrorHandler);
			
			dispatchEvent(new IOErrorEvent(IOErrorEvent.IO_ERROR));
		}
		
		/**
		 * @private
		 */
		private function bytesLoadedHandler(e:Event):void
		{
			var content:Bitmap = Bitmap(_loader.content);
			
			_cache.set(_urlReq.url, content.bitmapData, CacheFormat.BITMAP_DATA);
			_loader.contentLoaderInfo.removeEventListener(Event.COMPLETE, bytesLoadedHandler);
			_loader.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR, bytesIoErrorHandler);
			dispatchEvent(new Event(Event.COMPLETE));
		}
		
		/**
		 * @private
		 */
		private function bytesIoErrorHandler(e:IOErrorEvent):void
		{
			_cache.set(_urlReq.url, null, CacheFormat.BITMAP_DATA);
			_loader.contentLoaderInfo.removeEventListener(Event.COMPLETE, bytesLoadedHandler);
			_loader.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR, bytesIoErrorHandler);
			dispatchEvent(new IOErrorEvent(IOErrorEvent.IO_ERROR));
		}
		
	}

}