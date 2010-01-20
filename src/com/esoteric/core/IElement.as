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
	import com.esoteric.display.ApplicationElement;
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
		 * The root element.
		 */
		function get root():ApplicationElement;
		
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
		 * The unique ID of the element.
		 */
		function get uid():String;
		
		/**
		 * The element kind.
		 */
		function get kind():String;
		
		/**
		 * Whether the element is loading.
		 */
		function get loading():Boolean;
		
		//---------------------------------------------------------------------
		// Methods
		//---------------------------------------------------------------------
		
		/**
		 * Called right after the element is created.
		 */
		function initialize():void;
		
		/**
		 * Returns the child at the specified index.
		 * 
		 * @param	index	the index of the child
		 * @return	the child at the specified index
		 */
		function getChildAt(index:int):IElement;
		
		/**
		 * Returns an array of elements that have their property set to value.
		 * 
		 * @param	property	the property name
		 * @param	value		the value
		 * @return				the elements found
		 */
		function findElements(property:String, value:String):Array;
		
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
		
		/**
		 * Create an expression context for a property.
		 * 
		 * @param	name	the name of the property
		 * @return	an expression context for the property
		 */
		function createExpressionContext(name:String):Object;

		/**
		 * Returns whether this element contains an element.
		 * 
		 * @param	element	the element
		 * @return	whether this element contains this element
		 */
		function contains(element:IElement):Boolean;
		
		/**
		 * Renders the element.
		 */
		function render():void;
		
		/**
		 * Returns the first element with the specificed ID or null.
		 * 
		 * @param	id	the ID
		 * @return	the first element with the specificed ID or null.
		 */
		function getElementById(id:String):IElement;
		
		/**
		 * Forces an event to be delayed to the next frame.
		 * 
		 * @param	e	the event
		 */
		function dispatchEventNextFrame(e:Event):void;
		
		/**
		 * Forces an event to be dispatched now.
		 * 
		 * @param	e	the event
		 */
		function dispatchEventNow(e:Event):Boolean;
		
	}
	
}