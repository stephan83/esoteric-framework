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

package com.esoteric.expressions
{
	import com.esoteric.utils.IBindable;
	import com.esoteric.utils.ICloneable;
	import com.esoteric.utils.IDestroyable;
	import flash.events.IEventDispatcher;
	
	/**
	* Expression engine interface.
	* 
	* @author Stephan Florquin
	*/
	public interface IExpressionEngine extends ICloneable, IBindable, IDestroyable
	{
		
		/**
		 * Forces the expression to evaluate or evaluates. Under normal
		 * circumstances the expression is evaluates when needed.
		 */
		function eval():void;
		
		function get vm():ExpressionVm;
		
		function set vm(value:ExpressionVm):void;
		
		function get context():Object;
		
		function set context(value:Object):void;
		
		function get expression():String;
		
		function set expression(value:String):void;
		
		function get value():*;
		
		function set enableWatchers(value:Boolean):void;
		
		function get enableWatchers():Boolean;
		
		function get outdated():Boolean;
		
	}
	
}