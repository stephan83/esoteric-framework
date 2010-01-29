package com.esoteric.utils 
{
	import flash.geom.Matrix3D;
	
	/**
	 * 3D math functions.
	 * 
	 * @author Stephan Florquin
	 */
	public class Math3D
	{
		
		public static function frustrumMatrix3D(l:Number, r:Number, b:Number, t:Number, n:Number, f:Number):Matrix3D
		{
			var Q:Number = f / (f - n);
			var w:Number = l - r;
			w = w > 0 ? w : -w;
			var h:Number = t - b;
			h = h > 0 ? h : -h;
			var W:Number = 2 * (n / w);
			var H:Number = 2 * (n / h);
	
			var m:Vector.<Number> = new Vector.<Number>();
			
			m.push(	W,		0,		0,		0		);
			m.push(	0,		H,		0,		0		);
			m.push(	0,		0,		Q,		-Q * n	);
			m.push(	0,		0,		1,		0		);
			
			/*var m:Vector.<Number> = new Vector.<Number>();
			
			var W:Number = 2 * n / (r - l);
			var H:Number = 2 * n / (t - n);
			var A:Number = (r + l) / (r - l);
			var B:Number = (t + b) / (t - b);
			var C:Number = -(f + n) / (f - n);
			var D:Number = -2 * f * n / (f - n);
			
			m.push(	W,		0,		A,		0		);
			m.push(	0,		H,		B,		0		);
			m.push(	0,		0,		C,		D		);
			m.push(	0,		0,		-1,		0		);*/
			
			return new Matrix3D(m);
		}
		
		public static function frustrumMatrix3DFoV(l:Number, r:Number, b:Number, t:Number, fov:Number, f:Number):Matrix3D 
		{
			var n:Number = focalLengthFromFoV(r - l, fov);
			
			return frustrumMatrix3D(l, r, b, t, n, f);
		}
		
		public static function focalLengthFromFoV(width:Number, fov:Number):Number
		{
			return width * .5 * Math.cos(fov * .5) / Math.sin(fov * .5);
		}
		
	}

}