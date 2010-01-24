package com.esoteric.utils 
{
	import com.esoteric.core.Context;
	import com.esoteric.display.ShapeElement;
	import com.esoteric.display.SpriteElement;
	import com.esoteric.text.TextFieldElement;
	import flash.display.Shape;
	import flash.display.Sprite;
	import flash.text.TextField;
	
	/**
	 * ...
	 * @author Stephan Florquin
	 */
	public class FlashTools
	{
		
		public function FlashTools() 
		{
			
		}
		
		public static function loadSprite(src:Sprite, dest:SpriteElement)
		{
			for (var i:int = 0; i < src.numChildren; i++) 
			{
				var child:Object = src.getChildAt(i);
				
				if (child is Shape)
				{
					dest.addChild(createShape(dest.context, child as Shape));
				}
				else if (child is TextField)
				{
					dest.addChild(createTextField(dest.context, child as TextField));
				}
			}
		}
		
		public static function createShape(context:Context, src:Shape):ShapeElement
		{
			var shape:ShapeElement = new ShapeElement(context, 'Shape');
			
			shape.shape = src;
			
			shape.x = src.x;
			shape.y = src.y;
			shape.width = src.width;
			shape.height = src.height;
			
			return shape;
		}
		
		public static function createTextField(context:Context, src:TextField):TextFieldElement
		{
			var textField:TextFieldElement = new TextFieldElement(context, 'TextField');
			trace('test');
			
			textField.id = src.name;
			textField.x = src.x;
			textField.y = src.y;
			textField.width = src.width;
			textField.height = src.height;
			textField.antiAliasType = src.antiAliasType;
			textField.autoSize = src.autoSize;
			textField.antiAliasType = src.antiAliasType;
			textField.embedFonts = src.embedFonts;
			textField.text = src.htmlText;
			textField.visible = src.visible;
			textField.maxChars = src.maxChars;
			textField.mouseEnabled = src.mouseEnabled;
			textField.multiline = src.multiline;
			textField.restrict = src.restrict;
			textField.rotation = src.rotation;
			textField.scaleX = src.scaleX;
			textField.scaleY = src.scaleY;
			textField.selectable = src.selectable;
			textField.sharpness = src.sharpness;
			textField.thickness = src.thickness;
			textField.type = src.type;
			textField.wordWrap = src.wordWrap;
			textField.align = src.defaultTextFormat.align;
			textField.blockIdent = src.defaultTextFormat.blockIndent;
			textField.bullet = src.defaultTextFormat.bullet;
			textField.color = src.defaultTextFormat.color;
			textField.font = src.defaultTextFormat.font;
			textField.indent = src.defaultTextFormat.indent;
			textField.italic = src.defaultTextFormat.italic;
			textField.kerning = src.defaultTextFormat.kerning;
			textField.leading = src.defaultTextFormat.leading;
			textField.leftMargin = src.defaultTextFormat.leftMargin;
			textField.letterSpacing = src.defaultTextFormat.letterSpacing;
			textField.rightMargin = src.defaultTextFormat.rightMargin;
			textField.size = src.defaultTextFormat.size;
			textField.tabStops = src.defaultTextFormat.tabStops;
			textField.underline = src.defaultTextFormat.underline;
			
			return textField;
		}
		
	}

}