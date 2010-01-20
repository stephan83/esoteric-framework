/*
	DO NOT MODIFY THIS FILE, THE CODE GENERATOR WILL ERASE ANY CHANGES MADE.
	MAKE CHANGES TO THE DERIVED CLASS INSTEAD.

	Last generated 2010-01-06 17:00:07.499000 UTC.

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
	import com.esoteric.core.TweenableElement;

	import com.esoteric.core.IElement;
	import com.esoteric.display.ApplicationElement;
	import com.esoteric.events.ElementEvent;
	import com.esoteric.events.PropertyChangeEvent;
	
	public class AbstractRectangleElement extends TweenableElement
	{
		
		//---------------------------------------------------------------------
		// Constructor
		//---------------------------------------------------------------------
		
		/**
		 * Constructor.
		 */
		public function AbstractRectangleElement(root:ApplicationElement, parent:IElement, kind:String) 
		{
			super(root, parent, kind);
			

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
		private var _y:Number = 0.0;

		/**
		 * @private
		 */
		private var _x:Number = 0.0;

		/**
		 * @private
		 */
		private var _height:Number = 100.0;

		/**
		 * @private
		 */
		private var _width:Number = 100.0;


		//---------------------------------------------------------------------
		// Getters and setters
		//---------------------------------------------------------------------
		
		/**
		 * The horizontal position of the rectangle. [default = 0.0]
		 *
		 * @default	0.0
		 */
		public function get y():Number { return _y; }
		
		public function set y(value:Number):void 
		{
			if(_y != value)
			{
				var oldValue:Number = _y;
			

			
				_y = value;
				if(hasEventListener(PropertyChangeEvent.PROPERTY_UPDATED))
				{
					dispatchEventNow(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'y', oldValue, value));
				}
				root.renderQueue.add(this);
			}
		}

		/**
		 * The vertical position of the rectangle. [default = 0.0]
		 *
		 * @default	0.0
		 */
		public function get x():Number { return _x; }
		
		public function set x(value:Number):void 
		{
			if(_x != value)
			{
				var oldValue:Number = _x;
			

			
				_x = value;
				if(hasEventListener(PropertyChangeEvent.PROPERTY_UPDATED))
				{
					dispatchEventNow(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'x', oldValue, value));
				}
				root.renderQueue.add(this);
			}
		}

		/**
		 * The height of the rectangle. [default = 100.0]
		 *
		 * @default	100.0
		 */
		public function get height():Number { return _height; }
		
		public function set height(value:Number):void 
		{
			if(_height != value)
			{
				var oldValue:Number = _height;
			

			
				_height = value;
				if(hasEventListener(PropertyChangeEvent.PROPERTY_UPDATED))
				{
					dispatchEventNow(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'height', oldValue, value));
				}
				root.renderQueue.add(this);
			}
		}

		/**
		 * The width of the rectangle. [default = 100.0]
		 *
		 * @default	100.0
		 */
		public function get width():Number { return _width; }
		
		public function set width(value:Number):void 
		{
			if(_width != value)
			{
				var oldValue:Number = _width;
			

			
				_width = value;
				if(hasEventListener(PropertyChangeEvent.PROPERTY_UPDATED))
				{
					dispatchEventNow(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'width', oldValue, value));
				}
				root.renderQueue.add(this);
			}
		}



	}
	
}
