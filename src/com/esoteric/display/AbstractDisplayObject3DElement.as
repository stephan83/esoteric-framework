/*
	DO NOT MODIFY THIS FILE, THE CODE GENERATOR WILL ERASE ANY CHANGES MADE.
	MAKE CHANGES TO THE DERIVED CLASS INSTEAD.

	Last generated 2010-01-06 17:00:07.424000 UTC.

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
	import org.papervision3d.objects.DisplayObject3D;

	import com.esoteric.core.IElement;
	import com.esoteric.display.ApplicationElement;
	import com.esoteric.events.ElementEvent;
	import com.esoteric.events.PropertyChangeEvent;
	
	public class AbstractDisplayObject3DElement extends DisplayObjectContainer3DElement
	{
		
		//---------------------------------------------------------------------
		// Constructor
		//---------------------------------------------------------------------
		
		/**
		 * Constructor.
		 */
		public function AbstractDisplayObject3DElement(root:ApplicationElement, parent:IElement, kind:String) 
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
		private var _displayObject3D:DisplayObject3D = null;

		/**
		 * @private
		 */
		private var _filters:Array = null;

		/**
		 * @private
		 */
		private var _localRotationZ:Number = 0.0;

		/**
		 * @private
		 */
		private var _localRotationY:Number = 0.0;

		/**
		 * @private
		 */
		private var _localRotationX:Number = 0.0;

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
		private var _scale:Number = 1.0;

		/**
		 * @private
		 */
		private var _useOwnContainer:Boolean = false;

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
		 * The DisplayObject3D object. [default = null]
		 *
		 * @default	null
		 */
		public function get displayObject3D():DisplayObject3D { return _displayObject3D; }
		
		public function set displayObject3D(value:DisplayObject3D):void 
		{
			if(_displayObject3D != value)
			{
				var oldValue:DisplayObject3D = _displayObject3D;
			
				if(value)
				{
					value.localRotationZ = _localRotationZ;
					value.localRotationY = _localRotationY;
					value.localRotationX = _localRotationX;
					value.rotationZ = _rotationZ;
					value.rotationY = _rotationY;
					value.rotationX = _rotationX;
					value.scaleX = _scaleX;
					value.scaleY = _scaleY;
					value.scaleZ = _scaleZ;
					value.scale = _scale;
					value.useOwnContainer = _useOwnContainer;
					value.y = _y;
					value.x = _x;
					value.z = _z;

				}
			
				_displayObject3D = value;
				if(hasEventListener(PropertyChangeEvent.PROPERTY_UPDATED))
				{
					dispatchEventNow(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'displayObject3D', oldValue, value));
				}
				root.renderQueue.add(this);
			}
		}

		/**
		 * An array of bitmap filters. [default = null]
		 *
		 * @default	null
		 */
		public function get filters():Array { return _filters; }
		
		public function set filters(value:Array):void 
		{
			if(_filters != value)
			{
				var oldValue:Array = _filters;
			

			
				_filters = value;
				if(hasEventListener(PropertyChangeEvent.PROPERTY_UPDATED))
				{
					dispatchEventNow(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'filters', oldValue, value));
				}
				root.renderQueue.add(this);
			}
		}


		/**
		 * The local rotation of the object around the z-axis, in degrees. [default = 0.0]
		 *
		 * @default	0.0
		 */
		public function get localRotationZ():Number { return _localRotationZ; }
		
		public function set localRotationZ(value:Number):void 
		{

			if(localRotationZ != value)
			{
				var oldValue:Number = _localRotationZ;


				
				_localRotationZ = value;

				if(displayObject3D)
				{
					displayObject3D.localRotationZ = value;
				}

				root.renderQueue.add(this);			
				if(hasEventListener(PropertyChangeEvent.PROPERTY_UPDATED))
				{
					dispatchEventNow(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'localRotationZ', oldValue, value));
				}
			}
		}

		/**
		 * The local rotation of the object around the y-axis, in degrees. [default = 0.0]
		 *
		 * @default	0.0
		 */
		public function get localRotationY():Number { return _localRotationY; }
		
		public function set localRotationY(value:Number):void 
		{

			if(localRotationY != value)
			{
				var oldValue:Number = _localRotationY;


				
				_localRotationY = value;

				if(displayObject3D)
				{
					displayObject3D.localRotationY = value;
				}

				root.renderQueue.add(this);			
				if(hasEventListener(PropertyChangeEvent.PROPERTY_UPDATED))
				{
					dispatchEventNow(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'localRotationY', oldValue, value));
				}
			}
		}

		/**
		 * The local rotation of the object around the x-axis, in degrees. [default = 0.0]
		 *
		 * @default	0.0
		 */
		public function get localRotationX():Number { return _localRotationX; }
		
		public function set localRotationX(value:Number):void 
		{

			if(localRotationX != value)
			{
				var oldValue:Number = _localRotationX;


				
				_localRotationX = value;

				if(displayObject3D)
				{
					displayObject3D.localRotationX = value;
				}

				root.renderQueue.add(this);			
				if(hasEventListener(PropertyChangeEvent.PROPERTY_UPDATED))
				{
					dispatchEventNow(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'localRotationX', oldValue, value));
				}
			}
		}

		/**
		 * The rotation of the object around the z-axis, in degrees. [default = 0.0]
		 *
		 * @default	0.0
		 */
		public function get rotationZ():Number { return _rotationZ; }
		
		public function set rotationZ(value:Number):void 
		{

			if(rotationZ != value)
			{
				var oldValue:Number = _rotationZ;


				
				_rotationZ = value;

				if(displayObject3D)
				{
					displayObject3D.rotationZ = value;
				}

				root.renderQueue.add(this);			
				if(hasEventListener(PropertyChangeEvent.PROPERTY_UPDATED))
				{
					dispatchEventNow(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'rotationZ', oldValue, value));
				}
			}
		}

		/**
		 * The rotation of the object around the y-axis, in degrees. [default = 0.0]
		 *
		 * @default	0.0
		 */
		public function get rotationY():Number { return _rotationY; }
		
		public function set rotationY(value:Number):void 
		{

			if(rotationY != value)
			{
				var oldValue:Number = _rotationY;


				
				_rotationY = value;

				if(displayObject3D)
				{
					displayObject3D.rotationY = value;
				}

				root.renderQueue.add(this);			
				if(hasEventListener(PropertyChangeEvent.PROPERTY_UPDATED))
				{
					dispatchEventNow(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'rotationY', oldValue, value));
				}
			}
		}

		/**
		 * The rotation of the object around the x-axis, in degrees. [default = 0.0]
		 *
		 * @default	0.0
		 */
		public function get rotationX():Number { return _rotationX; }
		
		public function set rotationX(value:Number):void 
		{

			if(rotationX != value)
			{
				var oldValue:Number = _rotationX;


				
				_rotationX = value;

				if(displayObject3D)
				{
					displayObject3D.rotationX = value;
				}

				root.renderQueue.add(this);			
				if(hasEventListener(PropertyChangeEvent.PROPERTY_UPDATED))
				{
					dispatchEventNow(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'rotationX', oldValue, value));
				}
			}
		}

		/**
		 * The scale of the object along the x-axis. [default = 1.0]
		 *
		 * @default	1.0
		 */
		public function get scaleX():Number { return _scaleX; }
		
		public function set scaleX(value:Number):void 
		{

			if(scaleX != value)
			{
				var oldValue:Number = _scaleX;


				
				_scaleX = value;

				if(displayObject3D)
				{
					displayObject3D.scaleX = value;
				}

				root.renderQueue.add(this);			
				if(hasEventListener(PropertyChangeEvent.PROPERTY_UPDATED))
				{
					dispatchEventNow(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'scaleX', oldValue, value));
				}
			}
		}

		/**
		 * The scale of the object along the y-axis. [default = 1.0]
		 *
		 * @default	1.0
		 */
		public function get scaleY():Number { return _scaleY; }
		
		public function set scaleY(value:Number):void 
		{

			if(scaleY != value)
			{
				var oldValue:Number = _scaleY;


				
				_scaleY = value;

				if(displayObject3D)
				{
					displayObject3D.scaleY = value;
				}

				root.renderQueue.add(this);			
				if(hasEventListener(PropertyChangeEvent.PROPERTY_UPDATED))
				{
					dispatchEventNow(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'scaleY', oldValue, value));
				}
			}
		}

		/**
		 * The scale of the object along the z-axis. [default = 1.0]
		 *
		 * @default	1.0
		 */
		public function get scaleZ():Number { return _scaleZ; }
		
		public function set scaleZ(value:Number):void 
		{

			if(scaleZ != value)
			{
				var oldValue:Number = _scaleZ;


				
				_scaleZ = value;

				if(displayObject3D)
				{
					displayObject3D.scaleZ = value;
				}

				root.renderQueue.add(this);			
				if(hasEventListener(PropertyChangeEvent.PROPERTY_UPDATED))
				{
					dispatchEventNow(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'scaleZ', oldValue, value));
				}
			}
		}

		/**
		 * The scale of the object. [default = 1.0]
		 *
		 * @default	1.0
		 */
		public function get scale():Number { return _scale; }
		
		public function set scale(value:Number):void 
		{

			if(scale != value)
			{
				var oldValue:Number = _scale;


				
				_scale = value;

				if(displayObject3D)
				{
					displayObject3D.scale = value;
				}

				root.renderQueue.add(this);			
				if(hasEventListener(PropertyChangeEvent.PROPERTY_UPDATED))
				{
					dispatchEventNow(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'scale', oldValue, value));
				}
			}
		}

		/**
		 * Whether the object uses its own container. [default = false]
		 *
		 * @default	false
		 */
		public function get useOwnContainer():Boolean { return _useOwnContainer; }
		
		public function set useOwnContainer(value:Boolean):void 
		{

			if(useOwnContainer != value)
			{
				var oldValue:Boolean = _useOwnContainer;


				
				_useOwnContainer = value;

				if(displayObject3D)
				{
					displayObject3D.useOwnContainer = value;
				}

				root.renderQueue.add(this);			
				if(hasEventListener(PropertyChangeEvent.PROPERTY_UPDATED))
				{
					dispatchEventNow(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'useOwnContainer', oldValue, value));
				}
			}
		}

		/**
		 * The horizontal position of the object. [default = 0.0]
		 *
		 * @default	0.0
		 */
		public function get y():Number { return _y; }
		
		public function set y(value:Number):void 
		{

			if(y != value)
			{
				var oldValue:Number = _y;


				
				_y = value;

				if(displayObject3D)
				{
					displayObject3D.y = value;
				}

				root.renderQueue.add(this);			
				if(hasEventListener(PropertyChangeEvent.PROPERTY_UPDATED))
				{
					dispatchEventNow(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'y', oldValue, value));
				}
			}
		}

		/**
		 * The vertical position of the object. [default = 0.0]
		 *
		 * @default	0.0
		 */
		public function get x():Number { return _x; }
		
		public function set x(value:Number):void 
		{

			if(x != value)
			{
				var oldValue:Number = _x;


				
				_x = value;

				if(displayObject3D)
				{
					displayObject3D.x = value;
				}

				root.renderQueue.add(this);			
				if(hasEventListener(PropertyChangeEvent.PROPERTY_UPDATED))
				{
					dispatchEventNow(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'x', oldValue, value));
				}
			}
		}

		/**
		 * The depth of the object. [default = 0.0]
		 *
		 * @default	0.0
		 */
		public function get z():Number { return _z; }
		
		public function set z(value:Number):void 
		{

			if(z != value)
			{
				var oldValue:Number = _z;


				
				_z = value;

				if(displayObject3D)
				{
					displayObject3D.z = value;
				}

				root.renderQueue.add(this);			
				if(hasEventListener(PropertyChangeEvent.PROPERTY_UPDATED))
				{
					dispatchEventNow(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'z', oldValue, value));
				}
			}
		}


	}
	
}
