package com.esoteric.events 
{
	import com.carlcalderon.arthropod.Debug;
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	import flash.utils.Dictionary;
	import flash.utils.getQualifiedClassName;
	
	/**
	 * ...
	 * @author Stephan Florquin
	 */
	public class VerboseEventDispatcher extends EventDispatcher
	{
		private static var _dispatchedEvents:Dictionary = new Dictionary(true);
		private static var _dispatchers:Dictionary = new Dictionary(true);
		private var _target:IEventDispatcher;
		
		public function VerboseEventDispatcher(target:IEventDispatcher = null) 
		{
			super(target);
			
			_target = target || this;
		}
		
		public static function report():void
		{
			for (var n:String in _dispatchedEvents)
			{
				Debug.log('`' + n + '`' + ' dispatched ' + _dispatchedEvents[n] + ' times', 0xcccccc);
				
				delete _dispatchedEvents[n];
			}
			
			for (n in _dispatchers)
			{
				Debug.log('`' + n + '`' + ' dispatched ' + _dispatchers[n] + ' events', 0xcccccc);
				
				delete _dispatchers[n];
			}
		}
		
		override public function dispatchEvent(event:Event):Boolean 
		{
			if (hasEventListener(event.type))
			{
				if (!_dispatchedEvents.hasOwnProperty(event.type))
				{
					_dispatchedEvents[event.type] = 0;
				}
				
				if (!_dispatchers.hasOwnProperty(getQualifiedClassName(_target)))
				{
					_dispatchers[getQualifiedClassName(_target)] = 0;
				}
				
				_dispatchedEvents[event.type]++;
				_dispatchers[getQualifiedClassName(_target)]++;
				
				return super.dispatchEvent(event);
			}
			
			return false;
		}
		
	}

}