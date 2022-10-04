function onCreate()
	makeAnimatedLuaSprite('grain', 'grain')
	addAnimationByPrefix('grain', 'idle', 'grain', 24, true)
	scaleObject('grain',2,2)
	setGraphicSize('grain', screenWidth + 6, screenHeight + 6)
	screenCenter('grain')
	setObjectCamera('grain', 'other')
	setProperty('grain.x', getProperty('grain.x') + 3)
	setProperty('grain.y', getProperty('grain.y') + 3)
	setProperty('grain.antialiasing', false)
	addLuaSprite('grain', false)
	objectPlayAnimation('grain', 'idle', true)
	
	makeAnimatedLuaSprite('daStatic', 'daSTAT', 0, 0)
	setGraphicSize('daStatic', screenWidth, screenHeight)
	setProperty('daStatic.alpha', 0.05)
	screenCenter('daStatic')
	setObjectCamera('daStatic', 'other')
	addAnimationByPrefix('daStatic', 'static', 'staticFLASH', 24, true)
	addLuaSprite('daStatic', false)
	objectPlayAnimation('daStatic', 'static', true)
end

function opponentNoteHit(id, direction, noteType, isSustainNote)
    hp = getProperty('health')
	if dadName == 'satan-chad' then
       triggerEvent('Screen Shake', "0.1, 0.008", "0.1, 0.008")
		if hp > 0.02 then
			if isSustainNote then
				setProperty('health', hp - 0.031 / 3)
			else
				setProperty('health', hp - 0.031)
			end
		end
	end
end