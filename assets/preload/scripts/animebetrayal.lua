function onCreate()
	setPropertyFromClass('GameOverSubstate', 'characterName', 'toast'); --Character json file for the death animation
	setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'OMOR_Death'); --put in mods/sounds/
	setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'OMOR_GameOver'); --put in mods/music/
	setPropertyFromClass('GameOverSubstate', 'endSoundName', 'OMOR_Retry'); --put in mods/music/
end