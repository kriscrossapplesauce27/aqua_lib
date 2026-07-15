return {
    aqua = function(cutscene, event)
        local aqua = cutscene:getCharacter("aqua")
        if aqua then
            cutscene:setSpeaker("aqua")
            aqua:setSprite("pose")
            cutscene:text("[miniface:aqua][color:#55ffff]* Uuu")

        end
    end
}