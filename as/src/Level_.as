//Code generated with DAME. http://www.dambots.com

package 
{
	import org.flixel.*;
	public class Level_ extends BaseLevel
	{
		//Embedded media...
		[Embed(source = "bofhblk.png")] public var Img_GroupBOFH:Class;
		[Embed(source = "mapCSV_Group1_Floors.csv", mimeType = "application/octet-stream")] public var CSV_Group1Floors:Class;
		[Embed(source = "mapCSV_Group1_Walls.csv", mimeType = "application/octet-stream")] public var CSV_Group1Walls:Class;
		[Embed(source = "mapCSV_Group1_Doors.csv", mimeType = "application/octet-stream")] public var CSV_Group1Doors:Class;
		

		//Tilemaps
		public var layerGroup1Floors:FlxTilemap;
		public var layerGroup1Walls:FlxTilemap;
		public var layerGroup1Doors:FlxTilemap;

		//Sprites


		//public function Level_(addToStage:Boolean = true, onAddSpritesCallback:Function = null)
		protected override function createMap():void 
		{
			// Generate maps.
			layerGroup1Floors = new FlxTilemap;
			layerGroup1Floors.loadMap( new CSV_Group1Floors, Img_GroupBOFH, 16,16, FlxTilemap.OFF, 0, 1, 1 );
			layerGroup1Floors.x = 0.000000;
			layerGroup1Floors.y = 0.000000;
			layerGroup1Floors.scrollFactor.x = 1;
			layerGroup1Floors.scrollFactor.y = 1;
			
			layerGroup1Walls = new FlxTilemap;
			layerGroup1Walls.loadMap( new CSV_Group1Walls, Img_GroupBOFH, 16,16, FlxTilemap.OFF, 0, 1, 1 );
			layerGroup1Walls.x = 0.000000;
			layerGroup1Walls.y = 0.000000;
			layerGroup1Walls.scrollFactor.x = 1.0000;
			layerGroup1Walls.scrollFactor.y = 1.00000;
			
			layerGroup1Doors = new FlxTilemap;
			layerGroup1Doors.loadMap( new CSV_Group1Doors, Img_GroupBOFH, 16,16, FlxTilemap.OFF, 0, 1, 1 );
			layerGroup1Doors.x = 0.000000;
			layerGroup1Doors.y = 0.000000;
			layerGroup1Walls.scrollFactor.x = 1.000000;
			layerGroup1Walls.scrollFactor.y = 1.000000;

			//Add layers to the master group in correct order.
			this.add(layerGroup1Floors);
			this.add(layerGroup1Walls);
			this.add(layerGroup1Doors);

/*
			if ( addToStage )
			{
				FlxG.state.add(masterLayer);
			}
*/
			//mainLayer = layer;

			boundsMinX = 0;
			boundsMinY = 0;
			boundsMaxX = 640;
			boundsMaxY = 640;

		}

		 /**
         * Update each timestep
         */
        override public function update():void {
            super.update();
            FlxG.collide(layerGroup1Walls, player);
        }
		 


	}
}
