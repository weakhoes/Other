local repo = "https://raw.githubusercontent.com/wally-rblx/LinoriaLib/main/"

local Library = loadstring(game:HttpGet(repo .. "Library.lua"))()
local ThemeManager = loadstring(game:HttpGet(repo .. "addons/ThemeManager.lua"))()
local SaveManager = loadstring(game:HttpGet(repo .. "addons/SaveManager.lua"))()

local Window = Library:CreateWindow({
    Title = "I Luh Dick",
    Center = true,
    AutoShow = true,
})

local Tabs = {
    ["Locks"] = Window:AddTab("Locks"),
    ["Misc"] = Window:AddTab("Misc"),
    ["Preds"] = Window:AddTab("Preds-More"),
    ["UI Settings"] = Window:AddTab("UI Settings"),
}

-- Add Groupboxes --

local CombatLB = Tabs.Locks:AddLeftGroupbox("Locks")

local CombatRB = Tabs.Locks:AddRightGroupbox("Other")

local MiscLB = Tabs.Misc:AddLeftGroupbox("Misc")

local MiscRB = Tabs.Misc:AddRightGroupbox("Misc2")

local PredsLB = Tabs.Preds:AddLeftGroupbox("Preds")

local Teleport = Tabs.Preds:AddLeftGroupbox("Teleports")

-- End Groupboxes --

-- Start Combat --

local Wintertime = CombatLB:AddButton("Load Wintertime", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Nosssa/NossLock/main/WinterTime"))()
end)

local Nyula = CombatLB:AddButton("Load Nyula", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/nyulachan/nyula/main/nyulauh"))()
end)

local Sanky = CombatLB:AddButton("Load SankyBox", function()
loadstring(
    game:HttpGet(
        (
            Hi..Hello
            )
        :reverse(
        )
    )
){}
end)

local NoDelay = CombatRB:AddButton("No-Delay", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/drillygzzly/Other/main/NoDelay"))()
end)

local ESP = CombatRB:AddButton("Name-Esp", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/drillygzzly/Other/main/name%20esp"))()
end)

local AutoReload = CombatRB:AddButton("Auto-Reload", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/drillygzzly/Other/main/Auto-Reload"))()
end)

local AutoArmor = CombatRB:AddButton("Auto-Armor", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/drillygzzly/Other/main/AutoArmor"))()
end)

local AutoMask = CombatRB:AddButton("Auto-Mask", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/drillygzzly/Other/main/automask.lua"))()
end)

local AntiKick = CombatLB:AddButton("Load Anti-Kick", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/drillygzzly/Other/main/antiukick.lua"))()
end)

local FullGod = CombatLB:AddButton("Load God-Mode", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/drillygzzly/Other/main/godmode"))()
end)

local NoDelay = CombatRB:AddButton("No-Delay", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/drillygzzly/Other/main/NoDelay"))()
end)

local NoRecoil = CombatRB:AddButton("No-Recoil", function ()
    local CurrentFocus = game:GetService("Workspace").CurrentCamera.CFrame
    game:GetService("Workspace").CurrentCamera:Destroy()
    local Instance = Instance.new("Camera", game:GetService("Workspace"))
    Instance.CameraSubject = game:GetService("Players").LocalPlayer.Character.Humanoid
    Instance.CameraType = Enum.CameraType.Custom
    Instance.CFrame = CurrentFocus
end)

AutoArmor:AddTooltip("Type /e stop To Stop AutoBuy")

-- End Combat --

-- Misc --

local AimViewer = MiscLB:AddButton("Aim Viewer", function()
    loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/4ff4544ebf91461b2e3fe03e2d389da5.lua"))()
end)

local AntiSelf = MiscLB:AddButton("Anti Self Viewer", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/drillygzzly/Other/main/antiaim%20self%20show"))()
end)

local FPSBooster = MiscLB:AddButton("FPS Booster", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/drillygzzly/Other/main/fps%20booster"))()
end)

local ChatSpy = MiscLB:AddButton("Chat-Spy", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/drillygzzly/Other/main/ChatSpy"))()
end)

local Emotes = MiscLB:AddButton("Emotes", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/drillygzzly/Other/main/emotes"))()
end)

local AntiFling = MiscRB:AddButton("Anti-Fling", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/drillygzzly/Other/main/Anti-Fling"))()
end)

local Forcereset = MiscRB:AddButton("Force-Reset", function()
    for L_170_forvar0, L_171_forvar1 in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
        if L_171_forvar1:IsA("BasePart") then
            L_171_forvar1:Destroy()
		end
    end
end)

local ColorCorecc = MiscRB:AddButton("Color-Correction", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/drillygzzly/Other/main/colorcorec"))()
end)

local Rejoin = MiscRB:AddButton("Rejoin Server", function()
    game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
end)

local CheckIf = MiscRB:AddButton("Staff In-Game?", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/drillygzzly/Other/main/checkstaffhood"))()
end)

MiscRB:AddLabel("           Staff Check\n          Supports Only\n             Del Hood\n           Hood Legends", true)

Teleport:AddDropdown('SpawnTP', {
    Values = { 
        '',
        'Hood Kicks',
        'Bank Stop-Sign 2',
        'Bank Stop-Sign 1',
        'DownHill Armor',
        'UpHill Guns',
        'UpHill Food',
        'Gym',
    },
    Default = 1, -- number index of the value / string
    Multi = false, -- true / false, allows multiple choices to be selected

    Text = 'Spawn Teleports',
    Tooltip = 'Teleports To Selected Spawn Point', -- Information shown when you hover over the textbox
})

Options.SpawnTP:OnChanged(function()
            if Options.SpawnTP.Value == "None" then
            elseif Options.SpawnTP.Value == "Hood Kicks" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-190.105011, 176.518814, -381.750031, 1, 0, 0, 0, 1, 0, 0, 0, 1)
            elseif Options.SpawnTP.Value == "Bank Stop-Sign 2" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-454.454803, 176.518875, -484.950012, 1, 0, 0, 0, 1, 0, 0, 0, 1)
            elseif Options.SpawnTP.Value == "DownHill Armor" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-377.378357, 167.513458, -689.744446, 1, 0, 0, 0, 1, 0, 0, 0, 1)
            elseif Options.SpawnTP.Value == "UpHill Guns" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(496.044983, 202.768738, -594.200012, 1, 0, 0, 0, 1, 0, 0, 0, 1)
            elseif Options.SpawnTP.Value == "UpHill Food" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(211.794998, 202.768738, -595, 1, 0, 0, 0, 1, 0, 0, 0, 1)
            elseif Options.SpawnTP.Value == "Gym" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(8.14476013, 176.519547, -546.75, 1, 0, 0, 0, 1, 0, 0, 0, 1)
            elseif Options.SpawnTP.Value == "Bank Stop-Sign 1" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-321.505066, 176.518814, -448.799988, 1, 0, 0, 0, 1, 0, 0, 0, 1)
            end
        end)

-- End Misc --

-- Other

PredsLB:AddLabel("5ms   == .15\n10ms  == .16\n20ms  == .163\n30ms  == .167\n40ms  == .171\n50ms  == .174\n60ms  == .177\n70ms  == .179\n80ms  == .181\n90ms  == .183\n100ms == .186\n110ms == .192\n120ms == .22\n130ms == .37\n140ms == .44\n150ms == .49\n160ms == .55"
, true)

local CMDX = PredsLB:AddButton("CMD-X", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/CMD-X/CMD-X/master/Source",true))()
end)

-- End Over --

-- End Functions --

--MainLB:AddToggle("", {
    --Text = "",
    --Default = false,
    --Tooltip = "",
--})
--Toggles.NameHere:OnChanged(function()
    -- Do Stuff
--end)

local MenuGroup = Tabs["UI Settings"]:AddLeftGroupbox("UI Settings")

MenuGroup:AddButton("Unload", function() Library:Unload() end)
MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "KeypadFive", NoUI = true, Text = "Menu keybind" })

Library.ToggleKeybind = Options.MenuKeybind

SaveManager:SetLibrary(Library)

SaveManager:IgnoreThemeSettings()

SaveManager:SetIgnoreIndexes({ "MenuKeybind" })
