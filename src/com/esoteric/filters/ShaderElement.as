/*
	~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	~                           Esoteric Framework                            ~
	~                       framework.esotericorp.com                         ~
	~                                                                         ~
	~                  Crafted with care by Stephan Florquin                  ~
	~                       stephan.florquin@gmail.com                        ~
	~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	
	-----                                                                 -----

	Copyright (c) 2010 Stephan Florquin

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
	import com.esoteric.core.IElement;
	import com.esoteric.core.ITweenableElement;
	import com.esoteric.core.TweenableElement;
	import com.esoteric.display.BitmapDataElement;
	import com.esoteric.esoteric;
	import com.esoteric.events.ElementEvent;
	import com.esoteric.events.PropertyChangeEvent;
	import com.esoteric.expressions.Closure;
	import com.esoteric.net.CacheFormat;
	import com.esoteric.net.CacheLoader;
	import com.esoteric.utils.BindableObject;
	import com.esoteric.utils.ICloneable;
	import com.esoteric.utils.Watcher;
	import flash.display.Shader;
	import flash.display.ShaderInput;
	import flash.display.ShaderParameter;
	import flash.display.ShaderPrecision;
	import flash.events.Event;
	import flash.events.IOErrorEvent;
	import flash.net.URLRequest;
	
	use namespace esoteric;
	
	/**
	 * A shader element.
	 * 
	 * @author Stephan Florquin
	 */
	public class ShaderElement extends BindableObject implements ITweenableElement
	{
		
		//---------------------------------------------------------------------
		// Constructor
		//---------------------------------------------------------------------
		
		public function ShaderElement(context:Context, kind:String) 
		{
			super();
			
			_tweenableElement = new TweenableElement(context, kind, this);
		}
		
		//---------------------------------------------------------------------
		// Members
		//---------------------------------------------------------------------
		
		/**
		 * @private
		 */
		private var _tweenableElement:TweenableElement;
		
		/**
		 * @private
		 */
		private var _url:String;
		
		/**
		 * @private
		 */
		private var _precisionHint:String = ShaderPrecision.FULL;
		
		/**
		 * @private
		 */
		esoteric var _shader:Shader;
		
		/**
		 * @private
		 */
		private var _shaderInputWatchers:Object = new Object();
	
		//---------------------------------------------------------------------
		// Implementations
		//---------------------------------------------------------------------
		
		/**
		 * @inheritDoc
		 */
		public function startTween(prop:*, endValue:Number , duration:Number, easingFunc:Function = null, yoyo:Boolean = false, loop:int = 0):void
		{
			_tweenableElement.startTween(prop, endValue, duration, easingFunc, yoyo, loop);
		}
		
		/**
		 * @inheritDoc
		 */
		public function stopTween(prop:*):void
		{
			_tweenableElement.stopTween(prop);
		}
		
		/**
		 * @inheritDoc
		 */
		public function isTweenRunning(prop:*):Boolean
		{
			return _tweenableElement.isTweenRunning(prop);
		}
		
		/**
		 * @inheritDoc
		 */
		public function initialize():void
		{
			_tweenableElement.initialize();
		}
		
		/**
		 * @inheritDoc
		 */
		public function destroy():void
		{
			_tweenableElement.destroy();
			_tweenableElement = null;
		}
		
		/**
		 * @inheritDoc
		 */
		public function get numChildren():int { return _tweenableElement.numChildren; }
		
		/**
		 * @inheritDoc
		 */
		public function get context():Context { return _tweenableElement ? _tweenableElement.context : null; }
		
		public function set context(value:Context):void
		{
			_tweenableElement.context = value;
		}
		
		/**
		 * @inheritDoc
		 */
		public function get parent():IElement { return _tweenableElement ? _tweenableElement.parent : null; }
		
		public function set parent(value:IElement):void
		{
			_tweenableElement.parent = value;
		}
		
		/**
		 * @inheritDoc
		 */
		public function get id():String { return _tweenableElement.id; }
		
		public function set id(value:String):void
		{
			_tweenableElement.id = value;
		}
		
		/**
		 * @inheritDoc
		 */
		public function get text():String { return _tweenableElement.text; }
		
		public function set text(value:String):void
		{
			_tweenableElement.text = value;
		}
		
		/**
		 * @inheritDoc
		 */
		public function get closure():Closure { return _tweenableElement.closure; }
		
		public function set closure(value:Closure):void { _tweenableElement.closure = value; }
		
		/**
		 * @inheritDoc
		 */
		public function get uid():String { return _tweenableElement.uid; }
		
		/**
		 * @inheritDoc
		 */
		public function get kind():String { return _tweenableElement.kind; }
		
		/**
		 * @inheritDoc
		 */
		public function getChildAt(index:int):IElement
		{
			return _tweenableElement.getChildAt(index);
		}
		
		/**
		 * @inheritDoc
		 */
		public function addChild(element:IElement):void
		{
			_tweenableElement.addChild(element);
		}
		
		/**
		 * @inheritDoc
		 */
		public function removeChild(child:IElement):void
		{
			_tweenableElement.removeChild(child);
		}
		
		/**
		 * @inheritDoc
		 */
		public function render():void
		{
			_tweenableElement.render();
		}
		
		//---------------------------------------------------------------------
		// Overrides
		//---------------------------------------------------------------------
		
		/**
		 * @inheritDoc
		 */
		override public function clone():ICloneable
		{
			var elementCopy:ShaderElement = new ShaderElement(context, kind);
			
			for (var name:String in this)
			{
				elementCopy[name] = this[name];
			}
			
			return elementCopy;
		}
		
		/**
		 * @inheritDoc
		 */
		override enumerator function setProperty(name:*, value:*):void 
		{
			if (_shader)
			{
				setShaderParam(name, value);
			}
			
			super.enumerator::setProperty(name, value);
		}
		
		//---------------------------------------------------------------------
		// Methods
		//---------------------------------------------------------------------
		
		/**
		 * URL of the shader.
		 */
		public function get url():String { return _url; }
		
		public function set url(value:String):void 
		{
			if (_url != value)
			{
				var old:String = _url;
				
				_url = value;
				
				dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED + 'url', false, false, old, value));
				
				if (value)
				{
					var cacheLoader:CacheLoader = new CacheLoader(_tweenableElement.context.cache, new URLRequest(value));
					cacheLoader.addEventListener(Event.COMPLETE, completeHandler);
					cacheLoader.addEventListener(IOErrorEvent.IO_ERROR, ioErrorHandler);
					cacheLoader.load();
				}
				else
				{
					_shader = null;
				}
			}
		}
		
		/**
		 * Math precision.
		 */
		public function get precisionHint():String { return _precisionHint; }
		
		public function set precisionHint(value:String):void 
		{
			if (_precisionHint != value)
			{
				var old:String = _precisionHint;
				
				_precisionHint = value;
				
				if (_shader)
				{
					_shader.precisionHint = value;
				}
				
				dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED + 'precisionHint', false, false, old, value));
			}
		}
		
		/**
		 * @private
		 */
		private function ioErrorHandler(e:IOErrorEvent):void 
		{
			_shader = null;
		}
		
		/**
		 * @private
		 */
		private function completeHandler(e:Event):void 
		{
			_shader = new Shader(_tweenableElement.context.cache.get(_url, CacheFormat.BIT_ARRAY));
			
			_shader.precisionHint = _precisionHint;
			
			for (var name:String in _object)
			{
				setShaderParam(name, _object[name]);
			}
			
			for (name in _shader.data) 
			{
				if (_shader.data[name] is ShaderParameter)
				{
					if (!_object.hasOwnProperty(name))
					{
						_object[name] = _shader.data[name].value[0];
					}
				}
			}
			
			dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED + 'shader', false, false, null, _shader));
		}
		
		/**
		 * @private
		 */
		private function setShaderParam(name:String, value:*):void
		{
			if (_shader.data.hasOwnProperty(name))
			{
				var obj:* = _shader.data[name];
				
				if (obj is ShaderParameter)
				{
					var param:ShaderParameter = obj as ShaderParameter;
					
					param.value = [value];
					dispatchEvent(new ElementEvent(ElementEvent.UPDATED));
				}
				else if (obj is ShaderInput && value is BitmapDataElement)
				{
					if (_shaderInputWatchers.hasOwnProperty(name))
					{
						_shaderInputWatchers[name].destroy();
					}
					
					var input:ShaderInput = obj as ShaderInput;
					
					_shaderInputWatchers[name] = new Watcher(value, 'bitmapData', createInputWatcherHandler(input));
				}
			}
		}
		
		/**
		 * @private
		 */
		private function inputWatcher(e:PropertyChangeEvent):void
		{
			if (e.newValue)
			{
				var input:ShaderInput = e.target.input;
				
				input.input = e.newValue;
			}
		}
		
		/**
		 * @private
		 */
		private function createInputWatcherHandler(input:ShaderInput):Function
		{
			return function(e:PropertyChangeEvent):void 
			{
				if (e.newValue)
				{
					input.input = e.newValue;
				}
				else
				{
					input.input = null;
				}
				
				dispatchEvent(new ElementEvent(ElementEvent.UPDATED));
			}
		}
		
	}

}