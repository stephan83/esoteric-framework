/*
	DO NOT MODIFY THIS FILE, THE CODE GENERATOR WILL ERASE ANY CHANGES MADE.
	MAKE CHANGES TO THE DERIVED CLASS INSTEAD.

	Last generated 2010-01-06 17:00:07.392000 UTC.

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
	import flash.display.Bitmap;

	import com.esoteric.core.IElement;
	import com.esoteric.display.ApplicationElement;
	import com.esoteric.events.ElementEvent;
	import com.esoteric.events.PropertyChangeEvent;
	
	public class AbstractBitmapElement extends DisplayObjectElement
	{
		
		//---------------------------------------------------------------------
		// Constructor
		//---------------------------------------------------------------------
		
		/**
		 * Constructor.
		 */
		public function AbstractBitmapElement(root:ApplicationElement, parent:IElement, kind:String) 
		{
			super(root, parent, kind);
			
			bitmap.smoothing = _smoothing;

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
		private var _bitmap:Bitmap = new Bitmap();

		/**
		 * @private
		 */
		private var _smoothing:Boolean = false;


		//---------------------------------------------------------------------
		// Getters and setters
		//---------------------------------------------------------------------
		
		/**
		 * The bitmap object. [default = new Bitmap()]
		 *
		 * @default	new Bitmap()
		 */
		protected function get bitmap():Bitmap { return _bitmap; }
		
		protected function set bitmap(value:Bitmap):void 
		{
			if(_bitmap != value)
			{
				var oldValue:Bitmap = _bitmap;
			
				if(value)
				{
					value.smoothing = _smoothing;

				}
			
				_bitmap = value;


			}
		}


		/**
		 * Whether to enable smoothing to increase quality when the bitmap is scaled at the cost of performance. [default = false]
		 *
		 * @default	false
		 */
		public function get smoothing():Boolean { return _smoothing; }
		
		public function set smoothing(value:Boolean):void 
		{

			if(smoothing != value)
			{
				var oldValue:Boolean = _smoothing;


				
				_smoothing = value;

				if(bitmap)
				{
					bitmap.smoothing = value;
				}

				root.renderQueue.add(this);			
				if(hasEventListener(PropertyChangeEvent.PROPERTY_UPDATED))
				{
					dispatchEventNow(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'smoothing', oldValue, value));
				}
			}
		}


	}
	
}
