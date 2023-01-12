--Made by RamenDominoes on GB ( https://gamebanana.com/members/2135195 )
--Please credit if you use this!!! Thanks! <3

--Custom Functions--
function RatingPercentage(rating)
	if getProperty('totalPlayed') > 0 then
		VisualRating = math.floor((getProperty(rating)/getProperty('totalPlayed'))*100)
	elseif getProperty('totalPlayed') == 0 then
		VisualRating = 0
	end
	return VisualRating
end
function RatingPercentageAccurate(rating)
	if getProperty('totalPlayed') > 0 then
		RatingPercent = string.format("%.2f",(getProperty(rating)/getProperty('totalPlayed'))*100)
	elseif getProperty('totalPlayed') == 0 then
		RatingPercent = 0
	end
	return RatingPercent
end
function flixelKeyPress(key)
	return getPropertyFromClass('flixel.FlxG', 'keys.justPressed.'..key)
end
function simpleishGraphic(tag, xPos, yPos, graphicWidth, graphicHeight, color)
	makeLuaSprite(tag, '', xPos, yPos)
	makeGraphic(tag, graphicWidth, graphicHeight, color)
	setObjectCamera(tag, 'Other')
	addLuaSprite(tag)
end
function simpleishText(tag, text, textWidth, xPos, yPos, textSize, textBorderSize, alignment)
	makeLuaText(tag, text, textWidth, xPos, yPos)
	setTextSize(tag, textSize)
	setTextColor(tag, '000000')
	setTextBorder(tag, textBorderSize, 'FFFFFF')
	setTextAlignment(tag, alignment)
	setObjectCamera(tag, 'Other')
	addLuaText(tag)
end
function RGBtoHex(R,G,B) -- behold, the most mid RGB to Hex converter to exist LMAO

	Decimal1 = math.floor(R/16)
	Decimal2 = ((R/16)%1)*16

	Decimal3 = math.floor(G/16)
	Decimal4 = ((G/16)%1)*16

	Decimal5 = math.floor(B/16)
	Decimal6 = ((B/16)%1)*16

	LetterValues = 'ABCDEF'

-- testing "string.sub" shit lol
	if Decimal1 == 10 then
		Decimal1 = string.sub(LetterValues, 1,1)
	elseif Decimal1 == 11 then
		Decimal1 = string.sub(LetterValues, 2,2)
	elseif Decimal1 == 12 then
		Decimal1 = string.sub(LetterValues, 3,3)
	elseif Decimal1 == 13 then
		Decimal1 = string.sub(LetterValues, 4,4)
	elseif Decimal1 == 14 then
		Decimal1 = string.sub(LetterValues, 5,5)
	elseif Decimal1 == 15 then
		Decimal1 = string.sub(LetterValues, 6,6)
	end
	if Decimal2 == 10 then
		Decimal2 = string.sub(LetterValues, 1,1)
	elseif Decimal2 == 11 then
		Decimal2 = string.sub(LetterValues, 2,2)
	elseif Decimal2 == 12 then
		Decimal2 = string.sub(LetterValues, 3,3)
	elseif Decimal2 == 13 then
		Decimal2 = string.sub(LetterValues, 4,4)
	elseif Decimal2 == 14 then
		Decimal2 = string.sub(LetterValues, 5,5)
	elseif Decimal2 == 15 then
		Decimal2 = string.sub(LetterValues, 6,6)
	end
	if Decimal3 == 10 then
		Decimal3 = string.sub(LetterValues, 1,1)
	elseif Decimal3 == 11 then
		Decimal3 = string.sub(LetterValues, 2,2)
	elseif Decimal3 == 12 then
		Decimal3 = string.sub(LetterValues, 3,3)
	elseif Decimal3 == 13 then
		Decimal3 = string.sub(LetterValues, 4,4)
	elseif Decimal3 == 14 then
		Decimal3 = string.sub(LetterValues, 5,5)
	elseif Decimal3 == 15 then
		Decimal3 = string.sub(LetterValues, 6,6)
	end
	if Decimal4 == 10 then
		Decimal4 = string.sub(LetterValues, 1,1)
	elseif Decimal4 == 11 then
		Decimal4 = string.sub(LetterValues, 2,2)
	elseif Decimal4 == 12 then
		Decimal4 = string.sub(LetterValues, 3,3)
	elseif Decimal4 == 13 then
		Decimal4 = string.sub(LetterValues, 4,4)
	elseif Decimal4 == 14 then
		Decimal4 = string.sub(LetterValues, 5,5)
	elseif Decimal4 == 15 then
		Decimal4 = string.sub(LetterValues, 6,6)
	end
	if Decimal5 == 10 then
		Decimal5 = string.sub(LetterValues, 1,1)
	elseif Decimal5 == 11 then
		Decimal5 = string.sub(LetterValues, 2,2)
	elseif Decimal5 == 12 then
		Decimal5 = string.sub(LetterValues, 3,3)
	elseif Decimal5 == 13 then
		Decimal5 = string.sub(LetterValues, 4,4)
	elseif Decimal5 == 14 then
		Decimal5 = string.sub(LetterValues, 5,5)
	elseif Decimal5 == 15 then
		Decimal5 = string.sub(LetterValues, 6,6)
	end
	if Decimal6 == 10 then
		Decimal6 = string.sub(LetterValues, 1,1)
	elseif Decimal6 == 11 then
		Decimal6 = string.sub(LetterValues, 2,2)
	elseif Decimal6 == 12 then
		Decimal6 = string.sub(LetterValues, 3,3)
	elseif Decimal6 == 13 then
		Decimal6 = string.sub(LetterValues, 4,4)
	elseif Decimal6 == 14 then
		Decimal6 = string.sub(LetterValues, 5,5)
	elseif Decimal6 == 15 then
		Decimal6 = string.sub(LetterValues, 6,6)
	end
		Hex1 = Decimal1
		Hex2 = Decimal2
		Hex3 = Decimal3
		Hex4 = Decimal4
		Hex5 = Decimal5
		Hex6 = Decimal6
		local HexCode = table.concat{Hex1,Hex2,Hex3,Hex4,Hex5,Hex6}
	return HexCode
end
liveCombo = 0
maxCombo = 0
function goodNoteHit(id, direction, noteType, isSustainNote)
	if not isSustainNote then
		liveCombo = liveCombo + 1
	end
	if liveCombo > maxCombo and not isSustainNote then
		maxCombo = maxCombo + 1
	end
end
function noteMiss(membersIndex, noteData, noteType, isSustainNote)
	liveCombo = 0
end
allowEnd = false
--Results Screen
function onEndSong()
	allowPause = false

	local R = getProperty('dad.healthColorArray[0]')
	local G = getProperty('dad.healthColorArray[1]')
	local B = getProperty('dad.healthColorArray[2]')
	local FG_Graphic_Color = RGBtoHex(R,G,B)

	simpleishGraphic('ResultsBG', 640, 360, 1, 1, 'FFFFFF')

	simpleishGraphic('ResultsFG', 640, 360, 1, 1, FG_Graphic_Color)

	doTweenX('ResultsBGTweenScaleX', 'ResultsBG.scale', 1280, 0.25, 'QuartOut')
	doTweenX('ResultsFGTweenScaleX', 'ResultsFG.scale', 1240, 0.25, 'QuartOut')
	runTimer('ResultsTimer', 0.5, 1)

	simpleishGraphic('Stripe1', -1500, 200, 1000, 10, 'FFFFFF')
	setProperty('Stripe1.angle', -45)
	simpleishGraphic('Stripe2', -1500, 200, 1000, 20, 'FFFFFF')
	setProperty('Stripe2.angle', -45)
	simpleishGraphic('Stripe3', -1500, 300, 1000, 60, 'FFFFFF')
	setProperty('Stripe3.angle', -45)
	simpleishGraphic('Stripe3a', -1500, 400, 1200, 60, 'FFFFFF')
	setProperty('Stripe3a.angle', -45)

	simpleishGraphic('SongNameAndDifficultyBarBG', -1500, 60, 1000, 100, 'FFFFFF')
	simpleishGraphic('SongNameAndDifficultyBarFG', -1500, 70, 980, 80, FG_Graphic_Color)
	simpleishText('SongNameBarText', '"'..songName..'" ['..getProperty('storyDifficultyText')..']', 980, -1500, 85, 40, 2, 'left')

	simpleishGraphic('SongStatsBarBG', -1500, 210, 350, 450, 'FFFFFF')
	simpleishGraphic('SongStatsBarFG', -1500, 220, 330, 430, FG_Graphic_Color)
	simpleishGraphic('SongStatsUnderLine', -1500, 270, 280, 5, 'FFFFFF')
	simpleishGraphic('NotesHitDivisionLine', -1500, 515, 100, 5, 'FFFFFF')

	simpleishText('SongStatsBarHeader', 'Song Stats', 330, -1500, 230, 40, 2, 'left')
	simpleishText('SongScore', 'Score: '..score, 330, -1500, 300, 30, 2, 'left')
	simpleishText('SongAccuracy', 'Accuracy: '..string.format("%.2f",(rating*100))..'%', 330, -1500, 360, 30, 2, 'left')
	simpleishText('SongRating', 'Rating: ['..ratingFC..']', 330, -1500, 420, 30, 2, 'left')
	simpleishText('SongNotesHitLabel', 'Notes Hit:', 330, -1500, 500, 30, 2, 'left')--why do i do this to myself
	simpleishText('SongNotesPlayed', getProperty('songHits'), 100, -1500, 485, 25, 2, 'center')--why do i do this to myself
	simpleishText('SongNotesTotal', getProperty('totalPlayed'), 100, -1500, 522, 25, 2, 'center')--why do i do this to myself
	simpleishText('SongHighestCombo', 'Max Combo: x'..maxCombo, 330, -1500, 580, 30, 2, 'left')

	simpleishGraphic('DetailedStatsBG', 1500, 210, 760, 450, 'FFFFFF')
	simpleishGraphic('DetailedStatsFG', 1500, 220, 740, 430, FG_Graphic_Color)
	simpleishGraphic('DetailedStatsBottomLine', 1500, 550, 660, 10, 'FFFFFF')

	simpleishGraphic('DetailedStatsPercentageLabelSpine', 1500, 250, 1, 300, 'FFFFFF')
	simpleishGraphic('DetailedStatsPercentageLabel0', 1500, 550, 20, 1, 'FFFFFF')
	simpleishText('0PercentLabel', '0%', 50, 1500, 540, 20, 1, 'center')

	simpleishGraphic('DetailedStatsPercentageLabel25', 1500, 475, 20, 1, 'FFFFFF')
	simpleishText('25PercentLabel', '25%', 50, 1500, 465, 20, 1, 'center')

	simpleishGraphic('DetailedStatsPercentageLabel50', 1500, 400, 20, 1, 'FFFFFF')
	simpleishText('50PercentLabel', '50%', 50, 1500, 390, 20, 1, 'center')

	simpleishGraphic('DetailedStatsPercentageLabel75', 1500, 325, 20, 1, 'FFFFFF')
	simpleishText('75PercentLabel', '75%', 50, 1500, 315, 20, 1, 'center')

	simpleishGraphic('DetailedStatsPercentageLabel100', 1500, 250, 20, 1, 'FFFFFF')
	simpleishText('100PercentLabel', '100%', 60, 1500, 240, 20, 1, 'center')


	simpleishGraphic('DetailedStatsSicksBGBG', 1500, 249, 82, 301, '000000')
	simpleishGraphic('DetailedStatsSicksBG', 1500, 250, 80, 300, 'FFFFFF')
	setProperty('DetailedStatsSicksBG.alpha', 0.6)
	simpleishText('SicksFinalCount', getProperty('sicks'), 80, 1500, 220, 20, 1, 'center')
	simpleishText('SicksRatingPercentage', RatingPercentageAccurate('sicks')..'%', 80, 1500, 540, 15, 1, 'center')
	if RatingPercentage('sicks') > 0 then
		simpleishGraphic('DetailedStatsSicksFG', 1500, 550 - (RatingPercentage('sicks')*3), 80, (RatingPercentage('sicks')*3), 'FFFFFF') --300 max
		setProperty('DetailedStatsSicksFG.alpha', 0.8)
		setProperty('SicksRatingPercentage.y', getProperty('DetailedStatsSicksFG.y')-10)
	end
	simpleishText('SicksDetailedLabel', 'Sicks', 80, 1500, 570, 25, 2, 'center')

	simpleishGraphic('DetailedStatsGoodsBGBG', 1500, 249, 82, 301, '000000')
	simpleishGraphic('DetailedStatsGoodsBG', 1500, 250, 80, 300, 'FFFFFF')
	setProperty('DetailedStatsGoodsBG.alpha', 0.6)
	simpleishText('GoodsFinalCount', getProperty('goods'), 80, 1500, 220, 20, 1, 'center')
	simpleishText('GoodsRatingPercentage', RatingPercentageAccurate('goods')..'%', 80, 1500, 540, 15, 1, 'center')
	if RatingPercentage('goods') > 0 then
		simpleishGraphic('DetailedStatsGoodsFG', 1500, 550 - (RatingPercentage('goods')*3), 80, (RatingPercentage('goods')*3), 'FFFFFF') --300 max
		setProperty('DetailedStatsGoodsFG.alpha', 0.8)
		setProperty('GoodsRatingPercentage.y', getProperty('DetailedStatsGoodsFG.y')-10)
	end
	simpleishText('GoodsDetailedLabel', 'Goods', 80, 1500, 570, 25, 2, 'center')

	simpleishGraphic('DetailedStatsBadsBGBG', 1500, 249, 82, 301, '000000')
	simpleishGraphic('DetailedStatsBadsBG', 1500, 250, 80, 300, 'FFFFFF')
	setProperty('DetailedStatsBadsBG.alpha', 0.6)
	simpleishText('BadsFinalCount', getProperty('bads'), 80, 1500, 220, 20, 1, 'center')
	simpleishText('BadsRatingPercentage', RatingPercentageAccurate('bads')..'%', 80, 1500, 540, 15, 1, 'center')
	if RatingPercentage('bads') > 0 then
		simpleishGraphic('DetailedStatsBadsFG', 1500, 550 - (RatingPercentage('bads')*3), 80, (RatingPercentage('bads')*3), 'FFFFFF') --300 max
		setProperty('DetailedStatsBadsFG.alpha', 0.8)
		setProperty('BadsRatingPercentage.y', getProperty('DetailedStatsBadsFG.y')-10)
	end
	simpleishText('BadsDetailedLabel', 'Bads', 80, 1500, 570, 25, 2, 'center')

	simpleishGraphic('DetailedStatsShitsBGBG', 1500, 249, 82, 301, '000000')
	simpleishGraphic('DetailedStatsShitsBG', 1500, 250, 80, 300, 'FFFFFF')
	setProperty('DetailedStatsShitsBG.alpha', 0.6)
	simpleishText('ShitsFinalCount', getProperty('shits'), 80, 1500, 220, 20, 1, 'center')
	simpleishText('ShitsRatingPercentage', RatingPercentageAccurate('shits')..'%', 80, 1500, 540, 15, 1, 'center')
	if RatingPercentage('shits') > 0 then
		simpleishGraphic('DetailedStatsShitsFG', 1500, 550 - (RatingPercentage('shits')*3), 80, (RatingPercentage('shits')*3), 'FFFFFF') --300 max
		setProperty('DetailedStatsShitsFG.alpha', 0.8)
		setProperty('ShitsRatingPercentage.y', getProperty('DetailedStatsShitsFG.y')-10)
	end
	simpleishText('ShitsDetailedLabel', 'Shits', 80, 1500, 570, 25, 2, 'center')

	simpleishGraphic('DetailedStatsMissesBGBG', 1500, 249, 82, 301, '000000')
	simpleishGraphic('DetailedStatsMissesBG', 1500, 250, 80, 300, 'FFFFFF')
	setProperty('DetailedStatsMissesBG.alpha', 0.6)
	simpleishText('MissesFinalCount', getProperty('songMisses'), 80, 1500, 220, 20, 1, 'center')
	simpleishText('MissesRatingPercentage', RatingPercentageAccurate('songMisses')..'%', 80, 1500, 540, 15, 1, 'center')
	if RatingPercentage('songMisses') > 0 then
		simpleishGraphic('DetailedStatsMissesFG', 1500, 550 - (RatingPercentage('songMisses')*3), 80, (RatingPercentage('songMisses')*3), 'FFFFFF') --300 max
		setProperty('DetailedStatsMissesFG.alpha', 0.8)
		setProperty('MissesRatingPercentage.y', getProperty('DetailedStatsMissesFG.y')-10)
	end
	simpleishText('MissesDetailedLabel', 'Misses', 100, 1500, 570, 25, 2, 'center')

	simpleishGraphic('ContinueBG', 1500, 620, 400, 100, 'FFFFFF')
	simpleishGraphic('ContinueFG', 1500, 630, 380, 80, FG_Graphic_Color)
	simpleishText('SpaceToContinue', "'SPACE' to Continue", 380, 1500, 652, 30, 2, 'center')

	function onTimerCompleted(tag,loops,loopsleft)--LOL
		if tag == 'ResultsTimer' then
			doTweenY('ResultsBGTweenScaleY', 'ResultsBG.scale', 720, 1, 'QuartOut')
			doTweenY('ResultsFGTweenScaleY', 'ResultsFG.scale', 680, 1, 'QuartOut')
			runTimer('ShineTween', 1, 1)
		elseif tag == 'ShineTween' then
			doTweenX('Stripe1Tween', 'Stripe1', -450, 1.5, 'QuartOut')
			doTweenX('Stripe2Tween', 'Stripe2', -250, 1.5, 'QuartOut')
			doTweenX('Stripe3Tween', 'Stripe3', -275, 1.5, 'QuartOut')
			doTweenX('Stripe3aTween', 'Stripe3a', 700, 1.5, 'QuartOut')
			runTimer('SongNameAndDifficultyTimer', 1, 1)
		elseif tag == 'SongNameAndDifficultyTimer' then
			doTweenX('SongNameAndDifficultyBarBGTween', 'SongNameAndDifficultyBarBG', 60, 1, 'QuartOut')
			doTweenX('SongNameAndDifficultyBarFGTween', 'SongNameAndDifficultyBarFG', 70, 1, 'QuartOut')
			doTweenX('SongNameBarTextTween', 'SongNameBarText', 85, 1, 'QuartOut')
			runTimer('SongStatsTimer', 1, 1)
		elseif tag == 'SongStatsTimer' then
			doTweenX('SongStatsBarBGTween', 'SongStatsBarBG', 60, 1, 'QuartOut')
			doTweenX('SongStatsBarFGTween', 'SongStatsBarFG', 70, 1, 'QuartOut')
			doTweenX('SongStatsUnderLineTween', 'SongStatsUnderLine', 80, 1, 'QuartOut')
			doTweenX('NotesHitDivisionLineTween', 'NotesHitDivisionLine', 280, 1, 'QuartOut')
			doTweenX('SongStatsBarHeaderTween', 'SongStatsBarHeader', 80, 1, 'QuartOut')
			doTweenX('SongScoreTween', 'SongScore', 80, 1, 'QuartOut')
			doTweenX('SongAccuracyTween', 'SongAccuracy', 80, 1, 'QuartOut')
			doTweenX('SongRatingTween', 'SongRating', 80, 1, 'QuartOut')
			doTweenX('SongNotesHitLabelTween', 'SongNotesHitLabel', 80, 1, 'QuartOut')
			doTweenX('SongNotesPlayedTween', 'SongNotesPlayed', 280, 1, 'QuartOut')
			doTweenX('SongNotesTotalTween', 'SongNotesTotal', 280, 1, 'QuartOut')
			doTweenX('SongHighestComboTween', 'SongHighestCombo', 80, 1, 'QuartOut')
			runTimer('DetailedStatsTimer', 1, 1)
		elseif tag == 'DetailedStatsTimer' then
			doTweenX('DetailedStatsBGTween', 'DetailedStatsBG', 460, 1, 'QuartOut')
			doTweenX('DetailedStatsFGTween', 'DetailedStatsFG', 470, 1, 'QuartOut')
			doTweenX('DetailedStatsBottomLineTween', 'DetailedStatsBottomLine', 530, 1, 'QuartOut')
			doTweenX('DetailedStatsPercentageLabelSpineTween', 'DetailedStatsPercentageLabelSpine', 530, 1, 'QuartOut')

			doTweenX('DetailedStatsPercentageLabel0Tween', 'DetailedStatsPercentageLabel0', 520, 1, 'QuartOut')
			doTweenX('0PercentLabelTween', '0PercentLabel', 470, 1, 'QuartOut')
			doTweenX('DetailedStatsPercentageLabel25Tween', 'DetailedStatsPercentageLabel25', 520, 1, 'QuartOut')
			doTweenX('25PercentLabelTween', '25PercentLabel', 470, 1, 'QuartOut')
			doTweenX('DetailedStatsPercentageLabel50Tween', 'DetailedStatsPercentageLabel50', 520, 1, 'QuartOut')
			doTweenX('50PercentLabelTween', '50PercentLabel', 470, 1, 'QuartOut')
			doTweenX('DetailedStatsPercentageLabel75Tween', 'DetailedStatsPercentageLabel75', 520, 1, 'QuartOut')
			doTweenX('75PercentLabelTween', '75PercentLabel', 470, 1, 'QuartOut')
			doTweenX('DetailedStatsPercentageLabel100Tween', 'DetailedStatsPercentageLabel100', 520, 1, 'QuartOut')
			doTweenX('100PercentLabelTween', '100PercentLabel', 465, 1, 'QuartOut')

			--oh jeez
			doTweenX('DetailedStatsSicksBGBGTween', 'DetailedStatsSicksBGBG', 559, 1, 'QuartOut')
			doTweenX('DetailedStatsSicksBGTween', 'DetailedStatsSicksBG', 560, 1, 'QuartOut')
			doTweenX('SicksFinalCountTween', 'SicksFinalCount', 560, 1, 'QuartOut')
			doTweenX('SicksRatingPercentageTween', 'SicksRatingPercentage', 560, 1, 'QuartOut')
			doTweenX('DetailedStatsSicksFGTween', 'DetailedStatsSicksFG', 560, 1, 'QuartOut')
			doTweenX('SicksDetailedLabelTween', 'SicksDetailedLabel', 560, 1, 'QuartOut')

			doTweenX('DetailedStatsGoodsBGBGTween', 'DetailedStatsGoodsBGBG', 689, 1, 'QuartOut')
			doTweenX('DetailedStatsGoodsBGTween', 'DetailedStatsGoodsBG', 690, 1, 'QuartOut')
			doTweenX('GoodsFinalCountTween', 'GoodsFinalCount', 690, 1, 'QuartOut')
			doTweenX('GoodsRatingPercentageTween', 'GoodsRatingPercentage', 690, 1, 'QuartOut')
			doTweenX('DetailedStatsGoodsFGTween', 'DetailedStatsGoodsFG', 690, 1, 'QuartOut')
			doTweenX('GoodsDetailedLabelTween', 'GoodsDetailedLabel', 690, 1, 'QuartOut')

			doTweenX('DetailedStatsBadsBGBGTween', 'DetailedStatsBadsBGBG', 819, 1, 'QuartOut')
			doTweenX('DetailedStatsBadsBGTween', 'DetailedStatsBadsBG', 820, 1, 'QuartOut')
			doTweenX('BadsFinalCountTween', 'BadsFinalCount', 820, 1, 'QuartOut')
			doTweenX('BadsRatingPercentageTween', 'BadsRatingPercentage', 820, 1, 'QuartOut')
			doTweenX('DetailedStatsBadsFGTween', 'DetailedStatsBadsFG', 820, 1, 'QuartOut')
			doTweenX('BadsDetailedLabelTween', 'BadsDetailedLabel', 820, 1, 'QuartOut')

			doTweenX('DetailedStatsShitsBGBGTween', 'DetailedStatsShitsBGBG', 949, 1, 'QuartOut')
			doTweenX('DetailedStatsShitsBGTween', 'DetailedStatsShitsBG', 950, 1, 'QuartOut')
			doTweenX('ShitsFinalCountTween', 'ShitsFinalCount', 950, 1, 'QuartOut')
			doTweenX('ShitsRatingPercentageTween', 'ShitsRatingPercentage', 950, 1, 'QuartOut')
			doTweenX('DetailedStatsShitsFGTween', 'DetailedStatsShitsFG', 950, 1, 'QuartOut')
			doTweenX('ShitsDetailedLabelTween', 'ShitsDetailedLabel', 950, 1, 'QuartOut')

			doTweenX('DetailedStatsMissesBGBGTween', 'DetailedStatsMissesBGBG', 1079, 1, 'QuartOut')
			doTweenX('DetailedStatsMissesBGTween', 'DetailedStatsMissesBG', 1080, 1, 'QuartOut')
			doTweenX('MissesFinalCountTween', 'MissesFinalCount', 1080, 1, 'QuartOut')
			doTweenX('MissesRatingPercentageTween', 'MissesRatingPercentage', 1080, 1, 'QuartOut')
			doTweenX('DetailedStatsMissesFGTween', 'DetailedStatsMissesFG', 1080, 1, 'QuartOut')
			doTweenX('MissesDetailedLabelTween', 'MissesDetailedLabel', 1070, 1, 'QuartOut')

			runTimer('ContinueTimer', 1, 1)
		elseif tag == 'ContinueTimer' then
			doTweenX('ContinueBGTween', 'ContinueBG', 880, 1, 'QuartOut')
			doTweenX('ContinueFGTween', 'ContinueFG', 890, 1, 'QuartOut')
			doTweenX('SpaceToContinueTween', 'SpaceToContinue', 890, 1, 'QuartOut')
		end
	end
	function onUpdatePost()
		if flixelKeyPress('SPACE') then
			playSound('confirmMenu', 0.5)
			allowEnd = true
			cameraFade('Other','000000',1)
			runTimer('EndSongTimer', 1, 1)
			function onTimerCompleted(tag,loops,loopsleft)
				if tag == 'EndSongTimer' then
				endSong()
				end
			end
		end
	end
	if not allowEnd then
		return Function_Stop
	end
	if allowEnd then
		return Function_Continue
	end
end