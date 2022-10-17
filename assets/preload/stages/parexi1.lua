function onCreate()
	-- background shit
	makeLuaSprite('parexi1', 'parexi1', -600, -300);
	setScrollFactor('junglee', 0.9, 0.9);

	addLuaSprite('parexi1', false)
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end