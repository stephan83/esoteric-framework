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
	import org.papervision3d.core.proto.DisplayObjectContainer3D;
	import org.papervision3d.objects.DisplayObject3D;
	
	/**
	* Generated 2008-08-05 22:44:30.126000 UTC.
	*/
	public class DisplayObject3DElement extends AbstractDisplayObject3DElement implements IDisplayObject3DElement
	{
		
		//---------------------------------------------------------------------
		// Constructor
		//---------------------------------------------------------------------
		
		/**
		 * Constructor.
		 */
		public function DisplayObject3DElement(context:Context, kind:String) 
		{
			super(context, kind);
		}
		
		//---------------------------------------------------------------------
		// Overridden properties
		//---------------------------------------------------------------------
		
		/**
		 * @inheritDoc
		 */
		override protected function createDisplayObjectContainer3D():DisplayObjectContainer3D
		{
			displayObject3D = createDisplayObject3D();
			
			return displayObject3D;
		}
		
		/**
		 * @inheritDoc
		 */
		override public function set filters(value:Array):void
		{
			if (value)
			{
				displayObject3D.filters = value.map(function(item:*, index:int, a:Array):*
				{
					return item.bitmapFilter;
				});
			}
			else
			{
				displayObject3D.filters = null;
			}
			
			super.filters = value;
		}
		
		//---------------------------------------------------------------------
		// Methods
		//---------------------------------------------------------------------
		
		/**
		 * Tweens the position and rotation of the element to an object. The
		 * object must have the following properties: x, y, z, rotationX,
		 * rotationY, and rotationZ.
		 * 
		 * @param	obj			the object to tween to
		 * @param	duration	the duration of the tween, in seconds
		 * @param	easingFunc	the easing function
		 */
		public function tweenToObject(obj:Object, duration:Number, easingFunc:Function = null):void
		{
			for each(var p:String in ['x', 'y', 'z', 'rotationX', 'rotationY', 'rotationZ'])
			{
				startTween(p, obj[p], duration, easingFunc);
			}
		}
		
		/**
		 * Template function used to create the DisplayObject3D object.
		 * 
		 * @return	the DisplayObjectContainer3D object
		 */
		protected function createDisplayObject3D():DisplayObject3D
		{
			return new DisplayObject3D();
		}

	}
	
}
