local allowCountdown = false
function onStartCountdown()
 if not allowCountdown and isStoryMode and not seenCutscene then --Block the first countdown
  startVideo('paper-hatIntro');
  allowCountdown = true;

  return Function_Stop;
 end
 return Function_Continue;
end

function opponentNoteHit()
    health = getProperty('health')
    if getProperty('health') > 0.1 then
        setProperty('health', health- 0.02);
    end
end