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
	import com.esoteric.core.ElementExpressionQueue;
	import com.esoteric.core.RenderQueue;
	import com.esoteric.display.DisplayObjectElement;
	import com.esoteric.events.LoadEvent;
	import com.esoteric.expressions.ExpressionVm;
	import com.esoteric.net.Cache;
	import com.esoteric.utils.BindableObject;
	import flash.display.Stage;
	import flash.events.Event;
	import org.papervision3d.core.render.IRenderEngine;
	
	/**
	* @author Stephan Florquin
	*/
	public class XMLParser 
	{
		
		//---------------------------------------------------------------------
		// Class methods
		//---------------------------------------------------------------------
		
		/**
		 * Parses a node.
		 * 
		 * @param	xml				the node XML
		 * @param	context			the context
		 * @param	parent			the parent node
		 * @param	isRoot			whether element is root elements (parent must be null)
		 * @return					the element
		 */
		public static function parseNode(xml:XML, context:Context, parent:IElement = null, isRoot:Boolean = false):IElement
		{
			try
			{
				var element:IElement = context.factory.create(context, xml.name());
				
				if (parent)
				{
					parent.addChild(element);
				}
				else if (isRoot)
				{
					context.root = element as DisplayObjectElement;
				}
				
				element.initialize();
				
				parseChildren(xml, context, element);
				
				parseAttributes(xml, element);
				element.dispatchEvent(new LoadEvent(LoadEvent.PARSED));
			}
			catch (e:Error)
			{
				trace(element);
				trace(e);
			}
			
			return element;
		}
		
		/**
		 * Parses attributes.
		 * 
		 * @param	xml		the node XML
		 * @param	element	the element
		 */
		public static function parseAttributes(xml:XML, element:IElement):void
		{
			var proxy:ElementProxy = ElementProxyManager.getInstance(element);
			var attributes:XMLList = xml.attributes();
			var length:int = attributes.length();
			
			proxy.text = xml.text();
			
			for (var i:uint = 0; i < length; i++)
			{
				var value:String = attributes[i].toString();
				var n:Number = Number(value);
				
				if (value == "false")
				{
					proxy[attributes[i].name().toString()] = false;
				}
				else if (value == "true")
				{
					proxy[attributes[i].name().toString()] = true;
				}
				else if (!isNaN(n))
				{
					proxy[attributes[i].name().toString()] = n;
				}
				else
				{
					proxy[attributes[i].name().toString()] = value;
				}
			}
		}
		
		/**
		 * Parses children.
		 * 
		 * @param	xml		the node XML
		 * @param	context	the context
		 * @param	element	the element
		 */
		public static function parseChildren(xml:XML, context:Context, element:IElement):void
		{
			for each(var child:XML in xml.*)
			{
				if (child.name())
				{
					var childElement:IElement = parseNode(child, context, element);
				}
			}
		}
		
	}
	
}