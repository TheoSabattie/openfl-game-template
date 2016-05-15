package template.utils;
import openfl.display.DisplayObject;
import openfl.geom.Point;

/**
 * ...
 * @author Théo Sabattié
 */
class PointUtils
{
	/**
	 * Return new local position of a point from a display object to an other
	 * @param	from   DisplayObject where the position comes from
	 * @param	point  Position
	 * @param	to     The target display object, where the point go to.
	 * @return  New position
	 */
	public static function localToLocal(from:DisplayObject, point:Point, to:DisplayObject):Point {
		return to.globalToLocal(from.localToGlobal(point));
	}
}