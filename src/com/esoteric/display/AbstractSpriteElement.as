/*
	DO NOT MODIFY THIS FILE, THE CODE GENERATOR WILL ERASE ANY CHANGES MADE.
	MAKE CHANGES TO THE DERIVED CLASS INSTEAD.

	Last generated 2010-02-02 00:19:45.428000 UTC.

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
	import flash.display.Sprite;

	import com.esoteric.core.Context;
	import com.esoteric.esoteric;
	import com.esoteric.events.ElementEvent;
	import com.esoteric.events.PropertyChangeEvent;
	
	use namespace esoteric;
	
	public class AbstractSpriteElement extends InteractiveObjectElement
	{
		
		//---------------------------------------------------------------------
		// Constructor
		//---------------------------------------------------------------------
		
		/**
		 * Constructor.
		 */
		public function AbstractSpriteElement(context:Context, kind:String) 
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
		esoteric var _sprite:Sprite = null;

		/**
		 * @private
		 */
		esoteric var _mouseChildren:Boolean = true;

		/**
		 * @private
		 */
		esoteric var _useHandCursor:Boolean = false;

		/**
		 * @private
		 */
		esoteric var _buttonMode:Boolean = false;


		//---------------------------------------------------------------------
		// Getters and setters
		//---------------------------------------------------------------------
		
		/**
		 * The sprite object. [default = null]
		 *
		 * @default	null
		 */
		esoteric function get sprite():Sprite { return _sprite; }
		
		esoteric function set sprite(value:Sprite):void 
		{
			if(_sprite != value)
			{
				var oldValue:Sprite = _sprite;
			
				if(value)
				{
					value.mouseChildren = _mouseChildren;
					value.useHandCursor = _useHandCursor;
					value.buttonMode = _buttonMode;

				}
			
				_sprite = value;


			}
		}


		/**
		 * Whether to enable mouse events on children. [default = true]
		 *
		 * @default	true
		 */
		public function get mouseChildren():Boolean { return _mouseChildren; }
		
		public function set mouseChildren(value:Boolean):void 
		{

			if(mouseChildren != value)
			{
				var oldValue:Boolean = _mouseChildren;


				
				_mouseChildren = value;

				if(sprite)
				{
					sprite.mouseChildren = value;
				}

				//context.renderQueue.add(this);


				dispatchEvent(new ElementEvent(ElementEvent.UPDATED));			
				dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED + 'mouseChildren', false, false, oldValue, value));
			}
		}

		/**
		 * Whether to use a hand cursor when buttonMode is enabled. [default = false]
		 *
		 * @default	false
		 */
		public function get useHandCursor():Boolean { return _useHandCursor; }
		
		public function set useHandCursor(value:Boolean):void 
		{

			if(useHandCursor != value)
			{
				var oldValue:Boolean = _useHandCursor;


				
				_useHandCursor = value;

				if(sprite)
				{
					sprite.useHandCursor = value;
				}

				//context.renderQueue.add(this);


				dispatchEvent(new ElementEvent(ElementEvent.UPDATED));			
				dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED + 'useHandCursor', false, false, oldValue, value));
			}
		}

		/**
		 * Whether to treat the sprite as a button. [default = false]
		 *
		 * @default	false
		 */
		public function get buttonMode():Boolean { return _buttonMode; }
		
		public function set buttonMode(value:Boolean):void 
		{

			if(buttonMode != value)
			{
				var oldValue:Boolean = _buttonMode;


				
				_buttonMode = value;

				if(sprite)
				{
					sprite.buttonMode = value;
				}

				//context.renderQueue.add(this);


				dispatchEvent(new ElementEvent(ElementEvent.UPDATED));			
				dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED + 'buttonMode', false, false, oldValue, value));
			}
		}


	}
	
}
