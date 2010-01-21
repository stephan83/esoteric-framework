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

package com.esoteric.net
{
	import com.esoteric.core.ElementFactory;
	import com.esoteric.core.ElementProxy;
	import com.esoteric.core.ElementProxyManager;
	import com.esoteric.core.IElement;
	import com.esoteric.core.XMLParser;
	import com.esoteric.core.Context;
	import flash.events.Event;
	import flash.events.IOErrorEvent;
	import flash.net.URLLoader;
	import flash.net.URLLoaderDataFormat;
	import flash.net.URLRequest;
	import flash.net.URLRequestMethod;
	import flash.net.URLVariables;
	
	public class RemoteXMLElement extends AbstractRemoteXMLElement
	{
		
		//---------------------------------------------------------------------
		// Constructor
		//---------------------------------------------------------------------
		
		/**
		 * Constructor.
		 */
		public function RemoteXMLElement(context:Context, kind:String) 
		{
			super(context, kind);
			
			_loader.addEventListener(Event.COMPLETE, completeHandler);
			_loader.addEventListener(IOErrorEvent.IO_ERROR, ioErrorHandler);
		}
		
		//---------------------------------------------------------------------
		// Members
		//---------------------------------------------------------------------
		
		/**
		 * @private
		 */
		private var _loader:URLLoader = new URLLoader();
		
		//---------------------------------------------------------------------
		// Overrides
		//---------------------------------------------------------------------
		
		/**
		 * @inheritDoc
		 */
		override public function destroy():void
		{
			try
			{
				_loader.close();
			}
			catch (error:Error)
			{
				
			}
			
			super.destroy();
		}
		
		//---------------------------------------------------------------------
		// Methods
		//---------------------------------------------------------------------
		
		/**
		 * Loads the remote XML data.
		 */
		public function load():void
		{
			startLoading();
			
			try
			{
				_loader.close();
			}
			catch (error:Error)
			{
				
			}
			
			var request:URLRequest = new URLRequest(url);
			
			if (variables && variables.length)
			{
				var urlVariables:URLVariables = new URLVariables();
				
				for (var i:int = 0; i < variables.length; i++)
				{
					urlVariables[variables[i][0]] = variables[i][1];
				}
				
				request.method = URLRequestMethod.POST;
				request.data = urlVariables;
				//_loader.dataFormat = URLLoaderDataFormat.VARIABLES;
			}
			
			_loader.load(request);
		}
		
		/**
		 * @private
		 */
		private function completeHandler(event:Event):void
		{
			for (var i:int = numChildren - 1; i >= 0; i--)
			{
				getChildAt(i).destroy();
			}
			
			var xml:XML = XML(event.target.data);
			
			addChild(XMLParser.parseNode(xml, context));
			
			var proxy:ElementProxy = ElementProxyManager.getInstance(this);
			var attributes:XMLList = xml.attributes();
			var length:int = attributes.length();
			
			proxy.text = xml.text();
			
			for (i = 0; i < length; i++)
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
			
			finishLoading();
		}
		
		/**
		 * @private
		 */
		private function ioErrorHandler(event:IOErrorEvent):void
		{
			errorLoading();
		}

	}
	
}
