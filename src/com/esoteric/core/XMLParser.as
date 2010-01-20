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
	import com.esoteric.display.ApplicationElement;
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
		 * Parses an application.
		 * 
		 * @param	xml				the XML to parse
		 * @param	stage			the stage
		 * @param	elementFactory	the element factory
		 * @param	expVm			the expression virtual machine
		 * @param	expQueue		the expression queue
		 * @param	renderQueue		the render queue
		 * @param	renderEngine	the 3D render engine
		 * @param	globals			the globals
		 * @return	the application element
		 */
		public static function parse(xml:XML, stage:Stage, elementFactory:ElementFactory, expVm:ExpressionVm = null, expQueue:ElementExpressionQueue = null, renderQueue:RenderQueue = null, renderEngine:IRenderEngine = null, cache:Cache = null, globals:BindableObject = null, extraContext:Object = null):ApplicationElement
		{
			var application:ApplicationElement = new ApplicationElement(stage, elementFactory, expVm, expQueue, renderQueue, renderEngine, cache, globals, extraContext);
			
			parseChildren(xml, elementFactory, application, application);
			
			parseAttributes(xml, application);
			
			application.dispatchEvent(new LoadEvent(LoadEvent.PARSED));
			
			application.main();
			
			return application;
		}
		
		/**
		 * Parses a node.
		 * 
		 * @param	xml				the node XML
		 * @param	elementFactory	the element factory
		 * @param	root			the root element
		 * @param	parent			the parent element
		 * @return					the element
		 */
		public static function parseNode(xml:XML, elementFactory:ElementFactory, root:ApplicationElement, parent:IElement):IElement
		{
			try
			{
				var element:IElement = elementFactory.create(xml.name(), root, parent);
				
				parseChildren(xml, elementFactory, root, element);
				
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
		 * Parses attriburets
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
		
		public static function parseChildren(xml:XML, elementFactory:ElementFactory, root:ApplicationElement, element:IElement):void
		{
			for each(var child:XML in xml.*)
			{
				if (child.name())
				{
					element.addChild(parseNode(child, elementFactory, root, element));
				}
			}
		}
		
	}
	
}