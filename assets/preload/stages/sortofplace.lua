function onCreate()
	-- background shit
	makeLuaSprite('sortofbg', 'sortofbg', -600, -300);
	setScrollFactor('stupidplace', 0.9, 0.9);

	addLuaSprite('sortofbg', false)

    addLuaSprite('rbg', false) 
    addLuaSprite('background', false) 
    makeLuaSprite('frontground', 'sortofgrass', -800, 264.75)
    addLuaSprite('frontground', false)

	makeAnimatedLuaSprite('stuff', 'bgThings/people', -690,-220)
	addAnimationByPrefix('stuff', 'bgbops', 'nycBGBOPS',24,true)
	addLuaSprite('stuff',false)
	objectPlayAnimation('stuff', 'bgbops',false)
	setScrollFactor('stuff', 0.75, 0.9);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end