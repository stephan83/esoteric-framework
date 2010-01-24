package com.esoteric.expressions 
{
	import com.esoteric.utils.Watcher;
	/**
	 * ...
	 * @author Stephan Florquin
	 */
	public class ExpressionWatcher extends Watcher
	{
		
		public function ExpressionWatcher(target:Object = null, targetProperty:* = null, handler:Function = null, paused:Boolean = false, useWeakReferences:Boolean = false, instructions:Vector.<Array> = null, stack:Array = null, top:int = 0) 
		{
			super(target, targetProperty, handler, paused, useWeakReferences);
			
			_instructions = instructions;
			_stack = stack;
			_top = top;
		}
		
		private var _instructions:Vector.<Array>;
		private var _stack:Array;
		private var _top:int;
		
		override public function destroy():void
		{
			super.destroy();
			
			_instructions = null;
			_stack = null;
		}
		
		public function get instructions():Vector.<Array> { return _instructions; }
		
		public function set instructions(value:Vector.<Array>):void 
		{
			_instructions = value;
		}
		
		public function get stack():Array { return _stack; }
		
		public function set stack(value:Array):void 
		{
			_stack = value;
		}
		
		public function get top():int { return _top; }
		
		public function set top(value:int):void 
		{
			_top = value;
		}
		
	}

}