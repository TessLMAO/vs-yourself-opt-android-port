function onCreate()
	-- background shit
	makeLuaSprite('bg', 'bg', -1090, -840);
	scaleObject ('bg', 2.5, 2.5);
	setLuaSpriteScrollFactor('bg', 0.9, 0.9);
	setProperty('bg.visible', false)
	
	makeAnimatedLuaSprite('bftieso','estatua',520,150)
	addAnimationByPrefix('bftieso','estatua','piedra moviendose')
	objectPlayAnimation('bftieso','estatua',false)
	scaleObject('bftieso',0.6, 0.6)
	
    doTweenAlpha('bftieso', 'estatua', 0.1, 0.5, 'currentBeat');
    
   end
    
  
 function onStepHit()
if curStep == 420 then
    setProperty('bftieso.visible', false)
end  
 if curStep == 703 then
    setProperty('bg.visible', true);
    setProperty('defaultCamZoom', 0.45)
  end
  if curStep == 1344 then
    setProperty('bg.visible', false);
    setProperty('defaultCamZoom', 0.9)
    end
   if curStep == 1760 then
    setProperty('bg.visible', true);
    setProperty('defaultCamZoom', 0.45)
    end

	addLuaSprite('bftieso', false);
	addLuaSprite('bg', false);
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
	end