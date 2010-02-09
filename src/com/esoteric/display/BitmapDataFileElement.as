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
	import com.esoteric.core.Context;
	import com.esoteric.esoteric;
	import com.esoteric.events.PropertyChangeEvent;
	import com.esoteric.net.CacheFormat;
	import com.esoteric.net.CacheLoader;
	import flash.display.BitmapData;
	import flash.events.Event;
	import flash.events.IOErrorEvent;
	import flash.net.URLRequest;
	
	use namespace esoteric;
	
	public class BitmapDataFileElement extends AbstractBitmapDataFileElement
	{
		
		//---------------------------------------------------------------------
		// Constructor
		//---------------------------------------------------------------------
		
		/**
		 * Constructor.
		 */
		public function BitmapDataFileElement(context:Context, kind:String) 
		{
			super(context, kind);
		}
		
		//---------------------------------------------------------------------
		// Overrides
		//---------------------------------------------------------------------
		
		/**
		 * @private
		 */
		override public function set url(value:String):void 
		{
			if (value) 
			{
				var cacheLoader:CacheLoader = new CacheLoader(context.cache, new URLRequest(value), CacheFormat.BITMAP_DATA);
				cacheLoader.addEventListener(Event.COMPLETE, completeHandler);
				cacheLoader.addEventListener(IOErrorEvent.IO_ERROR, ioErrorHandler);
				cacheLoader.load();
			}
			else
			{
				_bitmapData = null;
			}
			
			super.url = value;
		}
		
		//---------------------------------------------------------------------
		// Methods
		//---------------------------------------------------------------------
		
		/**
		 * @private
		 */
		private function completeHandler(e:Event):void 
		{
			var bitmapData:BitmapData = context.cache.get(_url, CacheFormat.BITMAP_DATA) as BitmapData;
			
			setBitmapData(bitmapData);
			
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
		private function setBitmapData(value:BitmapData):void
		{
			_bitmapData = value.clone();
			
			width = _bitmapData.width;
			height = _bitmapData.height;
			
			dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED + 'bitmapData', false, false, null, _bitmapData));
		}


	}
	
}
