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
	import flash.sampler.clearSamples;
	import flash.sampler.DeleteObjectSample;
	import flash.sampler.getSamples;
	import flash.sampler.NewObjectSample;
	import flash.sampler.pauseSampling;
	import flash.sampler.startSampling;
	import flash.system.System;
	import flash.utils.Dictionary;
	import flash.utils.getQualifiedClassName;
	import flash.utils.getTimer;
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
		public function Engine() 
		{
			_lastSecond = getTimer();
		}
		
		//---------------------------------------------------------------------
		// Members
		//---------------------------------------------------------------------
		
		private var _lastSecond:int;
		private var _lastSecondInstructions:int = 0;
		private var _lastSecondFrames:int = 0;
		private var _samples:Dictionary = new Dictionary(true);
		
		//---------------------------------------------------------------------
		// Methods
		//---------------------------------------------------------------------
		
		/**
		 * Updates the UI.
		 * 
		 * @param	context	the context
		 */
		public function render(context:Context):void
		{
			startSampling();
			context.expQueue.run();
			context.renderQueue.render();
			pauseSampling();
			
			var time:int = getTimer();
			_lastSecondFrames++;
			
			if (time - _lastSecond > 5000)
			{
				var instructions:int = context.vm.instructionCounter;
				
				trace(Math.round(1000 * (instructions - _lastSecondInstructions) / (time - _lastSecond)), 'ips', Math.round(1000 * _lastSecondFrames / (time - _lastSecond)) , 'fps', Math.round(System.totalMemory / 1024 / 1024 * 1000) / 1000, 'mb');
				
				_lastSecondInstructions = instructions;
				_lastSecond = time;
				_lastSecondFrames = 0;
				
				/*System.gc();
				var samples:Object = getSamples();
				
				for each (var sample:Object in samples) 
				{
					if (sample is NewObjectSample && sample.object)
					{
						_samples[sample.id] = sample;
					}
					if (sample is DeleteObjectSample)
					{
						delete _samples[sample.id];
					}
				}
				
				var array:Array = new Array();
				
				for each (sample in _samples) 
				{
					array.push({id: sample.id, type: sample.type, time: sample.time});
				}
				array.sortOn('type');
				trace('total allocated objects', array.length);
				
				for each (var sample in array) 
				{
					trace(sample.type, sample.time);
				}*/
			}
		}
		
	}

}