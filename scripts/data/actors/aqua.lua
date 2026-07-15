local actor, super = Class(Actor, "aqua")



function actor:init()
    super.init(self)

    -- Display name (optional)
    self.name = "Aqua"

    -- Width and height for this actor, used to determine its center
    self.width = 20
    self.height = 36

    -- Hitbox for this actor in the overworld (optional, uses width and height by default)
    self.hitbox = {0, 23.5, 19, 14}

    -- A table that defines where the Soul should be placed on this actor if they are a player.
    -- First value is x, second value is y.
    self.soul_offset = {23,23}

    -- Color for this actor used in outline areas (optional, defaults to red)
    self.color = ColorUtils.hexToRGB("#55ffff")

    -- Path to this actor's sprites (defaults to "")
    self.path = "party/aqua/dark"
    -- This actor's default sprite or animation, relative to the path (defaults to "")
    self.default = "walk"
    self.flip = "left"

    -- Sound to play when this actor speaks (optional)
    self.voice = nil
    -- Path to this actor's portrait for dialogue (optional)
    self.portrait_path = nil
    -- Offset position for this actor's portrait (optional)
    self.portrait_offset = nil

    self.miniface = "face"
    self.miniface_offset = {0,-5}
    

    -- Whether this actor as a follower will blush when close to the player
    self.can_blush = false
   
    -- TO APPLY MINIFACE/TEXT COLOR PUT AT THE START OF THE DIALOGUE ---> [miniface:aqua][color:#55ffff]

    -- Table of sprite animations
    self.animations = {
        -- Movement animations
        ["slide"]               = {"slide", 4/30, true},

        -- Battle animations
        ["battle/idle"]         = {"battle/idle", 1/6, true},

        ["battle/attack"]       = {"battle/attack", 1/15, false},
        ["battle/act"]          = {"battle/act", 1/15, false},
        ["battle/spell"]        = {"battle/act", 1/15, false},
        ["battle/item"]         = {"battle/item", 1/12, false, next="battle/idle"},
        ["battle/spare"]        = {"battle/act", 1/15, false, next="battle/idle"},

        ["battle/attack_ready"] = {"battle/attackready", 0.2, true},
        ["battle/act_ready"]    = {"battle/actready", 0.2, true},
        ["battle/spell_ready"]  = {"battle/actready", 0.2, true},
        ["battle/item_ready"]   = {"battle/itemready", 0.2, true},
        ["battle/defend_ready"] = {"battle/defend", 1/15, false},

        ["battle/act_end"]      = {"battle/intro", 1/16, false, next="battle/idle"},

        ["battle/hurt"]         = {"battle/hurt", 1/15, false, temp=true, duration=0.5},
        ["battle/defeat"]       = {"battle/defeat", 1/15, false},
        ["battle/swooned"]      = {"battle/defeat", 1/15, false},

        ["battle/transition"]   = {"battle/intro", 1/15, false},
        ["battle/intro"]        = {"battle/intro", 1/16, false},
        ["battle/victory"]      = {"battle/victory", 1/15, false},
        --["battle/transition_out"] = {"battle/victory", 1/10, false, next = "walk/right"},

        -- Cutscene animations
        ["jump_fall"]           = {"fall", 1/5, true},
        ["jump_land"]           = {"landed", 1/15, true},
        
        ["jump_ball"]           = {"ball", 1/15, true},
        ["jump_ball_slow"]      = {"ball", 4/30, true},
    }

    if Game.chapter == 1 then
        self.animations["battle/transition"] = {"walk/right", 0, true}
    end

    -- Tables of sprites to change into in mirrors
    self.mirror_sprites = {
        ["walk/down"] = "walk/up",
        ["walk/up"] = "walk/down",
        ["walk/left"] = "walk/left",
        ["walk/right"] = "walk/right",
    }

    -- Table of sprite offsets (indexed by sprite name)
    self.offsets = {
        -- Movement offsets
        ["walk/left"] = {2, 1},
        ["walk/right"] = {0, 1},
        ["walk/up"] = {0, 1},
        ["walk/down"] = {0, 1},

        ["walk_blush/down"] = {0, 0},

        ["slide"] = {0, 0},

        -- Battle offsets
        ["battle/idle"] = {0, 0},

        ["battle/attack"] = {2, 0},
        ["battle/attackready"] = {2, 0},
        ["battle/act"] = {6, 0},
        ["battle/actend"] = {0, 0},
        ["battle/actready"] = {6, 0},
        ["battle/item"] = {6, -2},
        ["battle/itemready"] = {6, -2},
        ["battle/defend"] = {0, 0},

        ["battle/defeat"] = {0, 0},
        ["battle/hurt"] = {0, 0},

        ["battle/intro"] = {0, 0},
        ["battle/victory"] = {0, 0},

        -- Climb offsets
        ["climb/climbing"] = {-5, -15},
        ["climb/fall"] = {-3, -14},
        ["climb/charge"] = {-4, -12},
        ["climb/charge_right"] = {-4, -12},
        ["climb/charge_left"] = {-4, -12},
        ["climb/slip_right"] = {-3, -13},
        ["climb/slip_left"] = {-2, -13},
        ["climb/jump_up"] = {-4, -13},
        ["climb/land_right"] = {-4, -13},
        ["climb/land_left"] = {-4, -13},

        -- Cutscene offsets
        ["pose"] = {-4, -2},

        ["fall"] = {-5, -6},
        ["ball"] = {1, 8},
        ["landed"] = {0, -1},

        ["fell"] = {-14, 1},

        ["sword_jump_down"] = {-19, -5},
        ["sword_jump_settle"] = {-27, 4},
        ["sword_jump_up"] = {-17, 2},

        ["hug_left"] = {-4, -1},
        ["hug_right"] = {-2, -1},

        ["peace"] = {0, 0},
        ["rude_gesture"] = {0, 0},

        ["reach"] = {-3, -1},

        ["sit"] = {-3, 0},

        ["t_pose"] = {-4, 0},
    }
end

return actor
