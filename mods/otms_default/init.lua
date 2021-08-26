-- Importieren locale.
-- Import locale.
local S = minetest.get_translator("otms_default")

-- Import subgame mods.
local modpath = minetest.get_modpath("otms_default")

dofile(modpath.."/hand.lua")
dofile(modpath.."/nodes.lua")
dofile(modpath.."/mapgen.lua")