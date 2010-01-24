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
	import flash.display.Bitmap;
	import flash.display.Loader;
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IOErrorEvent;
	import flash.net.URLLoader;
	import flash.net.URLLoaderDataFormat;
	import flash.net.URLRequest;
	import flash.utils.ByteArray;
	
	/**
	 * A cache request.
	 * 
	 * @author Stephan Florquin
	 */
	public class CacheRequest extends EventDispatcher
	{
		
		//---------------------------------------------------------------------
		// Constructor
		//---------------------------------------------------------------------
		
		/**
		 * Constructor.
		 * 
		 * @param	cache	the cache
		 * @param	url		the URL
		 */
		public function CacheRequest(cache:Cache, url:String, bitmapData:Boolean = false) 
		{
			_cache = cache;
			_url = url;
			_bitmapData = bitmapData;
			
			_urlLoader.dataFormat = URLLoaderDataFormat.BINARY;
		}
		
		//---------------------------------------------------------------------
		// Variables
		//---------------------------------------------------------------------
		
		/**
		 * @private
		 */
		private var _cache:Cache;
		
		/**
		 * @private
		 */
		private var _url:String;
		
		/**
		 * @private
		 */
		private var _bitmapData:Boolean;
		
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
			if (_url)
			{
				try
				{
					_urlLoader.close();
				}
				catch (error:Error)
				{
					
				}
				
				_urlLoader.addEventListener(Event.COMPLETE, completeHandler, false, 0, true);
				_urlLoader.addEventListener(IOErrorEvent.IO_ERROR, ioErrorHandler, false, 0, true);
				_urlLoader.load(new URLRequest(_url));
			}
		}
		
		/**
		 * @private
		 */
		private function completeHandler(event:Event):void
		{
			if (_bitmapData)
			{
				_loader.loadBytes(ByteArray(_urlLoader.data));
				_loader.contentLoaderInfo.addEventListener(Event.COMPLETE, bytesLoadedHandler, false, 0, true);
				_loader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR, bytesIoErrorHandler, false, 0, true);
			}
			else
			{
				_cache.set(_url, ByteArray(_urlLoader.data));
				
				dispatchEvent(new Event(Event.COMPLETE));
			}
			
			_urlLoader.removeEventListener(Event.COMPLETE, completeHandler);
			_urlLoader.removeEventListener(IOErrorEvent.IO_ERROR, ioErrorHandler);
		}
		
		/**
		 * @private
		 */
		private function ioErrorHandler(event:IOErrorEvent):void
		{
			_cache.set(_url, null);
			
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
			
			_cache.set(_url, content.bitmapData);
			_loader.contentLoaderInfo.removeEventListener(Event.COMPLETE, bytesLoadedHandler);
			_loader.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR, bytesIoErrorHandler);
			dispatchEvent(new Event(Event.COMPLETE));
		}
		
		/**
		 * @private
		 */
		private function bytesIoErrorHandler(e:IOErrorEvent):void
		{
			_cache.set(_url, null);
			_loader.contentLoaderInfo.removeEventListener(Event.COMPLETE, bytesLoadedHandler);
			_loader.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR, bytesIoErrorHandler);
			dispatchEvent(new IOErrorEvent(IOErrorEvent.IO_ERROR));
		}
		
	}

}