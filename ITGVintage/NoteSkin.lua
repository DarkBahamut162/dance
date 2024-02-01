local USWN = {}
USWN.ButtonRedir = {
	-- cardinal directions
	Up			= "Down",
	Down		= "Down",
	Left		= "Down",
	Right		= "Down",
	-- ordinal directions
	UpLeft		= "Down",
	UpRight		= "Down",
	DownLeft	= "Down",
	DownRight	= "Down",
	-- center is center
	Center 		= "Center"
}
USWN.Rotate = {
	-- cardinal directions
	Up			= 180,
	Down		= 0,
	Left		= 90,
	Right		= -90,
	-- ordinal directions
	UpLeft		= 135,
	UpRight		= 225,
	DownLeft	= 45,
	DownRight	= -45,
	-- center is center
	Center 		= 0
}
USWN.ElementRedir = {
	["Roll Explosion"] = "Hold Explosion"
}
USWN.PartsToRotate = {
	["Receptor"] = true,
	["Tap Explosion Dim W1"] = true,
	["Tap Explosion Dim W2"] = true,
	["Tap Explosion Dim W3"] = true,
	["Tap Explosion Dim W4"] = true,
	["Tap Explosion Dim W5"] = true,
	["Tap Note"] = true,
	["Tap Fake"] = true,
	["Tap Lift"] = true,
	["Tap Addition"] = true,
	["Hold Explosion"] = true,
	["Hold Head Active"] = true,
	["Hold Head Inactive"] = true,
	["Roll Explosion"] = true,
	["Roll Head Active"] = true,
	["Roll Head Inactive"] = true
}
USWN.Blank = {
	["Hold Topcap Active"] = true,
	["Hold Topcap Inactive"] = true,
	["Roll Topcap Active"] = true,
	["Roll Topcap Inactive"] = true,
	["Hold Tail Active"] = true,
	["Hold Tail Inactive"] = true,
	["Roll Tail Active"] = true,
	["Roll Tail Inactive"] = true,
	["Tap Explosion Bright"] = true,
	["Tap Explosion Dim"] = true
}

function USWN.Load()
	local sButton = Var "Button"
	local sElement = Var "Element"
	local Button = USWN.ButtonRedir[sButton] or "Down"
	local Element = USWN.ElementRedir[sElement] or sElement

	if string.find(sElement,"Head") then Element = "Tap Note" end

	local t = LoadActor(NOTESKIN:GetPath(Button,Element))

	if USWN.Blank[sElement] then if Var "SpriteOnly" then t = LoadActor(NOTESKIN:GetPath("","_blank")) else t = Def.Actor{} end end
	if USWN.PartsToRotate[sElement] then t.BaseRotationZ = USWN.Rotate[sButton] or nil end
	if sElement == "Explosion" then t.BaseRotationZ = nil end

	return t
end

return USWN