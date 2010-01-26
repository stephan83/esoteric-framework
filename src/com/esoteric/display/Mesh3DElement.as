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
	import com.esoteric.utils.Watcher;
	import flash.display.Bitmap;
	import flash.display.DisplayObject;
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
		
		/**
		 * @private
		 */
		private var _faces:Array;
		
		/**
		 * @private
		 */
		private var _sortedIndices:Vector.<int>;
		
		//---------------------------------------------------------------------
		// Overrides
		//---------------------------------------------------------------------
		
		/**
		 * @inheritDoc
		 */
		override public function render():void 
		{
			render3D();
			
			super.render();
		}
		
		[Embed(source = '../../../../assets/flash/Preloader.swf', symbol = 'concret')]
		private var _concret:Class;
		var texture:Bitmap = new _concret();
		
		public function render3D():void
		{
			sprite.graphics.clear();
			
			var vertices:Vector.<Number> = this.vertices;
			var indices:Vector.<int> = this.indices;
			var uvts:Vector.<Number> = this.uvts;
			
			// todo: optimize
			_pVerts = new Vector.<Number>(vertices.length * 2 / 3, true);
			_faces = new Array(indices.length / 3);
			_sortedIndices = new Vector.<int>(indices.length, true);
			
			for (var i:int = 0; i < _faces.length; i++) 
			{
				_faces[i] = new Vector3D();
			}
			
			if (vertices.length && indices.length && uvts.length)
			{
				var matrix:Matrix3D = _transformMatrix.clone();
				
				// todo: CAMERA
				
				
				matrix.append(context.container.root.transform.perspectiveProjection.toMatrix3D());
				
				// project vertices
				Utils3D.projectVectors(matrix, vertices, _pVerts, uvts);
				
				var face:Vector3D;
				var inc:int = 0;
				
				for (var i:int = 0, j:int = 0; i < indices.length; i++, j++) 
				{
					face = _faces[j];
					
					face.x = indices[i];			// point index 1
					face.y = indices[int(++i)];		// point index 2
					face.z = indices[int(++i)];		// point index 3
					
					face.w = (uvts[int(face.x * 3 + 2)] + uvts[int(face.y * 3 + 2)] + uvts[int(face.z * 3 + 2)]) * 0.333333;
					
					//++inc;
				}
				
				_faces.sortOn('w', Array.NUMERIC);
				
				i = 0;
				
				for each (face in _faces) 
				{
					_sortedIndices[i++] = face.x;
					_sortedIndices[i++] = face.y;
					_sortedIndices[i++] = face.z;
				}
				
				sprite.graphics.beginBitmapFill(texture.bitmapData);
				//sprite.graphics.lineStyle(1, 0xff000f);
				sprite.graphics.drawTriangles(_pVerts, _sortedIndices, uvts, TriangleCulling.POSITIVE);
				sprite.graphics.endFill();
			}
		}
	}
	
}
