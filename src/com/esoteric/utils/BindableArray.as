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

package com.esoteric.utils 
{
	import com.esoteric.events.PropertyChangeEvent;
	import flash.events.Event;
	import flash.events.EventDispatcher;
	
	/**
	* Bindable array.
	* 
	* @author Stephan Florquin
	*/
	public dynamic class BindableArray extends Array implements IBindable
	{
		
		//---------------------------------------------------------------------
		// MEMBERS
		//---------------------------------------------------------------------
		
		private var _eventDispatcher:EventDispatcher;
		
		//---------------------------------------------------------------------
		// CONSTRUCTOR
		//---------------------------------------------------------------------	
		
		/**
		 * Class constuctor.
		 */
		public function BindableArray(...args) 
		{
			_eventDispatcher = new EventDispatcher(this);
			
			var n:uint = args.length;
			 
			if (n == 1 && (args[0] is Number))
			{
				var dlen:Number = args[0];
				var ulen:uint = dlen;
				if (ulen != dlen)
				{
					throw new RangeError("Array index is not a 32-bit unsigned integer ("+dlen+")");
				}
				length = ulen;
			}
			else
			{
				length = n;
				for (var i:int=0; i < n; i++)
				{
					this[i] = args[i] 
				}
			}
		}
		
		public static function fromArray(array:Array):BindableArray
		{
			var bindableArray:BindableArray = new BindableArray(array.length);
			
			for (var i:int=0; i < array.length; i++)
			{
				bindableArray[i] = array[i];
			}
			
			return bindableArray;
		}
		
		public function toString():String
		{
			var s:String = '[';
			
			for each (var v:* in this) 
			{
				s += v + ', ';
			}
			
			s += ']';
			
			return s;
		}
		
		public function hasEventListener(type:String):Boolean
		{
			return _eventDispatcher.hasEventListener(type);
		}
		
		public function willTrigger(type:String):Boolean
		{
			return _eventDispatcher.willTrigger(type);
		}

		public function addEventListener(type:String, listener:Function, useCapture:Boolean=false, priority:int=0.0, useWeakReference:Boolean=false):void
		{
			_eventDispatcher.addEventListener(type, listener, useCapture, priority, useWeakReference);
		}

		public function removeEventListener(type:String, listener:Function, useCapture:Boolean=false):void
		{
			_eventDispatcher.removeEventListener(type, listener, useCapture);
		}

		public function dispatchEvent(event:Event):Boolean
		{
			return _eventDispatcher.dispatchEvent(event);
		}
		
		//---------------------------------------------------------------------
		// OVERRIDES
		//---------------------------------------------------------------------
		
		AS3 override function push(...rest):uint
		{
			var result:uint = super.push.apply(this, rest);
			
			dispatchEvent(new PropertyChangeEvent(
				PropertyChangeEvent.PROPERTY_UPDATED + 'length',
				false,
				false,
				length - 1,
				length
			));
			
			return result;
		}
		
		AS3 override function unshift(...rest):uint
		{
			var result:uint = super.unshift.apply(this, rest);
			
			dispatchEvent(new PropertyChangeEvent(
				PropertyChangeEvent.PROPERTY_UPDATED + 'length',
				false,
				false,
				length - 1,
				length
			));
			
			dispatchEvent(new PropertyChangeEvent(
				PropertyChangeEvent.PROPERTY_UPDATED + 'length',
				false,
				false,
				0
			));
			
			return result;
		}
		
		AS3 override function pop():*
		{
			var result:*= super.pop.apply(this);
			
			dispatchEvent(new PropertyChangeEvent(
				PropertyChangeEvent.PROPERTY_UPDATED + '0',
				false,
				false,
				length + 1,
				length
			));
			
			return result;
		}
		
		AS3 override function shift():*
		{
			var result:*= super.shift.apply(this);
			
			dispatchEvent(new PropertyChangeEvent(
				PropertyChangeEvent.PROPERTY_UPDATED + 'length',
				false,
				false,
				length + 1,
				length
			));
			
			dispatchEvent(new PropertyChangeEvent(
				PropertyChangeEvent.PROPERTY_UPDATED + '0',
				false,
				false,
				0
			));
			
			return result;
		}
		
		public function clear():void
		{
			if (length)
			{
				var oldLength:int = length;
				
				super.splice(0, oldLength);
				
				dispatchEvent(new PropertyChangeEvent(
					PropertyChangeEvent.PROPERTY_UPDATED + 'length',
					false,
					false,
					oldLength,
					0
				));
				
				dispatchEvent(new PropertyChangeEvent(
					PropertyChangeEvent.PROPERTY_UPDATED + '0',
					false,
					false
				));
			}
		}
		
	}
	
}