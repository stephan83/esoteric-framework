package com.esoteric.core 
{
	/**
	 * ...
	 * @author Stephan Florquin
	 */
	public class RenderStats
	{
		
		public function RenderStats() 
		{
			
		}
		
		private var _renderTime:int;
		private var _renderInstructions:int;
		private var _instructionsPerSec:Number;
		
		public function get renderTime():int { return _renderTime; }
		
		public function set renderTime(value:int):void 
		{
			_renderTime = value;
		}
		
		public function get renderInstructions():int { return _renderInstructions; }
		
		public function set renderInstructions(value:int):void 
		{
			_renderInstructions = value;
		}
		
		public function get instructionsPerSec():Number { return _instructionsPerSec; }
		
		public function set instructionsPerSec(value:Number):void 
		{
			_instructionsPerSec = value;
		}
		
	}

}