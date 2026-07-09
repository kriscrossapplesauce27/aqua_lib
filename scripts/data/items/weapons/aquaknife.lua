local item, super = Class(Item, "aquaknife")

function item:init()
    super.init(self)

    -- Display name
    self.name = "AquaKnife"

    -- Item type (item, key, weapon, armor)
    self.type = "weapon"
    -- Item icon (for equipment)
    self.icon = "ui/menu/icon/sword"

    -- Battle description
    self.effect = ""
    -- Shop description
    self.shop = ""
    -- Menu description
    self.description = "A mischievous blade."

    -- Default shop price (sell price is halved)
    self.price = 100
    -- Whether the item can be sold
    self.can_sell = true

    self.sell_price = 1

    -- Consumable target mode (ally, party, enemy, enemies, or none)
    self.target = "none"
    -- Where this item can be used (world, battle, all, or none)
    self.usable_in = "all"
    -- Item this item will get turned into when consumed
    self.result_item = nil
    -- Will this item be instantly consumed in battles?
    self.instant = false

    -- Equip bonuses (for weapons and armor)
    self.bonuses = {
        attack = 10,
        defense = 2,
    }
    -- Bonus name and icon (displayed in equip menu)
   

    -- Equippable characters (default true for armors, false for weapons)
    self.can_equip = {
        kris = true,
        noelle = true,
    }

    -- Character reactions
    self.reactions = {
        susie = "Too small. Kris-size.",
        ralsei = "Umm, I might hurt myself...",
        noelle = "That's, um, nostalgic.",
    }
end

--[[function item:convertToLightEquip(chara)
    return "light/blackshard"
end

function item:convertToLight(inventory)
    return "light/blackshard"
end

function item:getAttackSprite(battler, enemy, points)
    return "effects/attack/shard"
end
]]
return item
