package  
{
	import org.flixel.*;
	public class PlayState extends FlxState
	{
		
		
		public var player:FlxSprite;
		
		 public static var LEVEL:BaseLevel = null;
		
		override public function create():void
		{
			FlxG.bgColor = 0xff333333;
			
			LEVEL = new Level_();
			
			add(LEVEL);
			//add(new FlxText(0, 0, 100, "Hello, World!")); //adds a 100px wide text field at position 0,0 (upper left)
		}
		
		
		
	}

}