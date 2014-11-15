

--[[------------------------------------------------------------------------------------------------
SLASH COMMAND
--------------------------------------------------------------------------------------------------]]
SLASH_LIBROTATEPRACMD1 = "/hunterjump"

--[[------------------------------------------------------------------------------------------------
ROTATE COMMAND LIST
--------------------------------------------------------------------------------------------------]]
function SlashCmdList.LIBROTATEPRACMD(msg,editbox)
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
	local first_direction = ( mod( ObjectFacing( "Player" ) + math.pi, math.pi * 2 ) )
	local second_direction = ( first_direction - math.pi )
	
	FaceDirection( first_direction )
	C_Timer.After(.25, function() CastSpellByName(Disengage) end)
	FaceDirection( second_direction )
end