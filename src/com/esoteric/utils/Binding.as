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
	* Binding class.
	* 
	* @author Stephan Florquin
	*/
	public class Binding implements IDestroyable
	{
		
		//---------------------------------------------------------------------
		// MEMBERS
		//---------------------------------------------------------------------
		
		private var _source:Object;
		private var _sourceProperty:*;
		private var _target:Object;
		private var _targetProperty:*;
		private var _useWeakReferences:Boolean;
		
		//---------------------------------------------------------------------
		// CONSTRUCTOR
		//---------------------------------------------------------------------
		
		/**
		 * Class constructor.
		 * 
		 * Binds source[sourceProperty] to target[targetProperty].
		 * 
		 * The target must trigger PropertyChange events.
		 * 
		 * @param	source	the source *
		 * @param	sourceProperty	the source property
		 * @param	target	the target *
		 * @param	targetProperty	the target property
		 * @param	useWeakReferences	whether the use weak references
		 */
		public function Binding(source:Object = null, sourceProperty:* = null, target:Object = null, targetProperty:* = null, useWeakReferences:Boolean = false)
		{
			_source = source;
			_sourceProperty = sourceProperty;
			_target = target;
			_targetProperty = targetProperty;
			_useWeakReferences = useWeakReferences;
			
			update();
			
			if (_target)
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
				_source[_sourceProperty] = null;
		}
		
		private function propertyUpdatedHandler(e:PropertyChangeEvent):void 
		{
			if (e.property == _targetProperty)
				_source[_sourceProperty] = e.newValue;
		}
		
		private function propertyAddedHandler(e:PropertyChangeEvent):void 
		{
			if (e.property == _targetProperty)
				_source[_sourceProperty] = e.newValue;
		}
		
		//---------------------------------------------------------------------
		// GETTERS & SETTERS
		//---------------------------------------------------------------------
		
		public function get source():Object { return _source; }
		
		public function set source(value:Object):void 
		{
			_source = value;
			
			update();
		}
		
		public function get sourceProperty():* { return _sourceProperty; }
		
		public function set sourceProperty(value:*):void 
		{
			_sourceProperty = value;
			
			update();
		}
		
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
			
			update();
			
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
			
			update();
		}
		
		//---------------------------------------------------------------------
		// PRIVATE FUNCTIONS
		//---------------------------------------------------------------------
		
		private function update():void
		{
			if (_target)
			{
				if (_source && _source.hasOwnProperty(_sourceProperty))
				{
					if (_target.hasOwnProperty(_targetProperty))
					{
						if (_source[_sourceProperty] != _target[_targetProperty])
							_source[_sourceProperty] = _target[_targetProperty];
					}
					else if (_source[_sourceProperty])
					{
						_source[_sourceProperty] = null;
					}
				}
			}
			else if (_source && _source.hasOwnProperty(_sourceProperty) && _source[_sourceProperty])
			{
				_source[_sourceProperty] = null;
			}
		}
		
	}
	
}