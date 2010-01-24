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
	import com.esoteric.core.Context;
	import com.esoteric.expressions.Closure;
	import com.esoteric.expressions.Expression;
	
	/**
	* Generated 2008-08-03 07:38:41.847000 UTC.
	*/
	public class ScriptElement extends AbstractScriptElement
	{
		
		//---------------------------------------------------------------------
		// Constructor
		//---------------------------------------------------------------------
		
		/**
		 * Constructor.
		 */
		public function ScriptElement(context:Context, kind:String) 
		{
			super(context, kind);
		}

		//---------------------------------------------------------------------
		// Overridden properties
		//---------------------------------------------------------------------
		
		/**
		 * @inheritDoc
		 */
		override public function set text(value:String):void
		{
			if (expression)
			{
				expression.destroy();
				expression = null;
			}
			
			if (value)
			{
				expression = new Expression(value, context.vm, parent ? parent.closure : closure, ElementProxyManager.getInstance(parent ? parent : this), false, false);
			}
			
			super.text = value;
			
			context.expQueue.add(expression);
		}
		
		/**
		 * @inheritDoc
		 */
		override public function destroy():void
		{
			if (expression)
			{
				expression.destroy();
				expression = null;
			}
		}
		
		//---------------------------------------------------------------------
		// Methods
		//---------------------------------------------------------------------
		
		/**
		 * Runs the script.
		 * 
		 * @param	...args	the arguments to add to the script's context
		 */
		public function run(...args):void
		{
			/*var context:Object = createExpressionContext('text');
			
			context.args = args;
			
			expression.context = context;
			
			root.expQueue.add(expression);*/
		}
		
		/**
		 * Runs the script without waiting for render time.
		 * 
		 * @param	...args	the arguments to add to the script's context
		 */
		protected function runNow(...args):void
		{
			/*var context:Object = createExpressionContext('text');
			
			context.args = args;
			
			expression.context = context;
			
			root.expQueue.evalExpression(expression);*/
		}

	}
	
}
