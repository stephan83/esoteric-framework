/*
	DO NOT MODIFY THIS FILE, THE CODE GENERATOR WILL ERASE ANY CHANGES MADE.
	MAKE CHANGES TO THE DERIVED CLASS INSTEAD.

	Last generated 2010-01-06 17:00:07.467000 UTC.

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
	import flash.display.GradientType;

	import com.esoteric.core.IElement;
	import com.esoteric.display.ApplicationElement;
	import com.esoteric.events.ElementEvent;
	import com.esoteric.events.PropertyChangeEvent;
	
	public class AbstractLineGradientStyleElement extends TweenableElement
	{
		
		//---------------------------------------------------------------------
		// Constructor
		//---------------------------------------------------------------------
		
		/**
		 * Constructor.
		 */
		public function AbstractLineGradientStyleElement(root:ApplicationElement, parent:IElement, kind:String) 
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
		private var _alphas:Array = [1.0, 1.0];

		/**
		 * @private
		 */
		private var _tx:Number = 0.0;

		/**
		 * @private
		 */
		private var _ty:Number = 0.0;

		/**
		 * @private
		 */
		private var _height:Number = 100.0;

		/**
		 * @private
		 */
		private var _width:Number = 100.0;

		/**
		 * @private
		 */
		private var _colors:Array = [0x000000, 0xFFFFFF];

		/**
		 * @private
		 */
		private var _ratios:Array = [0, 255];

		/**
		 * @private
		 */
		private var _rotation:Number = 0.0;

		/**
		 * @private
		 */
		private var _type:String = GradientType.LINEAR;


		//---------------------------------------------------------------------
		// Getters and setters
		//---------------------------------------------------------------------
		
		/**
		 * The alpha values. [default = [1.0, 1.0]]
		 *
		 * @default	[1.0, 1.0]
		 */
		public function get alphas():Array { return _alphas; }
		
		public function set alphas(value:Array):void 
		{
			if(_alphas != value)
			{
				var oldValue:Array = _alphas;
			

			
				_alphas = value;
				if(hasEventListener(PropertyChangeEvent.PROPERTY_UPDATED))
				{
					dispatchEventNow(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'alphas', oldValue, value));
				}
				root.renderQueue.add(this);
			}
		}

		/**
		 * The horizontal translation of the gradient matrix. [default = 0.0]
		 *
		 * @default	0.0
		 */
		public function get tx():Number { return _tx; }
		
		public function set tx(value:Number):void 
		{
			if(_tx != value)
			{
				var oldValue:Number = _tx;
			

			
				_tx = value;
				if(hasEventListener(PropertyChangeEvent.PROPERTY_UPDATED))
				{
					dispatchEventNow(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'tx', oldValue, value));
				}
				root.renderQueue.add(this);
			}
		}

		/**
		 * The vertical translation of the gradient matrix. [default = 0.0]
		 *
		 * @default	0.0
		 */
		public function get ty():Number { return _ty; }
		
		public function set ty(value:Number):void 
		{
			if(_ty != value)
			{
				var oldValue:Number = _ty;
			

			
				_ty = value;
				if(hasEventListener(PropertyChangeEvent.PROPERTY_UPDATED))
				{
					dispatchEventNow(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'ty', oldValue, value));
				}
				root.renderQueue.add(this);
			}
		}

		/**
		 * The height of the gradient matrix. [default = 100.0]
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
		 * The width of the gradient matrix. [default = 100.0]
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

		/**
		 * The color values. [default = [0x000000, 0xFFFFFF]]
		 *
		 * @default	[0x000000, 0xFFFFFF]
		 */
		public function get colors():Array { return _colors; }
		
		public function set colors(value:Array):void 
		{
			if(_colors != value)
			{
				var oldValue:Array = _colors;
			

			
				_colors = value;
				if(hasEventListener(PropertyChangeEvent.PROPERTY_UPDATED))
				{
					dispatchEventNow(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'colors', oldValue, value));
				}
				root.renderQueue.add(this);
			}
		}

		/**
		 * The ratios. [default = [0, 255]]
		 *
		 * @default	[0, 255]
		 */
		public function get ratios():Array { return _ratios; }
		
		public function set ratios(value:Array):void 
		{
			if(_ratios != value)
			{
				var oldValue:Array = _ratios;
			

			
				_ratios = value;
				if(hasEventListener(PropertyChangeEvent.PROPERTY_UPDATED))
				{
					dispatchEventNow(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'ratios', oldValue, value));
				}
				root.renderQueue.add(this);
			}
		}

		/**
		 * The rotation of the gradient matrix, in degrees. [default = 0.0]
		 *
		 * @default	0.0
		 */
		public function get rotation():Number { return _rotation; }
		
		public function set rotation(value:Number):void 
		{
			if(_rotation != value)
			{
				var oldValue:Number = _rotation;
			

			
				_rotation = value;
				if(hasEventListener(PropertyChangeEvent.PROPERTY_UPDATED))
				{
					dispatchEventNow(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'rotation', oldValue, value));
				}
				root.renderQueue.add(this);
			}
		}

		/**
		 * The gradient type. [default = GradientType.LINEAR]
		 *
		 * @default	GradientType.LINEAR
		 */
		public function get type():String { return _type; }
		
		public function set type(value:String):void 
		{
			if(_type != value)
			{
				var oldValue:String = _type;
			

			
				_type = value;
				if(hasEventListener(PropertyChangeEvent.PROPERTY_UPDATED))
				{
					dispatchEventNow(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'type', oldValue, value));
				}
				root.renderQueue.add(this);
			}
		}



	}
	
}
