function onEvent(name, value1)
	if name == "Screen Fade No HUD" then
        cameraFade('game', '0xFF000000', value1, false);
    end
end