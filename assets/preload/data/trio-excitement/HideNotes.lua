local allowCountdown = false
function onStartCountdown()
	-- Block the first countdown and start a timer of 0.8 seconds to play the dialogue

setStrumVisibilty(0,false)
setStrumVisibilty(1,false)
setStrumVisibilty(2,false)
setStrumVisibilty(3,false)


end

function onCreatePost()

setStrumVisibilty(0,false)
setStrumVisibilty(1,false)
setStrumVisibilty(2,false)
setStrumVisibilty(3,false)


end

function setStrumVisibilty(v1,vis)
		strum = v1
		strumset = 'opponentStrums'

		if strum > 3 then
			strumset = 'playerStrums'
		end
		
		strum = v1 % 4

		setPropertyFromGroup(strumset,strum,'visible',vis)
end