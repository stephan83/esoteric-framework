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
	import com.esoteric.display.ApplicationElement;
	import com.esoteric.events.ElementEvent;
	import com.esoteric.events.LoadEvent;
	import com.esoteric.events.ProgressEvent;
	import com.esoteric.events.PropertyChangeEvent;
	import com.esoteric.utils.List;
	import fl.motion.easing.Bounce;
	import fl.motion.easing.Cubic;
	import fl.motion.easing.Linear;
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.external.ExternalInterface;
	import flash.net.navigateToURL;
	import flash.net.sendToURL;
	import flash.net.URLRequest;
	
	/**
	* @author Stephan Florquin
	*/
	public class AbstractElement extends EventDispatcher implements IElement
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
			_parent = parent;
			_kind = kind;
			_uid = String(_nextUID++);
			_target = target ? target : this;
			
			/*_context = 
			{
				"this":			_target,
				"root":			_root,
				"parent":		_parent,
				"globals":		_root.globals,
				"Math":			Math,
				"NaN":			NaN,
				"null":			null,
				"true":			true,
				"false":		false,
				"parseInt":		parseInt,
				"parseFloat":	parseFloat,
				"trace":		trace,
				"navigateToURL":  function(url:String, target:String = null):void { navigateToURL(new URLRequest(url), target); },
				"sendToURL":	function(url:String):void { sendToURL(new URLRequest(url)); },
				"easing":		{
									"Linear":	Linear,
									"Bounce":	Bounce,
									"Cubic":	Cubic
								},
				"callAPI":		function(functionName:String, ...rest):*
								{
									rest.unshift(functionName);
									return ExternalInterface.call.apply(_target, rest);
								}
			};*/
			
			/*for (var s:String in root.extraContext)
			{
				_context[s] = root.extraContext[s];
			}*/
			
			_children.addEventListener(PropertyChangeEvent.PROPERTY_ADDED, childAddedHandler);
			_children.addEventListener(PropertyChangeEvent.PROPERTY_REMOVED, childRemovedHandler);
			
			_numElements++;
		}
		
		//---------------------------------------------------------------------
		// Class variables
		//---------------------------------------------------------------------
		
		/**
		 * @private
		 */
		private static var _nextUID:uint = 0;
		
		/**
		 * @private
		 */
		private static var _numElements:uint = 0;
		
		//---------------------------------------------------------------------
		// Variables
		//---------------------------------------------------------------------
		
		/**
		 * @private
		 */
		private var _parent:IElement;
		
		/**
		 * @private
		 */
		private var _children:List = new List();
		
		/**
		 * @private
		 */
		private var _id:String;
		
		/**
		 * @private
		 */
		private var _text:String;
		
		/**
		 * @private
		 */
		private var _uid:String;
		
		/**
		 * @private
		 */
		private var _kind:String;
		
		/**
		 * @private
		 */
		private var _loadQueue:List = new List();
		
		/**
		 * @private
		 */
		private var _total:int = 0;
		
		/**
		 * @private
		 */
		private var _target:IElement;
		
		/**
		 * @private
		 */
		private var _loading:Boolean = false;
		
		/**
		 * @private
		 */
		private var _eventQueue:Array = new Array();
		
		/**
		 * @private
		 */
		private var _nextFrameEventQueue:Array = new Array();
		
		/**
		 * @private
		 */
		private var _rendering:Boolean = false;
		
		/**
		 * @private
		 */
		private var _context:Context;
		
		/**
		 * @private
		 */
		private var _errorLoading:Boolean;
		
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
			_loadQueue.destroy();
			
			_children = null;
			_context = null;
			_eventQueue = null;
			_id = null;
			_kind = null;
			_loadQueue = null;
			_nextFrameEventQueue = null;
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
				var oldValue:IElement = value;
				
				_parent = value;
				
				if (_parent)
				{
					_parent.addChild(_target);
				}
				
				_target.dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'parent', oldValue, value));
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
			
			_target.dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'id', oldValue, value)); 
		}
		
		/**
		 * @inheritDoc
		 */
		public function get text():String { return _text; }
		
		public function set text(value:String):void
		{
			var oldValue:String = value;
			
			_text = value;
			
			_target.dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'text', oldValue, value)); 
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
		public function get loading():Boolean { return _loading; };
		
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
				// hack?
				var oldValue:IElement = element.parent;
				element['_parent'] = _target;
				element.dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'parent', oldValue, _target));
			}
			
			_children.add(element);
			
			_target.dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, "numChildren", numChildren - 1, numChildren));
		}
		
		/**
		 * @inheritDoc
		 */
		public function removeChild(child:IElement):void
		{
			_children.remove(child);
			child.parent = null;
			
			_target.dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, "numChildren", numChildren + 1, numChildren));
		}
		
		/**
		 * @inheritDoc
		 */
		public function getElementById(id:String):IElement
		{
			if (_id == id)
			{
				return _target;
			}
			
			for each(var child:IElement in _children)
			{
				var result:IElement = child.getElementById(id);
				
				if (result)
				{
					return result;
				}
			}
			
			return null;
		}
		
		/**
		 * @inheritDoc
		 */
		public function findElements(property:String, value:String):Array
		{
			var elements:Array = new Array();
			
			try
			{
				if (_target[property] == value)
				{
					elements.push(_target);
				}
			}
			catch (e:Error)
			{
				
			}
			
			for each(var child:IElement in _children)
			{
				
				elements = elements.concat(child.findElements(property, value));
			}
			
			return elements;
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
		 * Handles when a child is added to this element.
		 * 
		 * @param	e	the event
		 */
		protected function childAddedHandler(e:PropertyChangeEvent):void 
		{	
			e.newValue.addEventListener(ElementEvent.UPDATED, childUpdatedHandler);
			
			e.newValue.addEventListener(LoadEvent.BEGIN, childBeginHandler);
			e.newValue.addEventListener(LoadEvent.FINISH, childFinishHandler);
			e.newValue.addEventListener(LoadEvent.ERROR, childErrorHandler);
			e.newValue.addEventListener(LoadEvent.DESCENDANT_BEGIN, childDescendantBeginHandler);
			e.newValue.addEventListener(LoadEvent.DESCENDANT_FINISH, childDescendantFinishHandler);
			e.newValue.addEventListener(LoadEvent.DESCENDANT_ERROR, childDescendantErrorHandler);
		}
		
		/**
		 * Handles when a child is removed from this element.
		 * 
		 * @param	e	the event
		 */
		protected function childRemovedHandler(e:PropertyChangeEvent):void 
		{
			e.oldValue.removeEventListener(ElementEvent.UPDATED, childUpdatedHandler);
			
			e.oldValue.removeEventListener(LoadEvent.BEGIN, childBeginHandler);
			e.oldValue.removeEventListener(LoadEvent.FINISH, childFinishHandler);
			e.oldValue.removeEventListener(LoadEvent.ERROR, childErrorHandler);
			e.oldValue.removeEventListener(LoadEvent.DESCENDANT_BEGIN, childDescendantBeginHandler);
			e.oldValue.removeEventListener(LoadEvent.DESCENDANT_FINISH, childDescendantFinishHandler);
			e.oldValue.removeEventListener(LoadEvent.DESCENDANT_ERROR, childDescendantErrorHandler);
		}
		
		/**
		 * This function should be called before the element starts loading.
		 */
		protected function startLoading():void
		{
			if (!_loading)
			{
				_loading = true;
				
				_target.dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'loading', false, true));
				_target.dispatchEvent(new LoadEvent(LoadEvent.BEGIN, false, false, [_target]));
			}
		}
		
		/**
		 * This function should be called after the element is done loading.
		 */
		protected function finishLoading():void
		{
			if (_loading)
			{
				_loading = false;
				
				// Force event to be dispatched next frame because sometimes things loads instantly and mess things up.
				_target.dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'loading', true, false));
				_target.dispatchEvent(new LoadEvent(LoadEvent.FINISH, false, false, [_target]));
			}
		}
		
		/**
		 * This function should be called after the element failed loading.
		 */
		protected function errorLoading():void
		{
			if (_loading)
			{
				_loading = false;
				_errorLoading = true;
				
				// Force event to be dispatched next frame because sometimes things loads instantly and mess things up.
				_target.dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'loading', true, false));
				_target.dispatchEvent(new LoadEvent(LoadEvent.ERROR, false, false, [_target]));
			}
		}
		
		/**
		 * @private
		 */
		private function childUpdatedHandler(e:ElementEvent):void 
		{
			
		}
		
		/**
		 * @private
		 */
		private function childFinishHandler(e:LoadEvent):void 
		{
			_loadQueue.removeArray(e.elements);
			
			_target.dispatchEvent(new LoadEvent(LoadEvent.DESCENDANT_FINISH, false, false, e.elements));
			
			_target.dispatchEvent(new ProgressEvent(ProgressEvent.PROGRESS, false, false, _total - _loadQueue.length, _total));
			
			if (!_loadQueue.length)
			{
				_target.dispatchEvent(new ProgressEvent(_errorLoading ? ProgressEvent.INCOMPLETE : ProgressEvent.COMPLETE));
			}
		}
		
		/**
		 * @private
		 */
		private function childErrorHandler(e:LoadEvent):void 
		{
			_errorLoading = true;
			
			_loadQueue.removeArray(e.elements);
			
			_target.dispatchEvent(new LoadEvent(LoadEvent.DESCENDANT_ERROR, false, false, e.elements));
			
			_target.dispatchEvent(new ProgressEvent(ProgressEvent.PROGRESS, false, false, _total - _loadQueue.length, _total));
			
			if (!_loadQueue.length)
			{
				_target.dispatchEvent(new ProgressEvent(ProgressEvent.INCOMPLETE));
			}
		}
		
		/**
		 * @private
		 */
		private function childBeginHandler(e:LoadEvent):void 
		{
			if (!_loadQueue.length)
			{
				_target.dispatchEvent(new ProgressEvent(ProgressEvent.START));
				_errorLoading = false;
				_total = 0;
			}
			
			_total++;
			
			_loadQueue.addArray(e.elements);
			
			_target.dispatchEvent(new LoadEvent(LoadEvent.DESCENDANT_BEGIN, false, false, [e.target]));
		}
		
		/**
		 * @private
		 */
		private function childDescendantFinishHandler(e:LoadEvent):void 
		{
			_loadQueue.removeArray(e.elements);
			
			var _remaining:int = _total - _loadQueue.length;
			
			_target.dispatchEvent(new ProgressEvent(ProgressEvent.PROGRESS, false, false, _total - _loadQueue.length, _total));
			
			if (!_loadQueue.length)
			{
				_target.dispatchEvent(new ProgressEvent(_errorLoading ? ProgressEvent.INCOMPLETE : ProgressEvent.COMPLETE));
			}
			
			_target.dispatchEvent(new LoadEvent(LoadEvent.DESCENDANT_FINISH, false, false, e.elements));
		}
		
		/**
		 * @private
		 */
		private function childDescendantErrorHandler(e:LoadEvent):void 
		{
			_errorLoading = true;
			
			_loadQueue.removeArray(e.elements);
			
			_target.dispatchEvent(new LoadEvent(LoadEvent.DESCENDANT_ERROR, false, false, e.elements));
			
			_target.dispatchEvent(new ProgressEvent(ProgressEvent.PROGRESS, false, false, _total - _loadQueue.length, _total));
			
			if (!_loadQueue.length)
			{
				_target.dispatchEvent(new ProgressEvent(ProgressEvent.INCOMPLETE));
			}
		}
		
		/**
		 * @private
		 */
		private function childDescendantBeginHandler(e:LoadEvent):void 
		{
			if (!_loadQueue.length)
			{
				_target.dispatchEvent(new ProgressEvent(ProgressEvent.START));
				_errorLoading = false;
				_total = 0;
			}
			
			_total++;
			
			_loadQueue.addArray(e.elements);
			
			_target.dispatchEvent(new LoadEvent(LoadEvent.DESCENDANT_BEGIN, false, false, e.elements));
		}
		
	}
	
}