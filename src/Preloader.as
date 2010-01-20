package 
{
	import com.esoteric.core.Context;
	import com.esoteric.core.ElementFactory;
	import com.esoteric.core.IElement;
	import com.esoteric.core.StaticElementBuilder;
	import com.esoteric.core.XMLParser;
	import com.esotericorp.display.PreloaderElement;
	import flash.display.DisplayObject;
	import flash.display.MovieClip;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	import flash.events.Event;
	import flash.events.ProgressEvent;
	import flash.utils.getDefinitionByName;
	
	[SWF(backgroundColor='#000000', frameRate='25')]
	
	/**
	 * ...
	 * @author Stephan Florquin
	 */
	public class Preloader extends MovieClip 
	{
		
		public function Preloader() 
		{
			addEventListener(Event.ENTER_FRAME, checkFrame);
			loaderInfo.addEventListener(ProgressEvent.PROGRESS, progress);
			// show loader
			
			stage.align = StageAlign.TOP_LEFT;
			stage.scaleMode = StageScaleMode.NO_SCALE
			
			var factory:ElementFactory = new ElementFactory();
			factory.add('Preloader', new StaticElementBuilder(PreloaderElement));
			var context:Context = new Context(stage, factory);
			var root:PreloaderElement = XMLParser.parseNode(<Preloader />, context) as PreloaderElement;
			
			addChild(root.sprite);
		}
		
		private function progress(e:ProgressEvent):void 
		{
			// update loader
		}
		
		private function checkFrame(e:Event):void 
		{
			if (currentFrame == totalFrames) 
			{
				removeEventListener(Event.ENTER_FRAME, checkFrame);
				//startup();
			}
		}
		
		private function startup():void 
		{
			// hide loader
			stop();
			loaderInfo.removeEventListener(ProgressEvent.PROGRESS, progress);
			var mainClass:Class = getDefinitionByName("Main") as Class;
			addChild(new mainClass() as DisplayObject);
		}
		
	}
	
}