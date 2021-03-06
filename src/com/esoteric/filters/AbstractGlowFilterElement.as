/*
	DO NOT MODIFY THIS FILE, THE CODE GENERATOR WILL ERASE ANY CHANGES MADE.
	MAKE CHANGES TO THE DERIVED CLASS INSTEAD.

	Last generated 2010-02-02 00:19:45.453000 UTC.

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
	import flash.filters.BitmapFilterQuality;
	import flash.filters.GlowFilter;

	import com.esoteric.core.Context;
	import com.esoteric.esoteric;
	import com.esoteric.events.ElementEvent;
	import com.esoteric.events.PropertyChangeEvent;
	
	use namespace esoteric;
	
	public class AbstractGlowFilterElement extends BitmapFilterElement
	{
		
		//---------------------------------------------------------------------
		// Constructor
		//---------------------------------------------------------------------
		
		/**
		 * Constructor.
		 */
		public function AbstractGlowFilterElement(context:Context, kind:String) 
		{
			super(context, kind);
			
			glowFilter.strength = _strength;
			glowFilter.blurX = _blurX;
			glowFilter.blurY = _blurY;
			glowFilter.color = _color;
			glowFilter.knockout = _knockout;
			glowFilter.inner = _inner;
			glowFilter.alpha = _alpha;
			glowFilter.quality = _quality;

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
		esoteric var _glowFilter:GlowFilter = new GlowFilter();

		/**
		 * @private
		 */
		esoteric var _strength:Number = 2.0;

		/**
		 * @private
		 */
		esoteric var _blurX:Number = 4.0;

		/**
		 * @private
		 */
		esoteric var _blurY:Number = 4.0;

		/**
		 * @private
		 */
		esoteric var _color:int = 0xFFFFFF;

		/**
		 * @private
		 */
		esoteric var _knockout:Boolean = false;

		/**
		 * @private
		 */
		esoteric var _inner:Boolean = false;

		/**
		 * @private
		 */
		esoteric var _alpha:Number = 1.0;

		/**
		 * @private
		 */
		esoteric var _quality:int = BitmapFilterQuality.MEDIUM;


		//---------------------------------------------------------------------
		// Getters and setters
		//---------------------------------------------------------------------
		
		/**
		 *  [default = new GlowFilter()]
		 *
		 * @default	new GlowFilter()
		 */
		public function get glowFilter():GlowFilter { return _glowFilter; }
		
		public function set glowFilter(value:GlowFilter):void 
		{
			if(_glowFilter != value)
			{
				var oldValue:GlowFilter = _glowFilter;
			
				if(value)
				{
					value.strength = _strength;
					value.blurX = _blurX;
					value.blurY = _blurY;
					value.color = _color;
					value.knockout = _knockout;
					value.inner = _inner;
					value.alpha = _alpha;
					value.quality = _quality;

				}
			
				_glowFilter = value;
				dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED + 'glowFilter', false, false, oldValue, value));
				//context.renderQueue.add(this);


				dispatchEvent(new ElementEvent(ElementEvent.UPDATED));
			}
		}


		/**
		 *  [default = 2.0]
		 *
		 * @default	2.0
		 */
		public function get strength():Number { return _strength; }
		
		public function set strength(value:Number):void 
		{

			if(strength != value)
			{
				var oldValue:Number = _strength;


				
				_strength = value;

				if(glowFilter)
				{
					glowFilter.strength = value;
				}

				//context.renderQueue.add(this);


				dispatchEvent(new ElementEvent(ElementEvent.UPDATED));			
				dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED + 'strength', false, false, oldValue, value));
			}
		}

		/**
		 *  [default = 4.0]
		 *
		 * @default	4.0
		 */
		public function get blurX():Number { return _blurX; }
		
		public function set blurX(value:Number):void 
		{

			if(blurX != value)
			{
				var oldValue:Number = _blurX;


				
				_blurX = value;

				if(glowFilter)
				{
					glowFilter.blurX = value;
				}

				//context.renderQueue.add(this);


				dispatchEvent(new ElementEvent(ElementEvent.UPDATED));			
				dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED + 'blurX', false, false, oldValue, value));
			}
		}

		/**
		 *  [default = 4.0]
		 *
		 * @default	4.0
		 */
		public function get blurY():Number { return _blurY; }
		
		public function set blurY(value:Number):void 
		{

			if(blurY != value)
			{
				var oldValue:Number = _blurY;


				
				_blurY = value;

				if(glowFilter)
				{
					glowFilter.blurY = value;
				}

				//context.renderQueue.add(this);


				dispatchEvent(new ElementEvent(ElementEvent.UPDATED));			
				dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED + 'blurY', false, false, oldValue, value));
			}
		}

		/**
		 *  [default = 0xFFFFFF]
		 *
		 * @default	0xFFFFFF
		 */
		public function get color():int { return _color; }
		
		public function set color(value:int):void 
		{

			if(color != value)
			{
				var oldValue:int = _color;


				
				_color = value;

				if(glowFilter)
				{
					glowFilter.color = value;
				}

				//context.renderQueue.add(this);


				dispatchEvent(new ElementEvent(ElementEvent.UPDATED));			
				dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED + 'color', false, false, oldValue, value));
			}
		}

		/**
		 *  [default = false]
		 *
		 * @default	false
		 */
		public function get knockout():Boolean { return _knockout; }
		
		public function set knockout(value:Boolean):void 
		{

			if(knockout != value)
			{
				var oldValue:Boolean = _knockout;


				
				_knockout = value;

				if(glowFilter)
				{
					glowFilter.knockout = value;
				}

				//context.renderQueue.add(this);


				dispatchEvent(new ElementEvent(ElementEvent.UPDATED));			
				dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED + 'knockout', false, false, oldValue, value));
			}
		}

		/**
		 *  [default = false]
		 *
		 * @default	false
		 */
		public function get inner():Boolean { return _inner; }
		
		public function set inner(value:Boolean):void 
		{

			if(inner != value)
			{
				var oldValue:Boolean = _inner;


				
				_inner = value;

				if(glowFilter)
				{
					glowFilter.inner = value;
				}

				//context.renderQueue.add(this);


				dispatchEvent(new ElementEvent(ElementEvent.UPDATED));			
				dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED + 'inner', false, false, oldValue, value));
			}
		}

		/**
		 *  [default = 1.0]
		 *
		 * @default	1.0
		 */
		public function get alpha():Number { return _alpha; }
		
		public function set alpha(value:Number):void 
		{

			if(alpha != value)
			{
				var oldValue:Number = _alpha;


				
				_alpha = value;

				if(glowFilter)
				{
					glowFilter.alpha = value;
				}

				//context.renderQueue.add(this);


				dispatchEvent(new ElementEvent(ElementEvent.UPDATED));			
				dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED + 'alpha', false, false, oldValue, value));
			}
		}

		/**
		 *  [default = BitmapFilterQuality.MEDIUM]
		 *
		 * @default	BitmapFilterQuality.MEDIUM
		 */
		public function get quality():int { return _quality; }
		
		public function set quality(value:int):void 
		{

			if(quality != value)
			{
				var oldValue:int = _quality;


				
				_quality = value;

				if(glowFilter)
				{
					glowFilter.quality = value;
				}

				//context.renderQueue.add(this);


				dispatchEvent(new ElementEvent(ElementEvent.UPDATED));			
				dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED + 'quality', false, false, oldValue, value));
			}
		}


	}
	
}
