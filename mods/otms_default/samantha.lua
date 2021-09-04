minetest.register_craftitem("otms_default:samantha_remover", {
	description = "Samantha Remover",
	inventory_image = "otms_default_remover.png",
	on_use = function(itemstack, user, pointed_thing)
		if pointed_thing.type == "object" then
			pointed_thing.ref:remove()
		end
	end
})







local persona = {
	fear_threshold = 5, -- How cowardly Samantha is
	panic_threshold = 5, -- How much fear is too much for her
	boredom_tolerance = 5, -- How much entertainment Samantha wants
	min_hunger_threshold = 5, -- How hungry until Samamtha thinks to eat
	max_hunger_threshold = 10, -- How hungry Samantha can get before panic
}

local hunger = 0
local fear = 0
local panic = 0



local food_sources = {
	"otms_default:grass"
}



minetest.register_entity("otms_default:samantha", {
	hp_max = 1,
	physical = true,
	weight = 5,
	collisionbox = {-0.5,-0.5,-0.5, 0.5,0.5,0.5},
	visual = "upright_sprite",
	visual_size = {x=1, y=1},
	textures = {"samantha.png"},
	is_visible = true,
	initial_sprite_basepos = {x=0, y=0},
	on_step = function(self, dtime, moveresult)
	end,
	nametag = "Samantha",
})