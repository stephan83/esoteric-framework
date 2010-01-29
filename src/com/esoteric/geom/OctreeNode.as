package com.esoteric.geom 
{
	import flash.geom.Vector3D;
	/**
	 * ...
	 * @author Stephan Florquin
	 */
	public class OctreeNode
	{
		
		private var _parent:OctreeNode
		private var _children:Vector.<OctreeNode>;
		private var _position:Vector3D;
		private var _size:int;
		
		public function OctreeNode(parent:OctreeNode = null, isLeaf:Boolean = false) 
		{
			_parent = parent;
			_children = isLeaf ? null : new Vector.<OctreeNode>(8, true);
		}
		
		public function get parent():OctreeNode { return _parent; }
		
		public function set parent(value:OctreeNode):void 
		{
			_parent = value;
		}
		
		public function get children():Vector.<OctreeNode> { return _children; }
		
		public function set children(value:Vector.<OctreeNode>):void 
		{
			_children = value;
		}
		
		public function get position():Vector3D { return _position; }
		
		public function set position(value:Vector3D):void 
		{
			_position = value;
		}
		
		public function get size():int { return _size; }
		
		public function set size(value:int):void 
		{
			_size = value;
		}
		
		public function get isLeaf():Boolean { return _children; }
		
		/**
		 * Returns the bounding node of a bounding sphere.
		 * 
		 * @param	bound	the bounding sphere
		 * @return	the bounding node
		 */
		public function getBoundingNode(bound:BoundingSphere):OctreeNode
		{
			if (bound.x - bound.radius >= _position.x - _size / 2 &&
			    bound.x + bound.radius <= _position.x + _size / 2 &&
				bound.y - bound.radius >= _position.y - _size / 2 &&
			    bound.y + bound.radius <= _position.y + _size / 2 &&
				bound.z - bound.radius >= _position.z - _size / 2 &&
			    bound.z + bound.radius <= _position.z + _size / 2)
			{
				if (!isLeaf)
				{
					for each (var child:OctreeNode in children) 
					{
						var node:OctreeNode = child.getBoundingNode(bound);
						
						if (node)
						{
							return node;
						}
					}
				}
				
				return this;
			}
			
			return null;
		}
		
	}

}