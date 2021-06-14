--minetest.register_on_mods_loaded(function()
--    minetest.after(15, function()
--        minetest.request_shutdown("normal shutdown", false)
--    end)
--end)

local function set_armor(player, inv)
	local helmet = ItemStack("pala_armor:helmet_paladium")
	mcl_enchanting.set_enchantments(helmet, {protection = 4, unbreaking = 3})
	inv:set_stack("armor", 2, helmet)
	mcl_armor.on_equip(helmet, player)
	local chestplate = ItemStack("pala_armor:chestplate_paladium")
	mcl_enchanting.set_enchantments(chestplate, {protection = 4, unbreaking = 3})
	inv:set_stack("armor", 3, chestplate)
	mcl_armor.on_equip(chestplate, player)
	local leggings = ItemStack("pala_armor:leggings_paladium")
	mcl_enchanting.set_enchantments(leggings, {protection = 4, unbreaking = 3})
	inv:set_stack("armor", 4, leggings)
	mcl_armor.on_equip(leggings, player)
	local boots = ItemStack("pala_armor:boots_paladium")
	mcl_enchanting.set_enchantments(boots, {protection = 4, unbreaking = 3})
	inv:set_stack("armor", 5, boots)
	mcl_armor.on_equip(boots, player)
end

local function give_items(player, inv)
	local sword = ItemStack("pala_tools:sword_paladium")
	mcl_enchanting.set_enchantments(sword, {sharpness = 5, unbreaking = 3, fire_aspect = 2})
	local knocker = ItemStack("pala_tools:infernal_knocker")
	mcl_enchanting.set_enchantments(knocker, {knockback = 5, unbreaking = 3})
	local itemlist = {
		sword,
		knocker,
		ItemStack("pala_sticks:teleport_stick"),
		ItemStack("mcl_potions:healing_2_splash 16"),
		ItemStack("pala_food:apple_pala 4"),
		ItemStack("mcl_throwing:ender_pearl 16"),
		ItemStack("mcl_throwing:ender_pearl 16"),
		ItemStack("mcl_throwing:ender_pearl 16"),
		ItemStack("mcl_throwing:ender_pearl 16"),
	}
	for _,item in ipairs(itemlist) do
		inv:add_item("main", item)
	end
end

minetest.register_on_joinplayer(function(player)
	local inv = player:get_inventory()
	set_armor(player, inv)
	give_items(player, inv)
end)