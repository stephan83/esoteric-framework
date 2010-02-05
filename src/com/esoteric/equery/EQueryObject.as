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

package com.esoteric.equery 
{
	import com.esoteric.core.ElementProxy;
	import com.esoteric.core.ElementProxyManager;
	import com.esoteric.core.IElement;
	import com.esoteric.core.TweenableElement;
	import com.esoteric.events.PointInputEvent;
	import com.esoteric.events.ProgressEvent;
	import com.esoteric.events.PropertyChangeEvent;
	import com.esoteric.utils.BindableArray;
	import com.esoteric.utils.BindableObject;
	import com.esoteric.utils.Enumerator;
	import com.esoteric.utils.IBindable;
	import com.esoteric.utils.IDestroyable;
	import flash.events.Event;
	/**
	 * An eQuery object.
	 * 
	 * @author Stephan Florquin
	 */
	public class EQueryObject implements IDestroyable
	{
		
		//---------------------------------------------------------------------
		// Constructor
		//---------------------------------------------------------------------
		
		public function EQueryObject(elementSet:ElementSet) 
		{
			_elementSet = elementSet;
		}
		
		//---------------------------------------------------------------------
		// Members
		//---------------------------------------------------------------------
		
		/**
		 * @private
		 */
		private var _elementSet:ElementSet;
		
		//---------------------------------------------------------------------
		// Implementations
		//---------------------------------------------------------------------
		
		/**
		 * @inheritDoc
		 */
		public function destroy():void
		{
			_elementSet.destroy();
			_elementSet = null;
		}
		
		//---------------------------------------------------------------------
		// Methods
		//---------------------------------------------------------------------
		
		/**
		 * String representation of the object.
		 */
		public function toString():String
		{
			var s:String = '$[';
			
			for each (var v:* in _elementSet.result) 
			{
				s += v + ', ';
			}
			
			s += ']';
			
			return s;
		}
		
		/**
		 * The element set.
		 */
		public function get elementSet():ElementSet { return _elementSet; }
		
		public function set elementSet(value:ElementSet):void 
		{
			_elementSet = value;
		}
		
		public function find(query:String):EQueryObject
		{
			return new EQueryObject(new EQuery(query).eval(this));
		}
		
		public function attr(prop:*, value:* = undefined):*
		{
			if (value == undefined)
			{
				if (prop is BindableObject)
				{
					for each (var element:IElement in _elementSet.result) 
					{
						var proxy:IElement = ElementProxyManager.getInstance(element);
						
						for (var p:* in prop) 
						{
							proxy[p] = prop[p];
						}
					}
					
					return this;
				}
				else if (prop is BindableArray)
				{
					var values:BindableArray = new BindableArray();
					
					for each (var element:IElement in _elementSet.result) 
					{
						var obj:BindableObject = new BindableObject();
						
						for each (var p:* in prop) 
						{
							obj[p] = element[p];
						}
						
						values[values.length] = obj;
					}
					
					return values.length > 1 ? values : values[0];
				}
				else
				{
					var values:BindableArray = new BindableArray();
					
					for each (var element:IElement in _elementSet.result) 
					{
						values[values.length] = element[prop];
					}
					
					return values.length > 1 ? values : values[0];
				}
			}
			
			for each (var element:IElement in _elementSet.result) 
			{
				ElementProxyManager.getInstance(element)[prop] = value;
			}
			
			return this;
		}
		
		public function apply(func:Function):EQueryObject
		{
			for each (var element:IElement in _elementSet.result) 
			{
				func(new EQueryObject(new ElementSet([element])));
			}
			
			return this;
		}
		
		public function click(handler:Function):EQueryObject
		{
			for each (var element:IElement in _elementSet.result) 
			{
				element.addEventListener(PointInputEvent.CLICK, handler, false, 0, false);
			}
			
			return this;
		}
		
		public function mouseover(handler:Function):EQueryObject
		{
			for each (var element:IElement in _elementSet.result) 
			{
				element.addEventListener(PointInputEvent.OVER, handler, false, 0, true);
			}
			
			return this;
		}
		
		public function mouseout(handler:Function):EQueryObject
		{
			for each (var element:IElement in _elementSet.result) 
			{
				element.addEventListener(PointInputEvent.OUT, handler, false, 0, true);
			}
			
			return this;
		}
		
		public function mousedown(handler:Function):EQueryObject
		{
			for each (var element:IElement in _elementSet.result) 
			{
				element.addEventListener(PointInputEvent.PRESS, handler, false, 0, true);
			}
			
			return this;
		}
		
		public function mouseup(handler:Function):EQueryObject
		{
			for each (var element:IElement in _elementSet.result) 
			{
				element.addEventListener(PointInputEvent.RELEASE, handler, false, 0, true);
			}
			
			return this;
		}
		
		public function mousemove(handler:Function):EQueryObject
		{
			for each (var element:IElement in _elementSet.result) 
			{
				element.addEventListener(PointInputEvent.MOVE, handler, false, 0, true);
			}
			
			return this;
		}
		
		
		public function change(handler:Function, property:*):EQueryObject
		{
			for each (var element:IElement in _elementSet.result) 
			{
				element.addEventListener(PropertyChangeEvent.PROPERTY_UPDATED + property, function(e:PropertyChangeEvent):void {
					handler(e);
				}, false, 0, true);
			}
			
			return this;
		}
		
		
		public function complete(handler:Function):EQueryObject
		{
			for each (var element:IElement in _elementSet.result) 
			{
				element.addEventListener(ProgressEvent.COMPLETE, function(e:ProgressEvent):void {
					handler(e);
				});
			}
			
			return this;
		}
		
		public function remove():EQueryObject
		{
			for each (var element:IElement in _elementSet.result) 
			{
				if (element.parent)
				{
					element.parent.removeChild(element);
				}
			}
			
			return this;
		}
		
		public function free():void
		{
			for each (var element:IElement in _elementSet.result) 
			{
				element.destroy();
			}
		}
		
		public function elements():*
		{
			if (_elementSet.result.length > 1)
			{
				return _elementSet.result;
			}
			
			return _elementSet.result[0];
		}
		
		public function bind(type:String, handler:Function):EQueryObject
		{
			for each (var element:IElement in _elementSet.result) 
			{
				element.addEventListener(type, handler, false, 0, true);
			}
			
			return this;
		}
		
		public function unbind(type:String, handler:Function):EQueryObject
		{
			for each (var element:IElement in _elementSet.result) 
			{
				element.removeEventListener(type, handler);
			}
			
			return this;
		}
		
		public function trigger(type:String):EQueryObject
		{
			for each (var element:IElement in _elementSet.result) 
			{
				element.dispatchEvent(new Event(type, false, false));
			}
			
			return this;
		}
		
		public function animate(...args):EQueryObject
		{
			if (args[0] is BindableObject)
			{
				var tweens:BindableObject = args[0];
				var duration:Number = args[1];
				var easingFunc:Function = args.length > 2 ? args[2]: null;
				var yoyo:Boolean = args.length > 3 ? args[3]: null;
				
				for each (var element:IElement in _elementSet.result) 
				{
					if (element is TweenableElement)
					{
						var tweenable:TweenableElement = element as TweenableElement;
						
						for (var p:* in tweens)
						{
							tweenable.startTween(p, tweens[p], duration, easingFunc, yoyo);
						}
					}
				}
			}
			else
			{
				var prop:* = args[0];
				var endValue:Number = args[1];
				var duration:Number = args[2];
				var easingFunc:Function = args.length > 3 ? args[3]: null;
				var yoyo:Boolean = args.length > 4 ? args[4]: null;
				
				for each (var element:IElement in _elementSet.result) 
				{
					if (element is TweenableElement)
					{
						var tweenable:TweenableElement = element as TweenableElement;
						
						tweenable.startTween(prop, endValue, duration, easingFunc, yoyo);
					}
				}
			}
			
			return this;
		}
		
	}

}