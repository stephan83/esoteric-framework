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
	import com.esoteric.events.TweenEvent;
	import fl.motion.easing.Cubic;
	import fl.transitions.Tween;
	import fl.transitions.TweenEvent;
	import flash.events.EventDispatcher;
	
	/**
	* @author Stephan Florquin
	*/
	public class TweenableObject extends EventDispatcher
	{
		
		//---------------------------------------------------------------------
		// Constructor
		//---------------------------------------------------------------------
		
		/**
		 * Constructor.
		 * 
		 * @param	obj	the object to tween
		 */
		public function TweenableObject(obj:Object) 
		{
			_obj = obj;
		}
		
		//---------------------------------------------------------------------
		// Class variables
		//---------------------------------------------------------------------
		
		/**
		 * @private
		 */
		private var _obj:Object;
		
		/**
		 * @private
		 */
		private var _tweens:Object = new Object();
		
		/**
		 * @private
		 */
		private var _yoyo:Object = new Object();
		
		//---------------------------------------------------------------------
		// Methods
		//---------------------------------------------------------------------
		
		//---------------------------------------
		// public
		//---------------------------------------
		
		public function start(prop:*, endValue:Number, duration:Number, easingFunc:Function = null, yoyo:Boolean = false):void
		{
				stop(prop);
				
				if(_obj[prop] != endValue)
				{
					if (easingFunc == null)
					{
						easingFunc = Cubic.easeOut;
					}
					
					_tweens[prop] = new Tween(_obj, prop, easingFunc, _obj[prop], endValue, duration, true);
					
					_tweens[prop].addEventListener(fl.transitions.TweenEvent.MOTION_FINISH, tweenFinishHandler);
					
					_yoyo[prop] = yoyo;
				}
		}
		
		public function stop(prop:*):void
		{
			if (_tweens.hasOwnProperty(prop))
			{
				_tweens[prop].stop();
				
				_tweens[prop].removeEventListener(fl.transitions.TweenEvent.MOTION_FINISH, tweenFinishHandler);
				
				delete _tweens.prop;
			}
		}
		
		public function isRunning(prop:*):Boolean
		{
			return _tweens.hasOwnProperty(prop);
		}
		
		//---------------------------------------
		// private
		//---------------------------------------
		
		/**
		 * @private
		 */
		private function tweenFinishHandler(e:fl.transitions.TweenEvent):void 
		{
			var tween:Tween = Tween(e.target);
			
			if (_yoyo[tween.prop])
			{
				tween.yoyo();
				
				_yoyo[tween.prop] = null;
			}
			else
			{
				_tweens[tween.prop].removeEventListener(fl.transitions.TweenEvent.MOTION_FINISH, tweenFinishHandler);
				delete _tweens[tween.prop];
				
				dispatchEvent(new com.esoteric.events.TweenEvent(com.esoteric.events.TweenEvent.MOTION_FINISH, false, false, tween.obj, tween.prop));
			}
		}
		
	}
	
}