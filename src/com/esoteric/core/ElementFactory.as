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
	import com.esoteric.core.Context;
	import com.esoteric.display.BitmapFileElement;
	import com.esoteric.display.Camera3DElement;
	import com.esoteric.display.CircleElement;
	import com.esoteric.display.CurveToElement;
	import com.esoteric.display.DisplayObject3DElement;
	import com.esoteric.display.EllipseElement;
	import com.esoteric.display.GradientFillElement;
	import com.esoteric.display.LineGradientStyleElement;
	import com.esoteric.display.LineStyleElement;
	import com.esoteric.display.LineToElement;
	import com.esoteric.display.LoaderElement;
	import com.esoteric.display.MoveToElement;
	import com.esoteric.display.MovieMaterialElement;
	import com.esoteric.display.PlaneElement;
	import com.esoteric.display.RoundedRectangleElement;
	import com.esoteric.display.RectangleElement;
	import com.esoteric.display.Scene3DElement;
	import com.esoteric.display.ShapeElement;
	import com.esoteric.display.SolidFillElement;
	import com.esoteric.display.Sprite3DElement;
	import com.esoteric.display.SpriteElement;
	import com.esoteric.display.Viewport3DElement;
	import com.esoteric.errors.UnknownElementKindError;
	import com.esoteric.filters.BlurFilterElement;
	import com.esoteric.filters.DropShadowFilterElement;
	import com.esoteric.filters.GlowFilterElement;
	import com.esoteric.media.VideoFileElement;
	import com.esoteric.motion.FrameElement;
	import com.esoteric.motion.TimelineElement;
	import com.esoteric.net.RemoteXMLElement;
	import com.esoteric.sound.SoundFileElement;
	import com.esoteric.text.TextFieldElement;
	import com.esoteric.utils.TimerElement;
	
	/**
	* @author Stephan Florquin
	*/
	public class ElementFactory 
	{
		
		//---------------------------------------------------------------------
		// Constructor
		//---------------------------------------------------------------------
		
		/**
		 * Constructor.
		 */
		public function ElementFactory(allowUnknown:Boolean = true) 
		{
			_allowUnknown = allowUnknown;
			
			loadBuiltins();
		}
		
		//---------------------------------------------------------------------
		// Variables
		//---------------------------------------------------------------------
		
		/**
		 * @private
		 */
		private var _allowUnknown:Boolean;
		
		/**
		 * @private
		 */
		private var _builders:Object = new Object();
		
		/**
		 * @private
		 */
		private var _unknownBuilder:IElementBuilder = new UnknownElementBuilder();
		
		//---------------------------------------------------------------------
		// Methods
		//---------------------------------------------------------------------
		
		/**
		 * Adds an element kind.
		 * 
		 * @param	kind	the element kind
		 * @param	builder	the element builder
		 */
		public function add(kind:String, builder:IElementBuilder):void
		{
			_builders[kind] = builder;
		}
		
		/**
		 * Creates an element.
		 * 
		 * @param	context			the context
		 * @param	kind			the element kind
		 * @return	the element
		 */
		public function create(context:Context, kind:String):IElement
		{
			var element:IElement;
			
			if (!_builders[kind])
			{
				if (_allowUnknown)
				{
					element = _unknownBuilder.build(context, kind);
					
					return element;
				}
				
				throw new UnknownElementKindError(kind);
			}
			
			element = _builders[kind].build(context, kind);
			
			element.initialize();
			
			return element;
		}
		
		/**
		 * @private
		 */
		private function loadBuiltins():void
		{
			add("BitmapFile", new StaticElementBuilder(BitmapFileElement));
			add("BlurFilter", new StaticElementBuilder(BlurFilterElement));
			add("Camera3D", new StaticElementBuilder(Camera3DElement));
			add("Circle", new StaticElementBuilder(CircleElement));
			add("CurveTo", new StaticElementBuilder(CurveToElement));
			add("DisplayObject3D", new StaticElementBuilder(DisplayObject3DElement));
			add("DropShadowFilter", new StaticElementBuilder(DropShadowFilterElement));
			add("Ellipse", new StaticElementBuilder(EllipseElement));
			add("EventListener", new StaticElementBuilder(EventListenerElement));
			add("Frame", new StaticElementBuilder(FrameElement));
			add("Global", new StaticElementBuilder(GlobalElement));
			add("GlowFilter", new StaticElementBuilder(GlowFilterElement));
			add("GradientFill", new StaticElementBuilder(GradientFillElement));
			add("LineGradientStyle", new StaticElementBuilder(LineGradientStyleElement));
			add("LineStyle", new StaticElementBuilder(LineStyleElement));
			add("LineTo", new StaticElementBuilder(LineToElement));
			add("Loader", new StaticElementBuilder(LoaderElement));
			add("MovieMaterial", new StaticElementBuilder(MovieMaterialElement));
			add("MoveTo", new StaticElementBuilder(MoveToElement));
			add("Plane", new StaticElementBuilder(PlaneElement));
			add("Rectangle", new StaticElementBuilder(RectangleElement));
			add("RemoteXML", new StaticElementBuilder(RemoteXMLElement));
			add("RoundedRectangle", new StaticElementBuilder(RoundedRectangleElement));
			add("Scene3D", new StaticElementBuilder(Scene3DElement));
			add("Script", new StaticElementBuilder(ScriptElement));
			add("Shape", new StaticElementBuilder(ShapeElement));
			add("SolidFill", new StaticElementBuilder(SolidFillElement));
			add("SoundFile", new StaticElementBuilder(SoundFileElement));
			add("Sprite", new StaticElementBuilder(SpriteElement));
			add("Sprite3D", new StaticElementBuilder(Sprite3DElement));
			add("TextField", new StaticElementBuilder(TextFieldElement));
			add("Timeline", new StaticElementBuilder(TimelineElement));
			add("Timer", new StaticElementBuilder(TimerElement));
			add("VideoFile", new StaticElementBuilder(VideoFileElement));
			add("Viewport3D", new StaticElementBuilder(Viewport3DElement));
			add("Watcher", new StaticElementBuilder(WatcherElement));
		}
		
	}
	
}