local item, super = Class(Item, "redribbon")

function item:init()
    super.init(self)

    -- Display name
    self.name = "RedRibbon"

    -- Item type (item, key, weapon, armor)
    self.type = "armor"
    -- Item icon (for equipment)
    self.icon = "ui/menu/icon/armor"

    -- Battle description
    self.effect = ""
    -- Shop description
    self.shop = ""
    -- Menu description
    self.description = "A ribbon with an inscription to drive away resident spirits, if they don't pay."

    -- Default shop price (sell price is halved)
    self.price = 555
    -- Whether the item can be sold
    self.can_sell = true
    self.sell_price = 278

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
        defense = 4,

        magic = 1,
    }
    -- Bonus name and icon (displayed in equip menu)
    
    self.bonus_icon = "ui/menu/icon/up"

    -- Equippable characters (default true for armors, false for weapons)
    self.can_equip = {
        
    }

    -- Character reactions
        self.reactions = {
            susie = "Kris's got the tab.",
            ralsei = "Red and white... ",
            noelle = "Umm, your dad's name is on this.",
        }
  
end

return item