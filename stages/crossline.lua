function onCreate()
	-- background shit
	makeLuaSprite('crosslineback', 'crosslineback', -600, -300);
	setLuaSpriteScrollFactor('crosslineback', 0.6, 0.6);
	
	makeLuaSprite('crosslinefront', 'crosslinefront', -400, -200);
	setLuaSpriteScrollFactor('crosslinefront', 1, 1);
	scaleObject('crosslinefront', 0.85, 0.85);

	makeAnimatedLuaSprite('crosslinePeopleFront', 'crosslinePeopleFront', 35, 550)addAnimationByPrefix('crosslinePeopleFront', 'dance', 'crosslinePeopleFront idle', 24, true)
	objectPlayAnimation('crosslinePeopleFront', 'dance', false)
	setLuaSpriteScrollFactor('crosslinePeopleFront', 0.85, 0.85)
	scaleObject('crosslinePeopleFront', 0.7, 0.7);

		makeAnimatedLuaSprite('crosslinePeopleBack', 'crosslinePeopleBack', -100, 270)addAnimationByPrefix('crosslinePeopleBack', 'dance', 'crosslinePeopleBack idle', 24, true)
	objectPlayAnimation('crosslinePeopleBack', 'dance', false)
	setLuaSpriteScrollFactor('crosslinePeopleBack', 1, 1)
	scaleObject('crosslinePeopleBack', 0.7, 0.7);

	addLuaSprite('crosslineback', false);
	addLuaSprite('crosslinefront', false);
	addLuaSprite('crosslinePeopleBack', false);
	addLuaSprite('crosslinePeopleFront', true);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end