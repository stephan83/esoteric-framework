/*
	DO NOT MODIFY THIS FILE, THE CODE GENERATOR WILL ERASE ANY CHANGES MADE.
	MAKE CHANGES TO THE DERIVED CLASS INSTEAD.

	Last generated 2010-01-20 20:12:19.416000 UTC.

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
	import flash.display.InteractiveObject;

	import com.esoteric.core.Context;
	import com.esoteric.events.ElementEvent;
	import com.esoteric.events.PropertyChangeEvent;
	
	public class AbstractInteractiveObjectElement extends DisplayObjectElement
	{
		
		//---------------------------------------------------------------------
		// Constructor
		//---------------------------------------------------------------------
		
		/**
		 * Constructor.
		 */
		public function AbstractInteractiveObjectElement(context:Context, kind:String) 
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
		private var _pressedX:Number = 0.0;

		/**
		 * @private
		 */
		private var _hovered:Boolean = false;

		/**
		 * @private
		 */
		private var _pressedY:Number = 0.0;

		/**
		 * @private
		 */
		private var _globalX:Number = 0.0;

		/**
		 * @private
		 */
		private var _localY:Number = 0.0;

		/**
		 * @private
		 */
		private var _localX:Number = 0.0;

		/**
		 * @private
		 */
		private var _interactiveObject:InteractiveObject = null;

		/**
		 * @private
		 */
		private var _globalY:Number = 0.0;

		/**
		 * @private
		 */
		private var _pressed:Boolean = false;

		/**
		 * @private
		 */
		private var _mouseEnabled:Boolean = false;


		//---------------------------------------------------------------------
		// Getters and setters
		//---------------------------------------------------------------------
		
		/**
		 *  [default = 0.0]
		 *
		 * @default	0.0
		 */
		public function get pressedX():Number { return _pressedX; }
		
		public function set pressedX(value:Number):void 
		{
			if(_pressedX != value)
			{
				var oldValue:Number = _pressedX;
			

			
				_pressedX = value;
				if(hasEventListener(PropertyChangeEvent.PROPERTY_UPDATED))
				{
					dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'pressedX', oldValue, value));
				}
				context.renderQueue.add(this);
			}
		}

		/**
		 * Whether a point input is over this object. [default = false]
		 *
		 * @default	false
		 */
		public function get hovered():Boolean { return _hovered; }
		
		public function set hovered(value:Boolean):void 
		{
			if(_hovered != value)
			{
				var oldValue:Boolean = _hovered;
			

			
				_hovered = value;
				if(hasEventListener(PropertyChangeEvent.PROPERTY_UPDATED))
				{
					dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'hovered', oldValue, value));
				}
				context.renderQueue.add(this);
			}
		}

		/**
		 *  [default = 0.0]
		 *
		 * @default	0.0
		 */
		public function get pressedY():Number { return _pressedY; }
		
		public function set pressedY(value:Number):void 
		{
			if(_pressedY != value)
			{
				var oldValue:Number = _pressedY;
			

			
				_pressedY = value;
				if(hasEventListener(PropertyChangeEvent.PROPERTY_UPDATED))
				{
					dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'pressedY', oldValue, value));
				}
				context.renderQueue.add(this);
			}
		}

		/**
		 *  [default = 0.0]
		 *
		 * @default	0.0
		 */
		public function get globalX():Number { return _globalX; }
		
		public function set globalX(value:Number):void 
		{
			if(_globalX != value)
			{
				var oldValue:Number = _globalX;
			

			
				_globalX = value;
				if(hasEventListener(PropertyChangeEvent.PROPERTY_UPDATED))
				{
					dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'globalX', oldValue, value));
				}
				context.renderQueue.add(this);
			}
		}

		/**
		 *  [default = 0.0]
		 *
		 * @default	0.0
		 */
		public function get localY():Number { return _localY; }
		
		public function set localY(value:Number):void 
		{
			if(_localY != value)
			{
				var oldValue:Number = _localY;
			

			
				_localY = value;
				if(hasEventListener(PropertyChangeEvent.PROPERTY_UPDATED))
				{
					dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'localY', oldValue, value));
				}
				context.renderQueue.add(this);
			}
		}

		/**
		 *  [default = 0.0]
		 *
		 * @default	0.0
		 */
		public function get localX():Number { return _localX; }
		
		public function set localX(value:Number):void 
		{
			if(_localX != value)
			{
				var oldValue:Number = _localX;
			

			
				_localX = value;
				if(hasEventListener(PropertyChangeEvent.PROPERTY_UPDATED))
				{
					dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'localX', oldValue, value));
				}
				context.renderQueue.add(this);
			}
		}

		/**
		 * The InteractiveObject object. [default = null]
		 *
		 * @default	null
		 */
		public function get interactiveObject():InteractiveObject { return _interactiveObject; }
		
		public function set interactiveObject(value:InteractiveObject):void 
		{
			if(_interactiveObject != value)
			{
				var oldValue:InteractiveObject = _interactiveObject;
			
				if(value)
				{
					value.mouseEnabled = _mouseEnabled;

				}
			
				_interactiveObject = value;


			}
		}

		/**
		 *  [default = 0.0]
		 *
		 * @default	0.0
		 */
		public function get globalY():Number { return _globalY; }
		
		public function set globalY(value:Number):void 
		{
			if(_globalY != value)
			{
				var oldValue:Number = _globalY;
			

			
				_globalY = value;
				if(hasEventListener(PropertyChangeEvent.PROPERTY_UPDATED))
				{
					dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'globalY', oldValue, value));
				}
				context.renderQueue.add(this);
			}
		}

		/**
		 * Whether a point input is pressing this object. [default = false]
		 *
		 * @default	false
		 */
		public function get pressed():Boolean { return _pressed; }
		
		public function set pressed(value:Boolean):void 
		{
			if(_pressed != value)
			{
				var oldValue:Boolean = _pressed;
			

			
				_pressed = value;
				if(hasEventListener(PropertyChangeEvent.PROPERTY_UPDATED))
				{
					dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'pressed', oldValue, value));
				}
				context.renderQueue.add(this);
			}
		}


		/**
		 * Whether to enable mouse properties. [default = false]
		 *
		 * @default	false
		 */
		public function get mouseEnabled():Boolean { return _mouseEnabled; }
		
		public function set mouseEnabled(value:Boolean):void 
		{

			if(mouseEnabled != value)
			{
				var oldValue:Boolean = _mouseEnabled;


				
				_mouseEnabled = value;

				if(interactiveObject)
				{
					interactiveObject.mouseEnabled = value;
				}

				context.renderQueue.add(this);			
				if(hasEventListener(PropertyChangeEvent.PROPERTY_UPDATED))
				{
					dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'mouseEnabled', oldValue, value));
				}
			}
		}


	}
	
}
