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
	import com.esoteric.core.IElement;
	import com.esoteric.utils.IDestroyable;
	
	/**
	 * An element set.
	 * 
	 * @author Stephan Florquin
	 */
	public class ElementSet implements IDestroyable
	{
		
		//---------------------------------------------------------------------
		// Constructor
		//---------------------------------------------------------------------
		
		/**
		 * Constructor.
		 * 
		 * @param	elements	the initial elements
		 */
		public function ElementSet(elements:Array = null) 
		{
			_result = elements || new Array();
		}
		
		//---------------------------------------------------------------------
		// Members
		//---------------------------------------------------------------------
		
		/**
		 * @private
		 */
		private var _result:Array;
		
		//---------------------------------------------------------------------
		// Implementations
		//---------------------------------------------------------------------
		
		/**
		 * @inheritDoc
		 */
		public function destroy():void
		{
			_result = null;
		}
		
		//---------------------------------------------------------------------
		// Methods
		//---------------------------------------------------------------------
		
		/**
		 * The result of the selectors.
		 */
		public function get result():Array { return _result; }
		
		/**
		 * Selects all the descendants in the set.
		 */
		public function selectAll():void
		{
			_result = selectAllRec(_result);
		}
		
		/**
		 * @private
		 */
		private function selectAllRec(elements:Array):Array
		{
			var result:Array = elements;
			
			for each (var element:IElement in elements) 
			{
				var children:Array = new Array();
				
				for (var i:int = 0; i < element.numChildren; i++) 
				{
					children[children.length] = element.getChildAt(i);
				}
				
				result = result.concat(selectAllRec(children));
			}
			
			return result;
		}
		
		/**
		 * Selects elements by kind.
		 * 
		 * @param	kind	the element kind
		 */
		public function selectKind(kind:String):void
		{
			selectAttr('kind', '=', kind.toLowerCase());
		}
		
		/**
		 * Selects the element with the specifier ID.
		 * 
		 * @param	id	the ID of the element
		 */
		public function selectId(id:String):void
		{
			var result:IElement = selectIdRec(_result, id)
			
			if (result)
			{
				_result = [result];
			}
			else
			{
				_result = [];
			}
		}
		
		/**
		 * @private
		 */
		private function selectIdRec(elements:Array, id:String):IElement
		{
			for each (var element:IElement in elements) 
			{
				if (element.id == id)
				{
					return element;
				}
				
				var children:Array = new Array();
				
				for (var i:int = 0; i < element.numChildren; i++) 
				{
					children[children.length] = element.getChildAt(i);
				}
				
				var result:IElement = selectIdRec(children, id);
				
				if (result)
				{
					return result;
				}
			}
			
			return null;
		}
		
		/**
		 * Selects the children of the set.
		 */
		public function selectChild():void
		{
			var old:Array = _result;
			
			_result = new Array();
			
			for each (var element:IElement in old) 
			{
				for (var i:int = 0; i < element.numChildren; i++)
				{
					_result[_result.length] = element.getChildAt(i);
				}
			}
		}
		
		/**
		 * Selects all the descendants with the specified class name.
		 * 
		 * @param	className	the name of the class
		 */
		public function selectClass(className:String):void
		{
			
		}
		
		/**
		 * Selects the first childs of the set.
		 */
		public function selectFirst():void
		{
			if (_result.length)
			{
				_result = [_result[0]];
			}
		}
		
		/**
		 * Selects the last childs of the set.
		 */
		public function selectLast():void
		{
			if (_result.length)
			{
				_result = [_result[_result.length - 1]];
			}
		}
		
		/**
		 * Selects the elements by attributes that are set to specified value.
		 * 
		 * @param	attr	the attribute name
		 * @param	op		the operator
		 * @param	v		the value
		 */
		public function selectAttr(attr:String, op:String, v:*):void
		{
			var old:Array = _result;
			_result = new Array();
			
			switch(op)
			{
				case '=': {
					for each (var element:IElement in old) 
					{
						if (element[attr] == v)
						{
							_result[_result.length] = element;
						}
					}
					
					break
				}
				
				case '!=': {
					for each (var element:IElement in old) 
					{
						if (element[attr] != v)
						{
							_result[_result.length] = element;
						}
					}
					
					break
				}
				
				case '<': {
					for each (var element:IElement in old) 
					{
						if (element[attr] < v)
						{
							_result[_result.length] = element;
						}
					}
					
					break
				}
				
				case '<=': {
					for each (var element:IElement in old) 
					{
						if (element[attr] <= v)
						{
							_result[_result.length] = element;
						}
					}
					
					break
				}
				
				case '>': {
					for each (var element:IElement in old) 
					{
						if (element[attr] > v)
						{
							_result[_result.length] = element;
						}
					}
					
					break
				}
				
				case '>=': {
					for each (var element:IElement in old) 
					{
						if (element[attr] >= v)
						{
							_result[_result.length] = element;
						}
					}
					
					break
				}
			}
		}
		
	}

}