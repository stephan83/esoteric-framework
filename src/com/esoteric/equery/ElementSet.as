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
	/**
	 * An element set.
	 * 
	 * @author Stephan Florquin
	 */
	public class ElementSet
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
			
		}
		
		/**
		 * Selects the element with the specifier ID.
		 * 
		 * @param	id	the ID of the element
		 */
		public function selectId(id:String):void
		{
			
		}
		
		/**
		 * Selects the children of the set.
		 */
		public function selectChild():void
		{
			
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
			
		}
		
		/**
		 * Selects the last childs of the set.
		 */
		public function selectLast():void
		{
			
		}
		
		/**
		 * Selects the elements by attributes that are set to specified number.
		 * 
		 * @param	attr	the attribute name
		 * @param	op		the operator
		 * @param	n		the number
		 */
		public function selectAttrNum(attr:String, op:String, n:Number):void
		{
			
		}
		
		/**
		 * Selects the elements by attributes that are set to specified string.
		 * 
		 * @param	attr	the attribute name
		 * @param	op		the operator
		 * @param	s		the string
		 */
		public function selectAttrStr(attr:String, op:String, s:String):void
		{
			
		}
		
	}

}