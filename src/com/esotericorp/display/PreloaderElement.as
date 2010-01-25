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
			texture.bitmapData.fillRect(new Rectangle(0, 0, 256, 256), 0x33ff00ff);
			super.initialize();
		}
		
		override public function render():void 
		{sprite.graphics.clear();
			test(container);
			
			super.render();
		}
		
		public var rotY:Number = 0;
		public var texture:Bitmap = new Bitmap(new BitmapData(256, 256));
		public function test(container:DisplayObjectContainer3DElement):void
		{
			for (var i:int = 0; i < container.numChildren; i++) 
			{
				if (container.getChildAt(i) is Mesh3DElement)
				{
					var mesh:Mesh3DElement = container.getChildAt(i) as Mesh3DElement;
					
					var verts:Vector.<Number> = new Vector.<Number>;
					var sortedIndices:Vector.<int> = new Vector.<int>(mesh.indices.length, true);
					
					var matrix:Matrix3D = new Matrix3D();
					matrix.identity();
					matrix.appendRotation(rotY+=.3, Vector3D.Y_AXIS);
					matrix.appendRotation(20, Vector3D.X_AXIS);
					matrix.appendTranslation(0, 0, -1000);
					
					var projection:PerspectiveProjection = new PerspectiveProjection();
					projection.fieldOfView = 60;
					
					matrix.append(projection.toMatrix3D());
					
					Utils3D.projectVectors(matrix, mesh.vertices, verts, mesh.uvts);
					
					var faces:Array = [];
					var face:Vector3D;
					var inc:int = 0;
					
					/*for (var j:int = 0; j < mesh.indices.length; j+=3) 
					{
						faces[inc] = new Vector3D();
						face = faces[inc];
						
						face.x = mesh.indices[j];
						face.y = mesh.indices[int(j + 1)];
						face.z = mesh.indices[int(j + 2)];
						
						var j3:int = j * 3;
						
						face.w = (mesh.uvts[int(j3 + 2)] + mesh.uvts[int(j3 + 5)] + mesh.uvts[int(j3 + 8)]) * 0.333333;
						
						inc++;
					}
					
					faces.sortOn('w', Array.NUMERIC);
					
					inc = 0;
					
					for each (face in faces) 
					{
						sortedIndices[inc++] = face.x;
						sortedIndices[inc++] = face.y;
						sortedIndices[inc++] = face.z;
					}*/
					
					sprite.graphics.beginBitmapFill(texture.bitmapData);
					sprite.graphics.drawTriangles(verts, mesh.indices, mesh.uvts, TriangleCulling.POSITIVE);
					sprite.graphics.endFill();
					
					trace(mesh.uvts);
				}
				else if (container.getChildAt(i) is DisplayObjectContainer3DElement)
				{
					test(container.getChildAt(i) as DisplayObjectContainer3DElement);
				}
			}
		}

	}
	
}
