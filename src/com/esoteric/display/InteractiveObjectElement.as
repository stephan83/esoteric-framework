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
	import com.esoteric.core.IElement;
	import com.esoteric.core.Context;
	import com.esoteric.esoteric;
	import com.esoteric.events.PointInputEvent;
	import com.esoteric.events.PropertyChangeEvent;
	import com.esoteric.utils.Watcher;
	import flash.display.DisplayObject;
	import flash.display.InteractiveObject;
	import flash.events.MouseEvent;
	import flash.geom.Point;
	
	public class InteractiveObjectElement extends AbstractInteractiveObjectElement
	{
		use namespace esoteric;
		
		//---------------------------------------------------------------------
		// Constructor
		//---------------------------------------------------------------------
		
		/**
		 * Constructor.
		 */
		public function InteractiveObjectElement(context:Context, kind:String) 
		{
			super(context, kind);
			
			new Watcher(this, 'visible', visibleWatcher);
			new Watcher(this, 'mouseEnabled', mouseEnabledWatcher);
			new Watcher(this, 'hiddenAncestor', hiddenAncestorWatcher);
		}
		
		//---------------------------------------------------------------------
		// Variables
		//---------------------------------------------------------------------
		
		/**
		 * @private
		 */
		private var _hasEventListeners:Boolean = false;
		
		//---------------------------------------------------------------------
		// Overridden properties
		//---------------------------------------------------------------------
		
		/**
		 * @inheritDoc
		 */
		override public function destroy():void
		{
			if (_hasEventListeners)
			{
				removeEventListeners();
			}
			
			super.destroy();
		}
		
		/**
		 * @inheritDoc
		 */
		override protected function createDisplayObject():DisplayObject
		{
			_interactiveObject = createInteractiveObject();
			
			return _interactiveObject;
		}
		
		//---------------------------------------------------------------------
		// Methods
		//---------------------------------------------------------------------
		
		/**
		 * Template function used to create the interactive object.
		 * 
		 * @return	the InteractiveObject object
		 */
		protected function createInteractiveObject():InteractiveObject
		{
			return new InteractiveObject();
		}
		
		/**
		 * @private
		 */
		private function addEventListeners():void
		{
			interactiveObject.addEventListener(MouseEvent.CLICK, clickHandler, false, 0, true);
			interactiveObject.addEventListener(MouseEvent.MOUSE_DOWN, mouseDownHandler, false, 0, true);
			interactiveObject.addEventListener(MouseEvent.MOUSE_UP, mouseUpHandler, false, 0, true);
			interactiveObject.addEventListener(MouseEvent.MOUSE_OVER, mouseOverHandler, false, 0, true);
			interactiveObject.addEventListener(MouseEvent.MOUSE_OUT, mouseOutHandler, false, 1, true);
			interactiveObject.addEventListener(MouseEvent.MOUSE_MOVE, mouseMoveHandler, false, 0, true);
			//context.stage.addEventListener(MouseEvent.MOUSE_UP, stageMouseUpHandler, false, 0, true);
			//context.stage.addEventListener(MouseEvent.MOUSE_MOVE, stageMouseMoveHandler, false, 0, true);
			
			_hasEventListeners = true;
		}
		
		/**
		 * @private
		 */
		private function removeEventListeners():void
		{trace('nooo');
			interactiveObject.removeEventListener(MouseEvent.CLICK, clickHandler);
			interactiveObject.removeEventListener(MouseEvent.MOUSE_DOWN, mouseDownHandler);
			interactiveObject.removeEventListener(MouseEvent.MOUSE_UP, mouseUpHandler);
			interactiveObject.removeEventListener(MouseEvent.MOUSE_OVER, mouseOverHandler);
			interactiveObject.removeEventListener(MouseEvent.MOUSE_OUT, mouseOutHandler);
			interactiveObject.removeEventListener(MouseEvent.MOUSE_MOVE, mouseMoveHandler);
			//context.stage.removeEventListener(MouseEvent.MOUSE_UP, stageMouseUpHandler);
			//context.stage.removeEventListener(MouseEvent.MOUSE_MOVE, stageMouseMoveHandler);
			
			_hasEventListeners = false;
		}
		
		/**
		 * @private
		 */
		private function clickHandler(e:MouseEvent):void 
		{
			var global:Point = new Point(e.stageX, e.stageY);
			var local:Point = displayObject.globalToLocal(global);
			
			dispatchEvent(new PointInputEvent(PointInputEvent.CLICK, false, false, local.x, local.y, 0, e.stageX, e.stageY));
		}
		
		/**
		 * @private
		 */
		private function mouseDownHandler(e:MouseEvent):void 
		{
			var global:Point = new Point(e.stageX, e.stageY);
			var local:Point = displayObject.globalToLocal(global);
			
			pressedX = local.x;
			pressedY = local.y;
			
			pressed = true;
			
			dispatchEvent(new PointInputEvent(PointInputEvent.PRESS, false, false, local.x, local.y, 0, e.stageX, e.stageY));
		}
		
		/**
		 * @private
		 */
		private function mouseUpHandler(e:MouseEvent):void 
		{
			if (pressed)
			{
				var global:Point = new Point(e.stageX, e.stageY);
				var local:Point = displayObject.globalToLocal(global);
				
				pressed = false;
				
				dispatchEvent(new PointInputEvent(PointInputEvent.RELEASE, false, false, local.x, local.y, 0, e.stageX, e.stageY));
			}
		}
		
		/**
		 * @private
		 */
		private function mouseOverHandler(e:MouseEvent):void 
		{
			var global:Point = new Point(e.stageX, e.stageY);
			var local:Point = displayObject.globalToLocal(global);
			
			hovered = true;
			
			dispatchEvent(new PointInputEvent(PointInputEvent.OVER, false, false, local.x, local.y, 0, e.stageX, e.stageY));
		}
		
		/**
		 * @private
		 */
		private function mouseOutHandler(e:MouseEvent):void 
		{
			var global:Point = new Point(e.stageX, e.stageY);
			var local:Point = displayObject.globalToLocal(global);
			
			hovered = false;
			
			dispatchEvent(new PointInputEvent(PointInputEvent.OUT, false, false, local.x, local.y, 0, e.stageX, e.stageY));
		}
		
		/**
		 * @private
		 */
		private function mouseMoveHandler(e:MouseEvent):void 
		{
			var global:Point = new Point(e.stageX, e.stageY);
			var local:Point = displayObject.globalToLocal(global);
			
			mouseX = local.x;
			mouseY = local.y;
			
			dispatchEvent(new PointInputEvent(PointInputEvent.MOVE, false, false, local.x, local.y, 0, e.stageX, e.stageY));
			
			if (pressed)
			{				
				dispatchEvent(new PointInputEvent(PointInputEvent.DRAG, false, false, local.x, local.y, 0, e.stageX, e.stageY));
			}
		}
		
		/**
		 * @private
		 */
		private function stageMouseUpHandler(e:MouseEvent):void 
		{
			if (!hovered)
			{
				var global:Point = new Point(e.stageX, e.stageY);
				var local:Point = displayObject.globalToLocal(global);
				
				pressed = false;
				
				dispatchEvent(new PointInputEvent(PointInputEvent.RELEASE_OUTSIDE, false, false, local.x, local.y, 0, e.stageX, e.stageY));
			}
		}
		
		/**
		 * @private
		 */
		private function stageMouseMoveHandler(e:MouseEvent):void 
		{
			
			var global:Point = new Point(e.stageX, e.stageY);
			var local:Point = displayObject.globalToLocal(global);
			
			if (!hovered)
			{
				mouseX = local.x;
				mouseY = local.y;
			}
			
			if (pressed)
			{				
				dispatchEvent(new PointInputEvent(PointInputEvent.DRAG, false, false, local.x, local.y, 0, e.stageX, e.stageY));
			}
		}
		
		/**
		 * @private
		 */
		private function visibleWatcher(e:PropertyChangeEvent):void
		{
			if (e.newValue)
			{
				if (!_hasEventListeners && mouseEnabled && !hiddenAncestor)
				{
					addEventListeners();
				}
			}
			else
			{
				if (hovered && mouseEnabled && !hiddenAncestor)
				{
					hovered = false;
					
					var global:Point = new Point(context.stage.mouseX, context.stage.mouseY);
					var local:Point = displayObject.globalToLocal(global);
					
					dispatchEvent(new PointInputEvent(PointInputEvent.OUT, false, false, local.x, local.y, 0, context.stage.mouseX, context.stage.mouseY));
				}
				
				if (_hasEventListeners)
				{
					removeEventListeners();
				}
			}
		}
		
		/**
		 * @private
		 */
		private function hiddenAncestorWatcher(e:PropertyChangeEvent):void
		{
			if (e.newValue)
			{
				if (hovered && mouseEnabled && visible)
				{
					hovered = false;
					
					var global:Point = new Point(context.stage.mouseX, context.stage.mouseY);
					var local:Point = displayObject.globalToLocal(global);
					
					dispatchEvent(new PointInputEvent(PointInputEvent.OUT, false, false, local.x, local.y, 0, context.stage.mouseX, context.stage.mouseY));
				}
				
				if (_hasEventListeners)
				{
					removeEventListeners();
				}
			}
			else
			{
				if (!_hasEventListeners && visible && mouseEnabled)
				{
					addEventListeners();
				}
			}
		}
		
		/**
		 * @private
		 */
		private function mouseEnabledWatcher(e:PropertyChangeEvent):void
		{
			if (e.newValue)
			{
				if (!_hasEventListeners && visible && !hiddenAncestor)
				{
					addEventListeners();
				}
			}
			else
			{
				if (hovered && mouseEnabled && !hiddenAncestor)
				{
					hovered = false;
				}
				
				if (_hasEventListeners)
				{
					removeEventListeners();
				}
			}
		}

	}
	
}
