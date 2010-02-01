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
	import com.esoteric.esoteric;
	import flash.geom.Matrix3D;
	import flash.system.System;
	import flash.utils.getTimer;
	
	/**
	 * Esoteric framework engine.
	 * 
	 * @author Stephan Florquin
	 */
	public class Engine
	{
		use namespace esoteric;
		
		//---------------------------------------------------------------------
		// Constructor
		//---------------------------------------------------------------------
		
		/**
		 * Constructor.
		 */
		public function Engine(context:Context) 
		{
			_context = context;
			_lastSecond = getTimer();
		}
		
		//---------------------------------------------------------------------
		// Members
		//---------------------------------------------------------------------
		
		/**
		 * @private
		 */
		private var _context:Context;
		
		/**
		 * @private
		 */
		private var _lastSecond:int;
		
		/**
		 * @private
		 */
		private var _lastSecondInstructions:int = 0;
		
		/**
		 * @private
		 */
		private var _lastSecondFrames:int = 0;
		
		//---------------------------------------------------------------------
		// Methods
		//---------------------------------------------------------------------
		
		/**
		 * The context.
		 */		
		public function get context():Context { return _context; }
		
		public function set context(value:Context):void 
		{
			_context = value;
		}
		
		/**
		 * Renders the scene.
		 */
		public function render():void
		{
			// TEMPORARY REMOVE THIS!!!!!!!!!!
			_context.root.esoteric::updateGlobalPosition(new Matrix3D());
			//context.root.render();
			
			_context.expQueue.run();
			_context.renderQueue.render();
			
			updateStats();
		}
		
		/**
		 * @private
		 */
		private function updateStats():void
		{
			var time:int = getTimer();
			_lastSecondFrames++;
			
			if (time - _lastSecond > 5000)
			{
				var instructions:int = _context.vm.instructionCounter;
				
				trace(Math.round(1000 * (instructions - _lastSecondInstructions) / (time - _lastSecond)), 'ips', Math.round(1000 * _lastSecondFrames / (time - _lastSecond)) , 'fps', Math.round(System.totalMemory / 1024 / 1024 * 1000) / 1000, 'mb');
				
				_lastSecondInstructions = instructions;
				_lastSecond = time;
				_lastSecondFrames = 0;
			}
		}
		
	}

}
