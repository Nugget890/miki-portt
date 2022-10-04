function onCreate()
	makeLuaSprite('bgintro', 'bgintro', -700, -450);
	addLuaSprite('bgintro', false);

  makeLuaSprite('INFERNO_SKY', 'INFERNO_SKY', -1500, -1500);
	addLuaSprite('INFERNO_SKY', false);
        scaleObject('INFERNO_SKY', 2, 2);
   setProperty('INFERNO_SKY.visible', false)
	
	makeLuaSprite('ROCK_BG', 'ROCK_BG', -700, 450);
	addLuaSprite('ROCK_BG', false);
	setProperty('ROCK_BG.visible', false)

  makeAnimatedLuaSprite('satan', 'SATAN_LAUGH_SCREEN', -100, 4);
	addAnimationByPrefix('satan', 'xd', 'SATAN LAUGH SCREEN', 24, false);
	scaleObject('satan',2,2)
  setObjectCamera('satan', 'other')
end
function onCreatePost()
    makeLuaText('score','',0,15,520); 
    setTextSize('score', 20);
    setTextFont('score', "wi.ttf") 
    addLuaText('score');

    makeLuaText('misses','',0,15,560); 
    setTextSize('misses', 20);
    setTextFont('misses', "wi.ttf")
    addLuaText('misses');
 
    makeLuaText('accu', 'Accuracy: '..math.floor(rating * 100, 2)..'%', 0, 15,600) 
    setTextSize('accu', 20);
    setTextFont('accu', "wi.ttf")
    addLuaText('accu');

    makeLuaText('sick','',0,1150,500); 
    setTextSize('sick', 20);
    setTextFont('sick', "wi.ttf")
    addLuaText('sick');

    makeLuaText('good','',0,1150,530); 
    setTextSize('good', 20);
    setTextFont('good', "wi.ttf")
    addLuaText('good');

    makeLuaText('bad','',0,1150,560); 
    setTextSize('bad', 20);
    setTextFont('bad', "wi.ttf")
    addLuaText('bad');

    makeLuaText('shit','',0,1150,595); 
    setTextSize('shit', 20);
    setTextFont('shit', "wi.ttf")
    addLuaText('shit');
end
function onUpdate()
    setTextString('sick', 'Sick: '..getProperty('sicks'));
    setTextString('good', 'Good: '..getProperty('goods'));
    setTextString('bad', 'Bad: '..getProperty('bads'));
    setTextString('shit', 'Shit: '..getProperty('shits'));
    setTextString('score', 'Score: '..getProperty('songScore'));
    setTextString('misses', 'Misses: '..getProperty('songMisses'));
    setTextString('accu','Accuracy: '..getProperty('ratingPercent'));

end
function onUpdatePost()
  setProperty('timeBarBG.visible', false)
  setProperty('scoreTxt.visible', false)

  setProperty('timeBar.x', 445)
  setProperty('timeBar.scale.x', 3.275)
  setProperty('timeBar.y', 710)
  setObjectCamera('timeBar', 'other')

  setTextSize('timeTxt', 20)
  setTextFont('timeTxt', "wi.ttf")
  setTextBorder('timeTxt', 1, '000000')
  setTextAlignment('timeTxt', 'left')
  setProperty('timeTxt.x', 10)
  setProperty('timeTxt.y', 685)
  setObjectCamera('timeTxt', 'other')

  setProperty('timeBar.color', getColorFromHex('ffffff'))
end
function onStepHit()
	if curStep == 1519 then
		addLuaSprite('satan', true);
		objectPlayAnimation('satan', 'xd', true);
    runTimer('xd', 2);
	end
end
function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'xd' then
		setProperty('satan.visible',false)
	end
end