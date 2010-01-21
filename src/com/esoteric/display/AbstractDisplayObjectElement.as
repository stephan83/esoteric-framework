/*
	DO NOT MODIFY THIS FILE, THE CODE GENERATOR WILL ERASE ANY CHANGES MADE.
	MAKE CHANGES TO THE DERIVED CLASS INSTEAD.

	Last generated 2010-01-20 20:12:19.396000 UTC.

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
	import com.esoteric.core.TweenableElement;
	import com.esoteric.utils.BindableArray;
	import flash.display.DisplayObject;

	import com.esoteric.core.Context;
	import com.esoteric.events.ElementEvent;
	import com.esoteric.events.PropertyChangeEvent;
	
	public class AbstractDisplayObjectElement extends TweenableElement
	{
		
		//---------------------------------------------------------------------
		// Constructor
		//---------------------------------------------------------------------
		
		/**
		 * Constructor.
		 */
		public function AbstractDisplayObjectElement(context:Context, kind:String) 
		{
			super(context, kind);
			

		}
		
		//---------------------------------------------------------------------
		// Overrides
		//---------------------------------------------------------------------
		
		/**
		 * @inheritDoc
		 */
		
		public override function initialize():void
		{
			super.initialize();
			

		}

		//---------------------------------------------------------------------
		// Variables
		//---------------------------------------------------------------------
		
		/**
		 * @private
		 */
		private var _hiddenAncestor:Boolean = false;

		/**
		 * @private
		 */
		private var _mask:DisplayObjectElement = null;

		/**
		 * @private
		 */
		private var _height:Number = 0.0;

		/**
		 * @private
		 */
		private var _width:Number = 0.0;

		/**
		 * @private
		 */
		private var _displayObject:DisplayObject = null;

		/**
		 * @private
		 */
		private var _filters:BindableArray = null;

		/**
		 * @private
		 */
		private var _scaleX:Number = 1.0;

		/**
		 * @private
		 */
		private var _scaleY:Number = 1.0;

		/**
		 * @private
		 */
		private var _visible:Boolean = true;

		/**
		 * @private
		 */
		private var _cacheAsBitmap:Boolean = false;

		/**
		 * @private
		 */
		private var _alpha:Number = 1.0;

		/**
		 * @private
		 */
		private var _y:Number = 0.0;

		/**
		 * @private
		 */
		private var _x:Number = 0.0;

		/**
		 * @private
		 */
		private var _rotation:Number = 0.0;


		//---------------------------------------------------------------------
		// Getters and setters
		//---------------------------------------------------------------------
		
		/**
		 * Whether the object has a hidden ancestor. [default = false]
		 *
		 * @default	false
		 */
		public function get hiddenAncestor():Boolean { return _hiddenAncestor; }
		
		public function set hiddenAncestor(value:Boolean):void 
		{
			if(_hiddenAncestor != value)
			{
				var oldValue:Boolean = _hiddenAncestor;
			

			
				_hiddenAncestor = value;
				if(hasEventListener(PropertyChangeEvent.PROPERTY_UPDATED))
				{
					dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'hiddenAncestor', oldValue, value));
				}
				context.renderQueue.add(this);
			}
		}

		/**
		 * The DisplayObjectElement to use as a mask. [default = null]
		 *
		 * @default	null
		 */
		public function get mask():DisplayObjectElement { return _mask; }
		
		public function set mask(value:DisplayObjectElement):void 
		{
			if(_mask != value)
			{
				var oldValue:DisplayObjectElement = _mask;
			

			
				_mask = value;
				if(hasEventListener(PropertyChangeEvent.PROPERTY_UPDATED))
				{
					dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'mask', oldValue, value));
				}
				context.renderQueue.add(this);
			}
		}

		/**
		 * The height of the display object. [default = 0.0]
		 *
		 * @default	0.0
		 */
		public function get height():Number { return _height; }
		
		public function set height(value:Number):void 
		{
			if(_height != value)
			{
				var oldValue:Number = _height;
			

			
				_height = value;
				if(hasEventListener(PropertyChangeEvent.PROPERTY_UPDATED))
				{
					dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'height', oldValue, value));
				}
				context.renderQueue.add(this);
			}
		}

		/**
		 * The width of the display object. [default = 0.0]
		 *
		 * @default	0.0
		 */
		public function get width():Number { return _width; }
		
		public function set width(value:Number):void 
		{
			if(_width != value)
			{
				var oldValue:Number = _width;
			

			
				_width = value;
				if(hasEventListener(PropertyChangeEvent.PROPERTY_UPDATED))
				{
					dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'width', oldValue, value));
				}
				context.renderQueue.add(this);
			}
		}

		/**
		 * The DisplayObject object. [default = null]
		 *
		 * @default	null
		 */
		public function get displayObject():DisplayObject { return _displayObject; }
		
		public function set displayObject(value:DisplayObject):void 
		{
			if(_displayObject != value)
			{
				var oldValue:DisplayObject = _displayObject;
			
				if(value)
				{
					value.scaleX = _scaleX;
					value.scaleY = _scaleY;
					value.visible = _visible;
					value.cacheAsBitmap = _cacheAsBitmap;
					value.alpha = _alpha;
					value.y = _y;
					value.x = _x;
					value.rotation = _rotation;

				}
			
				_displayObject = value;


			}
		}

		/**
		 * An array of bitmap filters. [default = null]
		 *
		 * @default	null
		 */
		public function get filters():BindableArray { return _filters; }
		
		public function set filters(value:BindableArray):void 
		{
			if(_filters != value)
			{
				var oldValue:BindableArray = _filters;
			

			
				_filters = value;
				if(hasEventListener(PropertyChangeEvent.PROPERTY_UPDATED))
				{
					dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'filters', oldValue, value));
				}
				context.renderQueue.add(this);
			}
		}


		/**
		 * The horizontal scaling factor of the display object. [default = 1.0]
		 *
		 * @default	1.0
		 */
		public function get scaleX():Number { return _scaleX; }
		
		public function set scaleX(value:Number):void 
		{

			if(scaleX != value)
			{
				var oldValue:Number = _scaleX;


				
				_scaleX = value;

				if(displayObject)
				{
					displayObject.scaleX = value;
				}

				context.renderQueue.add(this);			
				if(hasEventListener(PropertyChangeEvent.PROPERTY_UPDATED))
				{
					dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'scaleX', oldValue, value));
				}
			}
		}

		/**
		 * The vertical scaling factor of the display object. [default = 1.0]
		 *
		 * @default	1.0
		 */
		public function get scaleY():Number { return _scaleY; }
		
		public function set scaleY(value:Number):void 
		{

			if(scaleY != value)
			{
				var oldValue:Number = _scaleY;


				
				_scaleY = value;

				if(displayObject)
				{
					displayObject.scaleY = value;
				}

				context.renderQueue.add(this);			
				if(hasEventListener(PropertyChangeEvent.PROPERTY_UPDATED))
				{
					dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'scaleY', oldValue, value));
				}
			}
		}

		/**
		 * Whether the display object is visible. [default = true]
		 *
		 * @default	true
		 */
		public function get visible():Boolean { return _visible; }
		
		public function set visible(value:Boolean):void 
		{

			if(visible != value)
			{
				var oldValue:Boolean = _visible;


				
				_visible = value;

				if(displayObject)
				{
					displayObject.visible = value;
				}

				context.renderQueue.add(this);			
				if(hasEventListener(PropertyChangeEvent.PROPERTY_UPDATED))
				{
					dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'visible', oldValue, value));
				}
			}
		}

		/**
		 * Whether to cache as bitmap. [default = false]
		 *
		 * @default	false
		 */
		public function get cacheAsBitmap():Boolean { return _cacheAsBitmap; }
		
		public function set cacheAsBitmap(value:Boolean):void 
		{

			if(cacheAsBitmap != value)
			{
				var oldValue:Boolean = _cacheAsBitmap;


				
				_cacheAsBitmap = value;

				if(displayObject)
				{
					displayObject.cacheAsBitmap = value;
				}

				context.renderQueue.add(this);			
				if(hasEventListener(PropertyChangeEvent.PROPERTY_UPDATED))
				{
					dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'cacheAsBitmap', oldValue, value));
				}
			}
		}

		/**
		 * The alpha value of the display object. [default = 1.0]
		 *
		 * @default	1.0
		 */
		public function get alpha():Number { return _alpha; }
		
		public function set alpha(value:Number):void 
		{

			if(alpha != value)
			{
				var oldValue:Number = _alpha;


				
				_alpha = value;

				if(displayObject)
				{
					displayObject.alpha = value;
				}

				context.renderQueue.add(this);			
				if(hasEventListener(PropertyChangeEvent.PROPERTY_UPDATED))
				{
					dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'alpha', oldValue, value));
				}
			}
		}

		/**
		 * The horizontal position of the display object. [default = 0.0]
		 *
		 * @default	0.0
		 */
		public function get y():Number { return _y; }
		
		public function set y(value:Number):void 
		{

			if(y != value)
			{
				var oldValue:Number = _y;


				
				_y = value;

				if(displayObject)
				{
					displayObject.y = value;
				}

				context.renderQueue.add(this);			
				if(hasEventListener(PropertyChangeEvent.PROPERTY_UPDATED))
				{
					dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'y', oldValue, value));
				}
			}
		}

		/**
		 * The vertical position of the display object. [default = 0.0]
		 *
		 * @default	0.0
		 */
		public function get x():Number { return _x; }
		
		public function set x(value:Number):void 
		{

			if(x != value)
			{
				var oldValue:Number = _x;


				
				_x = value;

				if(displayObject)
				{
					displayObject.x = value;
				}

				context.renderQueue.add(this);			
				if(hasEventListener(PropertyChangeEvent.PROPERTY_UPDATED))
				{
					dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'x', oldValue, value));
				}
			}
		}

		/**
		 * The rotation of the display object, in degrees. [default = 0.0]
		 *
		 * @default	0.0
		 */
		public function get rotation():Number { return _rotation; }
		
		public function set rotation(value:Number):void 
		{

			if(rotation != value)
			{
				var oldValue:Number = _rotation;


				
				_rotation = value;

				if(displayObject)
				{
					displayObject.rotation = value;
				}

				context.renderQueue.add(this);			
				if(hasEventListener(PropertyChangeEvent.PROPERTY_UPDATED))
				{
					dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'rotation', oldValue, value));
				}
			}
		}


	}
	
}
