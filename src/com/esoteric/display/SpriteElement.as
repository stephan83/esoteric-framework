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
	import com.esoteric.display.ApplicationElement;
	import com.esoteric.events.PropertyChangeEvent;
	import flash.display.InteractiveObject;
	
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
		public function SpriteElement(context:Context, type:String) 
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
			return sprite;
		}
		
		/**
		 * @inheritDoc
		 */
		override protected function childAddedHandler(e:PropertyChangeEvent):void 
		{
			super.childAddedHandler(e);
			
			if (e.newValue is IDisplayObjectElement)
				sprite.addChild(e.newValue.displayObject);
		}
		
		/**
		 * @inheritDoc
		 */
		override protected function childRemovedHandler(e:PropertyChangeEvent):void 
		{
			// TODO: find reason which hack is necessary
			
			try
			{
				if (e.oldValue is IDisplayObjectElement)
					sprite.removeChild(e.oldValue.displayObject);
			}
			catch (error:Error)
			{
				
			}
				
			super.childRemovedHandler(e);
		}
		
		//---------------------------------------------------------------------
		// Methods
		//---------------------------------------------------------------------
		
		/**
		 * Starts dragging the sprite.
		 */
		public function startDrag():void
		{
			sprite.startDrag();
		}
		
		/**
		 * Stops dragging the sprite.
		 */
		public function stopDrag():void
		{
			sprite.stopDrag();
		}
		
	}
	
}
