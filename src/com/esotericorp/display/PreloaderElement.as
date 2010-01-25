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
	import flash.events.Event;
	import flash.geom.Matrix3D;
	import flash.geom.PerspectiveProjection;
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
			
			trace(container.numChildren);
			
			super.initialize();
		}
		
		override public function render():void 
		{
			for (var i:int = 0; i < container.numChildren; i++) 
			{
				if (container.getChildAt(i) is Mesh3DElement)
				{
					var mesh:Mesh3DElement = container.getChildAt(i) as Mesh3DElement;
					
					var triangles3D:Vector.<Number> = new Vector.<Number>;
					
					for (var i:int = 0; i < mesh.indices.length; i++) 
					{
						triangles3D.push(mesh.vertices[mesh.indices[i] * 3], mesh.vertices[mesh.indices[i] * 3 + 1], mesh.vertices[mesh.indices[i] * 3 + 2]);
					}
					
					var triangles2D:Vector.<Number> = new Vector.<Number>;
					var uvData:Vector.<Number> = new Vector.<Number>;
					
					var projection:PerspectiveProjection = new PerspectiveProjection();
					projection.fieldOfView = 60;
					var matrix:Matrix3D = projection.toMatrix3D();
					matrix.prependRotation(90, Vector3D.X_AXIS);
					matrix.prependTranslation(1000, 800, -700);
					
					Utils3D.projectVectors(matrix, triangles3D, triangles2D, uvData);
					
					sprite.graphics.beginFill(0xffffff);
					sprite.graphics.lineStyle(2, 0xff00ff);
					sprite.graphics.drawTriangles(triangles2D);
					sprite.graphics.endFill();
					
					trace('--');
					
					for each (var n:Number in triangles2D) 
					{
						trace(n);
					}
				}
			}
			
			super.render();
		}

	}
	
}
