package com.esoteric.geom 
{
	/**
	 * ...
	 * @author Stephan Florquin
	 */
	public class BoundingSphere
	{
		
		private var _x:Number;
		private var _y:Number;
		private var _z:Number;
		private var _radius:Number;
		
		public function BoundingSphere(x:Number = 0, y:Number = 0, z:Number = 0, radius:Number = 0) 
		{
			_x = x;
			_y = y;
			_z = z;
			_radius = radius;
		}
		
		public function get x():Number { return _x; }
		
		public function set x(value:Number):void 
		{
			_x = value;
		}
		
		public function get y():Number { return _y; }
		
		public function set y(value:Number):void 
		{
			_y = value;
		}
		
		public function get z():Number { return _z; }
		
		public function set z(value:Number):void 
		{
			_z = value;
		}
		
		public function get radius():Number { return _radius; }
		
		public function set radius(value:Number):void 
		{
			_radius = value;
		}
		
	}

}