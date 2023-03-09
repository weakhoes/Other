local Player = game.Players.LocalPlayer
local Origin = Player.Character.HumanoidRootPart.CFrame 
Player.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Ignored.Shop["[Surgeon Mask] - $25"].Head.CFrame
fireclickdetector(game:GetService("Workspace").Ignored.Shop["[Surgeon Mask] - $25"].ClickDetector)
wait(5)
Player.Character.HumanoidRootPart.CFrame = Origin
