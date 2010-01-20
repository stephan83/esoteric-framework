/*
	DO NOT MODIFY THIS FILE, THE CODE GENERATOR WILL ERASE ANY CHANGES MADE.
	MAKE CHANGES TO THE DERIVED CLASS INSTEAD.

	Last generated 2010-01-06 17:00:07.406000 UTC.

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
	import org.papervision3d.core.proto.CameraObject3D;

	import com.esoteric.core.IElement;
	import com.esoteric.display.ApplicationElement;
	import com.esoteric.events.ElementEvent;
	import com.esoteric.events.PropertyChangeEvent;
	
	public class AbstractCameraObject3DElement extends DisplayObject3DElement
	{
		
		//---------------------------------------------------------------------
		// Constructor
		//---------------------------------------------------------------------
		
		/**
		 * Constructor.
		 */
		public function AbstractCameraObject3DElement(root:ApplicationElement, parent:IElement, kind:String) 
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
		private var _perfectDistance:Number = 0.0;

		/**
		 * @private
		 */
		private var _cameraObject3D:CameraObject3D = null;

		/**
		 * @private
		 */
		private var _far:Number = 5000;

		/**
		 * @private
		 */
		private var _near:Number = 10;

		/**
		 * @private
		 */
		private var _fov:Number = 60.0;


		//---------------------------------------------------------------------
		// Getters and setters
		//---------------------------------------------------------------------
		
		/**
		 * The distance the camera should be from a material such that one pixel on the material maps to one pixel on the viewport. [default = 0.0]
		 *
		 * @default	0.0
		 */
		public function get perfectDistance():Number { return _perfectDistance; }
		
		public function set perfectDistance(value:Number):void 
		{
			if(_perfectDistance != value)
			{
				var oldValue:Number = _perfectDistance;
			

			
				_perfectDistance = value;
				if(hasEventListener(PropertyChangeEvent.PROPERTY_UPDATED))
				{
					dispatchEventNow(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'perfectDistance', oldValue, value));
				}
				root.renderQueue.add(this);
			}
		}

		/**
		 * The CameraObject3D object. [default = null]
		 *
		 * @default	null
		 */
		public function get cameraObject3D():CameraObject3D { return _cameraObject3D; }
		
		public function set cameraObject3D(value:CameraObject3D):void 
		{
			if(_cameraObject3D != value)
			{
				var oldValue:CameraObject3D = _cameraObject3D;
			
				if(value)
				{
					value.far = _far;
					value.near = _near;
					value.fov = _fov;

				}
			
				_cameraObject3D = value;
				if(hasEventListener(PropertyChangeEvent.PROPERTY_UPDATED))
				{
					dispatchEventNow(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'cameraObject3D', oldValue, value));
				}
				root.renderQueue.add(this);
			}
		}


		/**
		 * The distance to the far plane. [default = 5000]
		 *
		 * @default	5000
		 */
		public function get far():Number { return _far; }
		
		public function set far(value:Number):void 
		{

			if(far != value)
			{
				var oldValue:Number = _far;


				
				_far = value;

				if(cameraObject3D)
				{
					cameraObject3D.far = value;
				}

				root.renderQueue.add(this);			
				if(hasEventListener(PropertyChangeEvent.PROPERTY_UPDATED))
				{
					dispatchEventNow(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'far', oldValue, value));
				}
			}
		}

		/**
		 * The distance to the near plane. [default = 10]
		 *
		 * @default	10
		 */
		public function get near():Number { return _near; }
		
		public function set near(value:Number):void 
		{

			if(near != value)
			{
				var oldValue:Number = _near;


				
				_near = value;

				if(cameraObject3D)
				{
					cameraObject3D.near = value;
				}

				root.renderQueue.add(this);			
				if(hasEventListener(PropertyChangeEvent.PROPERTY_UPDATED))
				{
					dispatchEventNow(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'near', oldValue, value));
				}
			}
		}

		/**
		 * The field of view of the camera, in degrees. [default = 60.0]
		 *
		 * @default	60.0
		 */
		public function get fov():Number { return _fov; }
		
		public function set fov(value:Number):void 
		{

			if(fov != value)
			{
				var oldValue:Number = _fov;


				
				_fov = value;

				if(cameraObject3D)
				{
					cameraObject3D.fov = value;
				}

				root.renderQueue.add(this);			
				if(hasEventListener(PropertyChangeEvent.PROPERTY_UPDATED))
				{
					dispatchEventNow(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'fov', oldValue, value));
				}
			}
		}


	}
	
}
