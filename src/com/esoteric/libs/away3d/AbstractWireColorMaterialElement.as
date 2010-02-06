/*
	DO NOT MODIFY THIS FILE, THE CODE GENERATOR WILL ERASE ANY CHANGES MADE.
	MAKE CHANGES TO THE DERIVED CLASS INSTEAD.

	Last generated 2010-02-06 17:34:17.639000 UTC.

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

package com.esoteric.libs.away3d 
{
	import away3dlite.materials.WireColorMaterial;
	import com.esoteric.core.TweenableElement;

	import com.esoteric.core.Context;
	import com.esoteric.esoteric;
	import com.esoteric.events.ElementEvent;
	import com.esoteric.events.PropertyChangeEvent;
	
	use namespace esoteric;
	
	public class AbstractWireColorMaterialElement extends TweenableElement
	{
		
		//---------------------------------------------------------------------
		// Constructor
		//---------------------------------------------------------------------
		
		/**
		 * Constructor.
		 */
		public function AbstractWireColorMaterialElement(context:Context, kind:String) 
		{
			super(context, kind);
			
			material.color = _color;
			material.alpha = _alpha;
			material.wireAlpha = _wireAlpha;
			material.thickness = _thickness;
			material.wireColor = _wireColor;

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
		esoteric var _material:WireColorMaterial = new WireColorMaterial();

		/**
		 * @private
		 */
		esoteric var _color:int = 0xffffff;

		/**
		 * @private
		 */
		esoteric var _alpha:Number = 1;

		/**
		 * @private
		 */
		esoteric var _wireAlpha:Number = 1;

		/**
		 * @private
		 */
		esoteric var _thickness:Number = 1;

		/**
		 * @private
		 */
		esoteric var _wireColor:int = 0xff0000;


		//---------------------------------------------------------------------
		// Getters and setters
		//---------------------------------------------------------------------
		
		/**
		 * The material. [default = new WireColorMaterial()]
		 *
		 * @default	new WireColorMaterial()
		 */
		esoteric function get material():WireColorMaterial { return _material; }
		
		esoteric function set material(value:WireColorMaterial):void 
		{
			if(_material != value)
			{
				var oldValue:WireColorMaterial = _material;
			
				if(value)
				{
					value.color = _color;
					value.alpha = _alpha;
					value.wireAlpha = _wireAlpha;
					value.thickness = _thickness;
					value.wireColor = _wireColor;

				}
			
				_material = value;


			}
		}


		/**
		 * The color. [default = 0xffffff]
		 *
		 * @default	0xffffff
		 */
		public function get color():int { return _color; }
		
		public function set color(value:int):void 
		{

			if(color != value)
			{
				var oldValue:int = _color;


				
				_color = value;

				if(material)
				{
					material.color = value;
				}

				//context.renderQueue.add(this);


				dispatchEvent(new ElementEvent(ElementEvent.UPDATED));			
				dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED + 'color', false, false, oldValue, value));
			}
		}

		/**
		 * Alpha value. [default = 1]
		 *
		 * @default	1
		 */
		public function get alpha():Number { return _alpha; }
		
		public function set alpha(value:Number):void 
		{

			if(alpha != value)
			{
				var oldValue:Number = _alpha;


				
				_alpha = value;

				if(material)
				{
					material.alpha = value;
				}

				//context.renderQueue.add(this);


				dispatchEvent(new ElementEvent(ElementEvent.UPDATED));			
				dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED + 'alpha', false, false, oldValue, value));
			}
		}

		/**
		 * Alpha value. [default = 1]
		 *
		 * @default	1
		 */
		public function get wireAlpha():Number { return _wireAlpha; }
		
		public function set wireAlpha(value:Number):void 
		{

			if(wireAlpha != value)
			{
				var oldValue:Number = _wireAlpha;


				
				_wireAlpha = value;

				if(material)
				{
					material.wireAlpha = value;
				}

				//context.renderQueue.add(this);


				dispatchEvent(new ElementEvent(ElementEvent.UPDATED));			
				dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED + 'wireAlpha', false, false, oldValue, value));
			}
		}

		/**
		 * Wire thickness. [default = 1]
		 *
		 * @default	1
		 */
		public function get thickness():Number { return _thickness; }
		
		public function set thickness(value:Number):void 
		{

			if(thickness != value)
			{
				var oldValue:Number = _thickness;


				
				_thickness = value;

				if(material)
				{
					material.thickness = value;
				}

				//context.renderQueue.add(this);


				dispatchEvent(new ElementEvent(ElementEvent.UPDATED));			
				dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED + 'thickness', false, false, oldValue, value));
			}
		}

		/**
		 * The color. [default = 0xff0000]
		 *
		 * @default	0xff0000
		 */
		public function get wireColor():int { return _wireColor; }
		
		public function set wireColor(value:int):void 
		{

			if(wireColor != value)
			{
				var oldValue:int = _wireColor;


				
				_wireColor = value;

				if(material)
				{
					material.wireColor = value;
				}

				//context.renderQueue.add(this);


				dispatchEvent(new ElementEvent(ElementEvent.UPDATED));			
				dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED + 'wireColor', false, false, oldValue, value));
			}
		}


	}
	
}
