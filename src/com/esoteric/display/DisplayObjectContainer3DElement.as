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
	import com.esoteric.events.PropertyChangeEvent;
	import org.papervision3d.core.proto.DisplayObjectContainer3D;
	
	/**
	* Generated 2008-08-05 22:16:49.364000 UTC.
	*/
	public class DisplayObjectContainer3DElement extends AbstractDisplayObjectContainer3DElement implements IDisplayObjectContainer3DElement
	{
		
		//---------------------------------------------------------------------
		// Constructor
		//---------------------------------------------------------------------
		
		/**
		 * Constructor.
		 */
		public function DisplayObjectContainer3DElement(context:Context, kind:String) 
		{
			super(context, kind);
			
			displayObjectContainer3D = createDisplayObjectContainer3D();
		}
		
		//---------------------------------------------------------------------
		// Overridden properties
		//---------------------------------------------------------------------
		
		/**
		 * @inheritDoc
		 */
		override protected function childAddedHandler(e:PropertyChangeEvent):void 
		{
			super.childAddedHandler(e);
			
			if (e.newValue is IDisplayObject3DElement)
				displayObjectContainer3D.addChild(e.newValue.displayObject3D);
		}
		
		/**
		 * @inheritDoc
		 */
		override protected function childRemovedHandler(e:PropertyChangeEvent):void 
		{
			super.childRemovedHandler(e);
			
			if (e.newValue is IDisplayObject3DElement)
				displayObjectContainer3D.removeChild(e.newValue.displayObject3D);
		}
		
		//---------------------------------------------------------------------
		// Interface implementations
		//---------------------------------------------------------------------
		
		/**
		 * @inheritDoc
		 */
		public function preRender():void
		{
			var length:int = numChildren;
			
			for (var i:int = 0; i < length; i++) 
			{
				var child:IElement = getChildAt(i);
				
				if (child is IDisplayObjectContainer3DElement)
				{
					IDisplayObjectContainer3DElement(child).preRender();
				}
			}
		}
		
		/**
		 * @inheritDoc
		 */
		public function postRender():void
		{
			var length:int = numChildren;
			
			for (var i:int = 0; i < length; i++) 
			{
				var child:IElement = getChildAt(i);
				
				if (child is IDisplayObjectContainer3DElement)
				{
					IDisplayObjectContainer3DElement(child).postRender();
				}
			}
		}
		
		//---------------------------------------------------------------------
		// Methods
		//---------------------------------------------------------------------
		
		/**
		 * Template function used to create the DisplayObjectContainer3D object.
		 * 
		 * @return	the DisplayObjectContainer3D object
		 */
		protected function createDisplayObjectContainer3D():DisplayObjectContainer3D
		{
			return new DisplayObjectContainer3D();
		}

	}
	
}
