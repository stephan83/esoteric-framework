/*
	DO NOT MODIFY THIS FILE, THE CODE GENERATOR WILL ERASE ANY CHANGES MADE.
	MAKE CHANGES TO THE DERIVED CLASS INSTEAD.

	Last generated 2010-02-02 00:19:45.360000 UTC.

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
	import com.esoteric.esoteric;
	import com.esoteric.events.ElementEvent;
	import com.esoteric.events.PropertyChangeEvent;
	
	use namespace esoteric;
	
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
		
		override public function initialize():void
		{
			super.initialize();
			

		}

		//---------------------------------------------------------------------
		// Variables
		//---------------------------------------------------------------------
		
		/**
		 * @private
		 */
		esoteric var _hovered:Boolean = false;

		/**
		 * @private
		 */
		esoteric var _pressedX:Number = 0.0;

		/**
		 * @private
		 */
		esoteric var _pressedY:Number = 0.0;

		/**
		 * @private
		 */
		esoteric var _mouseY:Number = 0.0;

		/**
		 * @private
		 */
		esoteric var _mouseX:Number = 0.0;

		/**
		 * @private
		 */
		esoteric var _interactiveObject:InteractiveObject = null;

		/**
		 * @private
		 */
		esoteric var _pressed:Boolean = false;

		/**
		 * @private
		 */
		esoteric var _mouseEnabled:Boolean = false;


		//---------------------------------------------------------------------
		// Getters and setters
		//---------------------------------------------------------------------
		
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
				dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED + 'hovered', false, false, oldValue, value));

			}
		}

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
				dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED + 'pressedX', false, false, oldValue, value));

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
				dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED + 'pressedY', false, false, oldValue, value));

			}
		}

		/**
		 *  [default = 0.0]
		 *
		 * @default	0.0
		 */
		public function get mouseY():Number { return _mouseY; }
		
		public function set mouseY(value:Number):void 
		{
			if(_mouseY != value)
			{
				var oldValue:Number = _mouseY;
			

			
				_mouseY = value;
				dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED + 'mouseY', false, false, oldValue, value));

			}
		}

		/**
		 *  [default = 0.0]
		 *
		 * @default	0.0
		 */
		public function get mouseX():Number { return _mouseX; }
		
		public function set mouseX(value:Number):void 
		{
			if(_mouseX != value)
			{
				var oldValue:Number = _mouseX;
			

			
				_mouseX = value;
				dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED + 'mouseX', false, false, oldValue, value));

			}
		}

		/**
		 * The InteractiveObject object. [default = null]
		 *
		 * @default	null
		 */
		esoteric function get interactiveObject():InteractiveObject { return _interactiveObject; }
		
		esoteric function set interactiveObject(value:InteractiveObject):void 
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
				dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED + 'pressed', false, false, oldValue, value));

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

			
				dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED + 'mouseEnabled', false, false, oldValue, value));
			}
		}


	}
	
}
