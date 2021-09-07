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
	panic_threshold = 10, -- How much fear is too much for her
	boredom_tolerance = 5, -- How much entertainment Samantha wants
	min_hunger_threshold = 5, -- How hungry until Samamtha thinks to eat
	max_hunger_threshold = 10, -- How hungry Samantha can get before panic
}

local hunger = 0
local fear = 0
local joy = 0

local food_sources = {
	"otms_default:grass"
}

function find_nearby_food(self, food)
	local lp = minetest.find_node_near(self:getpos(), 1, food)
	return lp
end



-- Behaviours

-- Panic behaviour:
--    If in presence of predator, run away
--    If hungry, then seek food

-- Fear behaviour:
--    If in presence of predator, walk away
--    Anxious behaviour
--    If hungry, then seek food

-- Relaxed behaviour:
--    Likely to wander around
--    Play behaviour

-- Play behaviour:
--    Pecking things, grabbing things

-- Anxious behaviour:
--    Grooming self

-- Seeking food:
--    Look around for a food source node.
--    If none, look further for food source.
--    If nothing, fear



function think_next(self)
	if fear < fear_threshold then
		-- Relaxed
	else
		if fear > panic_threshold then
			-- Panic
		else
			-- Fear
		end
	end
end



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
		think_next(self)
	end,
	nametag = "Samantha",
})
