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

package com.esotericorp.display
{
	import com.esoteric.core.Context;
	import com.esoteric.display.DisplayObjectContainer3DElement;
	import com.esoteric.display.Mesh3DElement;
	import com.esoteric.utils.Collada;
	import com.esoteric.utils.FlashTools;
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.TriangleCulling;
	import flash.events.Event;
	import flash.geom.Matrix;
	import flash.geom.Matrix3D;
	import flash.geom.PerspectiveProjection;
	import flash.geom.Point;
	import flash.geom.Rectangle;
	import flash.geom.Utils3D;
	import flash.geom.Vector3D;
	import flash.utils.ByteArray;
	
	public class PreloaderElement extends AbstractPreloaderElement
	{
		[Embed(source = '../../../../assets/flash/Preloader.swf', symbol = 'ConcreteLight')]
		private var _concreteLight:Class;
		[Embed(source = '../../../../assets/collada/preloader.dae', mimeType = 'application/octet-stream')]
		private var _collada:Class;
		private var container:DisplayObjectContainer3DElement;
		[Embed(source = '../../../../assets/flash/Preloader.swf', symbol = 'concret')]
		private var _concret:Class;
		
		
		//---------------------------------------------------------------------
		// Constructor
		//---------------------------------------------------------------------
		
		/**
		 * Constructor.
		 */
		public function PreloaderElement(context:Context, kind:String) 
		{			
			super(context, kind);
		}
		
		//---------------------------------------------------------------------
		// Overrides
		//---------------------------------------------------------------------
		
		override public function initialize():void 
		{
			//FlashTools.loadSprite(new _concreteLight, this);
			
			var byteArray:ByteArray = new _collada();
			var xml:XML = new XML(byteArray.readUTFBytes(byteArray.length));
			
			container = new DisplayObjectContainer3DElement(context, 'DisplayObjectContainer3D');
			addChild(container);
			container.initialize();
			Collada.loadCOLLADA(context, container, xml);
			/*texture.bitmapData.fillRect(new Rectangle(0, 0, 128, 128), 0xffffffff);
			texture.bitmapData.fillRect(new Rectangle(0, 128, 128, 128), 0xfffff000);
			texture.bitmapData.fillRect(new Rectangle(128, 0, 128, 128), 0xff000fff);
			texture.bitmapData.fillRect(new Rectangle(128, 128, 128, 128), 0xffffffff);*/
			var concrete:Bitmap = new _concret();
			var matrix:Matrix = new Matrix();
			//matrix.scale(.5, .5)
			texture.draw(concrete.bitmapData, matrix);
			super.initialize();
		}
		
		override public function render():void 
		{sprite.graphics.clear();
			test(container);
			
			super.render();
		}
		
		public var rotY:Number = 0;
		public var texture:BitmapData = new BitmapData(1024, 1024);
		private var projection:PerspectiveProjection = new PerspectiveProjection();
		public function test(container:DisplayObjectContainer3DElement):void
		{
			/*for (var i:int = 0; i < container.numChildren; i++) 
			{
				if (container.getChildAt(i) is Mesh3DElement)
				{
					var mesh:Mesh3DElement = container.getChildAt(i) as Mesh3DElement;
					
					var verts:Vector.<Number> = new Vector.<Number>(mesh.vertices.length * 2 / 3, true);
					var sortedIndices:Vector.<int> = new Vector.<int>(mesh.indices.length, true);
					
					var matrix:Matrix3D = new Matrix3D();
					matrix.appendRotation(rotY+=.3, Vector3D.Y_AXIS);
					matrix.appendRotation(30, Vector3D.X_AXIS);
					matrix.appendTranslation(0, 0, -800);
					
					projection.fieldOfView = 60;
					
					matrix.append(projection.toMatrix3D());
					
					var vertices:Vector.<Number> = mesh.vertices;
					var indices:Vector.<int> = mesh.indices;
					var uvts:Vector.<Number> = mesh.uvts;
					
					Utils3D.projectVectors(matrix, vertices, verts, uvts);
					
					var faces:Array = new Array(mesh.indices.length / 3);
					var face:Vector3D;
					var inc:int = 0;
					
					for (var j:int = 0; j < mesh.indices.length; j ++) 
					{
						faces[inc] = new Vector3D();	// should preallocate this
						
						face = faces[inc];
						
						face.x = indices[j];			// point index 1
						face.y = indices[int(++j)];		// point index 2
						face.z = indices[int(++j)];		// point index 3
						
						face.w = (uvts[int(face.x * 3 + 2)] + uvts[int(face.y * 3 + 2)] + uvts[int(face.z * 3 + 2)]) * 0.333333;
						
						++inc;
					}
					
					faces.sortOn('w', Array.NUMERIC | Array.DESCENDING);
					
					inc = 0;
					
					for each (face in faces) 
					{
						sortedIndices[inc++] = face.x;
						sortedIndices[inc++] = face.y;
						sortedIndices[inc++] = face.z;
					}
					
					sprite.graphics.beginBitmapFill(texture);
					sprite.graphics.drawTriangles(verts, sortedIndices, uvts, TriangleCulling.POSITIVE);
					sprite.graphics.endFill();
				}
				else if (container.getChildAt(i) is DisplayObjectContainer3DElement)
				{
					test(container.getChildAt(i) as DisplayObjectContainer3DElement);
				}
			}*/
		}

	}
	
}
