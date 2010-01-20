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

package com.esoteric.core
{
	import com.esoteric.core.IElement;
	import com.esoteric.display.ApplicationElement;
	import com.esoteric.events.PointInputEvent;
	import flash.events.Event;
	import flash.events.IEventDispatcher;
	
	/**
	* Generated 2008-08-03 07:44:38.210000 UTC.
	*/
	public class EventListenerElement extends AbstractEventListenerElement
	{
		
		//---------------------------------------------------------------------
		// Constructor
		//---------------------------------------------------------------------
		
		/**
		 * Constructor.
		 */
		public function EventListenerElement(root:ApplicationElement, parent:IElement, kind:String) 
		{
			super(root, parent, kind);
		}
		
		//---------------------------------------------------------------------
		// Overriden properties
		//---------------------------------------------------------------------
		
		/**
		 * @inheritDoc
		 */
		override public function set target(value:IEventDispatcher):void 
		{
			var oldValue:IEventDispatcher = target;
			
			if (type)
			{
				if (oldValue)
				{
					oldValue.removeEventListener(type, eventHandler);
				}
				
				if (value)
				{
					value.addEventListener(type, eventHandler);
				}
			}
			
			super.target = value;
		}
		
		/**
		 * @inheritDoc
		 */
		override public function set type(value:String):void 
		{
			var oldValue:String = type;
			
			if (target)
			{
				if (oldValue)
				{
					target.removeEventListener(oldValue, eventHandler);
				}
				
				if (value)
				{
					target.addEventListener(value, eventHandler);
				}
			}
			
			super.type = value;
		}
		
		/**
		 * @inheritDoc
		 */
		override public function createExpressionContext(name:String):Object
		{
			var context:Object = super.createExpressionContext(name);
			
			context.e = lastEvent;
			
			return context;
		}
		
		/**
		 * @inheritDoc
		 */
		override public function destroy():void
		{
			if (target && type)
			{
				target.removeEventListener(type, eventHandler);
			}
			
			super.destroy();
		}
		
		//---------------------------------------------------------------------
		// Methods
		//---------------------------------------------------------------------
		
		/**
		 * @private
		 */
		private function eventHandler(e:Event):void
		{
			lastEvent = e;
			
			if (e.type == PointInputEvent.CLICK_NOW)
			{
				runNow();
			}
			else
			{
				run();
			}
		}

	}
	
}