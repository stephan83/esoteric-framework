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

package com.esoteric.equery 
{
	/**
	 * An eQuery.
	 * 
	 * @author Stephan Florquin
	 */
	public class EQuery
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
		 * @param	elements	the array of elements
		 * @return	an array of elements, an element, or null
		 */
		public function eval(elements:Array):*
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
			
			var elementSet:ElementSet = new ElementSet(elements);
			var walker:EQueryWalker = new EQueryWalker(nodes);
			
			walker.elementSet = elementSet;
			
			walker.main();
			
			var result:Array = elementSet.result;
			
			if (!result.length)
			{
				return null;
			}
			else if (result.length == 1)
			{
				return result[0];
			}
			
			return result;
		}
		
	}

}