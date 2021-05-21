
whinny = {}
whinny.modname = core.get_current_modname()
whinny.modpath = core.get_modpath(whinny.modname)

local scripts = {
	"api",
	"horse",
}

for _, script in ipairs(scripts) do
	dofile(whinny.modpath .. "/" .. script .. ".lua")
end


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
