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
	import com.esoteric.events.ListEvent;
	import com.esoteric.events.PropertyChangeEvent;
	import flash.display.DisplayObject;
	import flash.display.InteractiveObject;
	import flash.display.Sprite;
	import flash.geom.Matrix3D;
	
	use namespace esoteric;
	
	/**
	* Generated 2008-08-03 07:32:29.801000 UTC.
	*/
	public class SpriteElement extends AbstractSpriteElement
	{
		
		//---------------------------------------------------------------------
		// Constructor
		//---------------------------------------------------------------------
		
		/**
		 * Constructor.
		 */
		public function SpriteElement(context:Context, kind:String) 
		{
			super(context, kind);
		}
		
		//---------------------------------------------------------------------
		// Overridden property
		//---------------------------------------------------------------------
		
		/**
		 * @inheritDoc
		 */
		override protected function createInteractiveObject():InteractiveObject
		{
			return _sprite = createSprite();
		}
		
		/**
		 * @inheritDoc
		 */
		override protected function childAddedHandler(e:ListEvent):void 
		{
			super.childAddedHandler(e);
			
			if (e.item is DisplayObjectElement)
			{
				var dispObject:DisplayObjectElement = e.item as DisplayObjectElement;
				
				_sprite.addChild(dispObject._displayObject);
			}
		}
		
		/**
		 * @inheritDoc
		 */
		override protected function childRemovedHandler(e:ListEvent):void 
		{
			super.childAddedHandler(e);
			
			if (e.item is DisplayObjectElement)
			{
				var dispObject:DisplayObjectElement = e.item as DisplayObjectElement;
				
				_sprite.removeChild(dispObject._displayObject);
			}
		}
		
		/**
		 * @inheritDoc
		 */
		override esoteric function updateGlobalPosition(matrix:Matrix3D):void
		{
			super.updateGlobalPosition(matrix);
			
			var child:IElement;
			
			for (var i:int = 0; i < numChildren; i++) 
			{
				child = getChildAt(i);
				
				if (child is DisplayObjectElement)
				{
					(child as DisplayObjectElement).updateGlobalPosition(_transformMatrix.clone());
				}
			}
		}
		
		//---------------------------------------------------------------------
		// Methods
		//---------------------------------------------------------------------
		
		/**
		 * Starts dragging the sprite.
		 */
		public function startDrag():void
		{
			_sprite.startDrag();
		}
		
		/**
		 * Stops dragging the sprite.
		 */
		public function stopDrag():void
		{
			_sprite.stopDrag();
		}
		
		/**
		 * Creates the sprite.
		 */
		protected function createSprite():Sprite
		{
			return new Sprite();
		}
		
	}
	
}
