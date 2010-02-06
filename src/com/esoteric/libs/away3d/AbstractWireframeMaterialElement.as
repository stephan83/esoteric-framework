/*
	DO NOT MODIFY THIS FILE, THE CODE GENERATOR WILL ERASE ANY CHANGES MADE.
	MAKE CHANGES TO THE DERIVED CLASS INSTEAD.

	Last generated 2010-02-06 16:26:10.625000 UTC.

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
	import away3dlite.materials.WireframeMaterial;
	import com.esoteric.core.TweenableElement;

	import com.esoteric.core.Context;
	import com.esoteric.esoteric;
	import com.esoteric.events.ElementEvent;
	import com.esoteric.events.PropertyChangeEvent;
	
	use namespace esoteric;
	
	public class AbstractWireframeMaterialElement extends TweenableElement
	{
		
		//---------------------------------------------------------------------
		// Constructor
		//---------------------------------------------------------------------
		
		/**
		 * Constructor.
		 */
		public function AbstractWireframeMaterialElement(context:Context, kind:String) 
		{
			super(context, kind);
			
			material.color = _color;
			material.alpha = _alpha;

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
		esoteric var _material:WireframeMaterial = new WireframeMaterial();

		/**
		 * @private
		 */
		esoteric var _color:int = 0xffffff;

		/**
		 * @private
		 */
		esoteric var _alpha:Number = 1;


		//---------------------------------------------------------------------
		// Getters and setters
		//---------------------------------------------------------------------
		
		/**
		 * The material. [default = new WireframeMaterial()]
		 *
		 * @default	new WireframeMaterial()
		 */
		esoteric function get material():WireframeMaterial { return _material; }
		
		esoteric function set material(value:WireframeMaterial):void 
		{
			if(_material != value)
			{
				var oldValue:WireframeMaterial = _material;
			
				if(value)
				{
					value.color = _color;
					value.alpha = _alpha;

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


	}
	
}
