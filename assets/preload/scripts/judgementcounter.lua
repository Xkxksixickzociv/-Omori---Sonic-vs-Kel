notehitlol = 0
sadfasd = 0 -- unused
font = "vcr.ttf" -- the font that the text will use.
cmoffset = -4
cmy = 20
tnhx = -10
function onCreate()
    makeLuaText("tnh", 'Total Notes Hit: 0', 200, tnhx, 359);
    setTextFont('tnh', font)
    makeLuaText("cm", 'Combos: 0', 200, -getProperty('tnh.x') + cmoffset, getProperty('tnh.y') + cmy);
    makeLuaText("sick", 'Sicks: 0', 200, getProperty('cm.x'), getProperty('cm.y') + 30);
    makeLuaText("good", 'Goods: 0', 200, getProperty('cm.x'), getProperty('sick.y') + 30);
    makeLuaText("bad", 'Bads: 0', 200, getProperty('cm.x'), getProperty('good.y') + 30);
    makeLuaText("shit", 'Shits: 0', 200, getProperty('cm.x'), getProperty('bad.y') + 30);
    makeLuaText("miss", 'Misses: 0', 200, getProperty('cm.x'), getProperty('shit.y') + 30);
    setObjectCamera("tnh", 'hud');
    setTextSize('tnh', 20);
    addLuaText("tnh");

    setObjectCamera("cm", 'hud');
    setTextSize('cm', 20);
    addLuaText("cm");
    setTextFont('cm', font)
    setTextAlignment('cm', 'left')
    setObjectCamera("sick", 'hud');
    setTextSize('sick', 20);
    addLuaText("sick");
    setTextFont('sick', font)
    setTextAlignment('sick', 'left')
    setObjectCamera("good", 'hud');
    setTextSize('good', 20);
    addLuaText("good");
    setTextFont('good', font)
    setTextAlignment('good', 'left')
    setObjectCamera("bad", 'hud');
    setTextSize('bad', 20);
    addLuaText("bad");
    setTextFont('bad', font)
    setTextAlignment('bad', 'left')
    setObjectCamera("shit", 'hud');
    setTextSize('shit', 20);
    addLuaText("shit");
    setTextFont('shit', font)
    setTextAlignment('shit', 'left')
    setObjectCamera("miss", 'hud');
    setTextSize('miss', 20);
    setTextColor('miss', 'ff0000');
    addLuaText("miss");
    setTextFont('miss', font)
    setTextAlignment('miss', 'left')
end


function goodNoteHit(id, direction, noteType, isSustainNote)
	-- Function called when you hit a note (after note hit calculations)
	-- id: The note member id, you can get whatever variable you want from this note, example: "getPropertyFromGroup('notes', id, 'strumTime')"
	-- noteData: 0 = Left, 1 = Down, 2 = Up, 3 = Right
	-- noteType: The note type string/tag
	-- isSustainNote: If it's a hold note, can be either true or false
      if not isSustainNote then    
         notehitlol = notehitlol + 1;
         setTextString('tnh', 'Total Notes Hit: ' .. tostring(notehitlol))
     end -- NOTE I DID NOT MAKE THIS FRANTASTIC24 MADE THIS!

end


function onUpdate(elapsed)
    notehitloltosting = tostring(notehitlol)
    setTextString('cm', 'Combos: ' .. getProperty('combo'))
    setTextString('sick', 'SICKS!!: ' .. getProperty('sicks'))
    setTextString('good', 'Goods!: ' .. getProperty('goods'))
    setTextString('bad', 'Bads: ' .. getProperty('bads'))
    setTextString('shit', 'SHITs!: ' .. getProperty('shits'))
    setTextString('miss', 'Misses: ' .. getProperty('songMisses'))
	-- start of "update", some variables weren't updated yet
    -- setTextString('tnh', 'Total Notes Hit: ' + 1)
end