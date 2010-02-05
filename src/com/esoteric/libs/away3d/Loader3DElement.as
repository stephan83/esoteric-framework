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

package com.esoteric.libs.away3d
{
	import away3dlite.core.base.Object3D;
	import away3dlite.events.Loader3DEvent;
	import away3dlite.loaders.AbstractParser;
	import com.esoteric.core.Context;
	import com.esoteric.core.IElement;
	import com.esoteric.esoteric;
	import com.esoteric.events.ElementEvent;
	import com.esoteric.events.ProgressEvent;
	import flash.display.Sprite;
	
	use namespace esoteric;
	
	public class Loader3DElement extends AbstractLoader3DElement
	{
		
		//---------------------------------------------------------------------
		// Constructor
		//---------------------------------------------------------------------
		
		/**
		 * Constructor.
		 */
		public function Loader3DElement(context:Context, kind:String) 
		{
			super(context, kind);
			
			_parser = createParser();
		}
		
		//---------------------------------------------------------------------
		// Overrides
		//---------------------------------------------------------------------
		
		/**
		 * @inheritDoc
		 */
		override public function set url(value:String):void 
		{
			if (url != value)
			{
				if (value)
				{
					_loader.loadGeometry(value, _parser);
					
					_loader.addEventListener(Loader3DEvent.LOAD_SUCCESS, loadSuccessHandler);
				}
				
				super.url = value;
			}
		}
		
		//---------------------------------------------------------------------
		// Members
		//---------------------------------------------------------------------
		
		/**
		 * Template function to create the parser.
		 * 
		 * @return	the parser
		 */
		protected function createParser():AbstractParser
		{
			return new AbstractParser();
		}

		/**
		 * @private
		 */
		private function loadSuccessHandler(e:Loader3DEvent):void 
		{
			loadChildren(_loader.handle);
			
			dispatchEvent(new ProgressEvent(ProgressEvent.COMPLETE));
			
			dispatchEvent(new ElementEvent(ElementEvent.UPDATED));
		}

	}
	
}
