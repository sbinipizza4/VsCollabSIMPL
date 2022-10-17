function onCreate()
    -- background shit
    makeLuaSprite('noob', 'noob', -650, -350);
    setScrollFactor('noob', 0, 0);

    makeLuaSprite('reddarkness', 'reddarkness', -650, -350);
    setScrollFactor('reddarkness', 0, 0);

    addLuaSprite('reddarkness', true);
    addLuaSprite('noob', false);
	addGlitchEffect('noob', 2, 6)

    close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end