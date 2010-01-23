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
	
	/**
	* @author Stephan Florquin
	*/
	public class RenderQueue 
	{
		
		private var _elements:Array = new Array();
		private var _nextIElements:Array = new Array();
		private var _rendering:Boolean;
		
		public function get numElements():int { return _elements.length; }
		
		public function add(element:IElement):void
		{
			var i:int;
			
			if (_rendering)
			{
				if (!isInNextQueue(element))
				{
					for (i = 0; i < _nextIElements.length; i++) 
					{
						if (descendant(_nextIElements[i], element))
						{
							_nextIElements.splice(i, 0, element);
							
							return;
						}
					}
					
					_nextIElements.push(element);
				}
			}
			else
			{
				if (!isInQueue(element))
				{
					for (i = 0; i < _elements.length; i++) 
					{
						if (descendant(_elements[i], element))
						{
							_elements.splice(i, 0, element);
							
							return;
						}
					}
					
					_elements.push(element);
				}
			}
		}
		
		public function remove(element:IElement):Boolean
		{
			var length:int =  _elements.length;
			
			for (var i:int = 0; i < length; i++) 
			{
				if (_elements[i] == element)
				{
					_elements.splice(i, 1);
					
					return true;
				}
			}
			
			length = _nextIElements.length;
			
			for (i = 0; i < length; i++) 
			{
				if (_nextIElements[i] == element)
				{
					_nextIElements.splice(i, 1);
					
					return true;
				}
			}
			
			return false;
		}
		
		public function render():void
		{
			_rendering = true;
			
			var element:IElement = getNextElement();
			
			while (element)
			{
				element.render();
				
				element = getNextElement();
			}
			
			_elements = _nextIElements;
			_nextIElements = new Array();
			
			if (_elements.length)
			{
				render();
			}
			
			_rendering = false;
		}
		
		private function isInQueue(element:IElement):Boolean
		{
			for each(var queuedIElement:IElement in _elements)
			{
				if (element == queuedIElement)
					return true;
			}
			
			return false;
		}
		
		private function isInNextQueue(element:IElement):Boolean
		{
			for each(var queuedIElement:IElement in _nextIElements)
			{
				if (element == queuedIElement)
					return true;
			}
			
			return false;
		}
		
		private function getNextElement():IElement
		{
			if (_elements.length)
				return _elements.shift();
			
			return null;
		}
		
		private function descendant(target:IElement, test:IElement):Boolean
		{
			if (target == test)
			{
				return true;
			}
			
			for (var i:int = 0; i < target.numChildren; i++) 
			{
				if (descendant(target.getChildAt(i), test))
				{
					return true;
				}
			}
			
			return false;
		}
		
	}
	
}