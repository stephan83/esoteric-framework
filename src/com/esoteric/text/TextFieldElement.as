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

package com.esoteric.text
{
	import com.esoteric.core.Context;
	import com.esoteric.core.IElement;
	import com.esoteric.core.Context;
	import com.esoteric.esoteric;
	import com.esoteric.events.ElementEvent;
	import com.esoteric.events.PropertyChangeEvent;
	import flash.display.InteractiveObject;
	import flash.events.Event;
	import flash.text.TextFormat;
	
	use namespace esoteric;
	
	/**
	* Generated 2008-08-04 09:17:54.731000 UTC.
	*/
	public class TextFieldElement extends AbstractTextFieldElement
	{
		
		//---------------------------------------------------------------------
		// Constructor
		//---------------------------------------------------------------------
		
		/**
		 * Constructor.
		 */
		public function TextFieldElement(context:Context, kind:String) 
		{
			super(context, kind);
			
			textField.addEventListener(Event.CHANGE, textInputHandler, false, 0, true);
			addEventListener(ElementEvent.UPDATED, updatedHandler);
		}
		
		//---------------------------------------------------------------------
		// Overridden property
		//---------------------------------------------------------------------
		
		/**
		 * @inheritDoc
		 */
		override protected function createInteractiveObject():InteractiveObject
		{
			return textField;
		}
		
		/**
		 * @inheritDoc
		 */
		override public function set width(value:Number):void
		{
			textField.width = value;
			
			super.width = value;
		}
		
		/**
		 * @inheritDoc
		 */
		override public function set height(value:Number):void
		{
			textField.height = value;
			
			super.height = value;
		}
		
		/**
		 * @inheritDoc
		 */
		override public function render():void 
		{
			textField.defaultTextFormat = textFormat;
			textField.htmlText = text ? text : '';
			textWidth = textField.textWidth + 4;
			textHeight = textField.textHeight + 4;
			
			super.render();
		}
		
		//---------------------------------------------------------------------
		// Methods
		//---------------------------------------------------------------------
		
		/**
		 * @private
		 */
		private function textInputHandler(e:Event):void
		{
			text = textField.text;
		}
		
		/**
		 * @private
		 */
		private function updatedHandler(e:ElementEvent):void 
		{
			_context.renderQueue.add(this);
		}

	}
	
}
