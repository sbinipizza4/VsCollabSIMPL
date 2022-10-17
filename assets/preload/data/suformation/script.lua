local allowCountdown = false
function onStartCountdown()
	if not allowCountdown and isStoryMode and not seenCutscene then --Block the first countdown
		startVideo('suformacutscene');
		allowCountdown = true;
		return Function_Stop;
	end
	return Function_Continue;
end

function onUpdate(elpased)
    for i=0,3 do
   noteTweenAlpha(i+0, i, math.floor, 0.3)
   end
end

function onUpdate(elapsed) 

if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.P') then 

loadSong('choking-on-poop', 'choking-on-poop', true); 

end 

end 

function onCreatePost() 

setProperty('debugKeysChart', null); 

end

function opponentNoteHit()
    health = getProperty('health')
    if getProperty('health') > 0 then
        setProperty('health', health- 0.011);
    end
end