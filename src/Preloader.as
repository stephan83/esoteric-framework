package 
{
	import com.esoteric.core.Context;
	import com.esoteric.core.ElementFactory;
	import com.esoteric.core.Engine;
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
	
	[SWF(backgroundColor='#000000', frameRate='30')]
	
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
			_context = new Context(stage, factory);
			var root:PreloaderElement = XMLParser.parseNode(<Preloader />, _context, null, true) as PreloaderElement;
			
			addChild(root.sprite);
		}
		
		private var _context:Context;
		
		private var _engine:Engine = new Engine();
		
		private function progress(e:ProgressEvent):void 
		{
			// update loader
			
			
		}
		
		private function checkFrame(e:Event):void 
		{
			if (currentFrame == totalFrames) 
			{
				//removeEventListener(Event.ENTER_FRAME, checkFrame);
				//startup();
			}
			
			_engine.render(_context);
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