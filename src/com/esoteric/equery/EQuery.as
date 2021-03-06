﻿/*

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

package com.esoteric.equery 
{
	import com.esoteric.utils.IDestroyable;
	import org.antlr.runtime.ANTLRStringStream;
	import org.antlr.runtime.CommonTokenStream;
	import org.antlr.runtime.ParserRuleReturnScope;
	import org.antlr.runtime.tree.CommonTreeNodeStream;
	import org.antlr.runtime.tree.Tree;
	/**
	 * An eQuery.
	 * 
	 * @author Stephan Florquin
	 */
	public class EQuery implements IDestroyable
	{
		//---------------------------------------------------------------------
		// Constructor
		//---------------------------------------------------------------------
		
		/**
		 * Constructor.
		 * 
		 * @param	query	the query
		 */
		public function EQuery(query:String) 
		{
			_query = query;
		}
		
		//---------------------------------------------------------------------
		// Members
		//---------------------------------------------------------------------
		
		/**
		 * @private
		 */
		private var _query:String;
		
		//---------------------------------------------------------------------
		// Implementations
		//---------------------------------------------------------------------
		
		/**
		 * @inheritDoc
		 */
		public function destroy():void
		{
			_query = null;
		}
		
		//---------------------------------------------------------------------
		// Methods
		//---------------------------------------------------------------------
		
		/**
		 * The query.
		 */
		public function get query():String { return _query; }
		
		public function set query(value:String):void 
		{
			_query = value;
		}
		
		/**
		 * Evaluates the query on a array of elements.
		 * 
		 * @param	object		the query object
		 * @return	a set of elements
		 */
		public function eval(context:EQueryObject):ElementSet
		{
			var reporter = new EQueryErrorReporter(this);
			var lexer:EQueryLexer = new EQueryLexer(new ANTLRStringStream(_query));
			var tokens:CommonTokenStream = new CommonTokenStream(lexer);
			var parser:EQueryParser = new EQueryParser(tokens);
			parser.errorReporter = reporter;
			var r:ParserRuleReturnScope = parser.main();
			var root:Tree = Tree(r.tree);
			
			var nodes:CommonTreeNodeStream = new CommonTreeNodeStream(root);
			nodes.tokenStream = tokens;
			
			if (reporter.hasErrors)
			{
				return null;
			}
					
			var elementSet:ElementSet = context.elementSet;
			var walker:EQueryWalker = new EQueryWalker(nodes);
			
			walker.elementSet = elementSet;
			
			walker.main();
			
			return elementSet;
		}
		
	}

}