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
	import com.esoteric.events.PropertyChangeEvent;
	import flash.display.Sprite;
	import flash.events.Event;
	import org.papervision3d.materials.MovieMaterial;
	import org.papervision3d.objects.DisplayObject3D;
	import org.papervision3d.objects.primitives.Plane;
	
	public class Sprite3DElement extends AbstractSprite3DElement
	{
		
		//---------------------------------------------------------------------
		// Constructor
		//---------------------------------------------------------------------
		
		/**
		 * Constructor
		 */
		public function Sprite3DElement(root:ApplicationElement, parent:IElement, type:String) 
		{
			super(root, parent, kind);
			
			// Interactive clips need to be on the stage, so put one in an
			// invisible container to add it to the stage.
			_container.addChild(sprite);
			_container.visible = false;
		}
		
		//---------------------------------------------------------------------
		// Variables
		//---------------------------------------------------------------------
		
		/**
		 * @private
		 */
		private var _container:Sprite = new Sprite();
		
		/**
		 * @private
		 */
		private var _userScaleX:Number = 1.0;
		
		/**
		 * @private
		 */
		private var _userScaleY:Number = 1.0;
		
		//---------------------------------------------------------------------
		// Overridden property
		//---------------------------------------------------------------------
		
		// Scaling is handled a bit differently in the case of a
		// Sprite3DElement. We keep track of the requested value but don't
		// update the plane until it is rendered.
		
		/**
		 * @inheritDocs
		 */
		override public function set scaleX(value:Number):void
		{
			if (_userScaleX != value)
			{
				var oldValue:Number = _userScaleX;
				
				_userScaleX = value;
				
				root.renderQueue.add(this);
				dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'scaleX', oldValue, value));
			}
		}
		
		/**
		 * @inheritDocs
		 */
		override public function set scaleY(value:Number):void
		{
			if (_userScaleY != value)
			{
				var oldValue:Number = _userScaleY;
				
				_userScaleY = value;
				
				root.renderQueue.add(this);
				dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'scaleY', oldValue, value));
			}
		}
		
		/**
		 * @inheritDocs
		 */
		override public function set interactive(value:Boolean):void
		{
			if (interactive != value)
			{
				if (interactive)
				{
					// Since the clip is no longer interactive, remove the 
					// container from the stage.
					root.stage.removeChild(_container);
				}
				else
				{
					// The clip is now interactive so the container must be
					// added to the stage.
					root.stage.addChild(_container);
				}
			}
			
			super.interactive = value;
		}
		
		/**
		 * @inheritDocs
		 */
		override public function destroy():void
		{
			if (interactive)
			{
				// Remove the container from the stage.
				root.stage.removeChild(_container);
			}
			
			super.destroy();
		}
		
		/**
		 * @inheritDocs
		 */
		override public function render():void
		{
			// The plane has constant width and height of 500px so we scale the
			// plane so that the scaled dimensions correspond to that of the
			// sprite, then scale it by the requested values.
			plane.scaleX = sprite.width / 500 * _userScaleX;
			plane.scaleY = sprite.height / 500 * _userScaleY;
			
			// Animated only needs to be true when the element is updated.
			movieMaterial.animated = true;
			
			super.render();
		}
		
		/**
		 * @inheritDoc
		 */
		override public function postRender():void
		{
			super.postRender();
			
			movieMaterial.animated = false;
		}
		
		/**
		 * @inheritDoc
		 */
		override protected function createDisplayObject3D():DisplayObject3D
		{
			movieMaterial = new MovieMaterial(sprite, transparent);
			movieMaterial.interactive = interactive;
			movieMaterial.allowAutoResize = true;
			plane = new Plane(movieMaterial, 500, 500, 5, 5);
			
			return plane;
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
			super.childRemovedHandler(e);
			
			if (e.oldValue is IDisplayObjectElement)
				sprite.removeChild(e.oldValue.displayObject);
		}

	}
	
}
