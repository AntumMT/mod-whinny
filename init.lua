dofile(core.get_modpath("whinny").."/api.lua")
dofile(core.get_modpath("whinny").."/horse.lua")

core.register_craftitem("whinny:meat", {
	description = "Cooked Meat",
	inventory_image = "whinny_meat.png",
	on_use = core.item_eat(4),
})

core.register_craftitem("whinny:meat_raw", {
	description = "Raw Meat",
	inventory_image = "whinny_meat_raw.png",
})

core.register_craft({
	type = "cooking",
	output = "whinny:meat",
	recipe = "whinny:meat_raw",
})
