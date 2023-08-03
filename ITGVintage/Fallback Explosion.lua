return Def.ActorFrame{
	NOTESKIN:LoadActor(Var "Button","Hold Explosion")..{
		HoldingOnCommand=NOTESKIN:GetMetricA("HoldGhostArrow","HoldingOnCommand"),
		HoldingOffCommand=NOTESKIN:GetMetricA("HoldGhostArrow","HoldingOffCommand"),
		InitCommand=function(self) self:playcommand("HoldingOff"):finishtweening() end
	},
	NOTESKIN:LoadActor(Var "Button","Hold Explosion")..{
		RollOnCommand=NOTESKIN:GetMetricA("HoldGhostArrow","RollOnCommand"),
		RollOffCommand=NOTESKIN:GetMetricA("HoldGhostArrow","RollOffCommand"),
		InitCommand=function(self) self:playcommand("RollOff"):finishtweening() end,
		BrightCommand=function(self) self:visible(false) end,
		DimCommand=function(self) self:visible(false) end,	
	},
	Def.ActorFrame{
		NOTESKIN:LoadActor(Var "Button","Tap Explosion Dim W1")..{
			InitCommand=function(self) self:diffusealpha(0) end,
			W1Command=NOTESKIN:GetMetricA("GhostArrowDim","W1Command"),
			JudgmentCommand=function(self) self:finishtweening() end,
			BrightCommand=function(self) self:visible(false) end,
			DimCommand=function(self) self:visible(true) end
		},
		NOTESKIN:LoadActor(Var "Button","Tap Explosion Dim W1")..{
			InitCommand=function(self) self:diffusealpha(0) end,
			W1Command=NOTESKIN:GetMetricA("GhostArrowBright","W1Command"),
			JudgmentCommand=function(self) self:finishtweening() end,
			BrightCommand=function(self) self:visible(true) end,
			DimCommand=function(self) self:visible(false) end
		}
	},
	Def.ActorFrame{
		NOTESKIN:LoadActor(Var "Button","Tap Explosion Dim W2")..{
			InitCommand=function(self) self:diffusealpha(0) end,
			W2Command=NOTESKIN:GetMetricA("GhostArrowDim","W1Command"),
			HeldCommand=NOTESKIN:GetMetricA("GhostArrowDim","HeldCommand"),
			JudgmentCommand=function(self) self:finishtweening() end,
			BrightCommand=function(self) self:visible(false) end,
			DimCommand=function(self) self:visible(true) end
		},
		NOTESKIN:LoadActor(Var "Button","Tap Explosion Dim W2")..{
			InitCommand=function(self) self:diffusealpha(0) end,
			W2Command=NOTESKIN:GetMetricA("GhostArrowBright","W1Command"),
			HeldCommand=NOTESKIN:GetMetricA("GhostArrowBright","HeldCommand"),
			JudgmentCommand=function(self) self:finishtweening() end,
			BrightCommand=function(self) self:visible(true) end,
			DimCommand=function(self) self:visible(false) end
		}
	},
	Def.ActorFrame{
		NOTESKIN:LoadActor(Var "Button","Tap Explosion Dim W3")..{
			InitCommand=function(self) self:diffusealpha(0) end,
			W3Command=NOTESKIN:GetMetricA("GhostArrowDim","W1Command"),
			JudgmentCommand=function(self) self:finishtweening() end,
			BrightCommand=function(self) self:visible(false) end,
			DimCommand=function(self) self:visible(true) end
		},
		NOTESKIN:LoadActor(Var "Button","Tap Explosion Dim W3")..{
			InitCommand=function(self) self:diffusealpha(0) end,
			W3Command=NOTESKIN:GetMetricA("GhostArrowBright","W1Command"),
			JudgmentCommand=function(self) self:finishtweening() end,
			BrightCommand=function(self) self:visible(true) end,
			DimCommand=function(self) self:visible(false) end
		}
	},
	Def.ActorFrame{
		NOTESKIN:LoadActor(Var "Button","Tap Explosion Dim W4")..{
			InitCommand=function(self) self:diffusealpha(0) end,
			W4Command=NOTESKIN:GetMetricA("GhostArrowDim","W1Command"),
			JudgmentCommand=function(self) self:finishtweening() end,
			BrightCommand=function(self) self:visible(false) end,
			DimCommand=function(self) self:visible(true) end
		},
		NOTESKIN:LoadActor(Var "Button","Tap Explosion Dim W4")..{
			InitCommand=function(self) self:diffusealpha(0) end,
			W4Command=NOTESKIN:GetMetricA("GhostArrowBright","W1Command"),
			JudgmentCommand=function(self) self:finishtweening() end,
			BrightCommand=function(self) self:visible(true) end,
			DimCommand=function(self) self:visible(false) end
		}
	},
	Def.ActorFrame{
		NOTESKIN:LoadActor(Var "Button","Tap Explosion Dim W5")..{
			InitCommand=function(self) self:diffusealpha(0) end,
			W5Command=NOTESKIN:GetMetricA("GhostArrowDim","W1Command"),
			JudgmentCommand=function(self) self:finishtweening() end,
			BrightCommand=function(self) self:visible(false) end,
			DimCommand=function(self) self:visible(true) end
		},
		NOTESKIN:LoadActor(Var "Button","Tap Explosion Dim W5")..{
			InitCommand=function(self) self:diffusealpha(0) end,
			W5Command=NOTESKIN:GetMetricA("GhostArrowBright","W1Command"),
			JudgmentCommand=function(self) self:finishtweening() end,
			BrightCommand=function(self) self:visible(true) end,
			DimCommand=function(self) self:visible(false) end
		}
	},
	NOTESKIN:LoadActor(Var "Button","HitMine Explosion")..{
		InitCommand=function(self) self:blend("BlendMode_Add"):diffusealpha(0) end,
		HitMineCommand=NOTESKIN:GetMetricA("GhostArrowBright","HitMineCommand")
	}
}