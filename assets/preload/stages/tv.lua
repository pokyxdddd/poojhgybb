local static = 1
function onCreate()
	-- background shit
	
	makeLuaSprite('wall', 'wall', -220, -10);
	setLuaSpriteScrollFactor('wall', 0.9, 0.9);
	addLuaSprite('wall', false);
       scaleObject('wall', 1.2, 1.2);

	makeAnimatedLuaSprite('tv','tv', 160, 0)
	addAnimationByPrefix('tv','static','evil Bf Static Anim' ,24,true)
	addLuaSprite('tv', 'static', 'evil Bf Static Anim', true)
	objectPlayAnimation('tv','static' ,false)
	setLuaSpriteScrollFactor('tv', 0.9, 0.9);
       scaleObject('tv', 1, 1);

	-- sprites that only load if Low Quality is turned off
	
	addLuaSprite('tv', false);
	addLuaSprite('wall', false);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end