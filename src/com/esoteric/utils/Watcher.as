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
	
	/**
	* Watcher class.
	* 
	* @author Stephan Florquin
	*/
	public class Watcher implements IDestroyable
	{
		
		//---------------------------------------------------------------------
		// MEMBERS
		//---------------------------------------------------------------------
		
		private var _target:Object;
		private var _targetProperty:*;
		private var _handler:Function;
		private var _useWeakReferences:Boolean;
		private var _paused:Boolean;
		private var _oldValue:*;
		
		//---------------------------------------------------------------------
		// CONSTRUCTOR
		//---------------------------------------------------------------------
		private static var _count:int = 0;
		/**
		 * Class constructor.
		 * 
		 * The target must trigger PropertyChange events.
		 * 
		 * @param	target	the target *
		 * @param	targetProperty	the target property
		 * @param	handler	an event handler called when the target changed
		 * @param	paused	whether not to start watching
		 * @param	useWeakReferences	whether the use weak references
		 */
		public function Watcher(target:Object = null, targetProperty:* = null, handler:Function = null, paused:Boolean = false, useWeakReferences:Boolean = false)
		{
			_target = target;
			_targetProperty = targetProperty;
			_handler = handler;
			_paused = paused;
			_useWeakReferences = useWeakReferences;
			
			if (_target && !_paused)
			{
				_target.addEventListener(PropertyChangeEvent.PROPERTY_ADDED, propertyAddedHandler, false, 0, _useWeakReferences);
				_target.addEventListener(PropertyChangeEvent.PROPERTY_UPDATED, propertyUpdatedHandler, false, 0, _useWeakReferences);
				_target.addEventListener(PropertyChangeEvent.PROPERTY_REMOVED, propertyRemovedHandler, false, 0, _useWeakReferences);
			}
		}
		
		//---------------------------------------------------------------------
		// IDESTROYABLE
		//---------------------------------------------------------------------
		
		public function destroy():void
		{
			if (_target)
			{
				_target.removeEventListener(PropertyChangeEvent.PROPERTY_ADDED, propertyAddedHandler);
				_target.removeEventListener(PropertyChangeEvent.PROPERTY_UPDATED, propertyUpdatedHandler);
				_target.removeEventListener(PropertyChangeEvent.PROPERTY_REMOVED, propertyRemovedHandler);
			}
		}
		
		//---------------------------------------------------------------------
		// HANDLERS
		//---------------------------------------------------------------------
		
		private function propertyRemovedHandler(e:PropertyChangeEvent):void 
		{
			if (e.property == _targetProperty)
				_handler(e);
		}
		
		private function propertyUpdatedHandler(e:PropertyChangeEvent):void 
		{
			if (e.property == _targetProperty)
				_handler(e);
		}
		
		private function propertyAddedHandler(e:PropertyChangeEvent):void 
		{
			if (e.property == _targetProperty)
				_handler(e);
		}
		
		//---------------------------------------------------------------------
		// PUBLIC FUNCTIONS
		//---------------------------------------------------------------------
		
		/**
		 * Temporarily pauses watcher.
		 */
		public function pause():void
		{
			if (_target && !_paused)
			{
				_paused = true;
				
				_target.removeEventListener(PropertyChangeEvent.PROPERTY_ADDED, propertyAddedHandler);
				_target.removeEventListener(PropertyChangeEvent.PROPERTY_UPDATED, propertyUpdatedHandler);
				_target.removeEventListener(PropertyChangeEvent.PROPERTY_REMOVED, propertyRemovedHandler);
				
				if (_target.hasOwnProperty(_targetProperty))
					_oldValue = _target[_targetProperty];
			}
		}
		
		/**
		 * Resumes watcher.
		 */
		public function resume():void
		{
			if (_target && _paused)
			{
				_paused = false;
				
				_target.addEventListener(PropertyChangeEvent.PROPERTY_ADDED, propertyAddedHandler, false, 0, _useWeakReferences);
				_target.addEventListener(PropertyChangeEvent.PROPERTY_UPDATED, propertyUpdatedHandler, false, 0, _useWeakReferences);
				_target.addEventListener(PropertyChangeEvent.PROPERTY_REMOVED, propertyRemovedHandler, false, 0, _useWeakReferences);
				
				if (_target.hasOwnProperty(_targetProperty))
					var newValue:* = _target[_targetProperty];
				
				if (_oldValue != newValue)
				{
					if (_oldValue)
						_handler(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_ADDED, false, false, _targetProperty, _oldValue, newValue));
					else if(newValue)
						_handler(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, _targetProperty, _oldValue, newValue));
					else
						_handler(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_REMOVED, false, false, _targetProperty, _oldValue, newValue));
				}
			}
		}
		
		//---------------------------------------------------------------------
		// GETTERS & SETTERS
		//---------------------------------------------------------------------
		
		public function get target():Object { return _target; }
		
		public function set target(value:Object):void 
		{
			if (_target)
			{
				_target.removeEventListener(PropertyChangeEvent.PROPERTY_ADDED, propertyAddedHandler);
				_target.removeEventListener(PropertyChangeEvent.PROPERTY_UPDATED, propertyUpdatedHandler);
				_target.removeEventListener(PropertyChangeEvent.PROPERTY_REMOVED, propertyRemovedHandler);
			}
			
			_target = value;
			
			if (_target)
			{
				_target.addEventListener(PropertyChangeEvent.PROPERTY_ADDED, propertyAddedHandler, false, 0, _useWeakReferences);
				_target.addEventListener(PropertyChangeEvent.PROPERTY_UPDATED, propertyUpdatedHandler, false, 0, _useWeakReferences);
				_target.addEventListener(PropertyChangeEvent.PROPERTY_REMOVED, propertyRemovedHandler, false, 0, _useWeakReferences);
			}
		}
		
		public function get targetProperty():* { return _targetProperty; }
		
		public function set targetProperty(value:*):void 
		{
			_targetProperty = value;
		}
		
		public function get handler():Function { return _handler; }
		
		public function set handler(value:Function):void 
		{
			_handler = value;
		}
		
		public function get paused():Boolean { return _paused; }
		
	}
	
}