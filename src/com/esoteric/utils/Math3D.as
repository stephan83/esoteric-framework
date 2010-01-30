package com.esoteric.utils 
{
	import flash.geom.Matrix3D;
	import flash.geom.PerspectiveProjection;
	
	/**
	 * 3D math functions.
	 * 
	 * @author Stephan Florquin
	 */
	public class Math3D
	{
		
		/**
		 * Converts a perspective projection to a Matrix3D that can be used
		 * with flash.utils.Utils3D.projectVectors().
		 * 
		 * This matrix works diffently than transorm matrices:
		 * 
		 * sxx		syx		szx		cfx
		 * sxy		syy		szy		cfy
		 * sxz		syz		szz		cfz
		 * dx		dy		dz		cd
		 * 
		 * The method flash.utils.Utils3D.projectVectors() will use this matrix
		 * to compute the screen coordinate of a points P using the matrix in
		 * the following way:
		 * 
		 * X(x,y,z) = (sxx*x + sxy*y + sxz*z + dx)/(cfx*x + cfy*y + cfz*z + cd)
		 * Y(x,y,z) = (syx*x + syy*y + syz*z + dy)/(cfx*x + cfy*y + cfz*z + cd)
		 * Z(x,y,z) = (szx*x + szy*y + szz*z + dz)/(cfx*x + cfy*y + cfz*z + cd)
		 * 
		 * See AyMaN comment on this page:
		 * 
		 * http://help.adobe.com/en_US/AS3LCR/Flash_10.0/flash/geom/
		 * PerspectiveProjection.html
		 * 
		 * @param	pp					the perspective projection
		 * @param	cx					projection center x
		 * @param	cy					projection center y
		 * @param	pixelPerUnitRatio	the pixel per unit ratio...
		 */
		public static function ppToMatrix3D(pp:PerspectiveProjection,
											cx:Number = 0, cy:Number = 0,
											pixelPerUnitRatio:Number = 250)
											:Matrix3D 
		{
			var fov:Number = pp.fieldOfView;
			var sxx:Number = pixelPerUnitRatio / Math.tan(fov * Math.PI / 360);
			var syy:Number = sxx;
			var dx:Number  = -cx * sxx;
			var dy:Number  = -cy * syy;
			
			var m:Vector.<Number> = new Vector.<Number>();
			
			m.push(	sxx,	0,		0,		0	);
			m.push(	0,		syy,	0,		0	);
			m.push(	cx,		cy,		1,		1	);
			m.push(	dx,		dy,		0,		0	);
			
			return new Matrix3D(m);
		}
		
		public static function perspectiveMatrix3D(x:Number, y:Number,
		                                           w:Number, h:Number,
												   fov:Number,
												   vx:Number = NaN,
												   vy:Number = NaN):Matrix3D 
		{
			if (isNaN(vx))
			{
				vx = x + w / 2;
			}
			
			if (isNaN(vy))
			{
				vy = y + h / 2;
			}
			
			var m:Vector.<Number> = new Vector.<Number>();
			var fl:Number = focalLengthFromFoV(fov);
			var W:Number = fl * w;
			var H:Number = fl * h;
			var X:Number = 300;
			var Y:Number = 400;
			trace(fl);
			m.push(	W,		0,		0,		0	);
			m.push(	0,		H,		0,		0	);
			m.push(	X,		Y,		1,		1	);
			m.push(	0,		0,		1,		0	);
			
			var m3:Matrix3D = new Matrix3D(m);
			
			return m3;
		}
		
		public static function perspectiveOffCenter(left:Number, right:Number,
													top:Number, bottom:Number,
													near:Number, far:Number):Matrix3D
		{
			var x:Number = (2.0 * near) / (right - left);
			var y:Number = (2.0 * near) / (top - bottom);
			var a:Number = (right + left) / (right - left);
			var b:Number = (top + bottom) / (top - bottom);
			var c:Number = -(far + near) / (far - near);
			var d:Number = -(2.0 * far * near) / (far - near);
			var e:Number = -1.0;
			
			var m:Vector.<Number> = new Vector.<Number>();
			
			m.push(	x,		0,		a,		0	);
			m.push(	0,		y,		b,		0	);
			m.push(	0,		0,		c,		d	);
			m.push(	0,		0,		e,		0	);
			
			/*m.push(	x,		0,		a,		0	);
			m.push(	0,		y,		b,		0	);
			m.push(	a,		b,		c,		e	);
			m.push(	0,		0,		d,		0	);*/
			
			trace(m);
			trace(new PerspectiveProjection().toMatrix3D().rawData);
			return new Matrix3D(m);
		}
		
		/*public static function perspectiveMatrix3D(l:Number, r:Number, b:Number, t:Number, fov:Number):Matrix3D 
		{
			var m:Vector.<Number> = new Vector.<Number>();
			var w:Number = r - l;
			w = w > 0 ? w : -w;
			var h:Number = b - t;
			h = h > 0 ? h : -h;
			var fl:Number = focalLengthFromFoV(fov);
			var W:Number = fl * w;
			var H:Number = fl * h;
			var A:Number = (r + l) / (r - l);
			var B:Number = (t + b) / (t - b);
			
			
			
			m.push(	W,		0,		A,		0	);
			m.push(	0,		H,		B,		0	);
			m.push(	0,		0,		1,		1	);
			m.push(	0,		0,		-1,		0	);*/
			
			/*
			m.push(	W,		0,		A,		0		);
			m.push(	0,		H,		B,		0		);
			m.push(	0,		0,		C,		D		);
			m.push(	0,		0,		-1,		0		);*/
			
			/*return new Matrix3D(m);
		}*/
		
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
			
			/*m.push(	W,		0,		0,		0		);
			m.push(	0,		H,		0,		0		);
			m.push(	0,		0,		Q,		-Q * n	);
			m.push(	0,		0,		1,		0		);*/
			
			m.push(	W,		0,		0,		0	);
			m.push(	0,		H,		0,		0	);
			m.push(	0,		0,		1,		1	);
			m.push(	0,		0,		0,		0	);
			trace(m);
			trace(new PerspectiveProjection().toMatrix3D().rawData);
			trace(new PerspectiveProjection().focalLength);
			/*var m:Vector.<Number> = new Vector.<Number>();
			
			/*var W:Number = 2 * n / (r - l);
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
		
		/*public static function frustrumMatrix3DFoV(l:Number, r:Number, b:Number, t:Number, fov:Number, f:Number):Matrix3D 
		{
			var n:Number = focalLengthFromFoV(r - l, fov);
			
			return frustrumMatrix3D(l, r, b, t, n, f);
		}*/
		
		public static function focalLengthFromFoV(fov:Number):Number
		{
			return -.5 * Math.cos(fov * .5) / Math.sin(fov * .5);
		}
		
	}

}