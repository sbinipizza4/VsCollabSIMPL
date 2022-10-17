function onCreate()
	-- background shit
	makeLuaSprite('stupidplace', 'stupidplace', -600, -300);
	setScrollFactor('stupidplace', 0.9, 0.9);

	addLuaSprite('stupidplace', false)
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end