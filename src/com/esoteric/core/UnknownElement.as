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
	import com.esoteric.core.RenderQueue;
	import com.esoteric.core.Context;
	import com.esoteric.events.ElementEvent;
	import com.esoteric.events.LoadEvent;
	import com.esoteric.events.ProgressEvent;
	import com.esoteric.events.PropertyChangeEvent;
	import com.esoteric.utils.BindableObject;
	import com.esoteric.utils.Enumerator;
	import com.esoteric.utils.ICloneable;
	import com.esoteric.utils.List;
	import flash.events.Event;
	
	/**
	* @author Stephan Florquin
	*/
	public class UnknownElement extends BindableObject implements IElement
	{
		
		//---------------------------------------------------------------------
		// Constructor
		//---------------------------------------------------------------------
		
		/**
		 * Constructor.
		 */
		public function UnknownElement(context:Context, kind:String) 
		{
			super();
			
			_element = new AbstractElement(context, kind, this);
		}
		//---------------------------------------------------------------------
		// Variables
		//---------------------------------------------------------------------
		
		/**
		 * @private
		 */
		private var _element:AbstractElement;
		
		//---------------------------------------------------------------------
		// Interface implementations
		//---------------------------------------------------------------------
		
		/**
		 * @inheritDoc
		 */
		public function initialize():void
		{
			
		}
		
		/**
		 * @inheritDoc
		 */
		public function destroy():void
		{
			_element.destroy();
			_element = null;
		}
		
		/**
		 * @inheritDoc
		 */
		public function get numChildren():int { return _element.numChildren; }
		
		/**
		 * @inheritDoc
		 */
		public function get context():Context { return _element ? _element.context : null; }
		
		public function set context(value:Context):void
		{
			_element.context = value;
		}
		
		/**
		 * @inheritDoc
		 */
		public function get parent():IElement { return _element ? _element.parent : null; }
		
		public function set parent(value:IElement):void
		{
			_element.parent = value;
		}
		
		/**
		 * @inheritDoc
		 */
		public function get id():String { return _element.id; }
		
		public function set id(value:String):void
		{
			_element.id = value;
		}
		
		/**
		 * @inheritDoc
		 */
		public function get text():String { return _element.text; }
		
		public function set text(value:String):void
		{
			_element.text = value;
		}
		
		/**
		 * @inheritDoc
		 */
		public function get uid():String { return _element.uid; }
		
		/**
		 * @inheritDoc
		 */
		public function get kind():String { return _element.kind; }
		
		/**
		 * @inheritDoc
		 */
		public function get loading():Boolean { return _element.loading; }
		
		/**
		 * @inheritDoc
		 */
		public function getChildAt(index:int):IElement
		{
			return _element.getChildAt(index);
		}
		
		/**
		 * @inheritDoc
		 */
		public function findElements(property:String, value:String):Array
		{
			return _element.findElements(property, value);
		}
		
		/**
		 * @inheritDoc
		 */
		public function addChild(element:IElement):void
		{
			_element.addChild(element);
		}
		
		/**
		 * @inheritDoc
		 */
		public function removeChild(child:IElement):void
		{
			_element.removeChild(child);
		}
		
		/**
		 * @inheritDoc
		 */
		public function render():void
		{
			_element.render();
		}
		
		/**
		 * @inheritDoc
		 */
		public function contains(element:IElement):Boolean
		{
			return _element.contains(element);
		}
		
		//---------------------------------------------------------------------
		// OVERRIDES
		//---------------------------------------------------------------------
		
		override public function clone():ICloneable
		{
			var elementCopy:UnknownElement = new UnknownElement(context, kind);
			
			for (var name:String in this)
			{
				elementCopy[name] = this[name];
			}
			
			return elementCopy;
		}
		
	}
	
}