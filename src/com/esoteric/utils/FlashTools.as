package com.esoteric.utils 
{
	import com.esoteric.core.Context;
	import com.esoteric.display.BitmapElement;
	import com.esoteric.display.ShapeElement;
	import com.esoteric.display.SpriteElement;
	import com.esoteric.text.TextFieldElement;
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.DisplayObject;
	import flash.display.Shape;
	import flash.display.Sprite;
	import flash.text.TextField;
	import flash.utils.getQualifiedClassName;
	
	/**
	 * Flash tools.
	 * 
	 * @author Stephan Florquin
	 */
	public class FlashTools
	{
		
		/**
		 * Loads a sprite into a sprite element.
		 * 
		 * It will add children elements for the supported display objects:
		 * 
		 * 	- Bitmap will be added as a BitmapElement
		 * 	- TextField will be added as a TextFieldElement
		 *  - Sprite will be added as a SpriteElement, which children set as in
		 * 	  this function
		 * 
		 * Other display objects will be added to the sprite of the sprite
		 * element, but elements won't be created for them.
		 * 
		 * The source sprite is used in a destructive manner, so this method
		 * should only be used on a unique sprite that isn't used for something
		 * else.
		 * 
		 * @param	src		the sprite
		 * @param	dest	the sprite element
		 */
		public static function loadSprite(src:Sprite, dest:SpriteElement)
		{
			dest.id = src.name;
			dest.x = src.x;
			dest.y = src.y;
			dest.alpha = src.alpha;
			dest.visible = src.visible;
			dest.scaleX = src.scaleX;
			dest.scaleY = src.scaleY;
			dest.rotation = src.rotation;
			
			for (var i:int = 0; i < src.numChildren; i++) 
			{
				var child:DisplayObject = src.getChildAt(i);
				
				if (child is TextField)
				{
					dest.addChild(createTextField(dest.context, child as TextField));
				}
				else if (child is Bitmap)
				{
					dest.addChild(createBitmap(dest.context, child as Bitmap));
				}
				else if (child is Sprite)
				{
					var sprite:SpriteElement = new SpriteElement(dest.context, 'Sprite');
					sprite.initialize();
					loadSprite(child as Sprite, sprite);
					dest.addChild(sprite);
				}
				else
				{
					dest.sprite.addChild(child);
					i--;
				}
			}
		}
		
		/**
		 * Creates a text field element from a text field.
		 * 
		 * @param	context	the element context
		 * @param	src		the text field
		 * @return	the text field element
		 */
		public static function createTextField(context:Context, src:TextField):TextFieldElement
		{
			var textField:TextFieldElement = new TextFieldElement(context, 'TextField');
			
			textField.initialize();
			
			textField.id = src.name;
			textField.x = src.x;
			textField.y = src.y;
			textField.width = src.width;
			textField.alpha = src.alpha;
			textField.visible = src.visible;
			textField.height = src.height;
			textField.antiAliasType = src.antiAliasType;
			textField.autoSize = src.autoSize;
			textField.antiAliasType = src.antiAliasType;
			textField.embedFonts = src.embedFonts;
			textField.text = src.htmlText;
			textField.visible = src.visible;
			textField.maxChars = src.maxChars;
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
		
		/**
		 * Creates a bitmap element from a bitmap.
		 * 
		 * @param	context	the element context
		 * @param	src		the bitmap
		 * @return	the bitmap element
		 */
		public static function createBitmap(context:Context, src:Bitmap):BitmapElement
		{
			var bitmap:BitmapElement = new BitmapElement(context, 'Bitmap');
			
			bitmap.initialize();
			
			bitmap.bitmap.bitmapData = src.bitmapData.clone();
			
			bitmap.id = src.name;
			bitmap.x = src.x;
			bitmap.y = src.y;
			bitmap.width = src.width;
			bitmap.height = src.height;
			bitmap.alpha = src.alpha;
			bitmap.visible = src.visible;
			bitmap.rotation = src.rotation;
			bitmap.scaleX = src.scaleX;
			bitmap.scaleY = src.scaleY;
			
			return bitmap;
		}
		
	}

}