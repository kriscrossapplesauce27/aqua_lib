local character, super = Class(PartyMember, "aqua")

function character:init()
    super.init(self)

    -- Display name
    self.name = "Aqua"

    -- Actor (handles sprites)
    self:setActor("aqua")

    -- Display level (saved to the save file)
    self.love = 1
    self.level = self.love
    -- Default title / class (saved to the save file)
    self.title = "Cyan flower."

	self.icon_color = ColorUtils.hexToRGB("#55ffff")
	
    -- Determines which character the soul comes from (higher number = higher priority)
    self.soul_priority = 1
    -- The color of this character's soul (optional, defaults to red)
    self.soul_color = ColorUtils.hexToRGB("#55ffff")
    
    
    -- In which direction will this character's soul face (optional, defaults to facing up)
    --self.soul_facing = "down"

    -- Whether the party member can act / use spells
    self.has_act = true
    self.has_spells = true

    -- Whether the party member can use their X-Action
    self.has_xact = true
    -- X-Action name (displayed in this character's spell menu)
    self.xact_name = "A-Action"

    -- Spells
    

    -- Current health (saved to the save file)
    
        self.health = 220

    -- Base stats (saved to the save file)
   
        self.stats = {
            health = 220,
            attack = 14,
            defense = 6,
            magic = 8
        }
    -- Max stats from level-ups
    self.max_stats = {}

    -- Weapon icon in equip menu
    self.weapon_icon = "ui/menu/equip/sword"

    -- Equipment (saved to the save file)
    self:setWeapon("aquaknife")
    self:setArmor(1, "redribbon")
    

    -- Character color (for action box outline and hp bar)
    
    if  not Kristal.getLibConfig("aqualib", "custom_head_icon") then
        self.color = ColorUtils.hexToRGB("#46e3ff")
    else
     self.color = ColorUtils.hexToRGB("#55ffff")
    end
    -- Damage color (for the number when attacking enemies) (defaults to the main color)
    self.dmg_color = nil
    -- Attack bar color (for the target bar used in attack mode) (defaults to the main color)
    self.attack_bar_color = nil
    -- Attack box color (for the attack area in attack mode) (defaults to darkened main color)
    self.attack_box_color = nil
    -- X-Action color (for the color of X-Action menu items) (defaults to the main color)
    self.xact_color = nil

    -- Head icon in the equip / power menu
    self.menu_icon = "party/aqua/head"
    -- Path to head icons used in battle
    if  not Kristal.getLibConfig("aqualib", "custom_head_icon") then
        self.head_icons = "party/aqua/icon_knife"
    else
     self.head_icons = "party/aqua/icon"
    end
    -- Name sprite (optional)
    self.name_sprite = "party/aqua/name"

    -- Effect shown above enemy after attacking it
    self.attack_sprite = "effects/attack/cut"
    -- Sound played when this character attacks
    self.attack_sound = "laz_c"
    -- Pitch of the attack sound
    self.attack_pitch = 0.9
    -- Battle position offset (optional)
    self.battle_offset = {3, 1}
    -- Head icon position offset (optional)
    self.head_icon_offset = {-1, -2}
    -- Menu icon position offset (optional)
    self.menu_icon_offset = nil

    -- Message shown on gameover (optional)
    self.gameover_message = nil
	
	
end


return character
