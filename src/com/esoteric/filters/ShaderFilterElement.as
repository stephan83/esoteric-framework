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

package com.esoteric.filters
{
	import com.carlcalderon.arthropod.Debug;
	import com.esoteric.core.Context;
	import com.esoteric.esoteric;
	import com.esoteric.events.ElementEvent;
	import com.esoteric.events.PropertyChangeEvent;
	import com.esoteric.utils.Watcher;
	import flash.display.Shader;
	import flash.filters.BitmapFilter;
	import flash.utils.ByteArray;
	
	use namespace esoteric;
	
	public class ShaderFilterElement extends AbstractShaderFilterElement
	{
		
		[Embed(source = '../../../../assets/esoteric/default-shader.pbj', mimeType = 'application/octet-stream')]
		private var _defaultShader:Class;
		
		//---------------------------------------------------------------------
		// Constructor
		//---------------------------------------------------------------------
		
		/**
		 * Constructor.
		 */
		public function ShaderFilterElement(context:Context, kind:String) 
		{
			super(context, kind);
			
			_shaderFilter.shader = new Shader(new _defaultShader() as ByteArray);
			
			new Watcher(this, 'shader', shaderHandler);
		}
		
		//---------------------------------------------------------------------
		// Members
		//---------------------------------------------------------------------
		
		/**
		 * @private
		 */
		private var _shaderWatcher:Watcher;
		
		//---------------------------------------------------------------------
		// Overridden properties
		//---------------------------------------------------------------------
		
		/**
		 * @inheritDoc
		 */
		override protected function createBitmapFilter():BitmapFilter
		{
			return _shaderFilter;
		}
		
		//---------------------------------------------------------------------
		// Methods
		//---------------------------------------------------------------------
		
		/**
		 * @private
		 */
		private function shaderHandler(e:PropertyChangeEvent):void
		{
			if (_shaderWatcher)
			{
				_shaderWatcher.destroy();
			}
			
			if (e.oldValue)
			{
				e.oldValue.removeEventListener(ElementEvent.UPDATED, shaderUpdatedHandler);
			}
			
			if (e.newValue is ShaderElement)
			{
				_shaderWatcher = new Watcher(e.newValue, 'shader', shaderWatcher);
				e.newValue.addEventListener(ElementEvent.UPDATED, shaderUpdatedHandler);
			}
		}
		
		/**
		 * @private
		 */
		private function shaderUpdatedHandler(e:ElementEvent):void 
		{
			dispatchEvent(new ElementEvent(ElementEvent.UPDATED));
		}
		
		/**
		 * @private
		 */
		private function shaderWatcher(e:PropertyChangeEvent):void
		{
			if (e.newValue)
			{
				_shaderFilter.shader = e.newValue;
				
				dispatchEvent(new ElementEvent(ElementEvent.UPDATED));
			}
		}

	}
	
}
