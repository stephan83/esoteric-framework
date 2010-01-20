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

package com.esoteric.display
{
	import com.esoteric.core.ElementExpressionQueue;
	import com.esoteric.core.ElementFactory;
	import com.esoteric.core.ElementProxyManager;
	import com.esoteric.core.IElement;
	import com.esoteric.core.IElementProxy;
	import com.esoteric.core.RenderQueue;
	import com.esoteric.core.XMLParser;
	import com.esoteric.display.ApplicationElement;
	import com.esoteric.events.ElementEvent;
	import com.esoteric.events.LoadEvent;
	import com.esoteric.events.PropertyChangeEvent;
	import com.esoteric.expressions.ExpressionVm;
	import com.esoteric.net.Cache;
	import com.esoteric.utils.BindableObject;
	import com.esoteric.utils.Profiler;
	import com.esoteric.utils.Watcher;
	import flash.display.Stage;
	import flash.media.SoundMixer;
	import flash.media.SoundTransform;
	import org.papervision3d.core.render.IRenderEngine;
	import org.papervision3d.core.utils.Mouse3D;
	import org.papervision3d.render.BasicRenderEngine;
	
	/**
	* Generated 2008-08-03 06:34:42.899000 UTC.
	*/
	public class ApplicationElement extends AbstractApplicationElement
	{
		
		//---------------------------------------------------------------------
		// Constructor
		//---------------------------------------------------------------------
		
		/**
		 * Constructor.
		 */
		public function ApplicationElement(stage:Stage, elementFactory:ElementFactory = null, expVm:ExpressionVm = null, expQueue:ElementExpressionQueue = null, renderQueue:RenderQueue = null, renderEngine:IRenderEngine = null, cache:Cache = null, globals:BindableObject = null, extraContext:Object = null) 
		{
			// This one need to be set before the super constructor.
			this.stage = stage;
			
			super(this, null, 'Application');
			
			this.elementFactory = elementFactory ? elementFactory: new ElementFactory();
			this.expVm = expVm ? expVm: new ExpressionVm();
			this.expQueue = expQueue ? expQueue: new ElementExpressionQueue();
			this.renderQueue = renderQueue ? renderQueue : new RenderQueue();
			this.renderEngine = renderEngine ? renderEngine : new BasicRenderEngine();
			this.cache = cache ? cache : new Cache();
			this.globals = globals ? globals : new BindableObject();
			this.extraContext = extraContext ? extraContext : new BindableObject();
			
			// TODO: Move this somewhere else.
			Mouse3D.enabled = true;
			
			new Watcher(this, 'volume', volumeWatcher);
		}

		
		//---------------------------------------------------------------------
		// Methods
		//---------------------------------------------------------------------
		
		/**
		 * Main loop.
		 */
		public function main():void
		{
			dispatchEventNow(new ElementEvent(ElementEvent.PRE_RENDER));
			
			while (expQueue.numExpressions || renderQueue.numElements)
			{
				expQueue.run();
				renderQueue.render();
			}
			
			dispatchEventNow(new ElementEvent(ElementEvent.POST_RENDER));
		}
		
		/**
		 * Creates an element.
		 * 
		 * @param	kind	the element kind
		 * @return	the element
		 */
		public function createElement(kind:String):IElement
		{
			var element:IElement = elementFactory.create(kind, this, null);
			
			element.dispatchEvent(new LoadEvent(LoadEvent.PARSED));
			
			return element;
		}
		
		/**
		 * Creates an element from XML.
		 * 
		 * @param	xml	the xml for the node
		 * @return	the element
		 */
		public function parseElement(xml:String):IElement
		{
			return XMLParser.parseNode(XML(xml), elementFactory, root, null);
		}
		
		/**
		 * Returns the proxy of an element.
		 * 
		 * @param	element	the element
		 * @return	the element proxy
		 */
		public function getElementProxy(element:IElement):IElementProxy
		{
			return ElementProxyManager.getInstance(element);
		}
		
		/**
		 * @private
		 */
		private function volumeWatcher(e:PropertyChangeEvent):void
		{
			SoundMixer.soundTransform = new SoundTransform(e.newValue);
		}

	}
	
}