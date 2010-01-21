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

package com.esoteric.core 
{
	import com.esoteric.motion.TweenableObject;
	import com.esoteric.core.Context;
	import com.esoteric.events.TweenEvent;
	import com.esoteric.utils.BindableObject;
	import fl.motion.easing.*;
	
	/**
	* @author Stephan Florquin
	*/
	public class TweenableElement extends AbstractElement
	{
		
		//---------------------------------------------------------------------
		// Constructor
		//---------------------------------------------------------------------
		
		/**
		 * Constructor.
		 */
		public function TweenableElement(context:Context, type:String) 
		{
			super(context, type);
			
			_tweenableObject = new TweenableObject(this);
			
			_tweenableObject.addEventListener(TweenEvent.MOTION_FINISH, tweenMotionFinishHandler);
		}
		
		//---------------------------------------------------------------------
		// Variables
		//---------------------------------------------------------------------
		
		/**
		 * @private
		 */
		private var _tweenableObject:TweenableObject;
		
		//---------------------------------------------------------------------
		// Interface implementations
		//---------------------------------------------------------------------
		
		/**
		 * @inheritDoc
		 */
		public function startTween(prop:*, endValue:Number , duration:Number, easingFunc:Function = null, yoyo:Boolean = false):void
		{
			_tweenableObject.start(prop, endValue, duration, easingFunc, yoyo);
		}
		
		/**
		 * @inheritDoc
		 */
		public function stopTween(prop:*):void
		{
			_tweenableObject.stop(prop);
		}
		
		/**
		 * @inheritDoc
		 */
		public function isTweenRunning(prop:*):Boolean
		{
			return _tweenableObject.isRunning(prop);
		}
		
		//---------------------------------------------------------------------
		// Methods
		//---------------------------------------------------------------------
		
		/**
		 * @private
		 */
		private function tweenMotionFinishHandler(e:TweenEvent):void 
		{
			dispatchEvent(new TweenEvent(e.type, e.bubbles, e.cancelable, e.obj, e.prop));
		}
		
	}
	
}