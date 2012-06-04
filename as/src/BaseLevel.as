//Code generated with DAME. http://www.dambots.com

package 
{
	import org.flixel.*;
	public class BaseLevel extends FlxGroup {
	
		public var mainLayer:FlxTilemap;
		public var boundsMinX:int;
		public var boundsMinY:int;
		public var boundsMaxX:int;
		public var boundsMaxY:int;
		
		 /**
         * Player
         */
        public var player:TopDownEntity;
        public var playerStart:FlxPoint = new FlxPoint(16, 16);
		
		public function BaseLevel() { 
			createMap();
			createPlayer();
			createCamera();	
		}
		
		protected function createMap():void
		{
			
		}

		public function addSpriteToLayer(type:Class, group:FlxGroup, x:Number, y:Number, angle:Number, flipped:Boolean, scrollX:Number, scrollY:Number, onAddCallback:Function = null):FlxSprite
		{
			var obj:FlxSprite = new type(x, y);
			obj.x += obj.offset.x;
			obj.y += obj.offset.y;
			obj.angle = angle;
			// Only override the facing value if the class didn't change it from the default.
			if( obj.facing == FlxObject.RIGHT )
				obj.facing = flipped ? FlxObject.LEFT : FlxObject.RIGHT;
			obj.scrollFactor.x = scrollX;
			obj.scrollFactor.y = scrollY;
			group.add(obj);
			if(onAddCallback != null)
				onAddCallback(obj, group);
			return obj;
		}
		
		 protected function createCamera():void {
            FlxG.worldBounds = new FlxRect(0, 0, 320, 320);
            FlxG.camera.setBounds(0, 0, 640, 640, true);
            FlxG.camera.follow(player, FlxCamera.STYLE_TOPDOWN);
        }
		
		/**
		 * Create the player
		 */
		protected function createPlayer():void {
			player = new Player(playerStart.x + 300, playerStart.y + 300);
			this.add(player);
		}
 

	}
}
