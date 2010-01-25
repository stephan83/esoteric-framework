/*
	DO NOT MODIFY THIS FILE, THE CODE GENERATOR WILL ERASE ANY CHANGES MADE.
	MAKE CHANGES TO THE DERIVED CLASS INSTEAD.

	Last generated 2010-01-25 12:58:06.901000 UTC.

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

package com.esoteric.display 
{
	import com.esoteric.core.ElementExpressionQueue;
	import com.esoteric.core.ElementFactory;
	import com.esoteric.core.RenderQueue;
	import com.esoteric.expressions.ExpressionVm;
	import com.esoteric.net.Cache;
	import com.esoteric.utils.BindableObject;
	import flash.display.Stage;
	import org.papervision3d.core.render.IRenderEngine;

	import com.esoteric.core.Context;
	import com.esoteric.events.ElementEvent;
	import com.esoteric.events.PropertyChangeEvent;
	
	public class AbstractApplicationElement extends SpriteElement
	{
		
		//---------------------------------------------------------------------
		// Constructor
		//---------------------------------------------------------------------
		
		/**
		 * Constructor.
		 */
		public function AbstractApplicationElement(context:Context, kind:String) 
		{
			super(context, kind);
			

		}
		
		//---------------------------------------------------------------------
		// Overrides
		//---------------------------------------------------------------------
		
		/**
		 * @inheritDoc
		 */
		
		public override function initialize():void
		{
			super.initialize();
			

		}

		//---------------------------------------------------------------------
		// Variables
		//---------------------------------------------------------------------
		
		/**
		 * @private
		 */
		private var _applicationHeight:Number = 480;

		/**
		 * @private
		 */
		private var _globals:BindableObject = null;

		/**
		 * @private
		 */
		private var _renderEngine:IRenderEngine = null;

		/**
		 * @private
		 */
		private var _cache:Cache = null;

		/**
		 * @private
		 */
		private var _elementFactory:ElementFactory = null;

		/**
		 * @private
		 */
		private var _applicationWidth:Number = 640;

		/**
		 * @private
		 */
		private var _volume:Number = 1.0;

		/**
		 * @private
		 */
		private var _expVm:ExpressionVm = null;

		/**
		 * @private
		 */
		private var _extraContext:Object = null;

		/**
		 * @private
		 */
		private var _expQueue:ElementExpressionQueue = null;

		/**
		 * @private
		 */
		private var _renderQueue:RenderQueue = null;

		/**
		 * @private
		 */
		private var _stage:Stage = null;


		//---------------------------------------------------------------------
		// Getters and setters
		//---------------------------------------------------------------------
		
		/**
		 * The height of the application, in pixels. [default = 480]
		 *
		 * @default	480
		 */
		public function get applicationHeight():Number { return _applicationHeight; }
		
		public function set applicationHeight(value:Number):void 
		{
			if(_applicationHeight != value)
			{
				var oldValue:Number = _applicationHeight;
			

			
				_applicationHeight = value;
				if(hasEventListener(PropertyChangeEvent.PROPERTY_UPDATED))
				{
					dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'applicationHeight', oldValue, value));
				}
				context.renderQueue.add(this);
			}
		}

		/**
		 * The global variables. [default = null]
		 *
		 * @default	null
		 */
		public function get globals():BindableObject { return _globals; }
		
		public function set globals(value:BindableObject):void 
		{
			if(_globals != value)
			{
				var oldValue:BindableObject = _globals;
			

			
				_globals = value;


			}
		}

		/**
		 * The 3D render engine. [default = null]
		 *
		 * @default	null
		 */
		public function get renderEngine():IRenderEngine { return _renderEngine; }
		
		public function set renderEngine(value:IRenderEngine):void 
		{
			if(_renderEngine != value)
			{
				var oldValue:IRenderEngine = _renderEngine;
			

			
				_renderEngine = value;


			}
		}

		/**
		 * The cache. [default = null]
		 *
		 * @default	null
		 */
		public function get cache():Cache { return _cache; }
		
		public function set cache(value:Cache):void 
		{
			if(_cache != value)
			{
				var oldValue:Cache = _cache;
			

			
				_cache = value;


			}
		}

		/**
		 * The element factory. [default = null]
		 *
		 * @default	null
		 */
		public function get elementFactory():ElementFactory { return _elementFactory; }
		
		public function set elementFactory(value:ElementFactory):void 
		{
			if(_elementFactory != value)
			{
				var oldValue:ElementFactory = _elementFactory;
			

			
				_elementFactory = value;


			}
		}

		/**
		 * The width of the application, in pixels. [default = 640]
		 *
		 * @default	640
		 */
		public function get applicationWidth():Number { return _applicationWidth; }
		
		public function set applicationWidth(value:Number):void 
		{
			if(_applicationWidth != value)
			{
				var oldValue:Number = _applicationWidth;
			

			
				_applicationWidth = value;
				if(hasEventListener(PropertyChangeEvent.PROPERTY_UPDATED))
				{
					dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'applicationWidth', oldValue, value));
				}
				context.renderQueue.add(this);
			}
		}

		/**
		 * The global volume of sound, between 0.0 and 1.0. [default = 1.0]
		 *
		 * @default	1.0
		 */
		public function get volume():Number { return _volume; }
		
		public function set volume(value:Number):void 
		{
			if(_volume != value)
			{
				var oldValue:Number = _volume;
			

			
				_volume = value;
				if(hasEventListener(PropertyChangeEvent.PROPERTY_UPDATED))
				{
					dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'volume', oldValue, value));
				}
				context.renderQueue.add(this);
			}
		}

		/**
		 * The expression virtual machine. [default = null]
		 *
		 * @default	null
		 */
		public function get expVm():ExpressionVm { return _expVm; }
		
		public function set expVm(value:ExpressionVm):void 
		{
			if(_expVm != value)
			{
				var oldValue:ExpressionVm = _expVm;
			

			
				_expVm = value;


			}
		}

		/**
		 * Extra context. [default = null]
		 *
		 * @default	null
		 */
		public function get extraContext():Object { return _extraContext; }
		
		public function set extraContext(value:Object):void 
		{
			if(_extraContext != value)
			{
				var oldValue:Object = _extraContext;
			

			
				_extraContext = value;


			}
		}

		/**
		 * The element expression queue. [default = null]
		 *
		 * @default	null
		 */
		public function get expQueue():ElementExpressionQueue { return _expQueue; }
		
		public function set expQueue(value:ElementExpressionQueue):void 
		{
			if(_expQueue != value)
			{
				var oldValue:ElementExpressionQueue = _expQueue;
			

			
				_expQueue = value;


			}
		}

		/**
		 * The render queue. [default = null]
		 *
		 * @default	null
		 */
		public function get renderQueue():RenderQueue { return _renderQueue; }
		
		public function set renderQueue(value:RenderQueue):void 
		{
			if(_renderQueue != value)
			{
				var oldValue:RenderQueue = _renderQueue;
			

			
				_renderQueue = value;


			}
		}

		/**
		 * The stage. [default = null]
		 *
		 * @default	null
		 */
		public function get stage():Stage { return _stage; }
		
		public function set stage(value:Stage):void 
		{
			if(_stage != value)
			{
				var oldValue:Stage = _stage;
			

			
				_stage = value;


			}
		}



	}
	
}
