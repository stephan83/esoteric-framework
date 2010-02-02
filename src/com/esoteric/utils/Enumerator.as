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
	import com.esoteric.events.VerboseEventDispatcher;
	import flash.events.Event;
	import flash.events.IEventDispatcher;
	import flash.utils.flash_proxy;
	import flash.utils.Proxy;
	
	/**
	* Enumerator class.
	* 
	* @author Stephan Florquin
	*/
	public dynamic class Enumerator extends Proxy implements IEnumerator, IEventDispatcher
	{
		protected namespace enumerator;
		
		//---------------------------------------------------------------------
		// MEMBERS
		//---------------------------------------------------------------------
		
		private var _eventDispatcher:VerboseEventDispatcher;
		
		//---------------------------------------------------------------------
		// CONSTRUCTOR
		//---------------------------------------------------------------------	
		
		/**
		 * Class constuctor.
		 */
		public function Enumerator() 
		{
			_eventDispatcher = new VerboseEventDispatcher(this);
		}
		
		//---------------------------------------------------------------------
		// IMPLEMENTATION
		//---------------------------------------------------------------------
		
		public function clone():ICloneable
		{
			return new Enumerator();
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
		
		override flash_proxy function getProperty(name:*):*
		{
			return enumerator::getProperty(name);
		}
		
		override flash_proxy function setProperty(name:*, value:*):void
		{
			if (enumerator::getProperty(name) != value)
				enumerator::setProperty(name, value);
		}
		
		override flash_proxy function hasProperty(name:*):Boolean
		{
			return enumerator::hasProperty(name);
		}
		
		override flash_proxy function nextNameIndex(index:int):int
		{
			return enumerator::nextNameIndex(index);
		}
		
		override flash_proxy function nextName(index:int):String
		{
			return enumerator::nextName(index);
		}
		
		override flash_proxy function nextValue(index:int):*
		{
			return enumerator::nextValue(index);
		}
		
		override flash_proxy function callProperty(name:*, ...args):*
		{
			return enumerator::callProperty(name, args);
		}
		
		//---------------------------------------------------------------------
		// PROTECTED FUNCTIONS
		//---------------------------------------------------------------------
		
		enumerator function getProperty(name:*):*
		{
			return null;
		}
		
		enumerator function setProperty(name:*, value:*):void
		{
			
		}
		
		enumerator function hasProperty(name:*):Boolean
		{
			return false;
		}
		
		enumerator function nextNameIndex(index:int):int
		{
			return 0;
		}
		
		enumerator function nextName(index:int):String
		{
			return null;
		}
		
		enumerator function nextValue(index:int):*
		{
			return null;
		}
		
		enumerator function callProperty(name:*, args:Array):*
		{
			return null;
		}
		
		//---------------------------------------------------------------------
		// GETTERS & SETTERS
		//---------------------------------------------------------------------
		
		public function get length():uint { return 0; }
		
	}
	
}