dofile(minetest.get_modpath("aidenmons").."/api.lua")
--
mobs:register_mob("aidenmons:aidenmons", {
	type = "monster",
	hp_max = 10,
	collisionbox = {-0.4, -0.01, -0.4, 0.4, 1.9, 0.4},
	visual = "mesh",
	mesh = "aidenmons.x",
	textures = {"aidenmons.png"},
	visual_size = {x=40, y=10},
	makes_footstep_sound = true,
	view_range = 60,
	walk_velocity = 1.5,
	run_velocity = 4,
	damage = 4,
	drops = {
		{name = "default:nyancat",
		chance = 1,
		min = 3,
		max = 5,},
	},
	light_resistant = true,
	armor = 90,
	drawtype = "front",
	water_damage = 0,
	lava_damage = 0,
	light_damage = 0,
	attack_type = "dogfight",
	animation = {
		speed_normal = 15,
		speed_run = 15,
		stand_start = 0,
		stand_end = 14,
		walk_start = 15,
		walk_end = 38,
		run_start = 40,
		run_end = 63,
		punch_start = 40,
		punch_end = 63,
	}
})
mobs:register_spawn("aidenmons:aidenmons", {"default:stone"}, 3, -1, 9999, 3, 31000)


if minetest.setting_get("log_mods") then
	minetest.log("action", "aidenmons loaded")
end
