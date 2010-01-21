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

package com.esoteric.motion
{
	import com.esoteric.core.IElement;
	import com.esoteric.core.Context;
	import com.esoteric.events.ElementEvent;
	import com.esoteric.events.PropertyChangeEvent;
	import com.esoteric.utils.Watcher;
	import flash.utils.getTimer;
	
	public class TimelineElement extends AbstractTimelineElement
	{
		
		//---------------------------------------------------------------------
		// Constructor
		//---------------------------------------------------------------------
		
		/**
		 * Constructor.
		 */
		public function TimelineElement(context:Context, kind:String) 
		{
			super(context, kind);
			
			//context.addEventListener(ElementEvent.PRE_RENDER, preRenderHandler);
			//root.addEventListener(ElementEvent.POST_RENDER, postRenderHandler);
			
			//new Watcher(this, 'position', positionWatcher);
		}
		
		//---------------------------------------------------------------------
		// Members
		//---------------------------------------------------------------------
		
		/**
		 * @private
		 */
		private var _beginTime:int;
		
		/**
		 * @private
		 */
		private var _frames:Array = new Array();
		
		//---------------------------------------------------------------------
		// Overrides
		//---------------------------------------------------------------------
		
		/**
		 * @inheritDoc
		 */
		public override function set playing(value:Boolean):void
		{
			if (value && !playing)
			{
				start();
			}
			else if (!value && playing)
			{
				//context.removeEventListener(ElementEvent.POST_RENDER, postRenderHandler);
			}
			
			super.playing = value;
		}
		
		/**
		 * @inheritDoc
		 */
		/*public override function render():void
		{
			
			if (playing)
			{
				var time:int = getTimer();
				var ellapsed:int = time - _beginTime;
				
				if (_frames.length)
				{
					while (_frames.length && ellapsed >= _frames[0].position)
					{
						var frame:FrameElement = _frames.shift();
						
						frame.run();
					}
				}
				
				if (ellapsed > duration)
				{
					playing = false;
				}
			}
			
			//super.render();
		}*/
		
		/**
		 * @inheritDoc
		 */
		protected override function childAddedHandler(e:PropertyChangeEvent):void
		{
			if (e.newValue.position > position && playing)
			{
				_frames.push(e.newValue);
				_frames.sortOn('position', Array.NUMERIC);
			}
			
			super.childAddedHandler(e);
		}
		
		/**
		 * @inheritDoc
		 */
		protected override function childRemovedHandler(e:PropertyChangeEvent):void
		{
			for (var i:int = 0; i < _frames.length; i++)
			{
				var frame:FrameElement = _frames[i];
				
				if (e.oldValue == frame)
				{
					_frames.splice(i, 1);
					break;
				}
			}
			
			super.childRemovedHandler(e);
		}
		
		//---------------------------------------------------------------------
		// Methods
		//---------------------------------------------------------------------
		
		/**
		 * @private
		 */
		private function preRenderHandler(e:ElementEvent):void
		{
			if (playing)
			{
				var time:int = getTimer();
				var ellapsed:int = time - _beginTime;
				
				if (_frames.length)
				{
					while (_frames.length && ellapsed >= _frames[0].position)
					{
						var frame:FrameElement = _frames.shift();
						
						frame.run();
					}
				}
				
				if (ellapsed > duration)
				{
					if (repeat)
					{
						playing = false;
					}
					else
					{
						start();
					}
				}
			}
		}
		
		/**
		 * @private
		 */
		private function postRenderHandler(e:ElementEvent):void
		{
			//position = getTimer() - _beginTime;
		}
		
		/**
		 * @private
		 */
		private function positionWatcher(e:PropertyChangeEvent):void
		{
			/*_beginTime = getTimer() - e.newValue;
			
			for (var i:int = 0; i < numChildren; i++)
			{
				var child:IElement = getChildAt(i);
				
				if (child is FrameElement)
				{
					var frame:FrameElement = FrameElement(child);
					
					if (frame.position > e.newValue)
					{
						_frames.push(child);
					}
				}
			}
			
			_frames.sortOn('position', Array.NUMERIC);*/
		}
		
		/**
		 * @private
		 */
		private function start():void
		{
			_frames = new Array();
			
			for (var i:int = 0; i < numChildren; i++)
			{
				var child:IElement = getChildAt(i);
				
				if (child is FrameElement)
				{
					var frame:FrameElement = FrameElement(child);
					
					_frames.push(child);
				}
			}
			
			_frames.sortOn('position', Array.NUMERIC);
			
			_beginTime = getTimer();
		}

	}
	
}
