function onCreate()
	-- background shit
	makeLuaSprite('3DThing', '3DThing', -600, -300);
	setScrollFactor('3DThing', 0.9, 0.9);

	addLuaSprite('3DThing', false)
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end