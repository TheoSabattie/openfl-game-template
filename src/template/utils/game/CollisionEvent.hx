package template.utils.game;

import openfl.events.Event;

/**
 * ...
 * @author Théo Sabattié
 */
class CollisionEvent extends Event
{
	static public inline var COLLISION_ENTER:String = "collisionEnter";

	/**
	 * CollisionHandler qui a dispatché l'évènement
	 */
	public var handler(default, null):CollisionHandler;
	
	/**
	 * L'élement sur lequel s'est basé le handler pour dispatcher l'évènement
	 */
	public var collider(default, null):CollisionHandler;
	
	/**
	 * @param	type type d'évènement
	 * @param	handler CollisionHandler qui a dispatché l'évènement
	 * @param	collider L'élement sur lequel s'est basé le handler pour dispatcher l'évènement
	 */
	public function new(type:String, handler:CollisionHandler, collider:CollisionHandler) 
	{
		super(type);
		this.handler  = handler;
		this.collider = collider;
	}
	
}