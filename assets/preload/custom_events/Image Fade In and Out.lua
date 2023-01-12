function onEvent(name, value1, value2)
	if name == "Image Fade In and Out" then
		makeLuaSprite('image', value1, -120, 50);
		addLuaSprite('image', true);
		setObjectCamera('image', 'other');
        doTweenAlpha('Hello', 'image', 0, 0.00000000000000000000000000000000000000000000000000000000000000000001, linear); --Lol
        runTimer('Wait', value2)
        doTweenAlpha('Fade In', 'image', 1, 2, linear)
	end
end

function onTweenCompleted(tag, loops, loopsleft)
    if tag == 'Hello' then
    end
end

function onTimerCompleted(tag, loops, loopsleft)
	if tag == 'Wait' then
		doTweenAlpha('Goodbye', 'image', 0, 0.3, linear);
	end
end

function onTweenCompleted(tag)
	if tag == 'Goodbye' then
		removeLuaSprite('image', true);
	end
end

        --function onEvent(name, value1, value2)
	--if name == "Image Fade In and Out" then
		--makeLuaSprite('image', value1, -120, 50);
		--addLuaSprite('image', true);
		--setObjectCamera('image', 'other');
        --doTweenAlpha('Hello', 'image', 0, 0.6, 'linear');
	--end
--end

--function onTweenCompleted(tag, loops, loopsleft)
    --if tag == 'Hello' then
        --doTweenAlpha('Fade In', 'image', 1, 0.5, 'linear');
        --runTimer('Wait', value2);
    --end
--end

--function onTimerCompleted(tag, loops, loopsleft)
	--if tag == 'Wait' then
		--doTweenAlpha('Goodbye', 'image', 0, 0.3, 'linear');
	--end
--end

--function onTweenCompleted(tag)
	--if tag == 'Goodbye' then
		--removeLuaSprite('image', true);
	--end
--end