--delete blocks
global deletem = function()
	local x = 1
	local y = 1
	local z = 0
	for i to 5
		for y to 5
			minetest.set_node({x, y, z}{name="air"})
		end
		x = x + 1
	end
	x = -1
	for i to 5
		for y to 5
			minetest.set_node({x, y, z}{name="air"})
		end
		x = x - 1
	end
	x = 0
	z = 1
	for i to 5
		for y to 5
			minetest.set_node({x, y, z}{name="air"})
		end
		z = z + 1
	end
	z = -1
	for i to 5
		for y to 5
			minetest.set_node({x, y, z}{name="air"})
		end
		z = z - 1
	end
end
--place blocks
global placem = function()
	local x = 1
	local y = 1
	local z = 0
	for i to 5
		for y to 5
			minetest.set_node({x, y, z}{name="default:cobblestone"})
		end
		x = x + 1
	end
	x = -1
	for i to 5
		for y to 5
			minetest.set_node({x, y, z}{name="default:cobblestone"})
		end
		x = x - 1
	end
	x = 0
	z = 1
	for i to 5
		for y to 5
			minetest.set_node({x, y, z}{name="default:cobblestone"})
		end
		z = z + 1
	end
	z = -1
	for i to 5
		for y to 5
			minetest.set_node({x, y, z}{name="default:cobblestone"})
		end
		z = z - 1
	end
end
--a part of the pvp engine
minetest.register_on_dieplayer(function(player)
	--Removes the player from the playerlist.
	if game = 1
		local x = 1
		while not player:get_player_name() == playingplayers[x] or x > table.getn(playingplayers)
			x = x + 1
		end
		table.remove(playingplayers, x)
	end
return true
end
