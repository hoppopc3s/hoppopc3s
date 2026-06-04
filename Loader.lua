-- local script_mode = "PVP" -- PVP, FARM
local scripts = {
    [6765805766] = { -- Block Spin
        PVP  = "https://raw.githubusercontent.com/hoppopc3s/hoppopc3s/refs/heads/main/BlockSpin/BS-PVP.lua",
        FARM = "https://raw.githubusercontent.com/hoppopc3s/hoppopc3s/refs/heads/main/BlockSpin/BS-FARM.lua",
    },
    [994732206] = { -- Blox Fruits
        PVP = "https://raw.githubusercontent.com/hoppopc3s/hoppopc3s/refs/heads/main/BloxFruits/BF-PVP.lua",
    },
    [4658598196] = { -- AOTR
        FARM = "https://raw.githubusercontent.com/hoppopc3s/hoppopc3s/refs/heads/main/AOTR/aotr.lua",
        PVP = "https://raw.githubusercontent.com/hoppopc3s/hoppopc3s/refs/heads/main/AOTR/aotr.lua",
    }
        
}

local cfg = scripts[game.GameId]
if not cfg then
    game:GetService("Players").LocalPlayer:Kick("Game not supported")
    return
end

loadstring(game:HttpGet(cfg[(script_mode or "PVP"):upper()] or cfg.PVP))()
