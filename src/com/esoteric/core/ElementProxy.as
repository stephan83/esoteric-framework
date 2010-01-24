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
	import com.esoteric.core.ElementExpressionQueue;
	import com.esoteric.core.Context;
	import com.esoteric.Esoteric;
	import com.esoteric.events.ElementEvent;
	import com.esoteric.events.ExpressionEvent;
	import com.esoteric.events.PropertyChangeEvent;
	import com.esoteric.expressions.Closure;
	import com.esoteric.expressions.Expression;
	import com.esoteric.expressions.ExpressionVm;
	import com.esoteric.utils.Enumerator;
	import com.esoteric.utils.IDestroyable;
	import com.esoteric.utils.Watcher;
	import flash.events.Event;
	import flash.utils.Dictionary;
	
	/**
	* @author Stephan Florquin
	*/
	public dynamic class ElementProxy extends Enumerator implements IElementProxy, IElement
	{
		
		//---------------------------------------------------------------------
		// Constructor
		//---------------------------------------------------------------------
		
		/**
		 * Constructor.
		 */
		public function ElementProxy(element:IElement) 
		{
			super();
			
			_element = element;
			
			_element.addEventListener(PropertyChangeEvent.PROPERTY_ADDED, propertyAddedHandler);
			_element.addEventListener(PropertyChangeEvent.PROPERTY_REMOVED, propertyRemovedHandler);
			_element.addEventListener(PropertyChangeEvent.PROPERTY_UPDATED, propertyUpdatedHandler);
			_element.addEventListener(ElementEvent.DESTROYED, elementDestroyedHandler);
		}
		
		//---------------------------------------------------------------------
		// Variables
		//---------------------------------------------------------------------
		
		/**
		 * @private
		 */
		private var _element:IElement;
		
		/**
		 * @private
		 */
		private var _expressions:Dictionary = new Dictionary();
		
		/**
		 * @private
		 */
		private var _watchers:Dictionary = new Dictionary();
		
		//---------------------------------------------------------------------
		// Interface implementations
		//---------------------------------------------------------------------
		
		/**
		 * @inheritDoc
		 */
		public function initialize():void
		{
			_element.initialize();
		}
		
		/**
		 * @inheritDoc
		 */
		public function destroy():void
		{
			var p:String;
			
			for (p in _expressions)
			{
				_expressions[p].removeEventListener(ExpressionEvent.OUTDATED, outdatedExpressionHandler);
				_expressions[p].destroy();
				delete _expressions[p];
			}
			
			for (p in _watchers)
			{
				_watchers[p].destroy();
				delete _watchers[p];
			}
			
			//_element.destroy();
			_element = null;
			_expressions = null;
			_watchers = null;
		}
		
		/**
		 * @inheritDoc
		 */
		public function get context():Context { return _element.context; }
		
		public function set context(value:Context):void
		{
			_element.context = value;
		}
		
		/**
		 * @inheritDoc
		 */
		public function get parent():IElement { return _element.parent ? ElementProxyManager.getInstance(_element.parent) : null; }
		
		public function set parent(value:IElement):void
		{
			if (value is ElementProxy)
			{
				_element.parent = ElementProxy(value)._element;
			}
			else
			{
				_element.parent = value;
			}
		}
		
		/**
		 * @inheritDoc
		 */
		public function get numChildren():int { return _element.numChildren; }
		
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
			enumerator::setProperty('text', value);
		}
		
		/**
		 * @inheritDoc
		 */
		public function get closure():Closure { return _element.closure; }
		
		public function set closure(value:Closure):void { _element.closure = value; }
		
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
		public function getChildAt(index:int):IElement
		{
			return ElementProxyManager.getInstance(_element.getChildAt(index));
		}
		
		/**
		 * @inheritDoc
		 */
		public function addChild(element:IElement):void
		{
			if (element is ElementProxy)
			{
				_element.addChild(ElementProxy(element)._element);
			}
			else
			{
				_element.addChild(element);
			}
		}
		
		/**
		 * @inheritDoc
		 */
		public function removeChild(child:IElement):void
		{
			if (child is ElementProxy)
			{
				_element.removeChild(ElementProxy(child)._element);
			}
			else
			{
				_element.removeChild(child);
			}
		}
		
		/**
		 * @inheritDoc
		 */
		public function render():void
		{
			_element.render();
		}
		
		//---------------------------------------------------------------------
		// Overriden properties
		//---------------------------------------------------------------------
		
		/**
		 * @inheritDoc
		 */
		override enumerator function getProperty(name:*):*
		{
			return _element[name];
		}
		
		/**
		 * @inheritDoc
		 */
		override enumerator function setProperty(name:*, value:*):void
		{
			if (_expressions[name])
			{
				_expressions[name].removeEventListener(ExpressionEvent.OUTDATED, outdatedExpressionHandler);
				_expressions[name].destroy();
				delete _expressions[name];
			}
			
			if (_watchers[name])
			{
				_watchers[name].destroy();
				delete _watchers[name];
			}
			
			if (value is String)
			{
				var match:Array = Esoteric.EXPRESSION_REG_EXP.exec(value);
			}
			
			var oldValue:* = _element[name];
			
			if (match)
			{
				_expressions[name] = new Expression(match[1], _element.context.vm, _element.closure, this);
				_watchers[name] = new Watcher(_expressions[name], "value", createExpressionValueHandler(name));
				
				_expressions[name].addEventListener(ExpressionEvent.OUTDATED, outdatedExpressionHandler);
				
				context.expQueue.add(_expressions[name]);
			}
			else
			{
				_element[name] = value;
				
				dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, name, oldValue, value));
			}
		}
		
		/**
		 * @inheritDoc
		 */
		override enumerator function hasProperty(name:*):Boolean
		{
			try
			{
				var v:* = _element[name];
				
				return true;
			}
			catch (e:Error) { }
			
			return false;
		}
		
		/**
		 * @inheritDoc
		 */
		/*override enumerator function nextNameIndex(index:int):int
		{
			
		}*/
		
		/**
		 * @inheritDoc
		 */
		/*override enumerator function nextName(index:int):String
		{
			
		}*/
		
		/**
		 * @inheritDoc
		 */
		/*override enumerator function nextValue(index:int):*
		{
			
		}*/
		
		/**
		 * @inheritDoc
		 */
		override enumerator function callProperty(name:*, args:Array):*
		{
			return _element[name].apply(_element, args);
		}
		
		//---------------------------------------------------------------------
		// Methods
		//---------------------------------------------------------------------
		
		/**
		 * @inheritDoc
		 */
		public function getExpression(name:String):Expression
		{
			return _expressions[name];
		}
		
		/**
		 * @private
		 */
		private function propertyUpdatedHandler(e:PropertyChangeEvent):void 
		{
			dispatchEvent(e);
		}
		
		/**
		 * @private
		 */
		private function propertyRemovedHandler(e:PropertyChangeEvent):void 
		{
			if (_expressions[e.property])
			{
				_expressions[e.property].destroy();
				delete _expressions[e.property];
			}
			
			if (_watchers[e.property])
			{
				_expressions[e.property].destroy();
				delete _expressions[e.property];
			}
			
			dispatchEvent(e);
		}
		
		/**
		 * @private
		 */
		private function propertyAddedHandler(e:PropertyChangeEvent):void 
		{
			_element[e.property] = e.newValue;
			
			dispatchEvent(e);
		}
		
		/**
		 * @private
		 */
		private function outdatedExpressionHandler(e:ExpressionEvent):void 
		{
			context.expQueue.add(e.target as Expression);
		}
		
		/**
		 * @private
		 */
		private function elementDestroyedHandler(e:ElementEvent):void 
		{
			destroy();
		}
		
		/**
		 * @private
		 */
		private function createExpressionValueHandler(name:*):Function
		{
			return function(e:PropertyChangeEvent):void
			{
				_element[name] = e.newValue;
			}
		}
		
	}
	
}