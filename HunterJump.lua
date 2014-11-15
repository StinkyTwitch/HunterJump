

--[[------------------------------------------------------------------------------------------------
SLASH COMMAND
--------------------------------------------------------------------------------------------------]]
SLASH_HUNTERJUMPCMD1 = "/hunterjump"

--[[------------------------------------------------------------------------------------------------
ROTATE COMMAND LIST
--------------------------------------------------------------------------------------------------]]
function SlashCmdList.HUNTERJUMPCMD(msg,editbox)
	if msg == "" then
		HunterJump()
	else
		return
	end
end

--[[------------------------------------------------------------------------------------------------
HUNTER JUMP
--------------------------------------------------------------------------------------------------]]
function HunterJump()
	local first_direction = ( ObjectFacing( "Player" ) )
	local second_direction = ( mod( ObjectFacing( "Player" ) + math.pi, math.pi * 2 ) )
	
	FaceDirection( second_direction )
	C_Timer.After(.15, function() CastSpellByName("Disengage") end)
	C_Timer.After(.30, function () FaceDirection( first_direction ) end )
	print(first_direction)
	print(second_direction)
end