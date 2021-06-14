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

minetest.register_on_joinplayer(function(player)
	local inv = player:get_inventory()
	set_armor(player, inv)
	--mcl_armor.equip(item, player, true)
	--inv:set_list("armor", {ItemStack(), , enchantments)})
end)