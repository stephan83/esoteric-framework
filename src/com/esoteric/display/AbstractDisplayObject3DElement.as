/*
	DO NOT MODIFY THIS FILE, THE CODE GENERATOR WILL ERASE ANY CHANGES MADE.
	MAKE CHANGES TO THE DERIVED CLASS INSTEAD.

	Last generated 2010-01-27 22:44:48.162000 UTC.

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
	
	public class AbstractDisplayObject3DElement extends TweenableElement
	{
		
		//---------------------------------------------------------------------
		// Constructor
		//---------------------------------------------------------------------
		
		/**
		 * Constructor.
		 */
		public function AbstractDisplayObject3DElement(context:Context, kind:String) 
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
		private var _rotationZ:Number = 0.0;

		/**
		 * @private
		 */
		private var _rotationY:Number = 0.0;

		/**
		 * @private
		 */
		private var _rotationX:Number = 0.0;

		/**
		 * @private
		 */
		private var _scaleX:Number = 1.0;

		/**
		 * @private
		 */
		private var _scaleY:Number = 1.0;

		/**
		 * @private
		 */
		private var _scaleZ:Number = 1.0;

		/**
		 * @private
		 */
		private var _visible:Boolean = true;

		/**
		 * @private
		 */
		private var _alpha:Number = 1.0;

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
		private var _z:Number = 0.0;


		//---------------------------------------------------------------------
		// Getters and setters
		//---------------------------------------------------------------------
		
		/**
		 * The rotation of the display object 3D around the s-axis, in degrees. [default = 0.0]
		 *
		 * @default	0.0
		 */
		public function get rotationZ():Number { return _rotationZ; }
		
		public function set rotationZ(value:Number):void 
		{
			if(_rotationZ != value)
			{
				var oldValue:Number = _rotationZ;
			

			
				_rotationZ = value;
				if(hasEventListener(PropertyChangeEvent.PROPERTY_UPDATED))
				{
					dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'rotationZ', oldValue, value));
				}
				context.renderQueue.add(this);
			}
		}

		/**
		 * The rotation of the display object 3D around the y-axis, in degrees. [default = 0.0]
		 *
		 * @default	0.0
		 */
		public function get rotationY():Number { return _rotationY; }
		
		public function set rotationY(value:Number):void 
		{
			if(_rotationY != value)
			{
				var oldValue:Number = _rotationY;
			

			
				_rotationY = value;
				if(hasEventListener(PropertyChangeEvent.PROPERTY_UPDATED))
				{
					dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'rotationY', oldValue, value));
				}
				context.renderQueue.add(this);
			}
		}

		/**
		 * The rotation of the display object 3D around the x-axis, in degrees. [default = 0.0]
		 *
		 * @default	0.0
		 */
		public function get rotationX():Number { return _rotationX; }
		
		public function set rotationX(value:Number):void 
		{
			if(_rotationX != value)
			{
				var oldValue:Number = _rotationX;
			

			
				_rotationX = value;
				if(hasEventListener(PropertyChangeEvent.PROPERTY_UPDATED))
				{
					dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'rotationX', oldValue, value));
				}
				context.renderQueue.add(this);
			}
		}

		/**
		 * The horizontal scaling factor of the display object 3D. [default = 1.0]
		 *
		 * @default	1.0
		 */
		public function get scaleX():Number { return _scaleX; }
		
		public function set scaleX(value:Number):void 
		{
			if(_scaleX != value)
			{
				var oldValue:Number = _scaleX;
			

			
				_scaleX = value;
				if(hasEventListener(PropertyChangeEvent.PROPERTY_UPDATED))
				{
					dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'scaleX', oldValue, value));
				}
				context.renderQueue.add(this);
			}
		}

		/**
		 * The vertical scaling factor of the display object 3D. [default = 1.0]
		 *
		 * @default	1.0
		 */
		public function get scaleY():Number { return _scaleY; }
		
		public function set scaleY(value:Number):void 
		{
			if(_scaleY != value)
			{
				var oldValue:Number = _scaleY;
			

			
				_scaleY = value;
				if(hasEventListener(PropertyChangeEvent.PROPERTY_UPDATED))
				{
					dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'scaleY', oldValue, value));
				}
				context.renderQueue.add(this);
			}
		}

		/**
		 * The depth scaling factor of the display object 3D. [default = 1.0]
		 *
		 * @default	1.0
		 */
		public function get scaleZ():Number { return _scaleZ; }
		
		public function set scaleZ(value:Number):void 
		{
			if(_scaleZ != value)
			{
				var oldValue:Number = _scaleZ;
			

			
				_scaleZ = value;
				if(hasEventListener(PropertyChangeEvent.PROPERTY_UPDATED))
				{
					dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'scaleZ', oldValue, value));
				}
				context.renderQueue.add(this);
			}
		}

		/**
		 * Whether the display object is visible. [default = true]
		 *
		 * @default	true
		 */
		public function get visible():Boolean { return _visible; }
		
		public function set visible(value:Boolean):void 
		{
			if(_visible != value)
			{
				var oldValue:Boolean = _visible;
			

			
				_visible = value;
				if(hasEventListener(PropertyChangeEvent.PROPERTY_UPDATED))
				{
					dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'visible', oldValue, value));
				}
				context.renderQueue.add(this);
			}
		}

		/**
		 * The alpha value of the display object 3D. [default = 1.0]
		 *
		 * @default	1.0
		 */
		public function get alpha():Number { return _alpha; }
		
		public function set alpha(value:Number):void 
		{
			if(_alpha != value)
			{
				var oldValue:Number = _alpha;
			

			
				_alpha = value;
				if(hasEventListener(PropertyChangeEvent.PROPERTY_UPDATED))
				{
					dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'alpha', oldValue, value));
				}
				context.renderQueue.add(this);
			}
		}

		/**
		 * The horizontal position of the display object 3D. [default = 0.0]
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
					dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'y', oldValue, value));
				}
				context.renderQueue.add(this);
			}
		}

		/**
		 * The vertical position of the display object 3D. [default = 0.0]
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
					dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'x', oldValue, value));
				}
				context.renderQueue.add(this);
			}
		}

		/**
		 * The depth of the display object 3D. [default = 0.0]
		 *
		 * @default	0.0
		 */
		public function get z():Number { return _z; }
		
		public function set z(value:Number):void 
		{
			if(_z != value)
			{
				var oldValue:Number = _z;
			

			
				_z = value;
				if(hasEventListener(PropertyChangeEvent.PROPERTY_UPDATED))
				{
					dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'z', oldValue, value));
				}
				context.renderQueue.add(this);
			}
		}



	}
	
}
