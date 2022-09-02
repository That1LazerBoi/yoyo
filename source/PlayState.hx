package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;

class PlayState extends FlxState
{
	public var blackSquid:FlxSprite;

	override public function create()
	{
		super.create();

		blackSquid = new FlxSprite().loadGraphic(Paths.image("race"));
		add(blackSquid);
		blackSquid.screenCenter();
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);

		var movementMultiplier:Int = 100;

		if (FlxG.keys.pressed.LEFT)
			blackSquid.x -= elapsed * movementMultiplier;

		if (FlxG.keys.pressed.RIGHT)
			blackSquid.x += elapsed * movementMultiplier;

		if (FlxG.keys.pressed.UP)
			blackSquid.y -= elapsed * movementMultiplier;

		if (FlxG.keys.pressed.DOWN)
			blackSquid.y += elapsed * movementMultiplier;
	}
}
