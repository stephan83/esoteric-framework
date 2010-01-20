/*
	DO NOT MODIFY THIS FILE, THE CODE GENERATOR WILL ERASE ANY CHANGES MADE.
	MAKE CHANGES TO THE DERIVED CLASS INSTEAD.

	Last generated 2010-01-06 17:00:07.523000 UTC.

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
	import org.papervision3d.view.Viewport3D;

	import com.esoteric.core.IElement;
	import com.esoteric.display.ApplicationElement;
	import com.esoteric.events.ElementEvent;
	import com.esoteric.events.PropertyChangeEvent;
	
	public class AbstractViewport3DElement extends DisplayObjectElement
	{
		
		//---------------------------------------------------------------------
		// Constructor
		//---------------------------------------------------------------------
		
		/**
		 * Constructor.
		 */
		public function AbstractViewport3DElement(root:ApplicationElement, parent:IElement, kind:String) 
		{
			super(root, parent, kind);
			
			viewport3D.autoClipping = _autoClipping;
			viewport3D.autoCulling = _autoCulling;
			viewport3D.viewportHeight = _viewportHeight;
			viewport3D.interactive = _interactive;
			viewport3D.viewportWidth = _viewportWidth;

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
		private var _camera:CameraObject3DElement = null;

		/**
		 * @private
		 */
		private var _viewport3D:Viewport3D = new Viewport3D();

		/**
		 * @private
		 */
		private var _scene:Scene3DElement = null;

		/**
		 * @private
		 */
		private var _autoClipping:Boolean = true;

		/**
		 * @private
		 */
		private var _autoCulling:Boolean = true;

		/**
		 * @private
		 */
		private var _viewportHeight:Number = 480.0;

		/**
		 * @private
		 */
		private var _interactive:Boolean = true;

		/**
		 * @private
		 */
		private var _viewportWidth:Number = 640.0;


		//---------------------------------------------------------------------
		// Getters and setters
		//---------------------------------------------------------------------
		
		/**
		 * The CameraObject3DElement object. [default = null]
		 *
		 * @default	null
		 */
		public function get camera():CameraObject3DElement { return _camera; }
		
		public function set camera(value:CameraObject3DElement):void 
		{
			if(_camera != value)
			{
				var oldValue:CameraObject3DElement = _camera;
			

			
				_camera = value;
				if(hasEventListener(PropertyChangeEvent.PROPERTY_UPDATED))
				{
					dispatchEventNow(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'camera', oldValue, value));
				}
				root.renderQueue.add(this);
			}
		}

		/**
		 * The viewport 3D object. [default = new Viewport3D()]
		 *
		 * @default	new Viewport3D()
		 */
		public function get viewport3D():Viewport3D { return _viewport3D; }
		
		public function set viewport3D(value:Viewport3D):void 
		{
			if(_viewport3D != value)
			{
				var oldValue:Viewport3D = _viewport3D;
			
				if(value)
				{
					value.autoClipping = _autoClipping;
					value.autoCulling = _autoCulling;
					value.viewportHeight = _viewportHeight;
					value.interactive = _interactive;
					value.viewportWidth = _viewportWidth;

				}
			
				_viewport3D = value;
				if(hasEventListener(PropertyChangeEvent.PROPERTY_UPDATED))
				{
					dispatchEventNow(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'viewport3D', oldValue, value));
				}
				root.renderQueue.add(this);
			}
		}

		/**
		 * The Scene3DElement object. [default = null]
		 *
		 * @default	null
		 */
		public function get scene():Scene3DElement { return _scene; }
		
		public function set scene(value:Scene3DElement):void 
		{
			if(_scene != value)
			{
				var oldValue:Scene3DElement = _scene;
			

			
				_scene = value;
				if(hasEventListener(PropertyChangeEvent.PROPERTY_UPDATED))
				{
					dispatchEventNow(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'scene', oldValue, value));
				}
				root.renderQueue.add(this);
			}
		}


		/**
		 * Whether to enable auto clipping. [default = true]
		 *
		 * @default	true
		 */
		public function get autoClipping():Boolean { return _autoClipping; }
		
		public function set autoClipping(value:Boolean):void 
		{

			if(autoClipping != value)
			{
				var oldValue:Boolean = _autoClipping;


				
				_autoClipping = value;

				if(viewport3D)
				{
					viewport3D.autoClipping = value;
				}

				root.renderQueue.add(this);			
				if(hasEventListener(PropertyChangeEvent.PROPERTY_UPDATED))
				{
					dispatchEventNow(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'autoClipping', oldValue, value));
				}
			}
		}

		/**
		 * Whether to enable auto culling. [default = true]
		 *
		 * @default	true
		 */
		public function get autoCulling():Boolean { return _autoCulling; }
		
		public function set autoCulling(value:Boolean):void 
		{

			if(autoCulling != value)
			{
				var oldValue:Boolean = _autoCulling;


				
				_autoCulling = value;

				if(viewport3D)
				{
					viewport3D.autoCulling = value;
				}

				root.renderQueue.add(this);			
				if(hasEventListener(PropertyChangeEvent.PROPERTY_UPDATED))
				{
					dispatchEventNow(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'autoCulling', oldValue, value));
				}
			}
		}

		/**
		 * The height of the viewport. [default = 480.0]
		 *
		 * @default	480.0
		 */
		public function get viewportHeight():Number { return _viewportHeight; }
		
		public function set viewportHeight(value:Number):void 
		{

			if(viewportHeight != value)
			{
				var oldValue:Number = _viewportHeight;


				
				_viewportHeight = value;

				if(viewport3D)
				{
					viewport3D.viewportHeight = value;
				}

				root.renderQueue.add(this);			
				if(hasEventListener(PropertyChangeEvent.PROPERTY_UPDATED))
				{
					dispatchEventNow(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'viewportHeight', oldValue, value));
				}
			}
		}

		/**
		 * Whether the viewport is interactive. [default = true]
		 *
		 * @default	true
		 */
		public function get interactive():Boolean { return _interactive; }
		
		public function set interactive(value:Boolean):void 
		{

			if(interactive != value)
			{
				var oldValue:Boolean = _interactive;


				
				_interactive = value;

				if(viewport3D)
				{
					viewport3D.interactive = value;
				}

				root.renderQueue.add(this);			
				if(hasEventListener(PropertyChangeEvent.PROPERTY_UPDATED))
				{
					dispatchEventNow(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'interactive', oldValue, value));
				}
			}
		}

		/**
		 * The width of the viewport. [default = 640.0]
		 *
		 * @default	640.0
		 */
		public function get viewportWidth():Number { return _viewportWidth; }
		
		public function set viewportWidth(value:Number):void 
		{

			if(viewportWidth != value)
			{
				var oldValue:Number = _viewportWidth;


				
				_viewportWidth = value;

				if(viewport3D)
				{
					viewport3D.viewportWidth = value;
				}

				root.renderQueue.add(this);			
				if(hasEventListener(PropertyChangeEvent.PROPERTY_UPDATED))
				{
					dispatchEventNow(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'viewportWidth', oldValue, value));
				}
			}
		}


	}
	
}
