local Nps = 0
local NoteHit = false;
function onCountdownStarted()
	for i = 0, 3 do
		setPropertyFromGroup('opponentStrums', i, 'x', -900);
	end
end

function onCreatePost()
 
    setProperty('healthBar.alpha', 0)
    setProperty('iconP1.alpha', 0)
    setProperty('iconP2.alpha', 0)
	
	setProperty('scoreTxt.visible', false)
   	setProperty('timeBarBG.visible', false)
    	setProperty('timeBar.visible', true)
	setProperty('timeTxt.visible', true)

	
	makeLuaText('score','Score: 0',0,715,560)
	setTextFont('score','vcr.ttf')
	setTextSize('score', 24)
	setObjectOrder('score', 1);
	addLuaText('score')

	makeLuaText('miss','Misses: 0',0,715,580)
	setTextFont('miss','vcr.ttf')
	setTextSize('miss', 24)
	setObjectOrder('miss', 1);
	addLuaText('miss')

	makeLuaText('acc','Accuracy: 0%',0,715,600)
	setTextFont('acc','vcr.ttf')
	setTextSize('acc', 24)
	setObjectOrder('acc', 1);
	addLuaText('acc')

	makeLuaText('rating','Rating: N/A',0,715,620)
	setTextFont('rating','vcr.ttf')
	setTextSize('rating', 24)
	setObjectOrder('rating', 1);
	addLuaText('rating')

	makeLuaText('combo','Combo: 0',0,715,640)
	setTextFont('combo','vcr.ttf')
	setTextSize('combo', 30)
	setObjectOrder('combo', 1);
	addLuaText('combo')

	

	makeLuaText('song','',0,712,700)
	setTextFont('song','vcr.ttf')
	setTextSize('song', 21)
	addLuaText('song')
	setObjectOrder('song', 1);
	setTextString('song',songName..' - '..string.upper(difficultyName))

	
	setTextFont('botplayTxt','vcr.ttf')
	
	
    --card
	makeLuaSprite('card', 'card', 980, 420);
	setScrollFactor('card', 1.1, 1.1);
	scaleObject('card', 1.7, 1.7);
	setObjectCamera('card','hud')
	addLuaSprite('card', true);
	
	makeLuaSprite('box', 'box', 700, 545);
	setScrollFactor('box', 1.1, 1.1);
	scaleObject('box', 2, 2);
	setObjectCamera('box','hud')
	setObjectOrder('box', 0);
	addLuaSprite('box', false);

    --emotions
	--neutral
	makeLuaSprite('neutral', 'neutral', 980, 420);
	setScrollFactor('neutral', 1.1, 1.1);
	scaleObject('neutral', 1.7, 1.7);
	setObjectCamera('neutral','hud')

	

	
	
	
	
	--emotionsbficon

	
	--neutral
    makeAnimatedLuaSprite('PicoNeutral','OmoriHealthHeads/PicoNeutral', 905, 145);
    addAnimationByPrefix('PicoNeutral','Anime','Pico',24,true);
    scaleObject('PicoNeutral', 0.9, 0.9);
    objectPlayAnimation('PicoNeutral','Anime',false);
    setObjectCamera('PicoNeutral','hud')
	

	
	
	--sprites
	addLuaSprite('neutral', false);
    addLuaSprite('PicoNeutral', false);

	
	
	
	makeLuaSprite("healthbar_p2", "", 1028, 633)
	setScrollFactor('healthbar_p2"', 1.1, 1.1);
	makeGraphic("healthbar_p2",	138, 24, 'FF0000')
	addLuaSprite("healthbar_p2", true)
	setObjectCamera("healthbar_p2", "hud")
	setProperty("healthbar_p2" .. ".origin.x", 0)
	
	makeLuaSprite('hud', 'hud', 980, 420);
	setScrollFactor('hud', 1.1, 1.1);
	scaleObject('hud', 1.7, 1.7);
	setObjectCamera('hud','hud')
	addLuaSprite('hud', true);
	
	
	
	makeLuaSprite('black', 'black', 980, 420);
	setScrollFactor('black', 1.1, 1.1);
	scaleObject('black', 1.7, 1.7);
	setObjectCamera('black','hud')
	addLuaSprite('black', true);
	
	
	
	
end


fade = 0.15
function onStepHit()

   
   





   
if NoteHit == true then
        Nps = Nps - 2 * 4 -- math is funny
end    

end






function onUpdate(elasped)
	

	if Nps < 0 then
        Nps = 0
        NoteHit = false;
end   

	setTextString('combo','Combo: '..getProperty('combo'))


	

	setTextString('nps','NPS: '..Nps)
end
function onRecalculateRating()
	setTextString('score','Score: '..score)
	setTextString('miss','Misses: '..misses)
	setTextString('acc','Accuracy: '..round(rating * 100, 2)..'%')
	setTextString('rating','Rating: (' .. ratingFC .. ') '..ratingName)
	
end
function round(x, n) --https://stackoverflow.com/questions/18313171/lua-rounding-numbers-and-then-truncate
    n = math.pow(10, n or 0)
    x = x * n
    if x >= 0 then x = math.floor(x + 0.5) else x = math.ceil(x - 0.5) end
    return x / n
end


function onUpdatePost()
    --health code
	local percent_p1 = (getProperty("healthBar.percent") / 100)
	local percent_p2 = 1 - percent_p1
    makeLuaText('test', hapicombo, 125, 115, 445)
	setTextColor('test', 'FFD800')
	setTextSize('test', 60)
	addLuaText('test')
	
	setProperty("healthbar_p1" .. ".scale.x", percent_p2 * 1)
	setProperty("healthbar_p2" .. ".scale.x", (percent_p1 * 1) + (percent_p1 < 1 and 0.01 or 0))
	
	
	
	--emotion code
    if emotion == 'neutral' then
    setProperty('darn.alpha',0)
	setProperty('darner.alpha',0)
	removeLuaText('test', false)
	setTextString('emotext', '')
	setTextString('emodesc', '')
	setProperty('neutral.visible',true)
	setProperty('sad.visible',false)
	setProperty('happy.visible',false)
	setProperty('angry.visible',false)
	setProperty('afraid.visible',false)
	setProperty('enraged.visible',false)
	setProperty('bfneutral.visible',true)
	setProperty('bfsad.visible',false)
	setProperty('bfhappy.visible',false)
	setProperty('bfangry.visible',false)
	setProperty('bfafraid.visible',false)
	setProperty('bfenragedface.visible',false)
	setProperty('bfenraged.visible',false)
	end
   
    if emotion == 'happy' then
	setProperty('darn.alpha',0)
	setProperty('darner.alpha',0)
	addLuaText('test')
	setTextString('emotext', 'PICO feels HAPPY!')
	setTextString('emodesc', 'HAPPY:Every 15 notes will give a heal')
	setProperty('neutral.visible',false)
	setProperty('sad.visible',false)
	setProperty('happy.visible',true)
	setProperty('angry.visible',false)
	setProperty('afraid.visible',false)
	setProperty('enraged.visible',false)
	setProperty('bfneutral.visible',false)
	setProperty('bfsad.visible',false)
	setProperty('bfhappy.visible',true)
	setProperty('bfangry.visible',false)
	setProperty('bfafraid.visible',false)
	setProperty('bfenragedface.visible',false)
	setProperty('bfenraged.visible',false)
	
	end
	
	if emotion == 'sad' then
	setProperty('darn.alpha',0)
	setProperty('darner.alpha',0)
	removeLuaText('test', false)
	setTextString('emotext', 'PICO feels SAD!')
	setTextString('emodesc', 'SAD:Decreased Health Gain & Health Loss')
	setProperty('neutral.visible',false)
	setProperty('sad.visible',true)
	setProperty('happy.visible',false)
	setProperty('angry.visible',false)
	setProperty('afraid.visible',false)
	setProperty('enraged.visible',false)
	setProperty('bfneutral.visible',false)
	setProperty('bfsad.visible',true)
	setProperty('bfhappy.visible',false)
	setProperty('bfangry.visible',false)
	setProperty('bfafraid.visible',false)
	setProperty('bfenragedface.visible',false)
	setProperty('bfenraged.visible',false)

	end
	
	if emotion == 'angry' then
	setProperty('darn.alpha',0)
	setProperty('darner.alpha',0)
	removeLuaText('test', false)
	setTextString('emotext', 'PICO feels ANGRY!')
	setTextString('emodesc', 'ANGRY:Increased Health Gain & Health Loss')
	setProperty('neutral.visible',false)
	setProperty('sad.visible',false)
	setProperty('happy.visible',false)
	setProperty('angry.visible',true)
	setProperty('afraid.visible',false)
	setProperty('enraged.visible',false)
	setProperty('bfneutral.visible',false)
	setProperty('bfsad.visible',false)
	setProperty('bfhappy.visible',false)
	setProperty('bfangry.visible',true)
	setProperty('bfafraid.visible',false)
	setProperty('bfenragedface.visible',false)
	setProperty('bfenraged.visible',false)

	end
	
	if emotion == 'afraid' then
	removeLuaText('test', false)
	setTextString('emotext', 'PICO feels AFRAID...')
	setTextString('emodesc', 'AFRAID:Health Drain when opponent sings')
	setProperty('neutral.visible',false)
	setProperty('sad.visible',false)
	setProperty('happy.visible',false)
	setProperty('angry.visible',false)
	setProperty('afraid.visible',true)
	setProperty('enraged.visible',false)
	setProperty('bfneutral.visible',false)
	setProperty('bfsad.visible',false)
	setProperty('bfhappy.visible',false)
	setProperty('bfangry.visible',false)
	setProperty('bfafraid.visible',true)
	setProperty('bfenragedface.visible',false)
	setProperty('bfenraged.visible',false)
  
	
	end
	
	if emotion == 'enraged' then
	setProperty('darn.alpha',0)
	setProperty('darner.alpha',0)
	removeLuaText('test', false)
	setTextString('emotext', 'PICO feels ENRAGED!')
	setProperty('neutral.visible',false)
	setProperty('sad.visible',false)
	setProperty('happy.visible',false)
	setProperty('angry.visible',false)
	setProperty('afraid.visible',false)
	setProperty('enraged.visible',true)
	setProperty('bfneutral.visible',false)
	setProperty('bfsad.visible',false)
	setProperty('bfhappy.visible',false)
	setProperty('bfangry.visible',false)
	setProperty('bfenragedface.visible',true)
	setProperty('bfenraged.visible',true)
	setProperty('bfafraid.visible',false)

	end
	
	
	
end

timers = {}
function ezTimer(tag, timer, callback) -- Better
    table.insert(timers,{tag, callback})
    runTimer(tag, timer)
end

function onTimerCompleted(tag)
    for k,v in pairs(timers) do
        if v[1] == tag then
            v[2]()
        end
    end
end
function math.lerp(a,b,t)
 return(b-a) * t + a;
end
function math.remapToRange(value,start1,stop1,start2,stop2)
 return start2 + (stop2 - start2) * ((value - start1)/(stop1 - start1))
end

