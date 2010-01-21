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

package com.esoteric.display
{
	import com.esoteric.core.IElement;
	import com.esoteric.core.Context;
	import com.esoteric.events.ElementEvent;
	import org.papervision3d.core.proto.MaterialObject3D;
	import org.papervision3d.materials.MovieMaterial;
	
	/**
	* Generated 2008-08-06 06:42:11.077000 UTC.
	*/
	public class MovieMaterialElement extends AbstractMovieMaterialElement
	{
		
		//---------------------------------------------------------------------
		// Constructor
		//---------------------------------------------------------------------
		
		/**
		 * Constructor.
		 */
		public function MovieMaterialElement(context:Context, type:String) 
		{
			super(context, kind);
			
			//root.addEventListener(ElementEvent.POST_RENDER, postRenderHandler);
		}
		
		//---------------------------------------------------------------------
		// Overridden properties
		//---------------------------------------------------------------------
		
		/**
		 * @inheritDoc
		 */
		override public function set movie(value:DisplayObjectElement):void
		{
			if (movie)
			{
				movie.removeEventListener(ElementEvent.UPDATED, movieUpdatedHandler);
			}
			
			if (value)
			{
				value.addEventListener(ElementEvent.UPDATED, movieUpdatedHandler);
				
				movieMaterial = new MovieMaterial(value.displayObject);
				materialObject3D = movieMaterial;
				
				movieMaterial.smooth = smooth;
				movieMaterial.movieTransparent = transparent;
				movieMaterial.doubleSided = doubleSided;
			}
			
			super.movie = value;
		}
		
		/**
		 * @inheritDoc
		 */
		override protected function createMaterialObject3D():MaterialObject3D
		{
			return movieMaterial;
		}
		
		//---------------------------------------------------------------------
		// Methods
		//---------------------------------------------------------------------
		
		/**
		 * @private
		 */
		private function movieUpdatedHandler(e:ElementEvent):void 
		{
			movieMaterial.animated = true;
			
			context.renderQueue.add(this);
		}
		
		/**
		 * @private
		 */
		private function postRenderHandler(e:ElementEvent):void 
		{
			movieMaterial.animated = false;
		}

	}
	
}
