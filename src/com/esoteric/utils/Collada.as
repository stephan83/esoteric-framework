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
			for each (var node:DaeNode in scene.nodes) 
			{
				parseNode(context, dest, document, node);
			}
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
			
			var uvs:Array = primitive.uvSets[0];
			var textCoord:DaeInput = primitive.texCoordInputs[0];
			var source:DaeSource = document.sources[textCoord.source];
			
			for (var i:int = 0; i < uvs.length; i++) 
			{
				mesh.uvts.push(source.data[uvs[i][2]][0], source.data[uvs[i][2]][1], 0);
				mesh.uvts.push(source.data[uvs[i][1]][0], source.data[uvs[i][1]][1], 0);
				mesh.uvts.push(source.data[uvs[i][0]][0], source.data[uvs[i][0]][1], 0);
			}
			
			for each (var vertex:Array in primitive.vertices.source.data) 
			{
				mesh.vertices.push(-vertex[0], vertex[1], -vertex[2]);
			}
			
			for each (var triangle:Array in primitive.triangles) 
			{
				mesh.indices.push(triangle[2], triangle[1], triangle[0]);
			}
		}
		
		static private function urlToID(url:String):String
		{
			return url.substr(1);
		}
		
	}

}