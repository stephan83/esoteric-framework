/*
	DO NOT MODIFY THIS FILE, THE CODE GENERATOR WILL ERASE ANY CHANGES MADE.
	MAKE CHANGES TO THE DERIVED CLASS INSTEAD.

	Last generated 2010-02-09 02:02:18.101000 UTC.

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

package com.esoteric.filters 
{
	import flash.filters.ShaderFilter;

	import com.esoteric.core.Context;
	import com.esoteric.esoteric;
	import com.esoteric.events.ElementEvent;
	import com.esoteric.events.PropertyChangeEvent;
	
	use namespace esoteric;
	
	public class AbstractShaderFilterElement extends BitmapFilterElement
	{
		
		//---------------------------------------------------------------------
		// Constructor
		//---------------------------------------------------------------------
		
		/**
		 * Constructor.
		 */
		public function AbstractShaderFilterElement(context:Context, kind:String) 
		{
			super(context, kind);
			
			shaderFilter.topExtension = _topExtension;
			shaderFilter.leftExtension = _leftExtension;
			shaderFilter.bottomExtension = _bottomExtension;
			shaderFilter.rightExtension = _rightExtension;

		}
		
		//---------------------------------------------------------------------
		// Overrides
		//---------------------------------------------------------------------
		
		/**
		 * @inheritDoc
		 */
		
		override public function initialize():void
		{
			super.initialize();
			

		}

		//---------------------------------------------------------------------
		// Variables
		//---------------------------------------------------------------------
		
		/**
		 * @private
		 */
		esoteric var _shaderFilter:ShaderFilter = new ShaderFilter();

		/**
		 * @private
		 */
		esoteric var _shader:ShaderElement = null;

		/**
		 * @private
		 */
		esoteric var _topExtension:int = 0;

		/**
		 * @private
		 */
		esoteric var _leftExtension:int = 0;

		/**
		 * @private
		 */
		esoteric var _bottomExtension:int = 0;

		/**
		 * @private
		 */
		esoteric var _rightExtension:int = 0;


		//---------------------------------------------------------------------
		// Getters and setters
		//---------------------------------------------------------------------
		
		/**
		 *  [default = new ShaderFilter()]
		 *
		 * @default	new ShaderFilter()
		 */
		public function get shaderFilter():ShaderFilter { return _shaderFilter; }
		
		public function set shaderFilter(value:ShaderFilter):void 
		{
			if(_shaderFilter != value)
			{
				var oldValue:ShaderFilter = _shaderFilter;
			
				if(value)
				{
					value.topExtension = _topExtension;
					value.leftExtension = _leftExtension;
					value.bottomExtension = _bottomExtension;
					value.rightExtension = _rightExtension;

				}
			
				_shaderFilter = value;
				dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED + 'shaderFilter', false, false, oldValue, value));
				//context.renderQueue.add(this);


				dispatchEvent(new ElementEvent(ElementEvent.UPDATED));
			}
		}

		/**
		 *  [default = null]
		 *
		 * @default	null
		 */
		public function get shader():ShaderElement { return _shader; }
		
		public function set shader(value:ShaderElement):void 
		{
			if(_shader != value)
			{
				var oldValue:ShaderElement = _shader;
			

			
				_shader = value;
				dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED + 'shader', false, false, oldValue, value));
				//context.renderQueue.add(this);


				dispatchEvent(new ElementEvent(ElementEvent.UPDATED));
			}
		}


		/**
		 *  [default = 0]
		 *
		 * @default	0
		 */
		public function get topExtension():int { return _topExtension; }
		
		public function set topExtension(value:int):void 
		{

			if(topExtension != value)
			{
				var oldValue:int = _topExtension;


				
				_topExtension = value;

				if(shaderFilter)
				{
					shaderFilter.topExtension = value;
				}

				//context.renderQueue.add(this);


				dispatchEvent(new ElementEvent(ElementEvent.UPDATED));			
				dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED + 'topExtension', false, false, oldValue, value));
			}
		}

		/**
		 *  [default = 0]
		 *
		 * @default	0
		 */
		public function get leftExtension():int { return _leftExtension; }
		
		public function set leftExtension(value:int):void 
		{

			if(leftExtension != value)
			{
				var oldValue:int = _leftExtension;


				
				_leftExtension = value;

				if(shaderFilter)
				{
					shaderFilter.leftExtension = value;
				}

				//context.renderQueue.add(this);


				dispatchEvent(new ElementEvent(ElementEvent.UPDATED));			
				dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED + 'leftExtension', false, false, oldValue, value));
			}
		}

		/**
		 *  [default = 0]
		 *
		 * @default	0
		 */
		public function get bottomExtension():int { return _bottomExtension; }
		
		public function set bottomExtension(value:int):void 
		{

			if(bottomExtension != value)
			{
				var oldValue:int = _bottomExtension;


				
				_bottomExtension = value;

				if(shaderFilter)
				{
					shaderFilter.bottomExtension = value;
				}

				//context.renderQueue.add(this);


				dispatchEvent(new ElementEvent(ElementEvent.UPDATED));			
				dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED + 'bottomExtension', false, false, oldValue, value));
			}
		}

		/**
		 *  [default = 0]
		 *
		 * @default	0
		 */
		public function get rightExtension():int { return _rightExtension; }
		
		public function set rightExtension(value:int):void 
		{

			if(rightExtension != value)
			{
				var oldValue:int = _rightExtension;


				
				_rightExtension = value;

				if(shaderFilter)
				{
					shaderFilter.rightExtension = value;
				}

				//context.renderQueue.add(this);


				dispatchEvent(new ElementEvent(ElementEvent.UPDATED));			
				dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED + 'rightExtension', false, false, oldValue, value));
			}
		}


	}
	
}
