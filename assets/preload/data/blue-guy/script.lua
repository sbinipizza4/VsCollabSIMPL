function onUpdate(elpased)
    for i=0,3 do
   noteTweenAlpha(i+0, i, math.floor, 0.3)
   end
end

local allowend = false

function EndSong()

    if not allowend and isStoryMode and not seenCutscene then --Block the first countdown

        startVideo('endCutscene');

        allowend = false;

        return Function_Stop;

    end

    return Function_Continue;

end