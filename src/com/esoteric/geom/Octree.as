package com.esoteric.geom 
{
	import flash.geom.Vector3D;
	/**
	 * Loose octreen implementation.
	 * 
	 * @author Stephan Florquin
	 */
	public class Octree
	{
		
		//---------------------------------------------------------------------
		// Members
		//---------------------------------------------------------------------
		
		/**
		 * @private
		 */
		private var _position:Vector3D;
		
		/**
		 * @private
		 */
		private var _size:Number;
		
		/**
		 * @private
		 */
		private var _depth:int;
		
		/**
		 * @private
		 */
		private var _nodes:Vector.<OctreeNodes> = new Vector.<OctreeNodes>();
		
		/**
		 * @private
		 */
		private var _currNodeNum:int = 0;
		
		//---------------------------------------------------------------------
		// Constructor
		//---------------------------------------------------------------------
		
		/**
		 * Constructor.
		 * 
		 * @param	size	size of the octree
		 * @param	depth	number of sub-divisions
		 */
		public function Octree(position:Vector3D, size:Number, depth:int = 8) 
		{
			_position = position;
			_size = size;
			_depth = depth;
			
			var numNodes:int = 0;
			
			for (var i:int = 1; i <= depth; i++) 
			{
				numNodes += i * i;
			}
			
			_nodes = new Vector.<OctreeNodes>(numNodes, true);
			
			createNodes();
		}
		
		//---------------------------------------------------------------------
		// Methods
		//---------------------------------------------------------------------
		
		/**
		 * The position of the octree.
		 */
		public function get position():Vector3D { return _position; }
		
		/**
		 * the size of the octree.
		 */
		public function get size():Number { return _size; }
		
		/**
		 * The number of sub-divisions.
		 */
		public function get depth():int { return _depth; }
		
		/**
		 * Returns the bounding node of a bounding sphere.
		 * 
		 * @param	bound	the bounding sphere
		 * @return	the bounding node
		 */
		public function getBoundingNode(bound:BoundingSphere):OctreeNode
		{
			return _nodes[0].getBoundingNode(bound);
		}
		
		/**
		 * @private
		 */
		private function createNodes(parent:OctreeNode = null, depth:int = 0, num:int = 0):void
		{
			var isLeaf:Boolean = depth < _depth;
			var node:OctreeNode = new OctreeNode(parent, isLeaf);
			
			if (parent)
			{
				switch(num)
				{
					case 0:
					node.position = new Vector3D(-node.width / 4, -node.width / 4, -node.with / 4);
					break;
					
					case 1:
					node.position = new Vector3D(-node.width / 4, -node.width / 4, node.with / 4);
					break;
					
					case 2:
					node.position = new Vector3D(-node.width / 4, node.width / 4, -node.with / 4);
					break;
					
					case 3:
					node.position = new Vector3D(-node.width / 4, node.width / 4, node.with / 4);
					break;
					
					case 4:
					node.position = new Vector3D(node.width / 4, -node.width / 4, -node.with / 4);
					break;
					
					case 5:
					node.position = new Vector3D(node.width / 4, -node.width / 4, node.with / 4);
					break;
					
					case 6:
					node.position = new Vector3D(node.width / 4, node.width / 4, -node.with / 4);
					break;
					
					case 7:
					node.position = new Vector3D(node.width / 4, node.width / 4, node.with / 4);
					break;
				}
				
				node.size = parent.size * .75;
			}
			else
			{
				node.position = _position;
				node.size = _size;
			}
			
			_nodes[num] = node;
			
			_currNodeNum++;
			
			if (!isLeaf)
			{
				for (var i:int = 0; i < 8; i++) 
				{
					createNodes(node, depth + 1, i);
				}
			}
		}
		
	}

}