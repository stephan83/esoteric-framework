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
	import com.carlcalderon.arthropod.Debug;
	import com.esoteric.core.Context;
	import com.esoteric.esoteric;
	import com.esoteric.events.ElementEvent;
	import com.esoteric.events.PropertyChangeEvent;
	import com.esoteric.utils.Watcher;
	import flash.display.BitmapData;
	import flash.display.Shader;
	import flash.display.ShaderInput;
	import flash.display.ShaderJob;
	import flash.events.ShaderEvent;
	
	use namespace esoteric;
	
	public class BitmapShaderElement extends AbstractBitmapShaderElement
	{
		
		//---------------------------------------------------------------------
		// Constructor
		//---------------------------------------------------------------------
		
		/**
		 * Constructor.
		 */
		public function BitmapShaderElement(context:Context, kind:String) 
		{
			super(context, kind);
			
			new Watcher(this, 'shader', shaderWatcher);
		}
		
		//---------------------------------------------------------------------
		// Members
		//---------------------------------------------------------------------
		
		/**
		 * @private
		 */
		private var _inProgress:Boolean;
		/**
		 * @private
		 */
		private var _dirty:Boolean;
		
		//---------------------------------------------------------------------
		// Overrides
		//---------------------------------------------------------------------
		
		/**
		 * @inheritDoc
		 */
		override public function render():void 
		{
			super.render();
			
			if (_bitmap.bitmapData && _shader && _shader._shader)
			{
				var shader:Shader = _shader._shader;
				var input:ShaderInput;
				
				// Make sure inputs are set.
				for each (var param:* in shader.data) 
				{
					if (param is ShaderInput)
					{
						input = param as ShaderInput;
						
						if (!input.input)
						{
							return;
						}
					}
				}
			
				if (_inProgress)
				{
					_dirty = true;
				}
				else
				{
					_inProgress = true;
					
					var shaderJob:ShaderJob = new ShaderJob(_shader._shader, _bitmap.bitmapData);
					shaderJob.addEventListener(ShaderEvent.COMPLETE, shaderJobCompleteHandler);
					shaderJob.start();
				}
			}
		}
		
		//---------------------------------------------------------------------
		// Methods
		//---------------------------------------------------------------------
		
		esoteric var _bitmapWidth:int;
		esoteric var _bitmapHeight:int;
		public function get bitmapWidth():int { return _bitmapWidth; }
		public function get bitmapHeight():int { return _bitmapHeight; }
		
		/**
		 * @inheritDoc
		 */
		public function set bitmapWidth(value:int):void
		{
			if (value && bitmapHeight)
			{
				if (_bitmap.bitmapData)
				{
					_bitmap.bitmapData.dispose();
				}
				
				_bitmap.bitmapData = new BitmapData(value, bitmapHeight);
			}
			else if (_bitmap.bitmapData)
			{
				_bitmap.bitmapData.dispose();
				_bitmap.bitmapData = null;
			}
			
			// TODO: binding
			_bitmapWidth = value;
		}
		
		/**
		 * @inheritDoc
		 */
		public function set bitmapHeight(value:int):void
		{
			if (value && bitmapWidth)
			{
				if (_bitmap.bitmapData)
				{
					_bitmap.bitmapData.dispose();
				}
				
				_bitmap.bitmapData = new BitmapData(bitmapWidth, value);
			}
			else if (_bitmap.bitmapData)
			{
				_bitmap.bitmapData.dispose();
				_bitmap.bitmapData = null;
			}
			
			// TODO: binding
			_bitmapHeight = value;
		}
		
		/**
		 * @private
		 */
		private function shaderWatcher(e:PropertyChangeEvent):void
		{
			if (e.oldValue)
			{
				e.oldValue.removeEventListener(ElementEvent.UPDATED, shaderUpdatedHandler);
			}
			
			if (e.newValue)
			{
				e.newValue.addEventListener(ElementEvent.UPDATED, shaderUpdatedHandler);
			}
		}
		
		/**
		 * @private
		 */
		private function shaderUpdatedHandler(e:ElementEvent):void 
		{
			if (_shader._shader)
			{
				context.renderQueue.add(this);
			}
		}
		
		/**
		 * @private
		 */
		private function shaderJobCompleteHandler(e:ShaderEvent):void 
		{
			_inProgress = false;
			
			if (_dirty)
			{
				context.renderQueue.add(this);
				
				_dirty = false;
			}
			
			e.target.removeEventListener(ShaderEvent.COMPLETE, shaderJobCompleteHandler);
		}


	}
	
}
