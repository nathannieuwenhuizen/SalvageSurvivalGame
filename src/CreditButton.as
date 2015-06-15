package  
{
	/**
	 * ...
	 * @author Nathan Nieuwenhuizen
	 */
	import flash.display.Bitmap;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.KeyboardEvent;
	import flash.events.MouseEvent;
	import flash.ui.Mouse;

	
	
	public class CreditButton extends Sprite
	{
		[Embed(source="../img/credits button.png")]
		private var BackgroundImage:Class;
		
		//[Embed(source = "../img/menubutton.png")]
		//[Embed(source = "../img/start.png")]
		//[Embed(source = "../img/Menu button hover over.png")]
		[Embed(source="../img/credits button hover over.png")]
		private var BackgroundImage2:Class;
		
		private var bgImage:Bitmap;
		private var bgImage2:Bitmap;
		public var hoover:Boolean = false;
		
		public function CreditButton()
		{
			this.addEventListener(Event.ADDED_TO_STAGE, init);
		}
			
			
		private function init(e:Event = null):void
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			bgImage = new BackgroundImage();
			bgImage2 = new BackgroundImage2();
			
			addChild(bgImage);
			addChild(bgImage2);
			bgImage2.scaleX = bgImage2.scaleY = 0.55;
			bgImage.scaleX = bgImage.scaleY = 0.70;
			bgImage2.x = bgImage.x -40;
			bgImage2.y = bgImage.y -45;
			bgImage2.alpha = 0;
			
			this.x = 500;
			this.y = 480;
			addEventListener(MouseEvent.CLICK, onClick);
			addEventListener(Event.ENTER_FRAME, Loop);
		}
		private function onClick(e:MouseEvent):void 
		{
			if (mouseX >= this.x && mouseX <= this.x +this.width && mouseY >= this.y && mouseY <= this.y +this.height)
			{
				trace("wsferfh");
			}

		}
		
		private function Loop(e:Event):void
		{
			//if (this.hitTestObject(mouseX))
			//if (mouseX >= this.x && mouseX <= this.x +this.width && mouseY >= this.y -100 && mouseY <= this.y +this.height - 100)
			if (mouseX >= 0 && mouseX <= 200 && mouseY >= 0 && mouseY <= 100)
			{
				
				bgImage.alpha = 0;
				bgImage2.alpha = 1;
			}
			else
			{
				bgImage.alpha = 1;
				bgImage2.alpha = 0;
				this.scaleX = this.scaleY = 1;
			}
			
		}
		
	}
}