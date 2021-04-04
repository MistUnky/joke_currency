minetest.register_craftitem("joke_currency:coin", { --coins
	description = "coins",
	inventory_image = "joke_currency_coin.png",
	wield_image = "joke_currency_coin.png",
	stack_max = 65535,
})
minetest.register_craft({ --inflate
	type = "shapeless",
	output = "joke_currency:coin 2",
	recipe = {"joke_currency:coin"}
})
minetest.register_craft({ --deflate
	type = "shapeless",
	output = "joke_currency:coin",
	recipe = {"joke_currency:coin", "joke_currency:coin"}
})
minetest.register_on_newplayer(function(player)
	player:get_inventory():add_item('main', 'joke_currency:coin')
end)
