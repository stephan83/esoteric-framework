/*
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
	import com.esoteric.core.Context;
	import com.esoteric.core.IElement;
	import com.esoteric.esoteric;
	import com.esoteric.events.ElementEvent;
	import flash.display.Sprite;
	
	use namespace esoteric;
	
	public class View3DElement extends AbstractView3DElement
	{
		
		//---------------------------------------------------------------------
		// Constructor
		//---------------------------------------------------------------------
		
		/**
		 * Constructor.
		 */
		public function View3DElement(context:Context, kind:String) 
		{
			super(context, kind);
		}
		
		//---------------------------------------------------------------------
		// Overrides
		//---------------------------------------------------------------------
		
		/**
		 * @inheritDoc
		 */
		override public function set scene(value:Scene3DElement):void 
		{
			if (value != _scene)
			{
				if (_scene)
				{
					_scene.removeEventListener(ElementEvent.UPDATED, sceneUpdatedHandler);
				}
				
				if (value)
				{
					value.addEventListener(ElementEvent.UPDATED, sceneUpdatedHandler);
				
					_view.scene = value._scene;
				}
				
				super.scene = value;
			}
		}
		
		/**
		 * @inheritDoc
		 */
		override public function set camera(value:Camera3DElement):void 
		{
			if (value != _camera)
			{
				if (_camera)
				{
					_camera.removeEventListener(ElementEvent.UPDATED, cameraUpdatedHandler);
				}
				
				if (value)
				{
					value.addEventListener(ElementEvent.UPDATED, cameraUpdatedHandler);
				
					_view.camera = value._camera;
				}
				
				super.camera = value;
			}
		}
		
		/**
		 * @inheritDoc
		 */
		override protected function createSprite():Sprite 
		{
			return _view;
		}
		
		/**
		 * @inheritDoc
		 */
		override public function render():void 
		{
			super.render();
			
			if (_view && _scene && _camera)
			{
				_view.render();
			}
		}
		
		//---------------------------------------------------------------------
		// Members
		//---------------------------------------------------------------------
		
		/**
		 * @private
		 */
		private function sceneUpdatedHandler(e:ElementEvent):void 
		{
			context.renderQueue.add(this);
		}
		
		/**
		 * @private
		 */
		private function cameraUpdatedHandler(e:ElementEvent):void 
		{
			context.renderQueue.add(this);
		}

	}
	
}
