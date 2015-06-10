minetest.register_privilege(
	"micromine",
	{
		description = "Allows you to mine micro battle blocks. Must use  /grant <name> micromine to use.",
		give_to_singleplayer = false
	})
minetest.register_node(
	"mbBlock",
	{
		diggable = true,
		can_dig = function(pos, player)
			if minetest.check_player_privs(player, {micromine}) then
				return true
			else
				return false
			end
		end,
		walkable = true
	})
