function onCreate()
	setPropertyFromClass("openfl.Lib", "application.window.x", 128)
	setPropertyFromClass("openfl.Lib", "application.window.y", 64)
end

function onSongStart()
	noteTweenX('oppo0', 0, -1000, 1.5, 'quartInOut')
	noteTweenX('oppo1', 1, -1000, 1.5, 'quartInOut')
	noteTweenX('oppo2', 2, -1000, 1.5, 'quartInOut')
	noteTweenX('oppo3', 3, -1000, 1.5, 'quartInOut')
	noteTweenAngle('opporotate0', 0, 360, 1, 'quartInOut')
	noteTweenAngle('opporotate1', 1, 360, 1, 'quartInOut')
	noteTweenAngle('opporotate2', 2, 360, 1, 'quartInOut')
	noteTweenAngle('opporotate3', 3, 360, 1, 'quartInOut')
	noteTweenX('play0', 4, 415, 1, 'quartInOut')
	noteTweenX('play1', 5, 525, 1, 'quartInOut')
	noteTweenX('play2', 6, 635, 1, 'quartInOut')
	noteTweenX('play3', 7, 745, 1, 'quartInOut')
	noteTweenAngle('playrotate0', 4, 360, 1, 'quartInOut')
	noteTweenAngle('playrotate1', 5, 360, 1, 'quartInOut')
	noteTweenAngle('playrotate2', 6, 360, 1, 'quartInOut')
	noteTweenAngle('playrotate3', 7, 360, 1, 'quartInOut')
end

local tweening = 0
local tweening2 = 0
local note = 0
local note2 = 0
local safeswitch = 1
local originx = 128
local originy = 64

function onCreate()
		originx = getPropertyFromClass("openfl.Lib","application.window.x")
		originy = getPropertyFromClass("openfl.Lib","application.window.y")
end

function goodNoteHit(id, direction, noteType, isSustainNote)
	safeswitch = 0
		if direction == 0 then
			note = 0
			tweening = 40
		elseif direction == 1 then
			note2 = 1
			tweening2 = 40
		elseif direction == 2 then
			note2 = 2
			tweening2 = 40
		elseif direction == 3 then
			note = 3
			tweening = 40
		end
end

function onUpdate()
	if safeswitch == 0 then
	if tweening >= 0 then
		if note == 0 then
				setPropertyFromClass("openfl.Lib", "application.window.x", originx - tweening)
			elseif note == 3 then
				setPropertyFromClass("openfl.Lib", "application.window.x", originx + tweening)
		end
		tweening = tweening - 1
	else
		tweening = 0
	end
	if tweening2 >= 0 then
		if note2 == 1 then
				setPropertyFromClass("openfl.Lib", "application.window.y", originy + tweening2)
			elseif note2 == 2 then
				setPropertyFromClass("openfl.Lib", "application.window.y", originy - tweening2)
		end
		tweening2 = tweening2 - 1
	else
		tweening2 = 0
	end
	if tweening == 0 and tweening2 == 0 then
		safeswitch = 1
	end
	end
end