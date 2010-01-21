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
	/**
	 * Expression error reporter.
	 * 
	 * @author Stephan Florquin
	 */
	public class ExpressionErrorReporter implements IErrorReporter
	{
		
		//---------------------------------------------------------------------
		// Members
		//---------------------------------------------------------------------
		
		/**
		 * @private
		 */
		private var _expression:Expression;
		
		/**
		 * @private
		 */
		private var _hasErrors:Boolean;
		
		//---------------------------------------------------------------------
		// Constructor
		//---------------------------------------------------------------------
		
		/**
		 * Constructor
		 * 
		 * @param	expression	the expression
		 */
		function ExpressionErrorReporter(expression:Expression)
		{
			_expression = expression;
		}
		
		//---------------------------------------------------------------------
		// Interface implementation
		//---------------------------------------------------------------------
		
		/**
		 * @inheritDoc
		 */
		public function report(header:String, msg:String, line:int):void
		{
			var src:String = _expression.expression.split(/[\n\r]+/m)[line - 1].replace(/^\s+|\s+$/g, '');
			
			trace('expression error:', header, ':', src, ':', msg);
			
			_hasErrors = true;
		}
		
		//---------------------------------------------------------------------
		// Methods
		//---------------------------------------------------------------------
		
		/**
		 * The expression.
		 */
		public function get expression():Expression { return _expression; }
		
		public function set expression(value:Expression):void 
		{
			_expression = value;
		}
		
		/**
		 * Whether errors were reported.
		 */
		public function get hasErrors():Boolean { return _hasErrors; }
		
	}

}