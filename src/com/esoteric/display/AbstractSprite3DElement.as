/*
	DO NOT MODIFY THIS FILE, THE CODE GENERATOR WILL ERASE ANY CHANGES MADE.
	MAKE CHANGES TO THE DERIVED CLASS INSTEAD.

	Last generated 2010-01-20 20:12:19.473000 UTC.

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
	import flash.display.Sprite;
	import org.papervision3d.materials.MovieMaterial;
	import org.papervision3d.objects.primitives.Plane;

	import com.esoteric.core.Context;
	import com.esoteric.events.ElementEvent;
	import com.esoteric.events.PropertyChangeEvent;
	
	public class AbstractSprite3DElement extends DisplayObject3DElement
	{
		
		//---------------------------------------------------------------------
		// Constructor
		//---------------------------------------------------------------------
		
		/**
		 * Constructor.
		 */
		public function AbstractSprite3DElement(context:Context, kind:String) 
		{
			super(context, kind);
			
			sprite.alpha = _alpha;

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
		private var _movieMaterial:MovieMaterial = null;

		/**
		 * @private
		 */
		private var _plane:Plane = null;

		/**
		 * @private
		 */
		private var _sprite:Sprite = new Sprite();

		/**
		 * @private
		 */
		private var _alpha:Number = 1.0;

		/**
		 * @private
		 */
		private var _smooth:Boolean = true;

		/**
		 * @private
		 */
		private var _doubleSided:Boolean = true;

		/**
		 * @private
		 */
		private var _transparent:Boolean = true;

		/**
		 * @private
		 */
		private var _interactive:Boolean = true;


		//---------------------------------------------------------------------
		// Getters and setters
		//---------------------------------------------------------------------
		
		/**
		 * The movie material. [default = null]
		 *
		 * @default	null
		 */
		public function get movieMaterial():MovieMaterial { return _movieMaterial; }
		
		public function set movieMaterial(value:MovieMaterial):void 
		{
			if(_movieMaterial != value)
			{
				var oldValue:MovieMaterial = _movieMaterial;
			
				if(value)
				{
					value.smooth = _smooth;
					value.doubleSided = _doubleSided;
					value.movieTransparent = _transparent;
					value.interactive = _interactive;

				}
			
				_movieMaterial = value;
				if(hasEventListener(PropertyChangeEvent.PROPERTY_UPDATED))
				{
					dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'movieMaterial', oldValue, value));
				}
				context.renderQueue.add(this);
			}
		}

		/**
		 * The plane object. [default = null]
		 *
		 * @default	null
		 */
		public function get plane():Plane { return _plane; }
		
		public function set plane(value:Plane):void 
		{
			if(_plane != value)
			{
				var oldValue:Plane = _plane;
			

			
				_plane = value;
				if(hasEventListener(PropertyChangeEvent.PROPERTY_UPDATED))
				{
					dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'plane', oldValue, value));
				}
				context.renderQueue.add(this);
			}
		}

		/**
		 * The Sprite object used for the material. [default = new Sprite()]
		 *
		 * @default	new Sprite()
		 */
		public function get sprite():Sprite { return _sprite; }
		
		public function set sprite(value:Sprite):void 
		{
			if(_sprite != value)
			{
				var oldValue:Sprite = _sprite;
			
				if(value)
				{
					value.alpha = _alpha;

				}
			
				_sprite = value;
				if(hasEventListener(PropertyChangeEvent.PROPERTY_UPDATED))
				{
					dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'sprite', oldValue, value));
				}
				context.renderQueue.add(this);
			}
		}


		/**
		 * Alpha value. [default = 1.0]
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

				if(sprite)
				{
					sprite.alpha = value;
				}

				context.renderQueue.add(this);			
				if(hasEventListener(PropertyChangeEvent.PROPERTY_UPDATED))
				{
					dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'alpha', oldValue, value));
				}
			}
		}

		/**
		 * Whether to enable smoothing. [default = true]
		 *
		 * @default	true
		 */
		public function get smooth():Boolean { return _smooth; }
		
		public function set smooth(value:Boolean):void 
		{

			if(smooth != value)
			{
				var oldValue:Boolean = _smooth;


				
				_smooth = value;

				if(movieMaterial)
				{
					movieMaterial.smooth = value;
				}

				context.renderQueue.add(this);			
				if(hasEventListener(PropertyChangeEvent.PROPERTY_UPDATED))
				{
					dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'smooth', oldValue, value));
				}
			}
		}

		/**
		 * Whether the object is double-sided. [default = true]
		 *
		 * @default	true
		 */
		public function get doubleSided():Boolean { return _doubleSided; }
		
		public function set doubleSided(value:Boolean):void 
		{

			if(doubleSided != value)
			{
				var oldValue:Boolean = _doubleSided;


				
				_doubleSided = value;

				if(movieMaterial)
				{
					movieMaterial.doubleSided = value;
				}

				context.renderQueue.add(this);			
				if(hasEventListener(PropertyChangeEvent.PROPERTY_UPDATED))
				{
					dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'doubleSided', oldValue, value));
				}
			}
		}

		/**
		 * Whether the object is transparent. [default = true]
		 *
		 * @default	true
		 */
		public function get transparent():Boolean { return _transparent; }
		
		public function set transparent(value:Boolean):void 
		{

			if(transparent != value)
			{
				var oldValue:Boolean = _transparent;


				
				_transparent = value;

				if(movieMaterial)
				{
					movieMaterial.movieTransparent = value;
				}

				context.renderQueue.add(this);			
				if(hasEventListener(PropertyChangeEvent.PROPERTY_UPDATED))
				{
					dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'transparent', oldValue, value));
				}
			}
		}

		/**
		 * Whether the object is interactive. [default = true]
		 *
		 * @default	true
		 */
		public function get interactive():Boolean { return _interactive; }
		
		public function set interactive(value:Boolean):void 
		{

			if(interactive != value)
			{
				var oldValue:Boolean = _interactive;


				
				_interactive = value;

				if(movieMaterial)
				{
					movieMaterial.interactive = value;
				}

				context.renderQueue.add(this);			
				if(hasEventListener(PropertyChangeEvent.PROPERTY_UPDATED))
				{
					dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'interactive', oldValue, value));
				}
			}
		}


	}
	
}
