local L_1_ = "t"
local L_2_ = game.Players.LocalPlayer:GetMouse()
L_2_.KeyDown:Connect(
    function(L_22_arg0)
	if L_22_arg0 == L_1_ then
		if DaHoodSettings.SilentAim == true then
			DaHoodSettings.SilentAim = false
		else
			DaHoodSettings.SilentAim = true
		end
	end
end
)
game:GetService("RunService").RenderStepped:Connect(
    function()
	for L_23_forvar0, L_24_forvar1 in pairs(game.CoreGui:GetChildren()) do
		if L_24_forvar1.Name == "PostmansAutoRob" then
			L_24_forvar1:Destroy()
		end
	end
	for L_25_forvar0, L_26_forvar1 in pairs(game.CoreGui:GetChildren()) do
		if L_26_forvar1.Name == "WarningGUI" then
			L_26_forvar1:Destroy()
		end
	end
end
)
game.StarterGui:SetCore(
    "SendNotification",
    {
	Title = "Slime X ",
	Text = "Slime X, Thank you for using me!",
	Icon = "rbxthumb://type=Asset&id=166457378&w=150&h=150"
}
)
local L_3_ = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local L_4_ = L_3_.CreateLib("Slime X", "DarkTheme")

local L_7_ = L_4_:NewTab("Silent Aim")
local L_8_ = L_7_:NewSection("Slime X")
L_8_:NewButton(
    "Silent Aim",
    "Silent Aim Toggle Key is T.",
    function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/SlimeJustSlime3437/SlimeV3/main/silentaim", true))()
end
)
L_8_:NewTextBox(
    "Silent Aim Prediction",
    ".171-70 ping  .173-75",
    function(L_72_arg0)
	DaHoodSettings.Prediction = L_72_arg0
end
)
L_8_:NewDropdown(
    "Silent Aim Part",
    "yes bro flash is cool",
    {
	"Head",
	"UpperTorso",
	"HumanoidRootPart",
	"LowerTorso"
},
    function(L_73_arg0)
	Aiming.TargetPart = L_73_arg0
end
)
L_8_:NewTextBox(
    "Silent Aim Fov",
    "yes bro i am cool (flash)",
    function(L_74_arg0)
	Aiming.FOV = L_74_arg0
end
)
L_8_:NewToggle(
    "Silent Aim Show Fov",
    "yea",
    function(L_75_arg0)
	Aiming.ShowFOV = L_75_arg0
end
)
local L_13_ = L_4_:NewTab("Misc Scripts")
local L_14_ = L_13_:NewSection("INSOMNIAC")
L_14_:NewKeybind(
    "Keybind Gui Toggle",
    "h",
    Enum.KeyCode.V,
    function()
	L_3_:ToggleUI()
end
)

L_14_:NewButton(
    "Fly",
    "Key is X",
    function()
	local L_152_
	local L_153_ = game.Players.LocalPlayer
	IYMouse = L_153_:GetMouse()
	IYMouse.KeyDown:connect(
            function(L_154_arg0)
		if L_154_arg0 == "x" then
			if L_152_ then
				L_152_ = false
				fly()
			else
				L_152_ = true
				NOFLY()
			end
		end
	end
        )
	for L_155_forvar0, L_156_forvar1 in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
		if L_156_forvar1:IsA("BasePart") and L_156_forvar1.CanCollide == true then
			L_156_forvar1.CanCollide = false
		end
	end
	FLYING = false
	QEfly = true
	iyflyspeed = 7
	vehicleflyspeed = 7
	function sFLY(L_157_arg0)
		repeat
			wait()
		until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and
                game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
		repeat
			wait()
		until IYMouse
		local L_158_ = game.Players.LocalPlayer.Character.LowerTorso
		local L_159_ = {
			F = 0,
			B = 0,
			L = 0,
			R = 0,
			Q = 0,
			E = 0
		}
		local L_160_ = {
			F = 0,
			B = 0,
			L = 0,
			R = 0,
			Q = 0,
			E = 0
		}
		local L_161_ = 5
		local function L_162_func()
			FLYING = true
			local L_163_ = Instance.new("BodyGyro", L_158_)
			local L_164_ = Instance.new("BodyVelocity", L_158_)
			L_163_.P = 9e4
			L_163_.maxTorque = Vector3.new(9e9, 9e9, 9e9)
			L_163_.cframe = L_158_.CFrame
			L_164_.velocity = Vector3.new(0, 0, 0)
			L_164_.maxForce = Vector3.new(9e9, 9e9, 9e9)
			spawn(
                    function()
				repeat
					wait()
					if not L_157_arg0 and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid") then
						game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid").PlatformStand =
                                    true
					end
					if L_159_.L + L_159_.R ~= 0 or L_159_.F + L_159_.B ~= 0 or L_159_.Q + L_159_.E ~= 0 then
						L_161_ = 50
					elseif not (L_159_.L + L_159_.R ~= 0 or L_159_.F + L_159_.B ~= 0 or L_159_.Q + L_159_.E ~= 0) and L_161_ ~= 0 then
						L_161_ = 0
					end
					if L_159_.L + L_159_.R ~= 0 or L_159_.F + L_159_.B ~= 0 or L_159_.Q + L_159_.E ~= 0 then
						L_164_.velocity =
                                    (workspace.CurrentCamera.CoordinateFrame.lookVector * (L_159_.F + L_159_.B) +
                                    workspace.CurrentCamera.CoordinateFrame *
                                        CFrame.new(L_159_.L + L_159_.R, (L_159_.F + L_159_.B + L_159_.Q + L_159_.E) * 0.2, 0).p -
                                    workspace.CurrentCamera.CoordinateFrame.p) *
                                    L_161_
						L_160_ = {
							F = L_159_.F,
							B = L_159_.B,
							L = L_159_.L,
							R = L_159_.R
						}
					elseif L_159_.L + L_159_.R == 0 and L_159_.F + L_159_.B == 0 and L_159_.Q + L_159_.E == 0 and L_161_ ~= 0 then
						L_164_.velocity =
                                    (workspace.CurrentCamera.CoordinateFrame.lookVector * (L_160_.F + L_160_.B) +
                                    workspace.CurrentCamera.CoordinateFrame *
                                        CFrame.new(L_160_.L + L_160_.R, (L_160_.F + L_160_.B + L_159_.Q + L_159_.E) * 0.2, 0).p -
                                    workspace.CurrentCamera.CoordinateFrame.p) *
                                    L_161_
					else
						L_164_.velocity = Vector3.new(0, 0, 0)
					end
					L_163_.cframe = workspace.CurrentCamera.CoordinateFrame
				until not FLYING
				L_159_ = {
					F = 0,
					B = 0,
					L = 0,
					R = 0,
					Q = 0,
					E = 0
				}
				L_160_ = {
					F = 0,
					B = 0,
					L = 0,
					R = 0,
					Q = 0,
					E = 0
				}
				L_161_ = 0
				L_163_:destroy()
				L_164_:destroy()
				if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid") then
					game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid").PlatformStand = false
				end
			end
                )
		end
		IYMouse.KeyDown:connect(
                function(L_165_arg0)
			if L_165_arg0:lower() == "w" then
				if L_157_arg0 then
					L_159_.F = vehicleflyspeed
				else
					L_159_.F = iyflyspeed
				end
			elseif L_165_arg0:lower() == "s" then
				if L_157_arg0 then
					L_159_.B = -vehicleflyspeed
				else
					L_159_.B = -iyflyspeed
				end
			elseif L_165_arg0:lower() == "a" then
				if L_157_arg0 then
					L_159_.L = -vehicleflyspeed
				else
					L_159_.L = -iyflyspeed
				end
			elseif L_165_arg0:lower() == "d" then
				if L_157_arg0 then
					L_159_.R = vehicleflyspeed
				else
					L_159_.R = iyflyspeed
				end
			elseif QEfly and L_165_arg0:lower() == "e" then
				if L_157_arg0 then
					L_159_.Q = vehicleflyspeed * 2
				else
					L_159_.Q = iyflyspeed * 2
				end
			elseif QEfly and L_165_arg0:lower() == "q" then
				if L_157_arg0 then
					L_159_.E = -vehicleflyspeed * 2
				else
					L_159_.E = -iyflyspeed * 2
				end
			end
		end
            )
		IYMouse.KeyUp:connect(
                function(L_166_arg0)
			if L_166_arg0:lower() == "w" then
				L_159_.F = 0
			elseif L_166_arg0:lower() == "s" then
				L_159_.B = 0
			elseif L_166_arg0:lower() == "a" then
				L_159_.L = 0
			elseif L_166_arg0:lower() == "d" then
				L_159_.R = 0
			elseif L_166_arg0:lower() == "e" then
				L_159_.Q = 0
			elseif L_166_arg0:lower() == "q" then
				L_159_.E = 0
			end
		end
            )
		L_162_func()
	end
	function NOFLY()
		FLYING = false
		game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid").PlatformStand = true
	end
	function fly()
		NOFLY()
		wait()
		sFLY()
	end
end
)
local L_15_ = L_4_:NewTab("Teleports")
local L_16_ = L_15_:NewSection("INSOMNIAC")
L_16_:NewButton(
    "Admin Base",
    "fr",
    function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-874.903992, -32.6492004, -525.215698)
end
)
L_16_:NewButton(
    "Armor",
    "fr",
    function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
            CFrame.new(-934.73651123047, -28.492471694946, 565.99884033203)
end
)
L_16_:NewButton(
    "Food",
    "fr",
    function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
            CFrame.new(-788.39318847656, -39.649200439453, -935.27795410156)
end
)
L_16_:NewButton(
    "AK bush",
    "fr",
    function()
	local L_196_ = Instance.new("Animation")
	function stopTracks()
		for L_197_forvar0, L_198_forvar1 in next, game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):GetPlayingAnimationTracks(

            ) do
			if L_198_forvar1.Animation.AnimationId:match("rbxassetid") then
				L_198_forvar1:Stop()
			end
		end
	end
	function loadAnimation(L_199_arg0)
		if L_196_.AnimationId == L_199_arg0 then
			L_196_.AnimationId = "1"
		else
			L_196_.AnimationId = L_199_arg0
			local L_200_ =
                    game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):LoadAnimation(L_196_)
			L_200_:Play()
		end
	end
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
            CFrame.new(
            -626.288757,
            7.99984694,
            -772.322632,
            -0.997374237,
            -1.67662592e-10,
            -0.0724197701,
            -1.00076274e-10,
            1,
            -9.36886457e-10,
            0.0724197701,
            -9.27178945e-10,
            -0.997374237
        )
	loadAnimation("rbxassetid://3152378852")
	wait(1.2)
	stopTracks()
end
)
local L_17_ = L_4_:NewTab("ESP")
local L_18_ = loadstring(game:HttpGet("https://kiriot22.com/releases/ESP.lua"))()
local L_19_ = L_17_:NewSection("INSOMNIAC")
L_19_:NewToggle(
    "ESP",
    "ESP",
    function(L_201_arg0)
	L_18_:Toggle(L_201_arg0)
end
)
L_19_:NewToggle(
    "Tracers",
    "ESP Tracers",
    function(L_202_arg0)
	L_18_.Tracers = L_202_arg0
end
)
L_19_:NewToggle(
    "Names",
    "ESP Names",
    function(L_203_arg0)
	L_18_.Names = L_203_arg0
end
)
L_19_:NewToggle(
    "Boxes",
    "ESP Boxes",
    function(L_204_arg0)
	L_18_.Boxes = L_204_arg0
end
)
local L_20_ = L_4_:NewTab("Animation Changer")
local L_21_ = L_20_:NewSection("INSOMNIAC")
L_21_:NewButton(
    "Zombie And OldSchool",
    "you are cool",
    function()
	local L_205_ = game.Players.LocalPlayer.Character.Animate
	L_205_.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616158929"
	L_205_.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616160636"
	L_205_.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616168032"
	L_205_.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616163682"
	L_205_.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=2510197830"
	L_205_.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=5319839762"
end
)
L_21_:NewButton(
    "Zombie And Mage",
    "you are cool",
    function()
	local L_206_ = game.Players.LocalPlayer.Character.Animate
	L_206_.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616158929"
	L_206_.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616160636"
	L_206_.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616168032"
	L_206_.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616163682"
	L_206_.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1083218792"
	L_206_.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=707829716"
end
)
