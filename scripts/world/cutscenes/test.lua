return {
    aqua = function(cutscene, event)
        local aqua = cutscene:getCharacter("aqua")
        if aqua then
            cutscene:setSpeaker("aqua")
            aqua:setAnimation("sleevewave")
            cutscene:text("[miniface:aqua][color:#65f8ff]aqua\n[miniface:seth][color:#dc93fc]seth\n[miniface:yellow][color:#fff68a]yellow")
            cutscene:text("[miniface:orange][color:#ff9769]orange\n[miniface:green][color:#9affab]green\n[miniface:blue][color:#6891ff]blue ")
            aqua:resetSprite()

        end
    end
}