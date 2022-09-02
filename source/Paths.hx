import flixel.graphics.frames.FlxAtlasFrames;

enum PathAssetType
{
	TXT;
	JSON;
	IMAGE;
	XML;
	MUSIC;
	SOUND;
}

class Paths
{
	inline private static function asset(path:String, assetType:PathAssetType)
	{
		var subFolder:String;
		var fileExtension:String;

		switch (assetType)
		{
			case JSON:
				subFolder = 'data';
				fileExtension = 'txt';
			case IMAGE:
				subFolder = 'images';
				fileExtension = 'png';
			case XML:
				subFolder = 'images';
				fileExtension = 'xml';
			case MUSIC:
				subFolder = 'music';
				fileExtension = #if web 'mp3' #else 'ogg' #end;
			case SOUND:
				subFolder = 'sounds';
				fileExtension = #if web 'mp3' #else 'ogg' #end;
			default:
				subFolder = 'data';
				fileExtension = 'txt';
		}
		return 'assets/$subFolder/$path.$fileExtension';
	}

	inline public static function text(path:String)
		return asset(path, TXT);

	inline public static function json(path:String)
		return asset(path, JSON);

	inline public static function image(path:String)
		return asset(path, IMAGE);

	inline public static function xml(path:String)
		return asset(path, XML);

	inline public static function music(path:String)
		return asset(path, MUSIC);

	inline public static function sound(path:String)
		return asset(path, SOUND);

	inline public static function sparrowv2(path:String)
		return FlxAtlasFrames.fromSparrow(image(path), xml(path));
}
