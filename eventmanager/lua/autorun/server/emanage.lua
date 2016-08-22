local events = {"bighead", "deathmatch","dodgeball","shuffle", "stalker"}
local maxInt = 0
local roll = 0

local function rollInt(max)
	return math.random(max)
end

util.AddNetworkString( "rollMsg" )
local function doRoll()

	local maxInt = math.random(100,150)
	local roll = rollInt(maxInt)
	if (roll/maxInt) >= .85 then
		 wyozitev.QueueEvent(events[math.random(#events)], "EventBot")
	end
	net.Start( "rollMsg" )
	net.WriteFloat(roll/maxInt)
	net.Broadcast()

end
hook.Add("TTTEndRound", "RollHook", doRoll)

