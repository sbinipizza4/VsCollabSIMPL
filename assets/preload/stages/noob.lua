function onCreate()
	-- background shit
	makeLuaSprite('noob', 'noob', -600, -300);
	setScrollFactor('noob', 0.9, 0.9);

	addLuaSprite('noob', false)
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end