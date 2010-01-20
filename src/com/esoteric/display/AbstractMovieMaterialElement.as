/*
	DO NOT MODIFY THIS FILE, THE CODE GENERATOR WILL ERASE ANY CHANGES MADE.
	MAKE CHANGES TO THE DERIVED CLASS INSTEAD.

	Last generated 2010-01-20 20:05:47.747000 UTC.

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
	import org.papervision3d.materials.MovieMaterial;

	import com.esoteric.core.Context;
	import com.esoteric.events.ElementEvent;
	import com.esoteric.events.PropertyChangeEvent;
	
	public class AbstractMovieMaterialElement extends MaterialObject3DElement
	{
		
		//---------------------------------------------------------------------
		// Constructor
		//---------------------------------------------------------------------
		
		/**
		 * Constructor.
		 */
		public function AbstractMovieMaterialElement(context:Context, kind:String) 
		{
			super(context, kind);
			
			movieMaterial.doubleSided = _doubleSided;
			movieMaterial.movieTransparent = _transparent;
			movieMaterial.interactive = _interactive;

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
		private var _movie:DisplayObjectElement = null;

		/**
		 * @private
		 */
		private var _movieMaterial:MovieMaterial = new MovieMaterial(null, true);

		/**
		 * @private
		 */
		private var _doubleSided:Boolean = false;

		/**
		 * @private
		 */
		private var _transparent:Boolean = false;

		/**
		 * @private
		 */
		private var _interactive:Boolean = false;


		//---------------------------------------------------------------------
		// Getters and setters
		//---------------------------------------------------------------------
		
		/**
		 * The DisplayObjectElement object. [default = null]
		 *
		 * @default	null
		 */
		public function get movie():DisplayObjectElement { return _movie; }
		
		public function set movie(value:DisplayObjectElement):void 
		{
			if(_movie != value)
			{
				var oldValue:DisplayObjectElement = _movie;
			

			
				_movie = value;
				if(hasEventListener(PropertyChangeEvent.PROPERTY_UPDATED))
				{
					dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'movie', oldValue, value));
				}
				
			}
		}

		/**
		 * The MovieMaterial object. [default = new MovieMaterial(null, true)]
		 *
		 * @default	new MovieMaterial(null, true)
		 */
		public function get movieMaterial():MovieMaterial { return _movieMaterial; }
		
		public function set movieMaterial(value:MovieMaterial):void 
		{
			if(_movieMaterial != value)
			{
				var oldValue:MovieMaterial = _movieMaterial;
			
				if(value)
				{
					value.doubleSided = _doubleSided;
					value.movieTransparent = _transparent;
					value.interactive = _interactive;

				}
			
				_movieMaterial = value;
				if(hasEventListener(PropertyChangeEvent.PROPERTY_UPDATED))
				{
					dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'movieMaterial', oldValue, value));
				}
				
			}
		}


		/**
		 * Whether the movie material is double-sided. [default = false]
		 *
		 * @default	false
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

							
				if(hasEventListener(PropertyChangeEvent.PROPERTY_UPDATED))
				{
					dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'doubleSided', oldValue, value));
				}
			}
		}

		/**
		 * Whether the movie material is transparent. [default = false]
		 *
		 * @default	false
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

							
				if(hasEventListener(PropertyChangeEvent.PROPERTY_UPDATED))
				{
					dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'transparent', oldValue, value));
				}
			}
		}

		/**
		 * Whether the movie material is interactive. [default = false]
		 *
		 * @default	false
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

							
				if(hasEventListener(PropertyChangeEvent.PROPERTY_UPDATED))
				{
					dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'interactive', oldValue, value));
				}
			}
		}


	}
	
}
