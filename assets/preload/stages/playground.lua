local xx = 350;
local yy = -50;
local xx2 = 550;
local yy2 = -50;
local ofs = 50;
local followchars = true;
local del = 0;
local del2 = 0;
local del3 = 0;
local cock = 0;
function onCreate()
	-- background shit
    makeLuaSprite('BackGrass', 'playground/grassDark', -1000, -800);
    
    makeLuaSprite('BackTrees4', 'playground/backTreesYetDarker', -700, -650);
    setScrollFactor('BackTrees4', 0.7, 0.7);
    
	makeLuaSprite('BackTrees3', 'playground/backTreesDarker', -700, -650);
    setScrollFactor('BackTrees3', 0.8, 0.8);
    
    makeLuaSprite('BackTrees2', 'playground/backTreesDark', -700, -700);
    setScrollFactor('BackTrees2', 0.9, 0.9);
    
	makeLuaSprite('Playground', 'playground/playground', -1000, -800);
    

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
        
        makeLuaSprite('MarisPicnicBasket', 'playground/itsMarisPicnicBasket', -900, -300);
    
    makeAnimatedLuaSprite('Mari','playground/Mari', -600, -500);
        addAnimationByPrefix('Mari','bop','girl2',24,false);
    
    makeAnimatedLuaSprite('Basil','playground/Basil', -450, -450);
        addAnimationByPrefix('Basil','bop','girl1',24,false);
    
    makeAnimatedLuaSprite('Aubrey','playground/Aubrey', -650, -250);
        addAnimationByPrefix('Aubrey','bop','girl3',24,false);
    
    makeAnimatedLuaSprite('Hero','playground/Hero', -740, -360);
        addAnimationByPrefix('Hero','bop','boy',24,false);
        
        makeAnimatedLuaSprite('Ring5','playground/Ring', -800, -30);
        addAnimationByPrefix('Ring5','ringspin','ring',15,true);
        objectPlayAnimation('Ring5','ringspin',false);
        
        makeAnimatedLuaSprite('Ring1','playground/Ring', -200, -90);
        addAnimationByPrefix('Ring1','ringspin','ring',15,true);
        objectPlayAnimation('Ring1','ringspin',false);
        
        makeAnimatedLuaSprite('Ring2','playground/Ring', 400, -150);
        addAnimationByPrefix('Ring2','ringspin','ring',15,true);
        objectPlayAnimation('Ring2','ringspin',false);
        
        makeAnimatedLuaSprite('Ring3','playground/Ring', 1000, -90);
        addAnimationByPrefix('Ring3','ringspin','ring',15,true);
        objectPlayAnimation('Ring3','ringspin',false);
        
        makeAnimatedLuaSprite('Ring4','playground/Ring', 1600, -30);
        addAnimationByPrefix('Ring4','ringspin','ring',15,true);
        objectPlayAnimation('Ring4','ringspin',false);
    
		makeLuaSprite('FrontTrees', 'playground/frontTrees', -1000, -600);
		setScrollFactor('FrontTrees', 1.4, 1.1);
        
        makeLuaSprite('FrontTree2', 'playground/frontTreeBlurier', -1000, -600);
		setScrollFactor('FrontTree2', 1.6, 1.1);

	end

    addLuaSprite('BackGrass', false);
    addLuaSprite('BackTrees4', false);
    addLuaSprite('BackTrees3', false);
	addLuaSprite('BackTrees2', false);
	addLuaSprite('Playground', false);
    addLuaSprite('MarisPicnicBasket', false);
    addLuaSprite('Mari',false);
    addLuaSprite('Basil',false);
    addLuaSprite('Aubrey',false);
    addLuaSprite('Hero',false);
    addLuaSprite('Ring5',false);
    addLuaSprite('Ring1',false);
    addLuaSprite('Ring2',false);
    addLuaSprite('Ring3',false);
    addLuaSprite('Ring4',false);
    addLuaSprite('FrontTrees', true);
    addLuaSprite('FrontTree2', true);

end

function onBeatHit()
    if curBeat % 2 == 0 then
        objectPlayAnimation('Mari','bop',true);
    end
      if curBeat % 2 == 0 then
        objectPlayAnimation('Basil','bop',true);
    end
      if curBeat % 2 == 0 then
        objectPlayAnimation('Aubrey','bop',true);
    end
      if curBeat % 2 == 0 then
        objectPlayAnimation('Hero','bop',true);
    end
end

function onUpdate()
    if del > 0 then
		del = del - 1
	end
	if del2 > 0 then
		del2 = del2 - 1
    end
    if del3 > 0 then
		del3 = del3 - 1
	end
    if followchars == true then
        if mustHitSection == false then
            if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'hey' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
        else
            
            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT-alt' then
                triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT-alt' then
                triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP-alt' then
                triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN-alt' then
                triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
            
            if gfSection == true then
            if getProperty('gf.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('gf.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('gf.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('gf.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('gf.animation.curAnim.name') == 'singLEFT-alt' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('gf.animation.curAnim.name') == 'singRIGHT-alt' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('gf.animation.curAnim.name') == 'singUP-alt' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('gf.animation.curAnim.name') == 'singDOWN-alt' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('gf.animation.curAnim.name') == 'hey' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('gf.animation.curAnim.name') == 'danceLeft' then
                triggerEvent('Camera Follow Pos',xx,yy)
            else
            
            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT-alt' then
                triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT-alt' then
                triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP-alt' then
                triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN-alt' then
                triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'hey' then
                triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
                end
            end
        end
    else
        triggerEvent('Camera Follow Pos','','')
    end
end