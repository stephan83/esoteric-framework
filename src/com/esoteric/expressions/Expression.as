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
	import com.esoteric.events.ExpressionEvent;
	import com.esoteric.events.PropertyChangeEvent;
	import com.esoteric.utils.IBindable;
	import com.esoteric.utils.ICloneable;
	import com.esoteric.utils.Watcher;
	import flash.events.EventDispatcher;
	import org.antlr.runtime.ANTLRStringStream;
	import org.antlr.runtime.CommonTokenStream;
	import org.antlr.runtime.ParserRuleReturnScope;
	import org.antlr.runtime.tree.CommonTreeNodeStream;
	import org.antlr.runtime.tree.Tree;
	
	/**
	* Expression class.
	* 
	* @author Stephan Florquin
	*/
	public class Expression extends EventDispatcher implements IExpressionEngine
	{
		
		//---------------------------------------------------------------------
		// MEMBERS
		//---------------------------------------------------------------------
		
		private var _expression:String;
		private var _vm:ExpressionVm;
		private var _value:*;
		private var _watchers:Array = new Array();
		private var _paused:Boolean = false;
		private var _evaluating:Boolean = false;
		private var _closure:Closure;
		private var _instructions:Array;
		private var _enableWatchers:Boolean;
		private var _outdated:Boolean = true;
		
		//---------------------------------------------------------------------
		// CONSTRUCTOR
		//---------------------------------------------------------------------
		
		public function Expression(expression:String, vm:ExpressionVm, closure:Closure = null, paused:Boolean = false, enableWatchers:Boolean = true) 
		{
			_vm = vm;
			_closure = closure;
			_paused = paused;
			_enableWatchers = enableWatchers;
			this.expression = expression;
		}
		
		//---------------------------------------------------------------------
		// ICLONEABLE
		//---------------------------------------------------------------------
		
		public function clone():ICloneable
		{
			return new Expression(expression, _vm, _closure, _paused, _enableWatchers);
		}
		
		//---------------------------------------------------------------------
		// IDESTROYABLE
		//---------------------------------------------------------------------
		
		public function destroy():void
		{
			destroyWatchers();
			
			_vm = null;
			_closure = null;
			_expression = null;
			_value = null;
			_watchers = null;
			_expression = null;
			_instructions = null;
		}
		
		//---------------------------------------------------------------------
		// IEXPRESSIONENGINE
		//---------------------------------------------------------------------
		
		public function get vm():ExpressionVm { return _vm; }
		
		public function set vm(value:ExpressionVm):void 
		{
			_vm = value;
		}
		
		public function get closure():Closure { return _closure; }
		
		public function set closure(value:Closure):void 
		{
			_closure = value;
		}
		
		public function get expression():String { return _expression; }
		
		public function set expression(value:String):void 
		{
			_outdated = true;
			
			_expression = value;
			
			compile();
		}
		
		public function get value():*
		{
			if (_value)
				return _value;
			
			eval();
			
			return _value;
		}
		
		public function get evaluating():Boolean { return _evaluating; }
		
		public function get enableWatchers():Boolean { return _enableWatchers; }
		
		public function set enableWatchers(value:Boolean):void 
		{
			_enableWatchers = value;
		}
		
		public function get outdated():Boolean { return _outdated; }
		
		public function eval():void
		{
			var oldValue:* = _value;
			
			destroyWatchers();
			
			if (_enableWatchers)
			{
				_vm.addEventListener(ExpressionEvent.BINDABLE_PROPERTY_LOADED, vmBindablePropertyHandler);
			}
			
			_evaluating = true;
			_value = _vm.eval(_instructions, _closure.current, _enableWatchers);
			_evaluating = false;
			
			if (_enableWatchers)
			{
				_vm.removeEventListener(ExpressionEvent.BINDABLE_PROPERTY_LOADED, vmBindablePropertyHandler);
				
				if (hasEventListener(PropertyChangeEvent.PROPERTY_UPDATED))
				{
					dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'value', oldValue, _value));
				}
			}
			
			_outdated = false;
		}
		
		public function pauseWatchers():void
		{
			if (!_paused)
			{
				_paused = true;
				
				for each(var watcher:Watcher in _watchers)
				{
					watcher.pause();
				}
			}
		}
		
		public function resumeWatchers():void
		{
			if (_paused)
			{
				_paused = false;
				
				for each(var watcher:Watcher in _watchers)
				{
					watcher.resume();
				}
			}
		}
		
		//---------------------------------------------------------------------
		// PRIVATE FUNCTIONS
		//---------------------------------------------------------------------
		
		private function compile():void
		{
			var reporter = new ExpressionErrorReporter(this);
			var lexer:ExpressionLexer = new ExpressionLexer(new ANTLRStringStream(_expression));
			var tokens:CommonTokenStream = new CommonTokenStream(lexer);
			var parser:ExpressionParser = new ExpressionParser(tokens);
			parser.errorReporter = reporter;
			var r:ParserRuleReturnScope = parser.main();
			var root:Tree = Tree(r.tree);
			
			var nodes:CommonTreeNodeStream = new CommonTreeNodeStream(root);
			nodes.tokenStream = tokens;
			
			if (reporter.hasErrors)
			{
				_instructions = new Array();
			}
			else
			{
				var walker:ExpressionWalker = new ExpressionWalker(nodes);
				
				walker.main();
				
				_instructions = walker.instructions;
			}
		}
		
		private function destroyWatchers():void
		{
			for each(var watcher:Watcher in _watchers)
			{
				watcher.destroy();
			}
			
			_watchers.splice(0);
		}
		
		private function isWatching(bindable:IBindable, property:*):Boolean
		{
			for each(var watcher:Watcher in _watchers)
			{
				if (watcher.target == bindable && watcher.targetProperty == property)
					return true;
			}
			
			return false;
		}
		
		//---------------------------------------------------------------------
		// HANDLERS
		//---------------------------------------------------------------------
		
		private function vmBindablePropertyHandler(e:ExpressionEvent):void 
		{
			if (!isWatching(e.bindable, e.property))
			{
				_watchers.push(new Watcher(e.bindable, e.property, watcherHandler, _paused));
				
				dispatchEvent(e);
			}
		}
		
		private function watcherHandler(e:PropertyChangeEvent):void
		{
			_outdated = true;
			
			dispatchEvent(new ExpressionEvent(ExpressionEvent.OUTDATED));
		}
		
	}
	
}