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
	import com.esoteric.core.IElement;
	import com.esoteric.esoteric;
	import com.esoteric.events.ElementEvent;
	import com.esoteric.events.PropertyChangeEvent;
	import com.esoteric.utils.Watcher;
	import flash.display.Shader;
	import flash.display.ShaderInput;
	
	use namespace esoteric;
	
	public class ShaderFillElement extends AbstractShaderFillElement implements IGraphicCommandElement
	{
		
		//---------------------------------------------------------------------
		// Constructor
		//---------------------------------------------------------------------
		
		/**
		 * Constructor.
		 */
		public function ShaderFillElement(context:Context, kind:String) 
		{
			super(context, kind);
			
			new Watcher(this, 'shader', shaderHandler);
		}
		
		//---------------------------------------------------------------------
		// Implementations
		//---------------------------------------------------------------------
		
		/**
		 * @inheritDoc
		 */
		public function execute(shapeElement:ShapeElement):void
		{
			if (_shader && _shader._shader)
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
				
				shapeElement.shape.graphics.beginShaderFill(_shader._shader);
				
				var length:int = numChildren;
				
				for (var i:int = 0; i < length; i++) 
				{
					var element:IElement = getChildAt(i);
					
					if (element is IGraphicCommandElement)
					{
						IGraphicCommandElement(element).execute(shapeElement);
					}
				}
				
				shapeElement.shape.graphics.endFill();
			}
		}
		
		//---------------------------------------------------------------------
		// Methods
		//---------------------------------------------------------------------
		
		/**
		 * @private
		 */
		private function shaderHandler(e:PropertyChangeEvent):void
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
			dispatchEvent(new ElementEvent(ElementEvent.UPDATED));
		}


	}
	
}
