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
	import com.esoteric.equery.EQuery;
	import com.esoteric.expressions.Closure;
	import com.esoteric.expressions.ExpressionVm;
	import com.esoteric.net.Cache;
	import flash.display.Stage;
	import flash.events.Event;
	
	/**
	 * Render context.
	 * 
	 * @author Stephan Florquin
	 */
	public class Context
	{
		//---------------------------------------------------------------------
		// Constructor
		//---------------------------------------------------------------------
		
		/**
		 * Constructor.
		 * 
		 * @param	stage		the stage
		 * @param	factory		the element factory
		 * @param	vm			the virtual machine
		 * @param	cache		the cache
		 */
		public function Context(stage:Stage, factory:ElementFactory = null, vm:ExpressionVm = null, cache:Cache = null, expQueue:ElementExpressionQueue = null, closure:Closure = null, renderQueue:RenderQueue = null) 
		{
			_stage = stage;
			_factory = factory || new ElementFactory();
			_vm = vm || new ExpressionVm();
			_cache = cache || new Cache();
			_expQueue = expQueue || new ElementExpressionQueue();
			_closure = closure || new Closure();
			_renderQueue = renderQueue || new RenderQueue();
			
			_closure['stageWidth'] = stage.stageWidth;
			_closure['stageHeight'] = stage.stageHeight;
			_closure['trace'] = trace;
			
			// enable eQuery
			_closure['$'] = function(query:String, context:* = null):* {
				return EQuery.$(query, context || _root);
			}
			
			_stage.addEventListener(Event.RESIZE, resizeHandler);
		}
		
		//---------------------------------------------------------------------
		// Members
		//---------------------------------------------------------------------
		
		/**
		 * @private
		 */
		private var _root:IElement;
		
		/**
		 * @private
		 */
		private var _stage:Stage;
		
		/**
		 * @private
		 */
		private var _factory:ElementFactory;
		
		/**
		 * @private
		 */
		private var _vm:ExpressionVm;
		
		/**
		 * @private
		 */
		private var _cache:Cache;
		
		/**
		 * @private
		 */
		private var _expQueue:ElementExpressionQueue;
		
		/**
		 * @private
		 */
		private var _closure:Closure;
		
		/**
		 * @private
		 */
		private var _renderQueue:RenderQueue;
		
		//---------------------------------------------------------------------
		// Methods
		//---------------------------------------------------------------------
		
		/**
		 * The stage.
		 */
		public function get stage():Stage { return _stage; }
		
		public function set stage(value:Stage):void 
		{
			_stage = value;
		}
		
		/**
		 * The element factory.
		 */
		public function get factory():ElementFactory { return _factory; }
		
		public function set factory(value:ElementFactory):void 
		{
			_factory = value;
		}
		
		/**
		 * The virtual machine.
		 */
		public function get vm():ExpressionVm { return _vm; }
		
		public function set vm(value:ExpressionVm):void 
		{
			_vm = value;
		}
		
		/**
		 * The cache.
		 */
		public function get cache():Cache { return _cache; }
		
		public function set cache(value:Cache):void 
		{
			_cache = value;
		}
		
		/**
		 * The render queue.
		 */
		public function get renderQueue():RenderQueue { return _renderQueue; }
		
		public function set renderQueue(value:RenderQueue):void 
		{
			_renderQueue = value;
		}
		
		/**
		 * The expression queue.
		 */
		public function get expQueue():ElementExpressionQueue { return _expQueue; }
		
		public function set expQueue(value:ElementExpressionQueue):void 
		{
			_expQueue = value;
		}
		
		/**
		 * The closure.
		 */
		public function get closure():Closure { return _closure; }
		
		public function set closure(value:Closure):void 
		{
			_closure = value;
		}
		
		/**
		 * The root element.
		 */
		public function get root():IElement { return _root; }
		
		public function set root(value:IElement):void 
		{
			_root = value;
		}
		
		/**
		 * @private
		 */
		private function resizeHandler(e:Event):void 
		{
			_closure['stageWidth'] = stage.stageWidth;
			_closure['stageHeight'] = stage.stageHeight;
		}
		
	}

}