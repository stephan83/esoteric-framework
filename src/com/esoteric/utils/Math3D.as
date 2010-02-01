/*
	~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	~                           Esoteric Framework                            ~
	~                       framework.esotericorp.com                         ~
	~                                                                         ~
	~                  Crafted with care by Stephan Florquin                  ~
	~                       stephan.florquin@gmail.com                        ~
	~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	
	-----                                                                 -----

	Copyright (c) 2010 Stephan Florquin

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
		 * Creates a Matrix3D that can be used with
		 * flash.utils.Utils3D.projectVectors().
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
		 * @param	fov					the field of view
		 * @param	cx					projection center x
		 * @param	cy					projection center y
		 * @param	pixelPerUnitRatio	the pixel per unit ratio
		 */
		public static function perspectiveMatrix3D(
			fov:Number,
			cx:Number = 0, cy:Number = 0,
			pixelPerUnitRatio:Number = 250
		):Matrix3D 
		{
			var sxx:Number = pixelPerUnitRatio / Math.tan(fov * Math.PI / 360);
			var syy:Number = sxx;
			var dx:Number  = -cx * sxx;
			var dy:Number  = -cy * syy;
			
			var m:Vector.<Number> = new Vector.<Number>();
			
			m.push(	sxx,	0,		0,		0	);
			m.push(	0,		syy,	0,		0	);
			m.push(	cx,		cy,		1,		1	);
			m.push(	dx,		dy,		0,		1	);
			
			return new Matrix3D(m);
		}
		
		/**
		 * Converts a perspective projection to a pespective matrix, taking
		 * into account the projection center.
		 * 
		 * @param	pp					the perspective projection
		 * @param	pixelPerUnitRatio	the pixel per unit ratio
		 * @return	the perspective matrix
		 */
		public static function ppToMatrix3D(
			pp:PerspectiveProjection,
			pixelPerUnitRatio:Number = 250
		):Matrix3D
		{
			var fov:Number = pp.fieldOfView;
			var cx:Number = pp.projectionCenter.x;
			var cy:Number = pp.projectionCenter.y;
			
			return perspectiveMatrix3D(fov, cx, cy, pixelPerUnitRatio);
		}
		
		/**
		 * Converts a field of view to a focal length.
		 * @param	fov	the field of view
		 * @return	the focal length
		 */
		public static function focalLengthFromFoV(fov:Number):Number
		{
			return -.5 * Math.cos(fov * .5) / Math.sin(fov * .5);
		}
		
	}

}