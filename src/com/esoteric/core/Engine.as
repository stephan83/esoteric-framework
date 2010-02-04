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
	import com.carlcalderon.arthropod.Debug;
	import com.esoteric.esoteric;
	import com.esoteric.events.VerboseEventDispatcher;
	import com.esoteric.Settings;
	import flash.geom.Matrix3D;
	import flash.system.System;
	import flash.utils.getTimer;
	
	use namespace esoteric;
	
	/**
	 * Esoteric framework engine.
	 * 
	 * @author Stephan Florquin
	 */
	public class Engine
	{
		
		//---------------------------------------------------------------------
		// Constructor
		//---------------------------------------------------------------------
		
		/**
		 * Constructor.
		 */
		public function Engine(context:Context) 
		{
			Debug.log('ESOTERIC ' + Settings.VERSION + ' ' + Settings.BRANCH);
			_context = context;
			_lastTick = getTimer();
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
		private var _lastTick:int;
		
		/**
		 * @private
		 */
		private var _lastTickInstructions:int = 0;
		
		/**
		 * @private
		 */
		private var _lastTickFrames:int = 0;
		
		/**
		 * @private
		 */
		private var _lastTickRenders:int = 0;
		
		/**
		 * @private
		 */
		private const _TICK_INTERVAL:int = 10000;
		
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
			//_context.root.esoteric::updateGlobalPosition(new Matrix3D());
			//context.root.render();
			
			_context.expQueue.run();
			_lastTickRenders += _context.renderQueue.numElements;
			_context.renderQueue.render();
			
			updateStats();
		}
		
		/**
		 * @private
		 */
		private function updateStats():void
		{
			var time:int = getTimer();
			_lastTickFrames++;
			
			if (time - _lastTick > _TICK_INTERVAL)
			{
				System.gc();
				
				var instructions:int = _context.vm.instructionCounter;
				
				Debug.log('IPS: ' + Math.round(1000 * (instructions - _lastTickInstructions) / (time - _lastTick)), 0x999999);
				Debug.log('RPS: ' + Math.round(1000 * (_lastTickRenders) / (time - _lastTick)), 0x999999);
				Debug.log('FPS: ' + Math.round(1000 * _lastTickFrames / (time - _lastTick)), 0x999999);
				Debug.log('MEM: ' + Math.round(System.totalMemory / 1024 / 1024 * 1000) / 1000 + 'mb', 0x999999);
				
				VerboseEventDispatcher.report();
				
				_lastTickInstructions = instructions;
				_lastTickRenders = 0;
				_lastTick = time;
				_lastTickFrames = 0;
			}
		}
		
	}

}
