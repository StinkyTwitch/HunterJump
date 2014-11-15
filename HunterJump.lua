

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
	local initial_vector = ( ObjectFacing( "Player" ) )
	local disengage_vector = ( mod( ObjectFacing( "Player" ) + math.pi, math.pi * 2 ) )
	
	FaceDirection( disengage_vector )
	C_Timer.After(.15, function() CastSpellByName("Disengage") end)
	C_Timer.After(.30, function () FaceDirection( initial_vector ) end )
	print( initial_vector )
	print( disengage_vector )
end