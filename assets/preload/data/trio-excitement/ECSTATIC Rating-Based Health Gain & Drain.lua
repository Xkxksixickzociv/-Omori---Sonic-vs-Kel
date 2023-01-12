--script made by Held_der_Zeit
--because ShadowMario won't (no offense)

function onCreate()
	gain = 0.023
	loss = 0.0475
	malus = 0.02
	--og malus: 0.023
	--malus can be modified if you like!
end

function goodNoteHit(id, noteData, noteType, isSustainNote)
	--debugPrint('pre-hp:', getProperty('health'))
	health = getProperty('health')

	-- setProperty('health', health - 0.023)
	--0.023 is default health gain value
	--also, substracting, while it otherwise would stack ontop

	if getPropertyFromGroup('notes', id, 'rating') == 'sick' then
		gain = 0.080
		--debugPrint('!SICK')
	end
	if getPropertyFromGroup('notes', id, 'rating') == 'good' then
		gain = 0.040
		--debugPrint('GOOD')
	end
	if getPropertyFromGroup('notes', id, 'rating') == 'bad' then
		gain = 0
		--debugPrint('BAD')
	end
	if getPropertyFromGroup('notes', id, 'rating') == 'shit' then
		gain = -0.1
		--debugPrint('SHIT')
	end


	if isSustainNote then
		setProperty('health', health + gain/2)
		--debugPrint('sus ', gain/2)
	else
		setProperty('health', health + gain)
		--debugPrint(gain)
	end

	--debugPrint('mid-hp:', getProperty('health'))

	health = getProperty('health')
	setProperty('health', health - 0.023)
	--0.023 is default health gain value
	--also, substracting, while it otherwise would stack ontop

	--debugPrint('end-hp:', getProperty('health'))
	--debugPrint('###')
end

function noteMiss(id, noteData, noteType, isSustainNote)
	health = getProperty('health')

	setProperty('health', health + 1)
	--0.0475 is default health loss value
	--also, adding, while it otherwise would stack ontop

	if isSustainNote then
		setProperty('health', health - loss/2)
	else
		setProperty('health', health - loss)
	end
end