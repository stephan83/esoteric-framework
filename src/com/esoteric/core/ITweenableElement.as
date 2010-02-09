package com.esoteric.core 
{
	
	/**
	 * ...
	 * @author Stephan Florquin
	 */
	public interface ITweenableElement extends IElement
	{
		function startTween(prop:*, endValue:Number , duration:Number, easingFunc:Function = null, yoyo:Boolean = false, loop:int = 0):void;
		
		function stopTween(prop:*):void;
		
		function isTweenRunning(prop:*):Boolean;
	}
	
}