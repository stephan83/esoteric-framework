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
	
package com.esoteric.core 
{
	import com.esoteric.display.DisplayObjectElement;
	import com.esoteric.display.IDisplayObject2DElement;
	import com.esoteric.display.IDisplayObjectElement;
	import com.esoteric.display.Mesh3DElement;
	import com.esoteric.display.RenderShape;
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.DisplayObject;
	import flash.display.DisplayObjectContainer;
	import flash.display.Shape;
	import flash.display.Sprite;
	import flash.display.Stage;
	import flash.display.TriangleCulling;
	import flash.geom.Matrix;
	import flash.geom.Matrix3D;
	import flash.geom.PerspectiveProjection;
	import flash.geom.Point;
	import flash.geom.Rectangle;
	import flash.geom.Utils3D;
	import flash.geom.Vector3D;
	import flash.utils.getTimer;
	
	/**
	 * Esoteric framework engine.
	 * 
	 * @author Stephan Florquin
	 */
	public class Engine
	{
		
		//---------------------------------------------------------------------
		// Constructor
		//---------------------------------------------------------------------
		
		/**
		 * Constructor.
		 */
		public function Engine(context:Context) 
		{
			_context = context;
			_lastSecond = getTimer();
			
			_context.container.transform.perspectiveProjection = new PerspectiveProjection();
		}
		
		//---------------------------------------------------------------------
		// Members
		//---------------------------------------------------------------------
		
		/**
		 * @private
		 */
		private var _context:Context;
		
		/**
		 * @private
		 */
		private var _triangleSortMode:String = TriangleSortMode.SCENE;
		
		/**
		 * @private
		 */
		private var _shapes:Vector.<RenderShape> = new Vector.<RenderShape>();
		
		/**
		 * @private
		 */
		private	var _currShape:int = 0;
		
		/**
		 * @private
		 */
		private var _canvas:Shape = new Shape();
		
		/**
		 * @private
		 */
		private var _objectBuffer:BitmapData = new BitmapData(320, 240);
		
		/**
		 * @private
		 */
		private var _lastSecond:int;
		
		/**
		 * @private
		 */
		private var _lastSecondInstructions:int = 0;
		
		/**
		 * @private
		 */
		private var _lastSecondFrames:int = 0;
		
		//---------------------------------------------------------------------
		// Methods
		//---------------------------------------------------------------------
		
		/**
		 * The context.
		 */		
		public function get context():Context { return _context; }
		
		public function set context(value:Context):void 
		{
			_context = value;
		}
		
		/**
		 * The triangle sort mode. The default value is TriangleSortMode.SCENE.
		 */
		public function get triangleSortMode():String { return _triangleSortMode; }
		
		public function set triangleSortMode(value:String):void 
		{
			_triangleSortMode = value;
		}
		
		/**
		 * Renders the scene.
		 */
		public function render():void
		{
			// TEMPORARY REMOVE THIS!!!!!!!!!!
			_context.root.updateCoords(new Matrix3D());
			//context.root.render();
			
			_context.expQueue.run();
			_context.renderQueue.render();
			
			renderScene();
			updateStats();
		}
		
		/**
		 * @private
		 */
		private function renderScene():void
		{
			clear();
			
			var container:DisplayObjectContainer = _context.container;
			var pp:PerspectiveProjection = container.transform.perspectiveProjection;
			pp.fieldOfView = 60;
			pp.projectionCenter = new Point(container.stage.stageWidth / 2, container.stage.stageHeight / 2);
			container.transform.perspectiveProjection = pp;
			
			switch(_triangleSortMode)
			{
				case TriangleSortMode.NONE:
				renderSortNone();
				break;
				
				case TriangleSortMode.OBJECT:
				renderSortObject();
				break;
				
				case TriangleSortMode.SCENE:
				renderSortScene();
				break;
			}
			
			drawObjectBuffer();
			handleMouse();
		}
		
		/**
		 * @private
		 */
		private function clear():void
		{
			var container:DisplayObjectContainer = _context.container;
			var length:int = container.numChildren;
			
			for (var i:int = 0; i < length; i++) 
			{
				container.removeChildAt(0);
			}
			
			_canvas.graphics.clear();
			_currShape = 0;
			_objectBuffer.fillRect(new Rectangle(0, 0, _objectBuffer.width, _objectBuffer.height), 0xFFFFFFFF);
		}
		
		/**
		 * @private
		 */
		private function renderSortNone():void
		{
			var container:DisplayObjectContainer = _context.container;
			var dispList:Array = _context.dispList;
			var dispObj2D:IDisplayObject2DElement;
			var mesh3D:Mesh3DElement;
			
			dispList.sortOn('globalZ', Array.NUMERIC | Array.DESCENDING);
			
			for each (var dispObj:IDisplayObjectElement in dispList) 
			{
				if (dispObj is IDisplayObject2DElement)
				{
					dispObj2D = dispObj as IDisplayObject2DElement;
					container.addChild(dispObj2D.displayObject);
				}
				else if (dispObj is Mesh3DElement)
				{
					mesh3D = dispObj as Mesh3DElement;
					renderMesh3D(mesh3D);
				}
			}
		}
		
		/**
		 * @private
		 */
		private function renderSortObject():void
		{
			var container:DisplayObjectContainer = _context.container;
			var dispList:Array = _context.dispList;
			var dispObj2D:IDisplayObject2DElement;
			var mesh3D:Mesh3DElement;
			
			dispList.sortOn('globalZ', Array.NUMERIC | Array.DESCENDING);
			
			for each (var dispObj:IDisplayObjectElement in dispList) 
			{
				if (dispObj is IDisplayObject2DElement)
				{
					dispObj2D = dispObj as IDisplayObject2DElement;
					container.addChild(dispObj2D.displayObject);
				}
				else if (dispObj is Mesh3DElement)
				{
					mesh3D = dispObj as Mesh3DElement;
					renderMesh3DSorted(mesh3D);
				}
			}
		}
		
		/**
		 * @private
		 */
		private function renderSortScene():void
		{
			var container:DisplayObjectContainer = _context.container;
			var focalLength:Number = container.transform.perspectiveProjection.focalLength;
			var dispList:Array = _context.dispList;
			var dispObj2D:IDisplayObject2DElement;
			var mesh3D:Mesh3DElement;
			var faces:Array = new Array();
			var face:Face;
			var pVerts:Vector.<Number>;
			var uvts:Vector.<Number>;
			var indices:Vector.<int>;
			var i:int = 0;
			var j:int = 0;
			
			for each (var dispObj:IDisplayObjectElement in dispList) 
			{
				if (dispObj is IDisplayObject2DElement)
				{
					dispObj2D = dispObj as IDisplayObject2DElement;
					faces.push(new Face());
					face = faces[faces.length - 1];
					face.dispObj2D = dispObj2D;
					
					// Adjust for projectVectors t values weirdness
					face.t = focalLength / (focalLength + dispObj2D.globalZ) * .002645402308931556724974235094393;
				}
				else if (dispObj is Mesh3DElement)
				{
					mesh3D = dispObj as Mesh3DElement;
					pVerts = mesh3D.projectVertices();
					uvts = mesh3D.uvts;
					indices = mesh3D.indices;
					
					for (i = 0; i < indices.length; i++) 
					{
						faces.push(new Face());
						face = faces[faces.length - 1];
						face.mesh3D = mesh3D;
						face.v1 = indices[i];
						face.v2 = indices[int(++i)];
						face.v3 = indices[int(++i)];
						face.t = (uvts[int(face.v1 * 3 + 2)] + uvts[int(face.v2 * 3 + 2)] + uvts[int(face.v3 * 3 + 2)]) * 0.333333;
					}
					
				}
			}
			
			if (faces.length)
			{
				faces.sortOn('t', Array.NUMERIC);
				
				var currMesh3D:Mesh3DElement = faces[0].mesh3D;
				var sortedIndices:Vector.<int> = new Vector.<int>();
				
				i = 0;
				
				_canvas.x = container.stage.stageWidth / 2;
				_canvas.y = container.stage.stageHeight / 2;
				
				
				for each (face in faces) 
				{
					if (face.dispObj2D) 
					{
						if (currMesh3D)
						{
							drawTriangles(currMesh3D, getNextShape(), sortedIndices);
							currMesh3D = null;
						}
						container.addChild(face.dispObj2D.displayObject);
					}
					else if (currMesh3D)
					{
						if (face.mesh3D == currMesh3D)
						{
							sortedIndices[int(i++)] = face.v1;
							sortedIndices[int(i++)] = face.v2;
							sortedIndices[int(i++)] = face.v3;
						}
						else
						{
							drawTriangles(currMesh3D, getNextShape(), sortedIndices);
							sortedIndices = new Vector.<int>();
							currMesh3D = face.mesh3D;
							i = 0;
							sortedIndices[int(i++)] = face.v1;
							sortedIndices[int(i++)] = face.v2;
							sortedIndices[int(i++)] = face.v3;
						}
					}
					else
					{
						sortedIndices = new Vector.<int>();
						currMesh3D = face.mesh3D;
						i = 0;
						sortedIndices[int(i++)] = face.v1;
						sortedIndices[int(i++)] = face.v2;
						sortedIndices[int(i++)] = face.v3;
					}
				}
				
				if (currMesh3D)
				{
					drawTriangles(currMesh3D, getNextShape(), sortedIndices);
				}
			}
		}
		
		/**
		 * @private
		 */
		private function renderMesh3D(mesh3D:Mesh3DElement):void
		{
			mesh3D.projectVertices();
			drawTriangles(mesh3D, getNextShape(), mesh3D.indices);
		}
		
		/**
		 * @private
		 */
		private function renderMesh3DSorted(mesh3D:Mesh3DElement):void
		{
			var pVerts:Vector.<Number> = mesh3D.projectVertices();
			var uvts:Vector.<Number> = mesh3D.uvts;
			var indices:Vector.<int> = mesh3D.indices;
			var faces:Array = new Array(indices.length / 3);
			var face:Vector3D;
			
			for (var i:int = 0, j:int = 0; i < indices.length; i++, j++) 
			{
				face = faces[j] = new Vector3D();
				
				face.x = indices[i];
				face.y = indices[int(++i)];
				face.z = indices[int(++i)];
				
				face.w = (uvts[int(face.x * 3 + 2)] + uvts[int(face.y * 3 + 2)] + uvts[int(face.z * 3 + 2)]) * 0.333333;
			}
		
			faces.sortOn('w', Array.NUMERIC);
			
			var sortedIndices:Vector.<int> = new Vector.<int>(indices.length, true);
			
			i = 0;
			
			for each (face in faces) 
			{
				sortedIndices[int(i++)] = face.x;
				sortedIndices[int(i++)] = face.y;
				sortedIndices[int(i++)] = face.z;
			}
			
			drawTriangles(mesh3D, getNextShape(), sortedIndices);
		}
		
		/**
		 * @private
		 */
		private function getNextShape():RenderShape 
		{
			if (_shapes.length <= _currShape)
			{
				_shapes[_currShape] = new RenderShape();
			}
			else
			{
				_shapes[_currShape].graphics.clear();
			}
			
			var container:DisplayObjectContainer = _context.container;
			var shape:RenderShape = _shapes[_currShape++];
			
			container.addChild(shape);
			
			if (container.stage)
			{
				shape.x = container.stage.stageWidth / 2;
				shape.y = container.stage.stageHeight / 2;
			}
			
			return shape;
		}
		
		/**
		 * @private
		 */
		private function drawTriangles(mesh:Mesh3DElement, shape:Shape, indices:Vector.<int>):void
		{
			_canvas.graphics.beginFill(parseInt(mesh.uid));
			_canvas.graphics.drawTriangles(mesh.pVerts, indices, null, TriangleCulling.POSITIVE);
			_canvas.graphics.endFill();
			mesh.drawTriangles(shape, indices);
		}
		
		/**
		 * @private
		 */
		private function drawObjectBuffer():void 
		{
			var container:DisplayObjectContainer = _context.container;
			var transform:Matrix = new Matrix();
			var xScale:Number = _objectBuffer.width / container.stage.stageWidth;
			var yScale:Number = _objectBuffer.width / container.stage.stageWidth;
			var clip:Rectangle = new Rectangle(0, 0, container.stage.stageWidth, container.stage.stageHeight)
			
			transform.scale(xScale, yScale);
			transform.translate(container.stage.stageWidth * .5 * xScale, container.stage.stageHeight * .5 * yScale);
			_objectBuffer.draw(_canvas, transform, null, null, clip);
		}
		
		/**
		 * @private
		 */
		private function handleMouse():void
		{
			var container:DisplayObjectContainer = _context.container;
			var stage:Stage = container.stage;
			var objsUnderMouse:Array = stage.getObjectsUnderPoint(new Point(stage.mouseX, stage.mouseY));
			var xScale:Number = _objectBuffer.width / stage.stageWidth;
			var yScale:Number = _objectBuffer.width / stage.stageWidth;
			
			if (objsUnderMouse.length )
			{
				var hovered:DisplayObject = objsUnderMouse[objsUnderMouse.length - 1];
				
				if (hovered.parent == container && hovered is RenderShape)
				{
					var objectUID:int = _objectBuffer.getPixel(stage.mouseX * xScale, stage.mouseY * yScale);
					
					if (objectUID != 0xffffff)
					{					
						for each (var dispObj:IDisplayObjectElement in _context.dispList) 
						{
							if (parseInt(dispObj.uid) == objectUID)
							{
								_context.closure['hovered'] = dispObj;
							}
						}
					}
				}
			}
		}
		
		/**
		 * @private
		 */
		private function updateStats():void
		{
			var time:int = getTimer();
			_lastSecondFrames++;
			
			if (time - _lastSecond > 5000)
			{
				var instructions:int = _context.vm.instructionCounter;
				
				trace(Math.round(1000 * (instructions - _lastSecondInstructions) / (time - _lastSecond)), 'ips', Math.round(1000 * _lastSecondFrames / (time - _lastSecond)) , 'fps', Math.round(System.totalMemory / 1024 / 1024 * 1000) / 1000, 'mb');
				
				_lastSecondInstructions = instructions;
				_lastSecond = time;
				_lastSecondFrames = 0;
			}
		}
		
	}

}

import com.esoteric.display.IDisplayObject2DElement;
import com.esoteric.display.Mesh3DElement;

/**
 * @private
 */
internal final class Face
{
	public var dispObj2D:IDisplayObject2DElement;
	public var mesh3D:Mesh3DElement;
	public var v1:Number;
	public var v2:Number;
	public var v3:Number;
	public var t:Number;
}
