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
	import away3dlite.core.base.Object3D;
	import com.carlcalderon.arthropod.Debug;
	import com.esoteric.display.DisplayObjectElement;
	import com.esoteric.esoteric;
	import com.esoteric.core.Context;
	import flash.display.DisplayObject;
	import flash.display.Sprite;
	import flash.geom.Matrix3D;
	import flash.geom.Vector3D;
	
	use namespace esoteric;
	
	public class Object3DElement extends AbstractObject3DElement
	{
		
		//---------------------------------------------------------------------
		// Constructor
		//---------------------------------------------------------------------
		
		/**
		 * Constructor.
		 */
		public function Object3DElement(context:Context, kind:String, object:Object3D = null) 
		{
			_initObject = object;
			
			super(context, kind); 
		}
		
		//---------------------------------------------------------------------
		// Members
		//---------------------------------------------------------------------
		
		/**
		 * @private
		 */
		private var _initObject:Object3D;
		
		//---------------------------------------------------------------------
		// Overrides
		//---------------------------------------------------------------------

		/**
		 * @inheritDoc
		 */
		override protected function createSprite():Sprite 
		{
			return _object = createObject();
		}
		
		/**
		 * @inheritDoc
		 */
		override public function initialize():void 
		{
			super.initialize();
			
			if (_initObject)
			{
				id = _initObject.name;
				x = _initObject.x;
				y = _initObject.y;
				z = _initObject.z;
				rotationX = _initObject.rotationX;
				rotationY = _initObject.rotationY;
				rotationZ = _initObject.rotationZ;
				scaleX = _initObject.scaleX;
				scaleY = _initObject.scaleY;
				scaleZ = _initObject.scaleZ;
					
				loadChildren(_initObject);
			}
		}
		
		//---------------------------------------------------------------------
		// Methods
		//---------------------------------------------------------------------
		
		/**
		 * Template function to create the object 3D.
		 * 
		 * @return	the object 3D
		 */
		protected function createObject():Object3D 
		{
			return _initObject ? _initObject.clone() : new Object3D();
		}
		
		/**
		 * Creates nodes for the children of an Object3D.
		 * 
		 * @param	object	the object3D
		 */		
		esoteric function loadChildren(object:Object3D):void
		{
			var dispObject:DisplayObject;
			var object3D:Object3D;
			var element:Object3DElement;
			
			for (var i:int = 0; i < object.numChildren; i++) 
			{
				dispObject = object.getChildAt(i);
				if (dispObject is Object3D)
				{
					object3D = dispObject as Object3D;
					
					element = new Object3DElement(context, 'Object3D', object3D);
					addChild(element);
					element.initialize();
				}
			}
		}
	}
	
}
