package com.esoteric.utils 
{
	import com.esoteric.core.Context;
	import com.esoteric.display.DisplayObjectContainer3DElement;
	import com.esoteric.display.Mesh3DElement;
	import flash.events.Event;
	import org.ascollada.core.DaeDocument;
	import org.ascollada.core.DaeGeometry;
	import org.ascollada.core.DaeInput;
	import org.ascollada.core.DaeInstanceGeometry;
	import org.ascollada.core.DaeMesh;
	import org.ascollada.core.DaeNode;
	import org.ascollada.core.DaePrimitive;
	import org.ascollada.core.DaeSource;
	import org.ascollada.core.DaeTransform;
	/**
	 * COLLADA parser.
	 * 
	 * @author Stephan Florquin
	 */
	public class Collada
	{
		/**
		 * Loads a COLLADA into a 3D display object.
		 * 
		 * @param	collada
		 * @param	displayObject3D
		 */
		public static function loadCOLLADA(context:Context, dest:DisplayObjectContainer3DElement, collada:XML):void
		{
			var dae:DaeDocument = new DaeDocument();
			
			dae.addEventListener(Event.COMPLETE, function(e:Event):void {
				parseScene(context, dest, dae, dae.scene);
				dae.destroy();
			});
			
			dae.read(collada);
		}
		
		static private function parseScene(context:Context, dest:DisplayObjectContainer3DElement, document:DaeDocument, scene:DaeNode):void
		{
			parseNode(context, dest, document, scene);
		}
		
		static private function parseNode(context:Context, dest:DisplayObjectContainer3DElement, document:DaeDocument, node:DaeNode):void
		{
			for each (var geomInstance:DaeInstanceGeometry in node.geometryInstances) 
			{
				var geom:DaeGeometry = document.geometries[urlToID(geomInstance.url)];
				
				parseGeometry(context, dest, document, geom);
			}
			
			for each (var child:DaeNode in node.nodes) 
			{
				var container:DisplayObjectContainer3DElement = new DisplayObjectContainer3DElement(context, 'DisplayObjectContainer3D');
				
				dest.addChild(container);
				container.initialize();
				container.id = child.name;
				
				for each (var transform:DaeTransform in child.transforms) 
				{
					switch(transform.sid.toLowerCase())
					{
						case 'translate':
						{
							container.x = transform.data[0];
							container.y = -transform.data[1];
							container.z = -transform.data[2];
							break;
						}
						
						case 'scale':
						{
							container.scaleX = transform.data[0];
							container.scaleY = transform.data[1];
							container.scaleZ = transform.data[2];
							break;
						}
						
						case 'rotatex':
						{
							container.rotationX = transform.data[3];
							break;
						}
						
						case 'rotatey':
						{
							container.rotationY = transform.data[3];
							break;
						}
						
						case 'rotatez':
						{
							container.rotationZ = transform.data[3];
							break;
						}
					}
				}
				
				parseNode(context, container, document, child);
			}
		}
		
		static private function parseGeometry(context:Context, dest:DisplayObjectContainer3DElement, document:DaeDocument, geom:DaeGeometry):void 
		{
			parseMesh(context, dest, document, geom.mesh);
		}
		
		static private function parseMesh(context:Context, dest:DisplayObjectContainer3DElement, document:DaeDocument, mesh:DaeMesh):void
		{
			for each (var primitive:DaePrimitive in mesh.primitives) 
			{
				parsePrimitive(context, dest, document, primitive);
			}
		}
		
		static private function parsePrimitive(context:Context, dest:DisplayObjectContainer3DElement, document:DaeDocument, primitive:DaePrimitive):void
		{
			var mesh:Mesh3DElement = new Mesh3DElement(context, 'Mesh3D');
			
			dest.addChild(mesh);
			mesh.initialize();
			mesh.id = primitive.name;
			
			for each (var vertex:Array in primitive.vertices.source.data) 
			{
				mesh.vertices.push(vertex[0], -vertex[1], -vertex[2]);
			}
			
			for each (var triangle:Array in primitive.triangles) 
			{
				mesh.indices.push(triangle[0], triangle[1], triangle[2]);
			}
			
			var uvset:Array = primitive.uvSets[0];
			var textCoord:DaeInput = primitive.texCoordInputs[0];
			var source:DaeSource = document.sources[textCoord.source];
			var uvs:Vector.<Number> = new Vector.<Number>();
			
			// Compule the uvs for each indices
			for (var i:int = 0; i < uvset.length; i++) 
			{
				uvs.push(source.data[uvset[i][0]][0], 1 - source.data[uvset[i][0]][1]);
				uvs.push(source.data[uvset[i][1]][0], 1 - source.data[uvset[i][1]][1]);
				uvs.push(source.data[uvset[i][2]][0], 1 - source.data[uvset[i][2]][1]);
			}
			
			mesh.uvts.length = mesh.vertices.length;
			
			// Compute the uvts for each vertex since that's what Flash 10 wants
			for (i = 0; i < mesh.indices.length; i++) 
			{
				var u:Number = uvs[i * 2];
				var v:Number = uvs[i * 2 + 1];
				
				var ind:int = mesh.indices[i];
				
				mesh.uvts[ind * 3] = u;
				mesh.uvts[ind * 3 + 1] = v;
			}
		}
		
		static private function urlToID(url:String):String
		{
			return url.substr(1);
		}
		
	}

}