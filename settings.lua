
-- common settings

whinny.creative = core.settings:get_bool("creative_mode", false)

whinny.enable_damage = core.settings:get_bool("enable_damage", true)

whinny.turn_player_look = core.settings:get_bool("mount_turn_player_look", true)


-- mobs_redo settings

whinny.display_spawn = core.settings:get_bool("display_mob_spawn", false) -- deprecated?


-- unique settings

whinny.peaceful_only = core.settings:get_bool("whinny.peaceful_only", true)

whinny.spawn_chance = tonumber(core.settings:get("whinny.spawn_chance") or 50000)

whinny.spawn_height_min = tonumber(core.settings:get("whinny.spawn_height_min") or -500)

whinny.spawn_height_max = tonumber(core.settings:get("whinny.spawn_height_max") or 500)

--- Comma-separated list of nodes on which horses can spawn.
--
--  @setting whinny.spawn_nodes
--  @settype string
--  @default default:dirt_with_grass,default:dirt_with_dry_grass
whinny.spawn_nodes = {}

local spawn_nodes = core.settings:get("whinny.spawn_nodes") or "default:dirt_with_grass,default:dirt_with_dry_grass"
if not spawn_nodes:find(",") then
	table.insert(whinny.spawn_nodes, spawn_nodes)
else
	for _, node_name in ipairs(spawn_nodes:split(",")) do
		table.insert(whinny.spawn_nodes, node_name:trim())
	end
end
