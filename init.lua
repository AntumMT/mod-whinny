
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
