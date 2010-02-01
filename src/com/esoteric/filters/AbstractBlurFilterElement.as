/*
	DO NOT MODIFY THIS FILE, THE CODE GENERATOR WILL ERASE ANY CHANGES MADE.
	MAKE CHANGES TO THE DERIVED CLASS INSTEAD.

	Last generated 2010-02-01 17:20:42.325000 UTC.

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

package com.esoteric.filters 
{
	import flash.filters.BitmapFilterQuality;
	import flash.filters.BlurFilter;

	import com.esoteric.core.Context;
	import com.esoteric.esoteric;
	import com.esoteric.events.ElementEvent;
	import com.esoteric.events.PropertyChangeEvent;
	
	use namespace esoteric;
	
	public class AbstractBlurFilterElement extends BitmapFilterElement
	{
		
		//---------------------------------------------------------------------
		// Constructor
		//---------------------------------------------------------------------
		
		/**
		 * Constructor.
		 */
		public function AbstractBlurFilterElement(context:Context, kind:String) 
		{
			super(context, kind);
			
			blurFilter.quality = _quality;
			blurFilter.blurX = _blurX;
			blurFilter.blurY = _blurY;

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
		esoteric var _blurFilter:BlurFilter = new BlurFilter();

		/**
		 * @private
		 */
		esoteric var _quality:int = BitmapFilterQuality.MEDIUM;

		/**
		 * @private
		 */
		esoteric var _blurX:Number = 4.0;

		/**
		 * @private
		 */
		esoteric var _blurY:Number = 4.0;


		//---------------------------------------------------------------------
		// Getters and setters
		//---------------------------------------------------------------------
		
		/**
		 *  [default = new BlurFilter()]
		 *
		 * @default	new BlurFilter()
		 */
		public function get blurFilter():BlurFilter { return _blurFilter; }
		
		public function set blurFilter(value:BlurFilter):void 
		{
			if(_blurFilter != value)
			{
				var oldValue:BlurFilter = _blurFilter;
			
				if(value)
				{
					value.quality = _quality;
					value.blurX = _blurX;
					value.blurY = _blurY;

				}
			
				_blurFilter = value;
				if(hasEventListener(PropertyChangeEvent.PROPERTY_UPDATED))
				{
					dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'blurFilter', oldValue, value));
				}
				//context.renderQueue.add(this);


				dispatchEvent(new ElementEvent(ElementEvent.UPDATED));
			}
		}


		/**
		 *  [default = BitmapFilterQuality.MEDIUM]
		 *
		 * @default	BitmapFilterQuality.MEDIUM
		 */
		public function get quality():int { return _quality; }
		
		public function set quality(value:int):void 
		{

			if(quality != value)
			{
				var oldValue:int = _quality;


				
				_quality = value;

				if(blurFilter)
				{
					blurFilter.quality = value;
				}

				//context.renderQueue.add(this);


				dispatchEvent(new ElementEvent(ElementEvent.UPDATED));			
				if(hasEventListener(PropertyChangeEvent.PROPERTY_UPDATED))
				{
					dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'quality', oldValue, value));
				}
			}
		}

		/**
		 *  [default = 4.0]
		 *
		 * @default	4.0
		 */
		public function get blurX():Number { return _blurX; }
		
		public function set blurX(value:Number):void 
		{

			if(blurX != value)
			{
				var oldValue:Number = _blurX;


				
				_blurX = value;

				if(blurFilter)
				{
					blurFilter.blurX = value;
				}

				//context.renderQueue.add(this);


				dispatchEvent(new ElementEvent(ElementEvent.UPDATED));			
				if(hasEventListener(PropertyChangeEvent.PROPERTY_UPDATED))
				{
					dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'blurX', oldValue, value));
				}
			}
		}

		/**
		 *  [default = 4.0]
		 *
		 * @default	4.0
		 */
		public function get blurY():Number { return _blurY; }
		
		public function set blurY(value:Number):void 
		{

			if(blurY != value)
			{
				var oldValue:Number = _blurY;


				
				_blurY = value;

				if(blurFilter)
				{
					blurFilter.blurY = value;
				}

				//context.renderQueue.add(this);


				dispatchEvent(new ElementEvent(ElementEvent.UPDATED));			
				if(hasEventListener(PropertyChangeEvent.PROPERTY_UPDATED))
				{
					dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'blurY', oldValue, value));
				}
			}
		}


	}
	
}
