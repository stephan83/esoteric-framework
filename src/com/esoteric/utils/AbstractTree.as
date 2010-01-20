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

package com.esoteric.utils 
{
	import com.esoteric.events.PropertyChangeEvent;
	import flash.events.EventDispatcher;
	
	/**
	* Abstract tree class
	* 
	* @author Stephan Florquin
	*/
	public class AbstractTree extends EventDispatcher implements ITree
	{
		
		//---------------------------------------------------------------------
		// MEMBERS
		//---------------------------------------------------------------------
		
		private var _parent:AbstractTree;
		private var _children:List;
		
		//---------------------------------------------------------------------
		// CONSTRUCTOR
		//---------------------------------------------------------------------
		
		/**
		 * Class constructor.
		 * 
		 * @param	children	the children
		 */
		public function AbstractTree() 
		{
			super();
			
			_children = new List();
			
			_children.addEventListener(PropertyChangeEvent.PROPERTY_ADDED, childAddedHandler);
			_children.addEventListener(PropertyChangeEvent.PROPERTY_REMOVED, childRemovedHandler);
			_children.addEventListener(PropertyChangeEvent.PROPERTY_UPDATED, childUpdatedHandler);
		}
		
		//---------------------------------------------------------------------
		// GETTERS & SETTERS
		//---------------------------------------------------------------------
		
		public function get children():IList { return _children; }
		
		public function get parent():ITree { return _parent; }
		
		//---------------------------------------------------------------------
		// PUBLIC FUNCTION
		//---------------------------------------------------------------------
		
		/**
		 * Traverse the tree in preorder.
		 * 
		 * @param	handler	a function to call upon entering a node
		 * @return	a match
		 */
		public function traversePreorder(handler:Function):*
		{
			var result:* = handler(this);
			
			if (result)
				return result;
			
			for each(var child:ITree in _children)
			{
				result = child.traversePreorder(handler);
				
				if (result)
					return result;
			}
			
			return null;
		}
		
		/**
		 * Traverse the tree in postorder.
		 * 
		 * @param	handler	a function to call upon entering a node
		 * @return	a match
		 */
		public function traversePostorder(handler:Function):*
		{
			for each(var child:ITree in _children)
			{
				var result:* = child.traversePostorder(handler);
				
				if (result)
					return result;
			}
				
			return handler(this);
		}
		
		//---------------------------------------------------------------------
		// IMPLEMENTATION
		//---------------------------------------------------------------------
		
		public function clone():ICloneable
		{
			// Error
			
			return null;
		}
		
		//---------------------------------------------------------------------
		// HANDLERS
		//---------------------------------------------------------------------
		
		private function childUpdatedHandler(e:PropertyChangeEvent):void 
		{
			e.oldValue._parent = null;
			e.newValue._parent = this;
		}
		
		private function childRemovedHandler(e:PropertyChangeEvent):void 
		{
			e.oldValue._parent = null;
		}
		
		private function childAddedHandler(e:PropertyChangeEvent):void 
		{
			e.newValue._parent = this;
		}
		
	}
	
}