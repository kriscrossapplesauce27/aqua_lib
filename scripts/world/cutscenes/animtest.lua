return {
    battle = function(cutscene, event)
        local aqua = cutscene:getCharacter("aqua")
        if aqua then
            cutscene:setSpeaker("aqua")
            cutscene:text("[miniface:aqua][color:#55ffff]* Uuu", {top = true})
            local option = cutscene:choicer({"1", "2","3","4"}, {top = true})

    if option == 1 then
            aqua:setAnimation("hug_grab")
            cutscene:wait(0.6)

            cutscene:wait(0.5)
            aqua:setAnimation("hug_loop")
            cutscene:text("*hug*", {top = true})
    elseif option == 2 then
        aqua:setAnimation("")
        cutscene:text("*dies*", {top = true})
    elseif option == 3 then
        aqua:setAnimation("spookydance")
        cutscene:text("*dance*", {top = true})
    else
        aqua:setAnimation("dance")
        cutscene:text("*dance*", {top = true})
    end

            aqua:resetSprite()

            cutscene:attachFollowers()
            
        end
    end
}