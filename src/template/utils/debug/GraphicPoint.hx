package template.utils.debug;

import openfl.display.DisplayObjectContainer;
import openfl.display.Graphics;
import openfl.display.Shape;
import openfl.geom.Point;

/**
 * ...
 * @author Théo Sabattié
 */

class GraphicPoint extends DisplayObjectContainer
{

	public function new(position:Point, radius:Float, ?color:Int = 0xFFFFFF) 
	{
		super();
		var shape:Shape = new Shape(); 
		shape.graphics.beginFill(color);
		shape.graphics.drawCircle(0, 0, radius);
		shape.graphics.endFill();
		addChild(shape);
		
		x = position.x;
		y = position.y;
	}
	
}