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
	import com.esoteric.core.Context;
	import com.esoteric.expressions.Closure;
	import com.esoteric.utils.IBindable;
	import com.esoteric.utils.IDestroyable;
	import flash.events.Event;
	
	/**
	* @author Stephan Florquin
	*/
	public interface IElement extends IBindable, IDestroyable
	{
		
		//---------------------------------------------------------------------
		// Getters & setters
		//---------------------------------------------------------------------
		
		/**
		 * The context.
		 */
		function get context():Context;
		
		function set context(value:Context):void;
		
		/**
		 * The parent element.
		 */
		function get parent():IElement;
		
		function set parent(value:IElement):void;
		
		/**
		 * The number of children.
		 */
		function get numChildren():int;
		
		/**
		 * The id property.
		 */
		function get id():String;
		
		function set id(value:String):void;
		
		/**
		 * The text property.
		 */
		function get text():String;
		
		function set text(value:String):void;
		
		/**
		 * The closure.
		 */
		function get closure():Closure;
		
		function set closure(value:Closure):void;
		
		/**
		 * The unique ID of the element.
		 */
		function get uid():String;
		
		/**
		 * The element kind.
		 */
		function get kind():String;
		
		//---------------------------------------------------------------------
		// Methods
		//---------------------------------------------------------------------
		
		/**
		 * Called right after the element is created.
		 */
		function initialize():void;
		
		/**
		 * Renders the elements.
		 */
		function render():void;
		
		/**
		 * Returns the child at the specified index.
		 * 
		 * @param	index	the index of the child
		 * @return	the child at the specified index
		 */
		function getChildAt(index:int):IElement;
		
		/**
		 * Adds a child.
		 * 
		 * @param	element	the element to add
		 */
		function addChild(element:IElement):void;
		
		/**
		 * Removes a child.
		 * 
		 * @param	child	the child to remove
		 */
		function removeChild(child:IElement):void;
		
	}
	
}