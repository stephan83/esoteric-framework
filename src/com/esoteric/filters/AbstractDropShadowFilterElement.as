/*
	DO NOT MODIFY THIS FILE, THE CODE GENERATOR WILL ERASE ANY CHANGES MADE.
	MAKE CHANGES TO THE DERIVED CLASS INSTEAD.

	Last generated 2010-02-02 00:19:45.445000 UTC.

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
	import flash.filters.DropShadowFilter;

	import com.esoteric.core.Context;
	import com.esoteric.esoteric;
	import com.esoteric.events.ElementEvent;
	import com.esoteric.events.PropertyChangeEvent;
	
	use namespace esoteric;
	
	public class AbstractDropShadowFilterElement extends BitmapFilterElement
	{
		
		//---------------------------------------------------------------------
		// Constructor
		//---------------------------------------------------------------------
		
		/**
		 * Constructor.
		 */
		public function AbstractDropShadowFilterElement(context:Context, kind:String) 
		{
			super(context, kind);
			
			dropShadowFilter.distance = _distance;
			dropShadowFilter.strength = _strength;
			dropShadowFilter.blurX = _blurX;
			dropShadowFilter.blurY = _blurY;
			dropShadowFilter.hideObject = _hideObject;
			dropShadowFilter.color = _color;
			dropShadowFilter.knockout = _knockout;
			dropShadowFilter.inner = _inner;
			dropShadowFilter.alpha = _alpha;
			dropShadowFilter.angle = _angle;
			dropShadowFilter.quality = _quality;

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
		esoteric var _dropShadowFilter:DropShadowFilter = new DropShadowFilter();

		/**
		 * @private
		 */
		esoteric var _distance:Number = 4.0;

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
		esoteric var _hideObject:Boolean = false;

		/**
		 * @private
		 */
		esoteric var _color:int = 0x000000;

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
		esoteric var _angle:Number = 45;

		/**
		 * @private
		 */
		esoteric var _quality:int = BitmapFilterQuality.MEDIUM;


		//---------------------------------------------------------------------
		// Getters and setters
		//---------------------------------------------------------------------
		
		/**
		 *  [default = new DropShadowFilter()]
		 *
		 * @default	new DropShadowFilter()
		 */
		public function get dropShadowFilter():DropShadowFilter { return _dropShadowFilter; }
		
		public function set dropShadowFilter(value:DropShadowFilter):void 
		{
			if(_dropShadowFilter != value)
			{
				var oldValue:DropShadowFilter = _dropShadowFilter;
			
				if(value)
				{
					value.distance = _distance;
					value.strength = _strength;
					value.blurX = _blurX;
					value.blurY = _blurY;
					value.hideObject = _hideObject;
					value.color = _color;
					value.knockout = _knockout;
					value.inner = _inner;
					value.alpha = _alpha;
					value.angle = _angle;
					value.quality = _quality;

				}
			
				_dropShadowFilter = value;
				dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED + 'dropShadowFilter', false, false, oldValue, value));
				//context.renderQueue.add(this);


				dispatchEvent(new ElementEvent(ElementEvent.UPDATED));
			}
		}


		/**
		 *  [default = 4.0]
		 *
		 * @default	4.0
		 */
		public function get distance():Number { return _distance; }
		
		public function set distance(value:Number):void 
		{

			if(distance != value)
			{
				var oldValue:Number = _distance;


				
				_distance = value;

				if(dropShadowFilter)
				{
					dropShadowFilter.distance = value;
				}

				//context.renderQueue.add(this);


				dispatchEvent(new ElementEvent(ElementEvent.UPDATED));			
				dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED + 'distance', false, false, oldValue, value));
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

				if(dropShadowFilter)
				{
					dropShadowFilter.strength = value;
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

				if(dropShadowFilter)
				{
					dropShadowFilter.blurX = value;
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

				if(dropShadowFilter)
				{
					dropShadowFilter.blurY = value;
				}

				//context.renderQueue.add(this);


				dispatchEvent(new ElementEvent(ElementEvent.UPDATED));			
				dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED + 'blurY', false, false, oldValue, value));
			}
		}

		/**
		 *  [default = false]
		 *
		 * @default	false
		 */
		public function get hideObject():Boolean { return _hideObject; }
		
		public function set hideObject(value:Boolean):void 
		{

			if(hideObject != value)
			{
				var oldValue:Boolean = _hideObject;


				
				_hideObject = value;

				if(dropShadowFilter)
				{
					dropShadowFilter.hideObject = value;
				}

				//context.renderQueue.add(this);


				dispatchEvent(new ElementEvent(ElementEvent.UPDATED));			
				dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED + 'hideObject', false, false, oldValue, value));
			}
		}

		/**
		 *  [default = 0x000000]
		 *
		 * @default	0x000000
		 */
		public function get color():int { return _color; }
		
		public function set color(value:int):void 
		{

			if(color != value)
			{
				var oldValue:int = _color;


				
				_color = value;

				if(dropShadowFilter)
				{
					dropShadowFilter.color = value;
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

				if(dropShadowFilter)
				{
					dropShadowFilter.knockout = value;
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

				if(dropShadowFilter)
				{
					dropShadowFilter.inner = value;
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

				if(dropShadowFilter)
				{
					dropShadowFilter.alpha = value;
				}

				//context.renderQueue.add(this);


				dispatchEvent(new ElementEvent(ElementEvent.UPDATED));			
				dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED + 'alpha', false, false, oldValue, value));
			}
		}

		/**
		 *  [default = 45]
		 *
		 * @default	45
		 */
		public function get angle():Number { return _angle; }
		
		public function set angle(value:Number):void 
		{

			if(angle != value)
			{
				var oldValue:Number = _angle;


				
				_angle = value;

				if(dropShadowFilter)
				{
					dropShadowFilter.angle = value;
				}

				//context.renderQueue.add(this);


				dispatchEvent(new ElementEvent(ElementEvent.UPDATED));			
				dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED + 'angle', false, false, oldValue, value));
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

				if(dropShadowFilter)
				{
					dropShadowFilter.quality = value;
				}

				//context.renderQueue.add(this);


				dispatchEvent(new ElementEvent(ElementEvent.UPDATED));			
				dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED + 'quality', false, false, oldValue, value));
			}
		}


	}
	
}
