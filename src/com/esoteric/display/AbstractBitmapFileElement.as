/*
	DO NOT MODIFY THIS FILE, THE CODE GENERATOR WILL ERASE ANY CHANGES MADE.
	MAKE CHANGES TO THE DERIVED CLASS INSTEAD.

	Last generated 2010-02-02 00:19:45.313000 UTC.

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
	import com.esoteric.events.ElementEvent;
	import com.esoteric.events.PropertyChangeEvent;
	
	use namespace esoteric;
	
	public class AbstractBitmapFileElement extends BitmapElement
	{
		
		//---------------------------------------------------------------------
		// Constructor
		//---------------------------------------------------------------------
		
		/**
		 * Constructor.
		 */
		public function AbstractBitmapFileElement(context:Context, kind:String) 
		{
			super(context, kind);
			

		}
		
		//---------------------------------------------------------------------
		// Overrides
		//---------------------------------------------------------------------
		
		/**
		 * @inheritDoc
		 */
		
		override public function initialize():void
		{
			super.initialize();
			

		}

		//---------------------------------------------------------------------
		// Variables
		//---------------------------------------------------------------------
		
		/**
		 * @private
		 */
		esoteric var _url:String = null;

		/**
		 * @private
		 */
		esoteric var _bitmapHeight:int = 0;

		/**
		 * @private
		 */
		esoteric var _bitmapWidth:int = 0;


		//---------------------------------------------------------------------
		// Getters and setters
		//---------------------------------------------------------------------
		
		/**
		 * The URL of the bitmap. [default = null]
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
				dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED + 'url', false, false, oldValue, value));
				//context.renderQueue.add(this);


				dispatchEvent(new ElementEvent(ElementEvent.UPDATED));
			}
		}

		/**
		 * The height of the bitmap data. [default = 0]
		 *
		 * @default	0
		 */
		public function get bitmapHeight():int { return _bitmapHeight; }
		
		public function set bitmapHeight(value:int):void 
		{
			if(_bitmapHeight != value)
			{
				var oldValue:int = _bitmapHeight;
			

			
				_bitmapHeight = value;
				dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED + 'bitmapHeight', false, false, oldValue, value));
				//context.renderQueue.add(this);


				dispatchEvent(new ElementEvent(ElementEvent.UPDATED));
			}
		}

		/**
		 * The width of the bitmap data. [default = 0]
		 *
		 * @default	0
		 */
		public function get bitmapWidth():int { return _bitmapWidth; }
		
		public function set bitmapWidth(value:int):void 
		{
			if(_bitmapWidth != value)
			{
				var oldValue:int = _bitmapWidth;
			

			
				_bitmapWidth = value;
				dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED + 'bitmapWidth', false, false, oldValue, value));
				//context.renderQueue.add(this);


				dispatchEvent(new ElementEvent(ElementEvent.UPDATED));
			}
		}



	}
	
}
