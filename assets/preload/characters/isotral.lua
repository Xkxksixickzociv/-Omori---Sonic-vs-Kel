local originy = 0
function onCreate()

	originy = getProperty('dad.y')

end
function opponentNoteHit(i,d,t,s)
	if not getPropertyFromGroup('notes',i,'gfNote') then
	setProperty('dad.y',originy+40)
	doTweenY('wifjwiaf','dad',originy,0.08,'linear')
	end
	

end


function onBeatHit()
	if getProperty('dad.animation.curAnim.name') == "idle" or getProperty('dad.animation.curAnim.name') == "idle-alt"  then
		setProperty('dad.y',originy+60)
		doTweenY('wifjwiaaf','dad',originy,0.2,'linear')
	end

end