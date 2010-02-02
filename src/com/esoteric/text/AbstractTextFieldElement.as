/*
	DO NOT MODIFY THIS FILE, THE CODE GENERATOR WILL ERASE ANY CHANGES MADE.
	MAKE CHANGES TO THE DERIVED CLASS INSTEAD.

	Last generated 2010-02-02 00:19:45.531000 UTC.

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

package com.esoteric.text 
{
	import com.esoteric.display.InteractiveObjectElement;
	import flash.text.AntiAliasType;
	import flash.text.TextField;
	import flash.text.TextFieldAutoSize;
	import flash.text.TextFieldType;
	import flash.text.TextFormat;
	import flash.text.TextFormatAlign;

	import com.esoteric.core.Context;
	import com.esoteric.esoteric;
	import com.esoteric.events.ElementEvent;
	import com.esoteric.events.PropertyChangeEvent;
	
	use namespace esoteric;
	
	public class AbstractTextFieldElement extends InteractiveObjectElement
	{
		
		//---------------------------------------------------------------------
		// Constructor
		//---------------------------------------------------------------------
		
		/**
		 * Constructor.
		 */
		public function AbstractTextFieldElement(context:Context, kind:String) 
		{
			super(context, kind);
			
			textField.embedFonts = _embedFonts;
			textFormat.color = _color;
			textField.sharpness = _sharpness;
			textField.wordWrap = _wordWrap;
			textFormat.font = _font;
			textFormat.underline = _underline;
			textFormat.size = _size;
			textField.antiAliasType = _antiAliasType;
			textFormat.leading = _leading;
			textField.thickness = _thickness;
			textFormat.kerning = _kerning;
			textField.multiline = _multiline;
			textFormat.italic = _italic;
			textFormat.leftMargin = _leftMargin;
			textField.type = _type;
			textField.autoSize = _autoSize;
			textFormat.rightMargin = _rightMargin;
			textField.maxChars = _maxChars;
			textFormat.letterSpacing = _letterSpacing;
			textField.selectable = _selectable;
			textFormat.indent = _indent;
			textFormat.bullet = _bullet;
			textFormat.align = _align;
			textFormat.blockIndent = _blockIdent;

		}
		
		//---------------------------------------------------------------------
		// Overrides
		//---------------------------------------------------------------------
		
		/**
		 * @inheritDoc
		 */
		
		override public function initialize():void
		{
			super.initialize();
			

		}

		//---------------------------------------------------------------------
		// Variables
		//---------------------------------------------------------------------
		
		/**
		 * @private
		 */
		esoteric var _textField:TextField = new TextField();

		/**
		 * @private
		 */
		esoteric var _textFormat:TextFormat = new TextFormat();

		/**
		 * @private
		 */
		esoteric var _textHeight:int = 0;

		/**
		 * @private
		 */
		esoteric var _textWidth:int = 0;

		/**
		 * @private
		 */
		esoteric var _embedFonts:Boolean = false;

		/**
		 * @private
		 */
		esoteric var _color:Object = 0x000000;

		/**
		 * @private
		 */
		esoteric var _sharpness:int = -100;

		/**
		 * @private
		 */
		esoteric var _restrict:String = null;

		/**
		 * @private
		 */
		esoteric var _wordWrap:Boolean = false;

		/**
		 * @private
		 */
		esoteric var _font:String = "_sans";

		/**
		 * @private
		 */
		esoteric var _tabStops:Array = null;

		/**
		 * @private
		 */
		esoteric var _underline:Object = false;

		/**
		 * @private
		 */
		esoteric var _size:Object = 12;

		/**
		 * @private
		 */
		esoteric var _antiAliasType:String = AntiAliasType.ADVANCED;

		/**
		 * @private
		 */
		esoteric var _leading:Object = 0;

		/**
		 * @private
		 */
		esoteric var _thickness:int = 100;

		/**
		 * @private
		 */
		esoteric var _kerning:Object = false;

		/**
		 * @private
		 */
		esoteric var _multiline:Boolean = false;

		/**
		 * @private
		 */
		esoteric var _italic:Object = false;

		/**
		 * @private
		 */
		esoteric var _leftMargin:Object = 0;

		/**
		 * @private
		 */
		esoteric var _type:String = TextFieldType.DYNAMIC;

		/**
		 * @private
		 */
		esoteric var _autoSize:String = TextFieldAutoSize.NONE;

		/**
		 * @private
		 */
		esoteric var _rightMargin:Object = 0;

		/**
		 * @private
		 */
		esoteric var _maxChars:int = 0;

		/**
		 * @private
		 */
		esoteric var _letterSpacing:Object = 0.0;

		/**
		 * @private
		 */
		esoteric var _selectable:Boolean = false;

		/**
		 * @private
		 */
		esoteric var _indent:Object = 0;

		/**
		 * @private
		 */
		esoteric var _bullet:Object = false;

		/**
		 * @private
		 */
		esoteric var _url:String = null;

		/**
		 * @private
		 */
		esoteric var _align:String = TextFormatAlign.LEFT;

		/**
		 * @private
		 */
		esoteric var _blockIdent:Object = 0;


		//---------------------------------------------------------------------
		// Getters and setters
		//---------------------------------------------------------------------
		
		/**
		 * The text field object. [default = new TextField()]
		 *
		 * @default	new TextField()
		 */
		protected function get textField():TextField { return _textField; }
		
		protected function set textField(value:TextField):void 
		{
			if(_textField != value)
			{
				var oldValue:TextField = _textField;
			
				if(value)
				{
					value.embedFonts = _embedFonts;
					value.sharpness = _sharpness;
					value.restrict = _restrict;
					value.wordWrap = _wordWrap;
					value.antiAliasType = _antiAliasType;
					value.thickness = _thickness;
					value.multiline = _multiline;
					value.type = _type;
					value.autoSize = _autoSize;
					value.maxChars = _maxChars;
					value.selectable = _selectable;

				}
			
				_textField = value;


			}
		}

		/**
		 * The text format object. [default = new TextFormat()]
		 *
		 * @default	new TextFormat()
		 */
		protected function get textFormat():TextFormat { return _textFormat; }
		
		protected function set textFormat(value:TextFormat):void 
		{
			if(_textFormat != value)
			{
				var oldValue:TextFormat = _textFormat;
			
				if(value)
				{
					value.color = _color;
					value.font = _font;
					value.tabStops = _tabStops;
					value.underline = _underline;
					value.size = _size;
					value.leading = _leading;
					value.kerning = _kerning;
					value.italic = _italic;
					value.leftMargin = _leftMargin;
					value.rightMargin = _rightMargin;
					value.letterSpacing = _letterSpacing;
					value.indent = _indent;
					value.bullet = _bullet;
					value.url = _url;
					value.align = _align;
					value.blockIndent = _blockIdent;

				}
			
				_textFormat = value;

				//context.renderQueue.add(this);


				dispatchEvent(new ElementEvent(ElementEvent.UPDATED));
			}
		}

		/**
		 * The text height. [default = 0]
		 *
		 * @default	0
		 */
		public function get textHeight():int { return _textHeight; }
		
		public function set textHeight(value:int):void 
		{
			if(_textHeight != value)
			{
				var oldValue:int = _textHeight;
			

			
				_textHeight = value;
				dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED + 'textHeight', false, false, oldValue, value));
				//context.renderQueue.add(this);


				dispatchEvent(new ElementEvent(ElementEvent.UPDATED));
			}
		}

		/**
		 * The text width. [default = 0]
		 *
		 * @default	0
		 */
		public function get textWidth():int { return _textWidth; }
		
		public function set textWidth(value:int):void 
		{
			if(_textWidth != value)
			{
				var oldValue:int = _textWidth;
			

			
				_textWidth = value;
				dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED + 'textWidth', false, false, oldValue, value));
				//context.renderQueue.add(this);


				dispatchEvent(new ElementEvent(ElementEvent.UPDATED));
			}
		}


		/**
		 * Whether to embed fonts. [default = false]
		 *
		 * @default	false
		 */
		public function get embedFonts():Boolean { return _embedFonts; }
		
		public function set embedFonts(value:Boolean):void 
		{

			if(embedFonts != value)
			{
				var oldValue:Boolean = _embedFonts;


				
				_embedFonts = value;

				if(textField)
				{
					textField.embedFonts = value;
				}

				//context.renderQueue.add(this);


				dispatchEvent(new ElementEvent(ElementEvent.UPDATED));			
				dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED + 'embedFonts', false, false, oldValue, value));
			}
		}

		/**
		 * The font color. [default = 0x000000]
		 *
		 * @default	0x000000
		 */
		public function get color():Object { return _color; }
		
		public function set color(value:Object):void 
		{

			if(color != value)
			{
				var oldValue:Object = _color;


				
				_color = value;

				if(textFormat)
				{
					textFormat.color = value;
				}

				//context.renderQueue.add(this);


				dispatchEvent(new ElementEvent(ElementEvent.UPDATED));			
				dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED + 'color', false, false, oldValue, value));
			}
		}

		/**
		 * The sharpness of the text. [default = -100]
		 *
		 * @default	-100
		 */
		public function get sharpness():int { return _sharpness; }
		
		public function set sharpness(value:int):void 
		{

			if(sharpness != value)
			{
				var oldValue:int = _sharpness;


				
				_sharpness = value;

				if(textField)
				{
					textField.sharpness = value;
				}

				//context.renderQueue.add(this);


				dispatchEvent(new ElementEvent(ElementEvent.UPDATED));			
				dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED + 'sharpness', false, false, oldValue, value));
			}
		}

		/**
		 * Restricts what characters are allowed upon user input. [default = null]
		 *
		 * @default	null
		 */
		public function get restrict():String { return _restrict; }
		
		public function set restrict(value:String):void 
		{

			if(restrict != value)
			{
				var oldValue:String = _restrict;


				
				_restrict = value;

				if(textField)
				{
					textField.restrict = value;
				}

				//context.renderQueue.add(this);


				dispatchEvent(new ElementEvent(ElementEvent.UPDATED));			
				dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED + 'restrict', false, false, oldValue, value));
			}
		}

		/**
		 * Whether to word wrap the text. [default = false]
		 *
		 * @default	false
		 */
		public function get wordWrap():Boolean { return _wordWrap; }
		
		public function set wordWrap(value:Boolean):void 
		{

			if(wordWrap != value)
			{
				var oldValue:Boolean = _wordWrap;


				
				_wordWrap = value;

				if(textField)
				{
					textField.wordWrap = value;
				}

				//context.renderQueue.add(this);


				dispatchEvent(new ElementEvent(ElementEvent.UPDATED));			
				dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED + 'wordWrap', false, false, oldValue, value));
			}
		}

		/**
		 * The font name. [default = "_sans"]
		 *
		 * @default	"_sans"
		 */
		public function get font():String { return _font; }
		
		public function set font(value:String):void 
		{

			if(font != value)
			{
				var oldValue:String = _font;


				
				_font = value;

				if(textFormat)
				{
					textFormat.font = value;
				}

				//context.renderQueue.add(this);


				dispatchEvent(new ElementEvent(ElementEvent.UPDATED));			
				dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED + 'font', false, false, oldValue, value));
			}
		}

		/**
		 * The tab stops. [default = null]
		 *
		 * @default	null
		 */
		public function get tabStops():Array { return _tabStops; }
		
		public function set tabStops(value:Array):void 
		{

			if(tabStops != value)
			{
				var oldValue:Array = _tabStops;


				
				_tabStops = value;

				if(textFormat)
				{
					textFormat.tabStops = value;
				}

				//context.renderQueue.add(this);


				dispatchEvent(new ElementEvent(ElementEvent.UPDATED));			
				dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED + 'tabStops', false, false, oldValue, value));
			}
		}

		/**
		 * Whether to underline the text. [default = false]
		 *
		 * @default	false
		 */
		public function get underline():Object { return _underline; }
		
		public function set underline(value:Object):void 
		{

			if(underline != value)
			{
				var oldValue:Object = _underline;


				
				_underline = value;

				if(textFormat)
				{
					textFormat.underline = value;
				}

				//context.renderQueue.add(this);


				dispatchEvent(new ElementEvent(ElementEvent.UPDATED));			
				dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED + 'underline', false, false, oldValue, value));
			}
		}

		/**
		 * The font size. [default = 12]
		 *
		 * @default	12
		 */
		public function get size():Object { return _size; }
		
		public function set size(value:Object):void 
		{

			if(size != value)
			{
				var oldValue:Object = _size;


				
				_size = value;

				if(textFormat)
				{
					textFormat.size = value;
				}

				//context.renderQueue.add(this);


				dispatchEvent(new ElementEvent(ElementEvent.UPDATED));			
				dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED + 'size', false, false, oldValue, value));
			}
		}

		/**
		 * The type of anti-aliasing. [default = AntiAliasType.ADVANCED]
		 *
		 * @default	AntiAliasType.ADVANCED
		 */
		public function get antiAliasType():String { return _antiAliasType; }
		
		public function set antiAliasType(value:String):void 
		{

			if(antiAliasType != value)
			{
				var oldValue:String = _antiAliasType;


				
				_antiAliasType = value;

				if(textField)
				{
					textField.antiAliasType = value;
				}

				//context.renderQueue.add(this);


				dispatchEvent(new ElementEvent(ElementEvent.UPDATED));			
				dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED + 'antiAliasType', false, false, oldValue, value));
			}
		}

		/**
		 * The text leading. [default = 0]
		 *
		 * @default	0
		 */
		public function get leading():Object { return _leading; }
		
		public function set leading(value:Object):void 
		{

			if(leading != value)
			{
				var oldValue:Object = _leading;


				
				_leading = value;

				if(textFormat)
				{
					textFormat.leading = value;
				}

				//context.renderQueue.add(this);


				dispatchEvent(new ElementEvent(ElementEvent.UPDATED));			
				dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED + 'leading', false, false, oldValue, value));
			}
		}

		/**
		 * The thickness of the text. [default = 100]
		 *
		 * @default	100
		 */
		public function get thickness():int { return _thickness; }
		
		public function set thickness(value:int):void 
		{

			if(thickness != value)
			{
				var oldValue:int = _thickness;


				
				_thickness = value;

				if(textField)
				{
					textField.thickness = value;
				}

				//context.renderQueue.add(this);


				dispatchEvent(new ElementEvent(ElementEvent.UPDATED));			
				dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED + 'thickness', false, false, oldValue, value));
			}
		}

		/**
		 * The text kerning. [default = false]
		 *
		 * @default	false
		 */
		public function get kerning():Object { return _kerning; }
		
		public function set kerning(value:Object):void 
		{

			if(kerning != value)
			{
				var oldValue:Object = _kerning;


				
				_kerning = value;

				if(textFormat)
				{
					textFormat.kerning = value;
				}

				//context.renderQueue.add(this);


				dispatchEvent(new ElementEvent(ElementEvent.UPDATED));			
				dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED + 'kerning', false, false, oldValue, value));
			}
		}

		/**
		 * Whether the text can spread over multiple lines. [default = false]
		 *
		 * @default	false
		 */
		public function get multiline():Boolean { return _multiline; }
		
		public function set multiline(value:Boolean):void 
		{

			if(multiline != value)
			{
				var oldValue:Boolean = _multiline;


				
				_multiline = value;

				if(textField)
				{
					textField.multiline = value;
				}

				//context.renderQueue.add(this);


				dispatchEvent(new ElementEvent(ElementEvent.UPDATED));			
				dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED + 'multiline', false, false, oldValue, value));
			}
		}

		/**
		 * Whether the text is italic. [default = false]
		 *
		 * @default	false
		 */
		public function get italic():Object { return _italic; }
		
		public function set italic(value:Object):void 
		{

			if(italic != value)
			{
				var oldValue:Object = _italic;


				
				_italic = value;

				if(textFormat)
				{
					textFormat.italic = value;
				}

				//context.renderQueue.add(this);


				dispatchEvent(new ElementEvent(ElementEvent.UPDATED));			
				dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED + 'italic', false, false, oldValue, value));
			}
		}

		/**
		 * The left margin, in pixels. [default = 0]
		 *
		 * @default	0
		 */
		public function get leftMargin():Object { return _leftMargin; }
		
		public function set leftMargin(value:Object):void 
		{

			if(leftMargin != value)
			{
				var oldValue:Object = _leftMargin;


				
				_leftMargin = value;

				if(textFormat)
				{
					textFormat.leftMargin = value;
				}

				//context.renderQueue.add(this);


				dispatchEvent(new ElementEvent(ElementEvent.UPDATED));			
				dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED + 'leftMargin', false, false, oldValue, value));
			}
		}

		/**
		 * The type of the text field (either 'dynamic' or 'input'). [default = TextFieldType.DYNAMIC]
		 *
		 * @default	TextFieldType.DYNAMIC
		 */
		public function get type():String { return _type; }
		
		public function set type(value:String):void 
		{

			if(type != value)
			{
				var oldValue:String = _type;


				
				_type = value;

				if(textField)
				{
					textField.type = value;
				}

				//context.renderQueue.add(this);


				dispatchEvent(new ElementEvent(ElementEvent.UPDATED));			
				dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED + 'type', false, false, oldValue, value));
			}
		}

		/**
		 * The auto-size policy for the text. [default = TextFieldAutoSize.NONE]
		 *
		 * @default	TextFieldAutoSize.NONE
		 */
		public function get autoSize():String { return _autoSize; }
		
		public function set autoSize(value:String):void 
		{

			if(autoSize != value)
			{
				var oldValue:String = _autoSize;


				
				_autoSize = value;

				if(textField)
				{
					textField.autoSize = value;
				}

				//context.renderQueue.add(this);


				dispatchEvent(new ElementEvent(ElementEvent.UPDATED));			
				dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED + 'autoSize', false, false, oldValue, value));
			}
		}

		/**
		 * The right margin, in pixels. [default = 0]
		 *
		 * @default	0
		 */
		public function get rightMargin():Object { return _rightMargin; }
		
		public function set rightMargin(value:Object):void 
		{

			if(rightMargin != value)
			{
				var oldValue:Object = _rightMargin;


				
				_rightMargin = value;

				if(textFormat)
				{
					textFormat.rightMargin = value;
				}

				//context.renderQueue.add(this);


				dispatchEvent(new ElementEvent(ElementEvent.UPDATED));			
				dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED + 'rightMargin', false, false, oldValue, value));
			}
		}

		/**
		 * The maximum number of characters allowed. [default = 0]
		 *
		 * @default	0
		 */
		public function get maxChars():int { return _maxChars; }
		
		public function set maxChars(value:int):void 
		{

			if(maxChars != value)
			{
				var oldValue:int = _maxChars;


				
				_maxChars = value;

				if(textField)
				{
					textField.maxChars = value;
				}

				//context.renderQueue.add(this);


				dispatchEvent(new ElementEvent(ElementEvent.UPDATED));			
				dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED + 'maxChars', false, false, oldValue, value));
			}
		}

		/**
		 * The letter spacing. [default = 0.0]
		 *
		 * @default	0.0
		 */
		public function get letterSpacing():Object { return _letterSpacing; }
		
		public function set letterSpacing(value:Object):void 
		{

			if(letterSpacing != value)
			{
				var oldValue:Object = _letterSpacing;


				
				_letterSpacing = value;

				if(textFormat)
				{
					textFormat.letterSpacing = value;
				}

				//context.renderQueue.add(this);


				dispatchEvent(new ElementEvent(ElementEvent.UPDATED));			
				dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED + 'letterSpacing', false, false, oldValue, value));
			}
		}

		/**
		 * Whether the text can be selected. [default = false]
		 *
		 * @default	false
		 */
		public function get selectable():Boolean { return _selectable; }
		
		public function set selectable(value:Boolean):void 
		{

			if(selectable != value)
			{
				var oldValue:Boolean = _selectable;


				
				_selectable = value;

				if(textField)
				{
					textField.selectable = value;
				}

				//context.renderQueue.add(this);


				dispatchEvent(new ElementEvent(ElementEvent.UPDATED));			
				dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED + 'selectable', false, false, oldValue, value));
			}
		}

		/**
		 * The text indentation. [default = 0]
		 *
		 * @default	0
		 */
		public function get indent():Object { return _indent; }
		
		public function set indent(value:Object):void 
		{

			if(indent != value)
			{
				var oldValue:Object = _indent;


				
				_indent = value;

				if(textFormat)
				{
					textFormat.indent = value;
				}

				//context.renderQueue.add(this);


				dispatchEvent(new ElementEvent(ElementEvent.UPDATED));			
				dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED + 'indent', false, false, oldValue, value));
			}
		}

		/**
		 * Whether the paragraphs are bullets. [default = false]
		 *
		 * @default	false
		 */
		public function get bullet():Object { return _bullet; }
		
		public function set bullet(value:Object):void 
		{

			if(bullet != value)
			{
				var oldValue:Object = _bullet;


				
				_bullet = value;

				if(textFormat)
				{
					textFormat.bullet = value;
				}

				//context.renderQueue.add(this);


				dispatchEvent(new ElementEvent(ElementEvent.UPDATED));			
				dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED + 'bullet', false, false, oldValue, value));
			}
		}

		/**
		 * The link URL for the text. [default = null]
		 *
		 * @default	null
		 */
		public function get url():String { return _url; }
		
		public function set url(value:String):void 
		{

			if(url != value)
			{
				var oldValue:String = _url;


				
				_url = value;

				if(textFormat)
				{
					textFormat.url = value;
				}

				//context.renderQueue.add(this);


				dispatchEvent(new ElementEvent(ElementEvent.UPDATED));			
				dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED + 'url', false, false, oldValue, value));
			}
		}

		/**
		 * The text alignment. [default = TextFormatAlign.LEFT]
		 *
		 * @default	TextFormatAlign.LEFT
		 */
		public function get align():String { return _align; }
		
		public function set align(value:String):void 
		{

			if(align != value)
			{
				var oldValue:String = _align;


				
				_align = value;

				if(textFormat)
				{
					textFormat.align = value;
				}

				//context.renderQueue.add(this);


				dispatchEvent(new ElementEvent(ElementEvent.UPDATED));			
				dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED + 'align', false, false, oldValue, value));
			}
		}

		/**
		 * The block indentation, in pixels. [default = 0]
		 *
		 * @default	0
		 */
		public function get blockIdent():Object { return _blockIdent; }
		
		public function set blockIdent(value:Object):void 
		{

			if(blockIdent != value)
			{
				var oldValue:Object = _blockIdent;


				
				_blockIdent = value;

				if(textFormat)
				{
					textFormat.blockIndent = value;
				}

				//context.renderQueue.add(this);


				dispatchEvent(new ElementEvent(ElementEvent.UPDATED));			
				dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED + 'blockIdent', false, false, oldValue, value));
			}
		}


	}
	
}
