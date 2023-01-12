local camSpeed = 4;
local camInt = 1;
function onCreate()
    
end

function onBeatHit()
    if curBeat % 4 == 2 then
        triggerEvent('Add Camera Zoom',0.05*camInt,0.06*camInt)
    end
end