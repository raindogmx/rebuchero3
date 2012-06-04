package 
{
    import org.flixel.*;
 
    /**
     * A moveable object in the game (player, enemy, NPC, etc)
     * @author Cody Sandahl
     */
    public class TopDownEntity extends FlxSprite
    {
        /**
         * Constants
         */
        public static const SIZE:FlxPoint = new FlxPoint(12, 12); // size in pixels
        public static const RUNSPEED:int = 80;
 
        /**
         * Constructor
         * @param   X   X location of the entity
         * @param   Y   Y location of the entity
         */
        public function TopDownEntity(X:Number = 100, Y:Number = 100):void {
            super(X, Y);
            makeGraphic(SIZE.x, SIZE.y, 0xFFFF0000); // use this if you want a generic box graphic by default
            // movement
            maxVelocity = new FlxPoint(RUNSPEED, RUNSPEED);
            drag = new FlxPoint(RUNSPEED * 4, RUNSPEED * 4); // decelerate to a stop within 1/4 of a second
        }
 
        /**
         * Update each timestep
         */
        public override function update():void {
            updateControls();
            super.update();
        }
 
        /**
         * Check keyboard/mouse controls
         */
        protected function updateControls():void {
            acceleration.x = acceleration.y = 0; // no gravity or drag by default
        }
 
        /**
         * Move entity left
         */
        public function moveLeft():void {
            facing = LEFT;
            acceleration.x = -RUNSPEED * 4; // accelerate to top speed in 1/4 of a second
        }
 
        /**
         * Move entity right
         */
        public function moveRight():void {
            facing = RIGHT;
            acceleration.x = RUNSPEED * 4; // accelerate to top speed in 1/4 of a second
        }
 
        /**
         * Move entity up
         */
        public function moveUp():void {
            facing = UP;
            acceleration.y = -RUNSPEED * 4; // accelerate to top speed in 1/4 of a second
        }
 
        /**
         * Move playe rdown
         */
        public function moveDown():void {
            facing = DOWN;
            acceleration.y = RUNSPEED * 4; // accelerate to top speed in 1/4 of a second
        }
    }
}