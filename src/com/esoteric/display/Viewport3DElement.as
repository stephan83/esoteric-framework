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

package com.esoteric.display
{
	import com.esoteric.core.IElement;
	import com.esoteric.core.Context;
	import com.esoteric.events.ElementEvent;
	import flash.display.DisplayObject;
	
	/**
	* Generated 2008-08-05 21:59:42.193000 UTC.
	*/
	public class Viewport3DElement extends AbstractViewport3DElement
	{
		
		//---------------------------------------------------------------------
		// Constructor
		//---------------------------------------------------------------------
		
		/**
		 * Constructor.
		 */
		public function Viewport3DElement(context:Context, type:String) 
		{
			super(context, kind);
		}
		
		//---------------------------------------------------------------------
		// Overridden property
		//---------------------------------------------------------------------
		
		/**
		 * @inheritDoc
		 */
		override public function set camera(value:CameraObject3DElement):void
		{
			if (camera)
			{
				camera.removeEventListener(ElementEvent.UPDATED, cameraUpdatedHandler);
			}
			
			if (value)
			{
				value.addEventListener(ElementEvent.UPDATED, cameraUpdatedHandler);
			}
			
			super.camera = value;
		}
		
		/**
		 * @inheritDoc
		 */
		override public function set scene(value:Scene3DElement):void
		{
			if (scene)
			{
				scene.removeEventListener(ElementEvent.UPDATED, sceneUpdatedHandler);
			}
			
			if (value)
			{
				value.addEventListener(ElementEvent.UPDATED, sceneUpdatedHandler);
			}
			
			super.scene = value;
		}
		
		/**
		 * @inheritDoc
		 */
		override public function render():void
		{
			if (scene && scene.scene3D && camera && camera.cameraObject3D && viewport3D)
			{
				scene.preRender();
				
				//root.renderEngine.renderScene(scene.scene3D, camera.cameraObject3D, viewport3D, false);
				//root.renderEngine.renderScene(scene.scene3D, camera.cameraObject3D, viewport3D);
				
				scene.postRender();
			}
			
			super.render();
		}
		
		/**
		 * @inheritDoc
		 */
		override protected function createDisplayObject():DisplayObject
		{
			return viewport3D;
		}
		
		//---------------------------------------------------------------------
		// Methods
		//---------------------------------------------------------------------
		
		/**
		 * @private
		 */
		private function cameraUpdatedHandler(e:ElementEvent):void 
		{
			context.renderQueue.add(this);
		}
		
		/**
		 * @private
		 */
		private function sceneUpdatedHandler(e:ElementEvent):void 
		{
			context.renderQueue.add(this);
		}

	}
	
}
