/*
	DO NOT MODIFY THIS FILE, THE CODE GENERATOR WILL ERASE ANY CHANGES MADE.
	MAKE CHANGES TO THE DERIVED CLASS INSTEAD.

	Last generated 2010-02-02 02:31:48.862000 UTC.

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
	import away3dlite.containers.View3D;
	import away3dlite.core.clip.RectangleClipping;
	import com.esoteric.display.SpriteElement;

	import com.esoteric.core.Context;
	import com.esoteric.esoteric;
	import com.esoteric.events.ElementEvent;
	import com.esoteric.events.PropertyChangeEvent;
	
	use namespace esoteric;
	
	public class AbstractView3DElement extends SpriteElement
	{
		
		//---------------------------------------------------------------------
		// Constructor
		//---------------------------------------------------------------------
		
		/**
		 * Constructor.
		 */
		public function AbstractView3DElement(context:Context, kind:String) 
		{
			super(context, kind);
			
			clipping.maxZ = _maxZ;
			view.clipping = _clipping;
			clipping.maxY = _maxY;
			clipping.maxX = _maxX;
			clipping.minX = _minX;
			clipping.minY = _minY;
			clipping.minZ = _minZ;

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
		esoteric var _camera:Camera3DElement = null;

		/**
		 * @private
		 */
		esoteric var _scene:Scene3DElement = null;

		/**
		 * @private
		 */
		esoteric var _view:View3D = new View3D();

		/**
		 * @private
		 */
		esoteric var _maxZ:Number = 3000;

		/**
		 * @private
		 */
		esoteric var _clipping:RectangleClipping = new RectangleClipping();

		/**
		 * @private
		 */
		esoteric var _maxY:Number = 240;

		/**
		 * @private
		 */
		esoteric var _maxX:Number = 320;

		/**
		 * @private
		 */
		esoteric var _minX:Number = -320;

		/**
		 * @private
		 */
		esoteric var _minY:Number = -240;

		/**
		 * @private
		 */
		esoteric var _minZ:Number = 0;


		//---------------------------------------------------------------------
		// Getters and setters
		//---------------------------------------------------------------------
		
		/**
		 * The camera [default = null]
		 *
		 * @default	null
		 */
		public function get camera():Camera3DElement { return _camera; }
		
		public function set camera(value:Camera3DElement):void 
		{
			if(_camera != value)
			{
				var oldValue:Camera3DElement = _camera;
			

			
				_camera = value;
				dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED + 'camera', false, false, oldValue, value));
				//context.renderQueue.add(this);


				dispatchEvent(new ElementEvent(ElementEvent.UPDATED));
			}
		}

		/**
		 * The scene [default = null]
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
				dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED + 'scene', false, false, oldValue, value));
				//context.renderQueue.add(this);


				dispatchEvent(new ElementEvent(ElementEvent.UPDATED));
			}
		}

		/**
		 * The 3D view. [default = new View3D()]
		 *
		 * @default	new View3D()
		 */
		esoteric function get view():View3D { return _view; }
		
		esoteric function set view(value:View3D):void 
		{
			if(_view != value)
			{
				var oldValue:View3D = _view;
			
				if(value)
				{
					value.clipping = _clipping;

				}
			
				_view = value;


			}
		}


		/**
		 * Maximum z value for clipping. [default = 3000]
		 *
		 * @default	3000
		 */
		public function get maxZ():Number { return _maxZ; }
		
		public function set maxZ(value:Number):void 
		{

			if(maxZ != value)
			{
				var oldValue:Number = _maxZ;


				
				_maxZ = value;

				if(clipping)
				{
					clipping.maxZ = value;
				}

				//context.renderQueue.add(this);


				dispatchEvent(new ElementEvent(ElementEvent.UPDATED));			
				dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED + 'maxZ', false, false, oldValue, value));
			}
		}

		/**
		 * The rectangle clipping. [default = new RectangleClipping()]
		 *
		 * @default	new RectangleClipping()
		 */
		esoteric function get clipping():RectangleClipping { return _clipping; }
		
		esoteric function set clipping(value:RectangleClipping):void 
		{

			if(clipping != value)
			{
				var oldValue:RectangleClipping = _clipping;

				if(value)
				{
					value.maxZ = _maxZ;
					value.maxY = _maxY;
					value.maxX = _maxX;
					value.minX = _minX;
					value.minY = _minY;
					value.minZ = _minZ;

				}
				
				_clipping = value;

				if(view)
				{
					view.clipping = value;
				}

			

			}
		}

		/**
		 * Maximum y value for clipping. [default = 240]
		 *
		 * @default	240
		 */
		public function get maxY():Number { return _maxY; }
		
		public function set maxY(value:Number):void 
		{

			if(maxY != value)
			{
				var oldValue:Number = _maxY;


				
				_maxY = value;

				if(clipping)
				{
					clipping.maxY = value;
				}

				//context.renderQueue.add(this);


				dispatchEvent(new ElementEvent(ElementEvent.UPDATED));			
				dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED + 'maxY', false, false, oldValue, value));
			}
		}

		/**
		 * Maximum x value for clipping. [default = 320]
		 *
		 * @default	320
		 */
		public function get maxX():Number { return _maxX; }
		
		public function set maxX(value:Number):void 
		{

			if(maxX != value)
			{
				var oldValue:Number = _maxX;


				
				_maxX = value;

				if(clipping)
				{
					clipping.maxX = value;
				}

				//context.renderQueue.add(this);


				dispatchEvent(new ElementEvent(ElementEvent.UPDATED));			
				dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED + 'maxX', false, false, oldValue, value));
			}
		}

		/**
		 * Minimum x value for clipping. [default = -320]
		 *
		 * @default	-320
		 */
		public function get minX():Number { return _minX; }
		
		public function set minX(value:Number):void 
		{

			if(minX != value)
			{
				var oldValue:Number = _minX;


				
				_minX = value;

				if(clipping)
				{
					clipping.minX = value;
				}

				//context.renderQueue.add(this);


				dispatchEvent(new ElementEvent(ElementEvent.UPDATED));			
				dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED + 'minX', false, false, oldValue, value));
			}
		}

		/**
		 * Minimum y value for clipping. [default = -240]
		 *
		 * @default	-240
		 */
		public function get minY():Number { return _minY; }
		
		public function set minY(value:Number):void 
		{

			if(minY != value)
			{
				var oldValue:Number = _minY;


				
				_minY = value;

				if(clipping)
				{
					clipping.minY = value;
				}

				//context.renderQueue.add(this);


				dispatchEvent(new ElementEvent(ElementEvent.UPDATED));			
				dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED + 'minY', false, false, oldValue, value));
			}
		}

		/**
		 * Minimum z value for clipping. [default = 0]
		 *
		 * @default	0
		 */
		public function get minZ():Number { return _minZ; }
		
		public function set minZ(value:Number):void 
		{

			if(minZ != value)
			{
				var oldValue:Number = _minZ;


				
				_minZ = value;

				if(clipping)
				{
					clipping.minZ = value;
				}

				//context.renderQueue.add(this);


				dispatchEvent(new ElementEvent(ElementEvent.UPDATED));			
				dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED + 'minZ', false, false, oldValue, value));
			}
		}


	}
	
}
