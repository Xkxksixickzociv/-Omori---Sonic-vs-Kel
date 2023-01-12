function onEvent(name)
	if name == "MariJumpscare" then
		makeLuaSprite('image', 'HELLMARIJumpscare', -700, -1100);
		addLuaSprite('image', true);
        setObjectCamera('image', 'game');
    end
end