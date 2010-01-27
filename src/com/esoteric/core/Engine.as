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
	
package com.esoteric.core 
{
	import com.esoteric.display.IDisplayObjectElement;
	import com.esoteric.display.Mesh3DElement;
	import flash.display.DisplayObject;
	import flash.display.DisplayObjectContainer;
	import flash.display.Shape;
	import flash.display.Sprite;
	import flash.geom.Matrix3D;
	import flash.geom.Vector3D;
	import flash.sampler.clearSamples;
	import flash.sampler.DeleteObjectSample;
	import flash.sampler.getSamples;
	import flash.sampler.NewObjectSample;
	import flash.sampler.pauseSampling;
	import flash.sampler.startSampling;
	import flash.system.System;
	import flash.utils.Dictionary;
	import flash.utils.getQualifiedClassName;
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
		private var _shapes:Vector.<Shape> = new Vector.<Shape>();
		
		/**
		 * @private
		 */
		private	var _currShape:int = 0;
		
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
		private function renderScene(context:Context):void
		{
			clear();
			
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
			
			// Reorder children based on z location
			var container:DisplayObjectContainer = context.container;
			
			while(container.numChildren)
			{
				container.removeChildAt(0)
			}
			
			//context.dispList.sortOn('globalZ', Array.NUMERIC | Array.DESCENDING); 
			
			var mesh:Mesh3DElement;
			var faces:Array = new Array();
			var colors:Array = new Array();
			
			for (var k:int = 0; k < 1000; k++) 
			{
				colors[k] = k * 30;
			}
			
			for (var ind:int = 0; ind < context.dispList.length; ind++) 
			{
				if (context.dispList[ind] is Mesh3DElement)
				{
					mesh = context.dispList[ind] as Mesh3DElement;
					mesh.clear();
					
					var pVerts:Vector.<Number> = mesh.projectVertices();
					var uvts:Vector.<Number> = mesh.uvts;
					var indices:Vector.<int> = mesh.indices;
					var face:Object;
					
					for (var i:int = 0; i < indices.length; i++) 
					{
						faces.push({mesh: mesh});
						face = faces[faces.length - 1];
						
						face.v1 = indices[i];				// point index 1
						face.v2 = indices[int(++i)];		// point index 2
						face.v3 = indices[int(++i)];		// point index 3
						
						face.t = (uvts[int(face.v1 * 3 + 2)] + uvts[int(face.v2 * 3 + 2)] + uvts[int(face.v3 * 3 + 2)]) * 0.333333;
					}
					
				}
				
				container.addChild(context.dispList[ind].displayObject);
			}
			
			if (faces.length)
			{
				faces.sortOn('t', Array.NUMERIC);
				
				var currMesh:Mesh3DElement = faces[0].mesh;
				var sortedIndices:Vector.<int> = new Vector.<int>();
				
				i = 0;
				var j:int = 0;
				for each (face in faces) 
				{
					if (face.mesh == currMesh)
					{
						sortedIndices[i++] = face.v1;
						sortedIndices[i++] = face.v2;
						sortedIndices[i++] = face.v3;
					}
					else
					{
						currMesh.drawTriangles(sortedIndices, colors[j]);
						sortedIndices = new Vector.<int>();
						currMesh = face.mesh;
						i = 0; j++;
						sortedIndices[i++] = face.v1;
						sortedIndices[i++] = face.v2;
						sortedIndices[i++] = face.v3;
					}
				}
				//trace(j);
				if (sortedIndices.length)
				{
					currMesh.drawTriangles(sortedIndices, colors[j]);
				}
			}
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
				container.removeChildAt(i);
			}
			
			_currShape = 0;
		}
		
		/**
		 * @private
		 */
		private function renderNone():void
		{
			var container:DisplayObjectContainer = _context.container;
			var dispList:Array = _context.dispList;
			var dispObj2D:IDisplayObjectElement2D;
			var dispObj3D:IDisplayObjectElement3D;
			
			dispList.sortOn('globalZ', Array.NUMERIC | Array.DESCENDING);
			
			for each (var dispObj:IDisplayObjectElement in dispList) 
			{
				if (dispObj is IDisplayObjectElement2D)
				{
					dispObj2D = dispObj as IDisplayObjectElement2D;
					
					container.addChild(dispObj2D.displayObject);
				}
				else if (dispObj is IDisplayObjectElement3D)
				{
					dispObj3D = dispObj as IDisplayObjectElement3D;
					
					container.addChild(renderDispObj3D(dispObj3D));
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
			var dispObj3D:IDisplayObject3DElement;
			
			dispList.sortOn('globalZ', Array.NUMERIC | Array.DESCENDING);
			
			for each (var dispObj:IDisplayObjectElement in dispList) 
			{
				if (dispObj is IDisplayObject2DElement)
				{
					dispObj2D = dispObj as IDisplayObject2DElement;
					container.addChild(dispObj2D.displayObject);
				}
				else if (dispObj is IDisplayObject3DElement)
				{
					dispObj3D = dispObj as IDisplayObject3DElement;
					renderDispObj3DSorted(dispObj3D);
				}
			}
		}
		
		/**
		 * @private
		 */
		private function renderSortScene():void
		{
			var container:DisplayObjectContainer = _context.container;
			var dispList:Array = _context.dispList;
			var dispObj2D:IDisplayObject2DElement;
			var dispObj3D:IDisplayObject3DElement;
			var faces:Array = new Array();
			var face:Face;
			var pVerts:Vector.<Number> = mesh.projectVertices();
			var uvts:Vector.<Number>;
			var indices:Vector.<int>;
			var face:Object;
			var pVerts:Vector.<Number> = mesh.projectVertices();
			var uvts:Vector.<Number>;
			var indices:Vector.<int>;
			var i:int = 0;
			var j:int = 0;
			
			for each (var dispObj:IDisplayObjectElement in dispList) 
			{
				// TODO: Optimize new Face()
				
				if (dispObj is IDisplayObject2DElement)
				{
					dispObj2D = dispObj as IDisplayObject2DElement;
					faces.push(new Face());
					face = faces[faces.length - 1];
					face.dispObj2D = dispObj2D;
					face.t = dispObj.globalZ;
				}
				else if (context.dispList[ind] is IDisplayObject3DElement)
				{
					dispObj3D = dispObj as IDisplayObject3DElement;
					pVerts = mesh.projectVertices();
					uvts = mesh.uvts;
					indices = mesh.indices;
					
					for (i = 0; i < indices.length; i++) 
					{
						faces.push(new Face());
						face = faces[faces.length - 1];
						face.dispObj3D = dispObj3D;
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
				
				var currDispObj3D:IDisplayObject3DElement = faces[0].dispObj3D;
				var sortedIndices:Vector.<int>;
				var shape:Shape;
				
				i = 0;
				
				for each (face in faces) 
				{
					if (face.dispObj2D) 
					{
						if (currDispObj3D)
						{
							shape = getNextShape();
							currDispObj3D.drawTriangles(shape, sortedIndices);
							currDispObj3D = null;
						}
						container.addChild(face.dispObj2D);
					}
					else if (currDispObj3D)
					{
						if (face.dispObj3D == currDispObj3D)
						{
							sortedIndices[i++] = face.v1;
							sortedIndices[i++] = face.v2;
							sortedIndices[i++] = face.v3;
						}
						else
						{
							shape = getNextShape();
							currDispObj3D.drawTriangles(shape, sortedIndices);
							sortedIndices = new Vector.<int>();
							currDispObj3D = face.dispObj3D;
							sortedIndices[i = 0] = face.v1;
							sortedIndices[i++] = face.v2;
							sortedIndices[i++] = face.v3;
						}
					}
					else
					{
						currDispObj3D = face.dispObj3D;
						sortedIndices[i = 0] = face.v1;
						sortedIndices[i++] = face.v2;
						sortedIndices[i++] = face.v3;
					}
				}
				
				if (currDispObj3D)
				{
					shape = getNextShape();
					currDispObj3D.drawTriangles(shape, sortedIndices);
				}
			}
		}
		
		/**
		 * @private
		 */
		private function renderDispObj3D(dispObj3D:IDisplayObject3DElement):void
		{
			var shape:Shape = getNextShape();
			
			dispObj3D.draw(shape, dispObj3D.indices);
		}
		
		/**
		 * @private
		 */
		private function renderSortDispObj3DSorted(dispObj3D:IDisplayObject3DElement):void
		{
			var shape:Shape = getNextShape();
			
			dispObj3D.draw(shape, sortedIndices);
			
			var pVerts:Vector.<Number> = dispObj3D.projectVertices();
			var uvts:Vector.<Number> = dispObj3D.uvts;
			var indices:Vector.<int> = dispObj3D.indices;
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
			
			var sortedIndices:Vector.<int> = new Vector.<int>(pVerts.length, true);
			
			i = 0;
			
			for each (face in faces) 
			{
				sortedIndices[i++] = face.x;
				sortedIndices[i++] = face.y;
				sortedIndices[i++] = face.z;
			}
			
			dispObj3D.draw(shape, sortedIndices);
		}
		
		/**
		 * @private
		 */
		private function getNextShape():Shape 
		{
			if (_shapes.length <= _currShape)
			{
				_shapes[_currShape] = new Shape();
			}
			else
			{
				shapes[_currShape].graphics.clear();
			}
			
			var container:DisplayObjectContainer = _context.container;
			var shape:Shape = _shapes[_currShape++];
			
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

import com.esoteric.display.IDisplayObjectElement;

/**
 * @private
 */
internal final class Face
{
	public var dispObj2D:IDisplayObject2DElement;
	public var dispObj3D:IDisplayObject2DElement;
	public var v1:Number;
	public var v2:Number;
	public var v3:Number;
	public var t:Number;
}
