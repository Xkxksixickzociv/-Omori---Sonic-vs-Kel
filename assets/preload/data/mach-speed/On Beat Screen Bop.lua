local camSpeed = 4;
local camInt = 1;
function onCreate()
    
end

function onBeatHit()
    if curBeat % 2 == 0 then
        triggerEvent('Add Camera Zoom',0.03*camInt,0.04*camInt)
    end
end