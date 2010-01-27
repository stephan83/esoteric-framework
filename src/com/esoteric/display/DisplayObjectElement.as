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
	import com.esoteric.core.Context;
	import com.esoteric.core.ElementProxyManager;
	import com.esoteric.core.IElement;
	import com.esoteric.core.IElementProxy;
	import com.esoteric.core.Context;
	import com.esoteric.events.ElementEvent;
	import com.esoteric.events.PropertyChangeEvent;
	import com.esoteric.events.TweenEvent;
	import com.esoteric.utils.BindableArray;
	import com.esoteric.utils.Watcher;
	import flash.display.DisplayObject;
	import flash.geom.Matrix3D;
	import flash.geom.Orientation3D;
	import flash.geom.PerspectiveProjection;
	import flash.geom.Point;
	import flash.geom.Vector3D;
	
	/**
	* Generated 2008-08-03 07:26:09.918000 UTC.
	*/
	public class DisplayObjectElement extends AbstractDisplayObjectElement implements IDisplayObjectElement
	{
		
		//---------------------------------------------------------------------
		// Constructor
		//---------------------------------------------------------------------
		
		/**
		 * Constructor.
		 */
		public function DisplayObjectElement(context:Context, kind:String) 
		{
			super(context, kind);
			
			new Watcher(this, 'visible', visibleWatcher);
			new Watcher(this, 'parent', parentWatcher);
			new Watcher(this, 'hiddenAncestor', hiddenAncestorWatcher);
			
			displayObject = createDisplayObject();
			
			// Enabled 3D
			displayObject.z = 0;
			
			context.dispList.push(this);
		}
		
		
		//---------------------------------------------------------------------
		// Implementations
		//---------------------------------------------------------------------
		
		/**
		 * @inheritDoc
		 */
		public function updateCoords(matrix:Matrix3D):void
		{
			displayObject.transform.matrix3D.identity();
			displayObject.transform.matrix3D.appendScale(scaleX, scaleY, scaleZ);
			displayObject.transform.matrix3D.appendRotation(rotationX, Vector3D.X_AXIS);
			displayObject.transform.matrix3D.appendRotation(rotationY, Vector3D.Y_AXIS);
			displayObject.transform.matrix3D.appendRotation(rotationZ, Vector3D.Z_AXIS);
			displayObject.transform.matrix3D.appendTranslation(x, y, z);
			displayObject.transform.matrix3D.append(matrix);
			// TODO: Seems to resolve resize problems, so think about that!
			var pp:PerspectiveProjection = new PerspectiveProjection();
			pp.fieldOfView = 60;
			pp.projectionCenter = new Point(context.container.stage.stageWidth / 2, context.container.stage.stageHeight / 2);
			displayObject.transform.perspectiveProjection = pp;
			context.renderQueue.add(this);
		}
		
		/**
		 * @inheritDoc
		 */
		public function get globalZ():Number
		{
			return displayObject.transform.matrix3D.position.z;
		}
		
		//---------------------------------------------------------------------
		// Overridden properties
		//---------------------------------------------------------------------
		
		/**
		 * @inheritDoc
		 */
		public override function initialize():void
		{
			super.initialize();
			
			hiddenAncestor = !(parent is DisplayObjectElement || context.root == this);
		}
		
		/**
		 * @inheritDoc
		 */
		override public function destroy():void 
		{
			for (var i:int = 0; i < context.dispList.length; i++) 
			{
				if (context.dispList[i] = this){
					context.dispList.splice(i , 1);					
					return;
				}
			}
			
			super.destroy();
		}
		
		// The mask property is a little tricky so it is overridden.
		
		/**
		 * @inheritDoc
		 */
		override public function set mask(value:DisplayObjectElement):void
		{
			if (displayObject)
			{
				displayObject.mask = value ? value.displayObject : null;
			}
			
			super.mask = value;
		}
		
		// So is the filters property.
		
		/**
		 * @inheritDoc
		 */
		override public function set filters(value:BindableArray):void
		{
			if (value)
			{
				displayObject.filters = value.map(function(item:*, index:int, a:Array):*
				{
					item.addEventListener(ElementEvent.UPDATED, filterUpdatedHandler);
					return item.bitmapFilter;
				});
			}
			else
			{
				displayObject.filters = null;
			}
			
			super.filters = value;
		}
		
		/**
		 * @inheritDoc
		 */
		override public function set width(value:Number):void
		{
			if (value)
			{
				displayObject.width = value;
			}
			
			super.width = value;
		}
		
		/**
		 * @inheritDoc
		 */
		override public function set height(value:Number):void
		{
			if (value)
			{
				displayObject.height = value;
			}
			
			super.height = value;
		}
		
		/**
		 * @inheritDoc
		 */
		override public function set displayObject(value:DisplayObject):void
		{
			if (value)
			{
				value.mask = mask ? mask.displayObject : null;
				
				if (width)
				{
					value.width = width;
				}
				
				if (height)
				{
					value.height = height;
				}
			}
			
			super.displayObject = value;
		}
		
		/**
		 * @inheritDoc
		 */
		override public function startTween(prop:*, endValue:Number , duration:Number, easingFunc:Function = null, yoyo:Boolean = false):void
		{
			// TODO: optimize visible
			var element:IElementProxy = ElementProxyManager.getInstance(this);
			
			if ((!element.getExpression('visible') && !visible ) || hiddenAncestor || (!parent && context.root != this))
			{
				this[prop] = endValue;
				
				dispatchEvent(new TweenEvent(TweenEvent.MOTION_FINISH, false, false, this, prop));
			}
			else
			{
				super.startTween(prop, endValue, duration, easingFunc, yoyo);
			}
		}
		
		//---------------------------------------------------------------------
		// Methods
		//---------------------------------------------------------------------
		
		public function hitTestPoint(x:Number, y:Number, shapeFlag:Boolean = false):Boolean
		{
			return displayObject.hitTestPoint(x, y, shapeFlag);
		}
		
		/**
		 * Template function used to create the display object.
		 * 
		 * @return	the display object
		 */
		protected function createDisplayObject():DisplayObject
		{
			return new DisplayObject();
		}
		
		/**
		 * @private
		 */
		private function visibleWatcher(e:PropertyChangeEvent):void
		{
			if (!hiddenAncestor)
			{
				for (var i:int = 0; i < numChildren; i++)
				{
					if (getChildAt(i) is DisplayObjectElement)
					{
						var child:DisplayObjectElement = getChildAt(i) as DisplayObjectElement;
						
						child.hiddenAncestor = !e.newValue;
					}
				}
			}
		}
		
		/**
		 * @private
		 */
		private function parentWatcher(e:PropertyChangeEvent):void
		{	
			if (e.newValue is DisplayObjectElement)
			{
				var parentDisplayObject:DisplayObjectElement = e.newValue as DisplayObjectElement;
				
				if(parentDisplayObject.visible && !parentDisplayObject.hiddenAncestor)
				{
					hiddenAncestor = false;
				}
				else
				{
					hiddenAncestor = true;
				}
			}
			else
			{
				hiddenAncestor =  context.root != this;
			}
		}
		
		/**
		 * @private
		 */
		private function hiddenAncestorWatcher(e:PropertyChangeEvent):void
		{
			if (visible)
			{
				for (var i:int = 0; i < numChildren; i++)
				{
					if (getChildAt(i) is DisplayObjectElement)
					{
						var child:DisplayObjectElement = getChildAt(i) as DisplayObjectElement;
						
						child.hiddenAncestor = e.newValue;
					}
				}
			}
		}
		
		/**
		 * @private
		 */
		private function filterUpdatedHandler(e:ElementEvent):void
		{
			displayObject.filters = filters.map(function(item:*, index:int, a:Array):*
			{
				return item.bitmapFilter;
			});
		}
		
	}
	
}