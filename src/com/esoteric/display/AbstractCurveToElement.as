/*
	DO NOT MODIFY THIS FILE, THE CODE GENERATOR WILL ERASE ANY CHANGES MADE.
	MAKE CHANGES TO THE DERIVED CLASS INSTEAD.

	Last generated 2010-01-20 20:05:47.670000 UTC.

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

	import com.esoteric.core.Context;
	import com.esoteric.events.ElementEvent;
	import com.esoteric.events.PropertyChangeEvent;
	
	public class AbstractCurveToElement extends TweenableElement
	{
		
		//---------------------------------------------------------------------
		// Constructor
		//---------------------------------------------------------------------
		
		/**
		 * Constructor.
		 */
		public function AbstractCurveToElement(context:Context, kind:String) 
		{
			super(context, kind);
			

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
		private var _controlY:Number = 0.0;

		/**
		 * @private
		 */
		private var _controlX:Number = 0.0;

		/**
		 * @private
		 */
		private var _anchorX:Number = 0.0;

		/**
		 * @private
		 */
		private var _anchorY:Number = 0.0;


		//---------------------------------------------------------------------
		// Getters and setters
		//---------------------------------------------------------------------
		
		/**
		 * A number that specifies the vertical position of the control point relative to the registration point of the parent display object. [default = 0.0]
		 *
		 * @default	0.0
		 */
		public function get controlY():Number { return _controlY; }
		
		public function set controlY(value:Number):void 
		{
			if(_controlY != value)
			{
				var oldValue:Number = _controlY;
			

			
				_controlY = value;
				if(hasEventListener(PropertyChangeEvent.PROPERTY_UPDATED))
				{
					dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'controlY', oldValue, value));
				}
				
			}
		}

		/**
		 * A number that specifies the horizontal position of the control point relative to the registration point of the parent display object. [default = 0.0]
		 *
		 * @default	0.0
		 */
		public function get controlX():Number { return _controlX; }
		
		public function set controlX(value:Number):void 
		{
			if(_controlX != value)
			{
				var oldValue:Number = _controlX;
			

			
				_controlX = value;
				if(hasEventListener(PropertyChangeEvent.PROPERTY_UPDATED))
				{
					dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'controlX', oldValue, value));
				}
				
			}
		}

		/**
		 * A number that specifies the horizontal position of the next anchor point relative to the registration point of the parent display object. [default = 0.0]
		 *
		 * @default	0.0
		 */
		public function get anchorX():Number { return _anchorX; }
		
		public function set anchorX(value:Number):void 
		{
			if(_anchorX != value)
			{
				var oldValue:Number = _anchorX;
			

			
				_anchorX = value;
				if(hasEventListener(PropertyChangeEvent.PROPERTY_UPDATED))
				{
					dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'anchorX', oldValue, value));
				}
				
			}
		}

		/**
		 * A number that specifies the vertical position of the next anchor point relative to the registration point of the parent display object. [default = 0.0]
		 *
		 * @default	0.0
		 */
		public function get anchorY():Number { return _anchorY; }
		
		public function set anchorY(value:Number):void 
		{
			if(_anchorY != value)
			{
				var oldValue:Number = _anchorY;
			

			
				_anchorY = value;
				if(hasEventListener(PropertyChangeEvent.PROPERTY_UPDATED))
				{
					dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'anchorY', oldValue, value));
				}
				
			}
		}



	}
	
}
