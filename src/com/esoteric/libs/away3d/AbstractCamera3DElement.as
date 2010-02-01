/*
	DO NOT MODIFY THIS FILE, THE CODE GENERATOR WILL ERASE ANY CHANGES MADE.
	MAKE CHANGES TO THE DERIVED CLASS INSTEAD.

	Last generated 2010-02-01 17:20:42.352000 UTC.

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

package com.esoteric.libs.away3d 
{
	import away3dlite.cameras.Camera3D;

	import com.esoteric.core.Context;
	import com.esoteric.esoteric;
	import com.esoteric.events.ElementEvent;
	import com.esoteric.events.PropertyChangeEvent;
	
	use namespace esoteric;
	
	public class AbstractCamera3DElement extends Object3DElement
	{
		
		//---------------------------------------------------------------------
		// Constructor
		//---------------------------------------------------------------------
		
		/**
		 * Constructor.
		 */
		public function AbstractCamera3DElement(context:Context, kind:String) 
		{
			super(context, kind);
			
			camera.zoom = _zoom;
			camera.focus = _focus;

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
		esoteric var _camera:Camera3D = new Camera3D();

		/**
		 * @private
		 */
		esoteric var _zoom:Number = 10;

		/**
		 * @private
		 */
		esoteric var _focus:Number = 100;


		//---------------------------------------------------------------------
		// Getters and setters
		//---------------------------------------------------------------------
		
		/**
		 * The camera. [default = new Camera3D()]
		 *
		 * @default	new Camera3D()
		 */
		esoteric function get camera():Camera3D { return _camera; }
		
		esoteric function set camera(value:Camera3D):void 
		{
			if(_camera != value)
			{
				var oldValue:Camera3D = _camera;
			
				if(value)
				{
					value.zoom = _zoom;
					value.focus = _focus;

				}
			
				_camera = value;


			}
		}


		/**
		 * The zoom of the camera. [default = 10]
		 *
		 * @default	10
		 */
		public function get zoom():Number { return _zoom; }
		
		public function set zoom(value:Number):void 
		{

			if(zoom != value)
			{
				var oldValue:Number = _zoom;


				
				_zoom = value;

				if(camera)
				{
					camera.zoom = value;
				}

				//context.renderQueue.add(this);


				dispatchEvent(new ElementEvent(ElementEvent.UPDATED));			
				if(hasEventListener(PropertyChangeEvent.PROPERTY_UPDATED))
				{
					dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'zoom', oldValue, value));
				}
			}
		}

		/**
		 * The focus of the camera. [default = 100]
		 *
		 * @default	100
		 */
		public function get focus():Number { return _focus; }
		
		public function set focus(value:Number):void 
		{

			if(focus != value)
			{
				var oldValue:Number = _focus;


				
				_focus = value;

				if(camera)
				{
					camera.focus = value;
				}

				//context.renderQueue.add(this);


				dispatchEvent(new ElementEvent(ElementEvent.UPDATED));			
				if(hasEventListener(PropertyChangeEvent.PROPERTY_UPDATED))
				{
					dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'focus', oldValue, value));
				}
			}
		}


	}
	
}
