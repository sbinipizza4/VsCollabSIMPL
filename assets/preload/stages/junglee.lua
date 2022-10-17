function onCreate()
	-- background shit
	makeLuaSprite('junglee', 'junglee', -600, -300);
	setScrollFactor('junglee', 0.9, 0.9);

	addLuaSprite('junglee', false)
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end