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
	import com.carlcalderon.arthropod.Debug;
	import com.esoteric.core.RenderQueue;
	import com.esoteric.core.Context;
	import com.esoteric.equery.ElementSet;
	import com.esoteric.equery.EQueryObject;
	import com.esoteric.events.ElementEvent;
	import com.esoteric.events.ListEvent;
	import com.esoteric.events.LoadEvent;
	import com.esoteric.events.ProgressEvent;
	import com.esoteric.events.PropertyChangeEvent;
	import com.esoteric.esoteric;
	import com.esoteric.events.VerboseEventDispatcher;
	import com.esoteric.expressions.Closure;
	import com.esoteric.utils.List;
	import fl.motion.easing.Bounce;
	import fl.motion.easing.Cubic;
	import fl.motion.easing.Linear;
	import flash.events.Event;
	import flash.external.ExternalInterface;
	import flash.net.navigateToURL;
	import flash.net.sendToURL;
	import flash.net.URLRequest;
	
	use namespace esoteric;
	
	/**
	* @author Stephan Florquin
	*/
	public class AbstractElement extends VerboseEventDispatcher implements IElement
	{
		
		//---------------------------------------------------------------------
		// Constructor
		//---------------------------------------------------------------------
		
		/**
		 * Constructor.
		 */
		public function AbstractElement(context:Context, kind:String, target:IElement = null) 
		{
			_context = context;
			_kind = kind;
			_uid = String(_nextUID++);
			_target = target ? target : this;
			
			_numElements++;

			_children.addEventListener(ListEvent.ITEM_ADDED, childAddedHandler);
			_children.addEventListener(ListEvent.ITEM_REMOVED, childRemovedHandler);
		}
		
		//---------------------------------------------------------------------
		// Class variables
		//---------------------------------------------------------------------
		
		/**
		 * @private
		 */
		esoteric static var _nextUID:uint = 0;
		
		/**
		 * @private
		 */
		esoteric static var _numElements:uint = 0;
		
		//---------------------------------------------------------------------
		// Variables
		//---------------------------------------------------------------------
		
		/**
		 * @private
		 */
		esoteric var _parent:IElement;
		
		/**
		 * @private
		 */
		esoteric var _children:List = new List();
		
		/**
		 * @private
		 */
		esoteric var _id:String;
		
		/**
		 * @private
		 */
		esoteric var _text:String;
		
		/**
		 * @private
		 */
		esoteric var _closure:Closure;
		
		/**
		 * @private
		 */
		esoteric var _uid:String;
		
		/**
		 * @private
		 */
		esoteric var _kind:String;
		
		/**
		 * @private
		 */
		esoteric var _target:IElement;
		
		/**
		 * @private
		 */
		esoteric var _context:Context;
		
		//---------------------------------------------------------------------
		// Interface implementations
		//---------------------------------------------------------------------
		
		/**
		 * @inheritDoc
		 */
		public function initialize():void
		{
			if (!_closure)
			{
				_closure = createClosure();
			}
		}
		
		/**
		 * @inheritDoc
		 */
		public function render():void
		{
			
		}
		
		/**
		 * @inheritDoc
		 */
		public function destroy():void
		{
			for (var i:int = numChildren - 1; i >= 0; i--)
			{
				getChildAt(i).destroy();
			}
			
			if (_parent)
			{
				_parent.removeChild(_target);
			}
			
			_children.removeEventListener(PropertyChangeEvent.PROPERTY_ADDED, childAddedHandler);
			_children.removeEventListener(PropertyChangeEvent.PROPERTY_REMOVED, childRemovedHandler);
			
			_children.destroy();
			
			_children = null;
			_context = null;
			_id = null;
			_kind = null;
			_text = null;
			_uid = null;
			
			_target.dispatchEvent(new ElementEvent(ElementEvent.DESTROYED));
			_target = null;
			
			_numElements--;
		}
		
		/**
		 * @inheritDoc
		 */
		public function get numChildren():int { return _children.length; }
		
		/**
		 * @inheritDoc
		 */
		public function get context():Context { return _context; }
		
		public function set context(value:Context):void { _context = value; }
		
		/**
		 * @inheritDoc
		 */
		public function get parent():IElement { return _parent; }
		
		public function set parent(value:IElement):void
		{
			if (_parent != value)
			{
				var oldValue:IElement = _parent;
				
				_parent = value;
				_closure = createClosure();
				
				if (_parent)
				{
					_parent.addChild(_target);
				}
				
				_target.dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED + 'parent', false, false, oldValue, value));
			}
		}
		
		/**
		 * @inheritDoc
		 */
		public function get id():String { return _id; }
		
		public function set id(value:String):void
		{
			var oldValue:String = value;
			
			_id = value;
			
			_target.dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED + 'id', false, false, oldValue, value)); 
		}
		
		/**
		 * @inheritDoc
		 */
		public function get text():String { return _text; }
		
		public function set text(value:String):void
		{
			var oldValue:String = value;
			
			_text = value;
			
			_target.dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED + 'text', false, false, oldValue, value)); 
			
			_target.dispatchEvent(new ElementEvent(ElementEvent.UPDATED));
		}
		
		/**
		 * @inheritDoc
		 */
		public function get closure():Closure { return _closure; }
		
		/**
		 * @inheritDoc
		 */
		public function set closure(value:Closure):void 
		{
			_closure = value;
		}
		
		/**
		 * @inheritDoc
		 */
		public function get uid():String { return _uid; }
		
		/**
		 * @inheritDoc
		 */
		public function get kind():String { return _kind; }
		
		/**
		 * @inheritDoc
		 */
		public function getChildAt(index:int):IElement
		{
			return _children[index];
		}
		
		/**
		 * @inheritDoc
		 */
		public function addChild(element:IElement):void
		{
			if (element.parent != _target)
			{
				element.parent = _target;
			
				_children.add(element);
			
				_target.dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED + 'numChildren', false, false, numChildren - 1, numChildren));
			}
		}
		
		/**
		 * @inheritDoc
		 */
		public function removeChild(child:IElement):void
		{
			_children.remove(child);
			child.parent = null;
			
			_target.dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED + 'numChildren', false, false, numChildren + 1, numChildren));
		}
		
		//---------------------------------------------------------------------
		// Methods
		//---------------------------------------------------------------------
		
		/**
		 * Returns the total number of elements.
		 * @return	the total number of elements
		 */
		public static function get numElements():int { return _numElements; }
		
		/**
		 * Creates the closure of the element.
		 * 
		 * @return	the closure
		 */
		protected function createClosure():Closure
		{
			var closure:Closure;
			
			if (_parent)
			{
				closure = new Closure(_parent.closure);
			}
			else
			{
				closure = new Closure(_context.closure);
			}
			
			// enable eQuery $this
			closure.setLocal('$this', new EQueryObject(new ElementSet([_target])));
			
			return closure;
		}
		 
		/**
		 * Handles when a child is added to this element.
		 * 
		 * @param	e	the event
		 */
		protected function childAddedHandler(e:ListEvent):void 
		{
			e.item.addEventListener(ElementEvent.UPDATED, childUpdatedHandler);
		}
		
		/**
		 * Handles when a child is removed from this element.
		 * 
		 * @param	e	the event
		 */
		protected function childRemovedHandler(e:ListEvent):void 
		{
			e.item.removeEventListener(ElementEvent.UPDATED, childUpdatedHandler);
		}
		
		/**
		 * @private
		 */
		esoteric function childUpdatedHandler(e:ElementEvent):void 
		{
			_target.dispatchEvent(new ElementEvent(ElementEvent.UPDATED));
		}
		
	}
	
}