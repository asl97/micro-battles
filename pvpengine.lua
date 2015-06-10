--delete blocks
deletem = function()
	for x=-5,5 do
		for y=-5,5 do
			for z=-5,5 do
				minetest.remove_node({x=x,y=y,z=z})
			end
		end
	end
end
--place blocks
placem = function()
	for x=-5,5 do
		for y=-5,5 do
			for z=-5,5 do
				minetest.set_node({x, y, z}{name="default:cobblestone"})
			end
		end
	end
end

--a part of the pvp engine
minetest.register_on_dieplayer(function(player)
	--Removes the player from the playerlist.
	playingplayers[player:get_player_name()] = nil
end)
