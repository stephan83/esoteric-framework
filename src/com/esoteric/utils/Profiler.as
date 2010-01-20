package com.esoteric.utils 
{
	import flash.utils.getTimer;
	
	/**
	 * ...
	 * @author ...
	 */
	public class Profiler
	{
		
		public static var _beginTimes:Object = new Object();
		public static var _totals:Object = new Object();
		
		public static function start(id:String):void
		{
			if (!_totals.hasOwnProperty('id'))
			{
				_totals[id] = 0;
			}
			
			_beginTimes[id] = getTimer();
		}
		
		public static function stop(id:String):void
		{
			_totals[id] += (getTimer() - _beginTimes[id]);
		}
		
		public static function report(count:int):void
		{
			trace('=======================================================');
			
			var results:Array = new Array();
			
			for (var s:String in _totals)
			{
				results.push( { id: s, total: _totals[s] } );
			}
			
			results.sortOn('total', Array.NUMERIC | Array.DESCENDING);
			
			for (var i:int = 0; i < count && i < results.length; i++)
			{
				trace(results[i].id + '\t' + results[i].total);
			}
		}
		
	}

}