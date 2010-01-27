package com.esoteric.core 
{
	/**
	 * Triangle sorting modes.
	 * 
	 * Triangle sorting is done on the triangles t-values.
	 * 
	 * @author Stephan Florquin
	 */
	public class TriangleSortMode
	{
		
		//---------------------------------------------------------------------
		// Members
		//---------------------------------------------------------------------
		
		/**
		 * Don't sort triangles at all (fastest). Objects are sorted based on
		 * their z-values.
		 * 
		 * Can only be used with very simple geomertry.
		 */
		public static const NONE:String = 'none';
		
		/**
		 * Every object has its own triangle sorted (faster). Objects are
		 * sorted based on their z-values.
		 * 
		 * Can render complex meshes propertly, but complex scenes might not
		 * render properly unless optimized to do so.
		 */
		public static const OBJECT:String = 'object';
		
		/**
		 * All the triangles are sorted globaly (slower).
		 * 
		 * Can render complex meshes and scenes properly.
		 */
		public static const SCENE:String = 'scene';
		
	}

}