package 
{
	import com.esoteric.core.Context;
	import com.esoteric.core.ElementFactory;
	import com.esoteric.core.Engine;
	import com.esoteric.core.IElement;
	import com.esoteric.core.StaticElementBuilder;
	import com.esoteric.core.XMLParser;
	import com.esoteric.esoteric;
	import com.esoteric.utils.Math3D;
	import com.esotericorp.display.PreloaderElement;
	import flash.display.DisplayObject;
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	import flash.events.Event;
	import flash.events.ProgressEvent;
	import flash.geom.Matrix3D;
	import flash.geom.PerspectiveProjection;
	import flash.geom.Vector3D;
	import flash.utils.getDefinitionByName;
	
	use namespace esoteric;
	
	[SWF(backgroundColor='#111111', frameRate='25')]
	
	/**
	 * The preloader.
	 * 
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
			
			_engine = new Engine(_context);
			
			addChild(root.displayObject);
		}
		
		private var _context:Context;
		
		private var _engine:Engine;
		
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
			
			_engine.render();
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