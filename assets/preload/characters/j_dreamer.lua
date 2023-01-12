local originy = 0
function onCreate()

	originy = getProperty('gf.y')

end

function opponentNoteHit(i,d,t,s)
    if gfSection or getPropertyFromGroup('notes',i,'gfNote') then
	setProperty('gf.y',originy+40)
	doTweenY('wifjwiaf','gf',originy,0.08,'linear')
	end

end


function onBeatHit()
    if mustHitSection or not mustHitSection then
	if getProperty('gf.animation.curAnim.name') == "idle" then
		setProperty('gf.y', originy + 60)
		doTweenY('DumbTween', 'gf', originy, 0.2, linear)
        end
    end
end