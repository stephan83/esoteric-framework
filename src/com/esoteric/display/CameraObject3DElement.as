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
	import com.esoteric.display.ApplicationElement;
	import org.papervision3d.core.proto.CameraObject3D;
	import org.papervision3d.objects.DisplayObject3D;
	
	/**
	* Generated 2008-08-05 22:44:30.119000 UTC.
	*/
	public class CameraObject3DElement extends AbstractCameraObject3DElement
	{
		
		//---------------------------------------------------------------------
		// Constructor
		//---------------------------------------------------------------------
		
		/**
		 * Constructor.
		 */
		public function CameraObject3DElement(root:ApplicationElement, parent:IElement, type:String) 
		{
			super(root, parent, kind);
			
			updatePerfectDistance();
		}
		
		//---------------------------------------------------------------------
		// Overridden properties
		//---------------------------------------------------------------------
		
		/**
		 * @inheritDoc
		 */
		override public function set near(value:Number):void
		{
			updatePerfectDistance();
			
			super.near = value;
		}
		
		/**
		 * @inheritDoc
		 */
		override public function set far(value:Number):void
		{
			updatePerfectDistance();
			
			super.far = value;
		}
		
		/**
		 * @inheritDoc
		 */
		override public function set fov(value:Number):void
		{
			updatePerfectDistance();
			
			super.near = value;
		}
		
		/**
		 * @inheritDoc
		 */
		override protected function createDisplayObject3D():DisplayObject3D
		{
			cameraObject3D = createCameraObject3D();
			
			return cameraObject3D;
		}
		
		//---------------------------------------------------------------------
		// Methods
		//---------------------------------------------------------------------
		
		/**
		 * Template function used to create the DisplayObjectContainer3D object.
		 * 
		 * @return	the DisplayObjectContainer3D object
		 */
		protected function createCameraObject3D():CameraObject3D
		{
			return new CameraObject3D();
		}
		
		/**
		 * @private
		 */
		private function updatePerfectDistance():void
		{
			perfectDistance = cameraObject3D.focus * cameraObject3D.zoom;
		}

	}
	
}
