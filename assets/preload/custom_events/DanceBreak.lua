function onEvent(name)
	if name == "DanceBreak" then
		makeLuaSprite('image', 'DanceBreak', -1000, -800);
		addLuaSprite('image', true);
        setObjectCamera('image', 'game');
    end
end