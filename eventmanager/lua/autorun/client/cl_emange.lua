local red = Color(230, 32, 32)
local yellow = Color(255, 239, 0)
local green = Color(0, 255, 20)

net.Receive( "rollMsg", function()
	local result = math.floor(net.ReadFloat()*(10^2))/(10^2)
	print(result)
	chat.AddText( yellow, "[", red, "EventBot", yellow, "]", red, ":", green, " Checking results of roll..." )
	if result >= .6 then
		chat.AddText( yellow, "[", red, "EventBot", yellow, "]", red, ":", green, " Roll was sucessul at "..result )
		chat.AddText( yellow, "[", red, "EventBot", yellow, "]", red, ":", green, " Queueing a random event for next round" )
	else
		chat.AddText( yellow, "[", red, "EventBot", yellow, "]", red, ":", green, " Roll was not sucessul")
		chat.AddText( yellow, "[", red, "EventBot", yellow, "]", red, ":", green, " Reseting for next round...")
	end

end )