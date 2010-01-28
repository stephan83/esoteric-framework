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

package com.esoteric.display
{
	import com.esoteric.core.Context;
	import com.esoteric.core.IElement;
	import com.esoteric.events.PropertyChangeEvent;
	import com.esoteric.geom.BoundingSphere;
	import com.esoteric.utils.Watcher;
	import flash.display.Bitmap;
	import flash.display.DisplayObject;
	import flash.display.DisplayObjectContainer;
	import flash.display.Shape;
	import flash.display.Sprite;
	import flash.display.TriangleCulling;
	import flash.geom.Matrix3D;
	import flash.geom.PerspectiveProjection;
	import flash.geom.Point;
	import flash.geom.Utils3D;
	import flash.geom.Vector3D;
	
	public class Mesh3DElement extends AbstractMesh3DElement
	{
		
		//---------------------------------------------------------------------
		// Constructor
		//---------------------------------------------------------------------
		
		/**
		 * Constructor.
		 */
		public function Mesh3DElement(context:Context, kind:String) 
		{
			super(context, kind);
		}
		
		//---------------------------------------------------------------------
		// Members
		//---------------------------------------------------------------------
		
		/**
		 * @private
		 */
		private var _pVerts:Vector.<Number>;
		
		//---------------------------------------------------------------------
		// Overrides
		//---------------------------------------------------------------------
		
		/**
		 * @inheritDoc
		 */
		override public function render():void 
		{
			//render3D();
			
			super.render();
		}
		
		[Embed(source = '../../../../assets/flash/Preloader.swf', symbol = 'concret')]
		private var _concret:Class;
		var texture:Bitmap = new _concret();
		
		/**
		 * @inheritDoc
		 */
		override public function get boundingSphere():BoundingSphere
		{
			var radius:Number;
			var maxRadius:Number = 0;
			var vx:Number, vy:Number, vz:Number;
			
			for (var i:int = 0; i < vertices.length;) 
			{
				vx = vertices[i++] * scaleX;
				vy = vertices[i++] * scaleY;
				vz = vertices[i++] * scaleZ;
				
				radius = Math.sqrt(vx * vx + vy * vy + vz * vz);
				
				if (radius > maxRadius)
				{
					maxRadius = radius;
				}
			}
			
			return new BoundingSphere(0, 0, 0, maxRadius);
		}
		
		
		//---------------------------------------------------------------------
		// Methods
		//---------------------------------------------------------------------
		
		/**
		 * @inheritDoc
		 */
		public function projectVertices():Vector.<Number>
		{
			var vertices:Vector.<Number> = this.vertices;
			var indices:Vector.<int> = this.indices;
			var uvts:Vector.<Number> = this.uvts;
			var container:DisplayObjectContainer = context.container;
			var pp:PerspectiveProjection = container.transform.perspectiveProjection;
			var focalLength:Number = pp.focalLength;
			var v:Vector3D = new Vector3D();
			
			_pVerts = new Vector.<Number>(vertices.length * 2 / 3, true);
			
			if (vertices.length && indices.length && uvts.length && context.container.stage)
			{
				var matrix:Matrix3D = _transformMatrix.clone();
				matrix.appendTranslation( -container.stage.stageWidth / 2, -container.stage.stageHeight / 2, 0);
				matrix.append(pp.toMatrix3D());
				
				// project vertices
				Utils3D.projectVectors(matrix, vertices, _pVerts, uvts);
				
				// TODO: WTF t values are tiny after projectVectors???
				/*for (var i:int = 0; i < uvts.length;) 
				{
					v.x = vertices[int(i++)];
					v.y = vertices[int(i++)];
					v.z = vertices[i];
					trace(uvts[int(i++)], focalLength / (focalLength + Utils3D.projectVector(_transformMatrix, v).z));
				}*/
				
				return _pVerts;
			}
			
			return null;
		}
		
		/**
		 * @inheritDoc
		 */
		public function drawTriangles(shape:Shape, indices:Vector.<int>):void 
		{
			shape.graphics.beginBitmapFill(texture.bitmapData, null, false, true);
			//shape.graphics.lineStyle(1, 0xff00ff);
			shape.graphics.drawTriangles(_pVerts, indices, uvts, TriangleCulling.POSITIVE);
			shape.graphics.endFill();
		}
		
		public function get pVerts():Vector.<Number> { return _pVerts; }
	}
	
}
