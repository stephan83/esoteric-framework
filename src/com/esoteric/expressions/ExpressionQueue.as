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
	import com.esoteric.core.ElementProxy;
	import com.esoteric.core.ElementProxyManager;
	import com.esoteric.core.IElement;
	import com.esoteric.events.ExpressionEvent;
	import com.esoteric.utils.IBindable;
	
	/**
	* Expression queue class.
	* 
	* @author Stephan Florquin
	*/
	public class ExpressionQueue 
	{
		
		private var _expressions:Array = new Array();
		private var _runningDepth:int = 0;
		
		public function get numExpressions():int { return _expressions.length; }
		
		public function add(expression:Expression, push:Boolean = false):void
		{
			if (_runningDepth && !push)
			{
				evalExpression(expression);
				remove(expression);
			}
			else if (!isInQueue(expression))
			{
				_expressions.push(expression);
			}
		}
		
		public function remove(expression:Expression):Boolean
		{
			var length:int =  _expressions.length;
			
			for (var i:int = 0; i < length; i++) 
			{
				if (_expressions[i] == expression)
				{
					_expressions.splice(i, 1);
					
					return true;
				}
			}
			
			return false;
		}
		
		public function run():void
		{
			var expression:Expression = getNextExpression();
			
			while (expression)
			{
				evalExpression(expression);
				
				expression = getNextExpression();
			}
		}
		
		public function evalExpression(expression:Expression):void
		{
			_runningDepth++;
			
			var vm:ExpressionVm = expression.vm;
			
			if (!vm.hasEventListener(ExpressionEvent.BINDABLE_PROPERTY_LOADED))
			{
				vm.addEventListener(ExpressionEvent.BINDABLE_PROPERTY_LOADED, bindablePropertyLoadedHandler);
			}
			
			expression.eval();
			
			vm.removeEventListener(ExpressionEvent.BINDABLE_PROPERTY_LOADED, bindablePropertyLoadedHandler);
			
			_runningDepth--;
		}
		
		private function isInQueue(expression:Expression):Boolean
		{
			for each(var queuedExpression:Expression in _expressions)
			{
				if (expression == queuedExpression)
					return true;
			}
			
			return false;
		}
		
		private function getNextExpression():Expression
		{
			if (_expressions.length)
				return _expressions.shift();
			
			return null;
		}
		
		protected function bindablePropertyLoadedHandler(e:ExpressionEvent):void
		{
			
		}
		
	}
	
}