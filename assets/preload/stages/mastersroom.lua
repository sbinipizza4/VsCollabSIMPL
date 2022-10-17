function onCreate()
	-- background shit
	makeLuaSprite('mastersroom', 'mastersroom', -600, -300);
	setScrollFactor('mastersroom', 0.9, 0.9);

	addLuaSprite('mastersroom', false);
	addLuaSprite('mastersroom', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end