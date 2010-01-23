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

package com.esoteric.display
{
	import com.esoteric.core.IElement;
	import com.esoteric.core.Context;
	import com.esoteric.events.ElementEvent;
	import com.esoteric.net.CacheRequest;
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.Loader;
	import flash.events.Event;
	import flash.events.IOErrorEvent;
	import flash.utils.ByteArray;
	
	/**
	* Generated 2008-08-04 08:40:26.455000 UTC.
	*/
	public class BitmapFileElement extends AbstractBitmapFileElement
	{
		
		//---------------------------------------------------------------------
		// Constructor
		//---------------------------------------------------------------------
		
		/**
		 * Constructor.
		 */
		public function BitmapFileElement(context:Context, kind:String) 
		{
			super(context, kind);
			
			addEventListener(ElementEvent.BYTES_LOADED, bytesLoadedHandler);
		}
		
		//---------------------------------------------------------------------
		// Variables
		//---------------------------------------------------------------------
		
		/**
		 * @private
		 */
		private var _loader:Loader = new Loader();
		
		//---------------------------------------------------------------------
		// Overridden properties
		//---------------------------------------------------------------------
		
		/**
		 * @inheritDoc
		 */
		override public function set url(value:String):void
		{
			if (value) 
			{
				var data:* = context.cache.get(value);
				
				if (data is ByteArray)
				{
					loadBytes(ByteArray(data));
				}
				else if (data is Bitmap)
				{
					setBitmapData(data.bitmapData);
				}
				else if (data is BitmapData)
				{
					setBitmapData(data);
				}
				else if(!data)
				{
					var cacheRequest:CacheRequest = new CacheRequest(context.cache, value, true);
					cacheRequest.addEventListener(Event.COMPLETE, completeHandler);
					cacheRequest.addEventListener(IOErrorEvent.IO_ERROR, ioErrorHandler);
					cacheRequest.load();
				}
			}
			else
			{
				bitmap.bitmapData = null;
			}
			
			super.url = value;
		}
		
		//---------------------------------------------------------------------
		// Methods
		//---------------------------------------------------------------------
		
		/**
		 * @private
		 */
		private function loadBytes(bytes:ByteArray):void
		{
			_loader.loadBytes(bytes);
			
			_loader.contentLoaderInfo.addEventListener(Event.COMPLETE, bytesCompleteHandler, false, 0, true);
		}
		
		/**
		 * @private
		 */
		private function completeHandler(e:Event):void 
		{
			var data:* = context.cache.get(url);
			
			if (data is ByteArray)
			{
				loadBytes(ByteArray(data));
			}
			else if (data is Bitmap)
			{
				setBitmapData(data.bitmapData);
			}
			else if (data is BitmapData)
			{
				setBitmapData(data);
			}
			
			e.target.removeEventListener(Event.COMPLETE, completeHandler);
			e.target.removeEventListener(IOErrorEvent.IO_ERROR, ioErrorHandler);
		}
		
		/**
		 * @private
		 */
		private function ioErrorHandler(e:Event):void 
		{
			e.target.removeEventListener(Event.COMPLETE, completeHandler);
			e.target.removeEventListener(IOErrorEvent.IO_ERROR, ioErrorHandler);
		}
		
		/**
		 * @private
		 */
		private function bytesCompleteHandler(e:Event):void 
		{
			dispatchEvent(new ElementEvent(ElementEvent.BYTES_LOADED));
		}
		
		/**
		 * @private
		 */
		private function bytesLoadedHandler(e:ElementEvent):void
		{
			var content:Bitmap = Bitmap(_loader.content);
			
			bitmapWidth = content.width;
			bitmapHeight = content.height;
			
			bitmap.bitmapData = content.bitmapData;//new BitmapData(content.width, content.height, true, 0x00000000);
			//bitmap.bitmapData.draw(content, null, null, null, null, smoothing);
			
			bitmap.smoothing = smoothing;
			
			
			if(width != 0.0)
				bitmap.width = width;
			
			if(height != 0.0)
				bitmap.height = height;
		}
		
		/**
		 * @private
		 */
		private function setBitmapData(value:BitmapData):void
		{
			// TODO: clone?? Not sure if needed.
			bitmap.bitmapData = value;
			
			bitmapWidth = value.width;
			bitmapHeight = value.height;
			
			bitmap.smoothing = smoothing;
			
			
			if(width != 0.0)
				bitmap.width = width;
			
			if(height != 0.0)
				bitmap.height = height;
		}

	}
	
}
