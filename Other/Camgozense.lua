local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("CamGoz$$ense", "DarkTheme")

local legit = Window:NewTab("Legit")
local rage = Window:NewTab("Rage")
local misc = Window:NewTab("Misc")
local godstuff = Window:NewTab("God Stuff")
local moremisc = Window:NewTab("More Misc")
local gms = misc:NewSection("General Misc Stuff")
local rs = rage:NewSection("CFrame Speed")
local god = godstuff:NewSection("Godmodes")
local rs2 = rage:NewSection("General Rage Stuff")
local as = legit:NewSection("Aimbot")
local ts = moremisc:NewSection("Teleports")
local mms = moremisc:NewSection("Character Module")
local ss = legit:NewSection("Silent Aim")
local silentbot = legit:NewSection("Silent Aimbot")
god:NewButton("Godmode (MELEES)", "ButtonInfo", function()
    	local function L_427_func()
		local L_428_ = game:GetService('Players').LocalPlayer;
		local L_429_ = L_428_.Character;
		L_429_:FindFirstChildOfClass('Humanoid').Health = 0;

		local L_430_ = L_428_.CharacterAdded:Wait();
		local L_431_ = Instance.new('Folder');
		L_431_.Name = 'FULLY_LOADED_CHAR';
		L_431_.Parent = L_430_;
		L_430_:WaitForChild('RagdollConstraints'):Destroy();
		local L_432_ = Instance.new('BoolValue', L_430_);
		L_432_.Name = 'RagdollConstraints';

		local L_433_ = game:GetService("Players")
		local L_434_ = L_433_.LocalPlayer
		local L_435_ = L_434_.Character

		L_435_.BodyEffects.Armor:Destroy()
		L_435_.BodyEffects.Defense:Destroy()

		local L_436_ = Instance.new("NumberValue")
		L_436_.Name = "Defense"
		L_436_.Parent = L_435_.BodyEffects

		local L_437_ = Instance.new("NumberValue")
		L_437_.Name = "Armor"
		L_437_.Parent = L_435_.BodyEffects

		game.ReplicatedStorage.MainEvent:FireServer("Block", true)
	end


	L_427_func()
	while wait() do
		for L_438_forvar0, L_439_forvar1 in pairs(game.Players.LocalPlayer.Character:FindFirstChildWhichIsA('Humanoid'):GetPlayingAnimationTracks()) do
			if L_439_forvar1.Name == 'Block' then
				L_439_forvar1:Stop()
			end
		end
	end
end)
mms:NewButton("Headless (FE)", "ButtonInfo", function()
    	local L_418_ = game.Players.LocalPlayer
	L_418_.Character.Head:BreakJoints()
	L_418_.Character.Head.Position = Vector3.new(0, 999999999999, 0)
end)
mms:NewButton("Korblox (FE)", "ButtonInfo", function()
    game.Players.LocalPlayer.Character.RightUpperLeg:Destroy()
end)
mms:NewButton("Blizzard Beast Mode (CLIENT SIDED)", "ButtonInfo", function()
    local L_406_ = game.Players.LocalPlayer.Character
	local L_407_ = L_406_:WaitForChild("Head")
	local L_408_ = L_407_:WaitForChild("face")
	L_408_.Texture = "rbxassetid://209712379"
end)
mms:NewButton("SSHF (CLIENT SIDED)", "ButtonInfo", function()
    	local L_409_ = game.Players.LocalPlayer.Character
	local L_410_ = L_409_:WaitForChild("Head")
	local L_411_ = L_410_:WaitForChild("face")
	L_411_.Texture = "rbxassetid://494290547"
end)
mms:NewButton("Beast Mode (CLIENT SIDED)", "ButtonInfo", function()
    	local L_412_ = game.Players.LocalPlayer.Character
	local L_413_ = L_412_:WaitForChild("Head")
	local L_414_ = L_413_:WaitForChild("face")
	L_414_.Texture = "rbxassetid://127959433"
end)
mms:NewButton("Playful Vampire (CLIENT SIDED)", "ButtonInfo", function()
    	local L_415_ = game.Players.LocalPlayer.Character
	local L_416_ = L_415_:WaitForChild("Head")
	local L_417_ = L_416_:WaitForChild("face")
	L_417_.Texture = "rbxassetid://2409281591"
end)
god:NewButton("Godmode (GUNS)", "ButtonInfo", function()
    	local L_424_ = game.Players.LocalPlayer

	L_424_.Character:FindFirstChild("FULLY_LOADED_CHAR").Parent = game.ReplicatedStorage
	L_424_.Character:Remove()
	game.ReplicatedStorage:FindFirstChild("FULLY_LOADED_CHAR").Parent = L_424_.Character
	local L_425_ = true

	while wait() do
		pcall(function()
			if game.Players.LocalPlayer.Character.BodyEffects:FindFirstChild("BreakingParts") and L_425_ == true then
				game.Players.LocalPlayer.Character.BodyEffects.BreakingParts:Destroy()
				local L_426_ = Instance.new("Folder", game.Players.LocalPlayer.Character)
				L_426_.Name = "FULLY_LOADED_CHAR"
				wait()
				game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Backpack, true)
				L_424_.Character:FindFirstChild("FULLY_LOADED_CHAR").Parent = game.ReplicatedStorage
			end
		end)
	end
end)
gms:NewButton("TrashTalk (K)", "ButtonInfo", function()
        local plr = game.Players.LocalPlayer
repeat wait() until plr.Character
local char = plr.Character

local garbage = {
	"mad kid";
    "your getting rekted by camgozsense";
    "your sus.";
    "ez";
    "my CamGoz$$ense has more skill than you";
    "seed";
    "sit son";
    "trash";
    "LOL";
    "nn tapped, bad cheat.";
    "camgozsenseW";
    "get better trash aim";
    "your getting rekted by camgozsense";
    "you lose";
    "nn tapped, bad cheat.";
    "leave";
    "no skill";
    "bad";
    "you're nothing";
    "so trash";
    "so bad";
    "ur salty";
    "salty";
    "cry more";
    "keep crying";
    "run 1s seed";
    "just quit";
    "lol ur aim buy camgozsense";
    "L kiddo"









}


function TrashTalk(inputObject, gameProcessedEvent)
    if inputObject.KeyCode == Enum.KeyCode.K and gameProcessedEvent == false then        
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(
        garbage[math.random(1,#garbage)],
        "All"
    )
    end
end
 
game:GetService("UserInputService").InputBegan:connect(TrashTalk)
end)
silentbot:NewButton("Silent Aimbot", "ButtonInfo", function()
combo, prev, rnewidx = 0, 0, 0
for i = 1, 50 do
   local n = math.random(10000, 99999)
   if i == 25 then
      rnewidx = n
   end
   if n == prev then
      combo = combo + 1
   end
   prev = n
end

if combo > 45 then
   c("0x01")
end

 game.StarterGui:SetCore("SendNotification", {
    Title = "Silent Aimbot";
    Text = "Hold Right Click To Lock";
    Icon = "rbxassetid://1518747557"

})
    	local CC = game:GetService"Workspace".CurrentCamera
	local Plr
	local enabled = false
	local accomidationfactor = 0.14
	local mouse = game.Players.LocalPlayer:GetMouse()
	local placemarker = Instance.new("Part", game.Workspace)
	local guimain = Instance.new("Folder", game.CoreGui)

	function makemarker(Parent, Adornee, Color, Size)
		local e = Instance.new("BillboardGui", Parent)
		e.Name = "PP"
		e.Adornee = Adornee
		e.Size = UDim2.new(Size, Size2, Size, Size2)
		e.AlwaysOnTop = true
		local a = Instance.new("Frame", e)
		a.Size = UDim2.new(4, 0, 4, 0)
		a.BackgroundTransparency = 0.4
		a.BackgroundColor3 = Color
		local g = Instance.new("UICorner", a)
		g.CornerRadius = UDim.new(0, 0)
		return(e)
	end

	local data = game.Players:GetPlayers()
	function noob(player)
		local character
		repeat wait() until player.Character
		local handler = makemarker(guimain, player.Character:WaitForChild("LowerTorso"), Color3.fromRGB(0), 0.0, 0)
		handler.Name = player.Name
		player.CharacterAdded:connect(function(Char) handler.Adornee = Char:WaitForChild("LowerTorso") end)

		local TextLabel = Instance.new("TextLabel", handler)
		TextLabel.BackgroundTransparency = 1
		TextLabel.Position = UDim2.new(0, 0, 0, -50)
		TextLabel.Size = UDim2.new(0, 0, 0, 0)
		TextLabel.Font = Enum.Font.SourceSansSemibold
		TextLabel.TextSize = 14
		TextLabel.TextColor3 = Color3.new(1, 1, 1)
		TextLabel.TextStrokeTransparency = 0
		TextLabel.TextYAlignment = Enum.TextYAlignment.Bottom
		TextLabel.Text = "Name: "..player.Name
		TextLabel.ZIndex = 10

		spawn(function()
			while wait() do
				if player.Character then
					TextLabel.Text = player.Name.." | Bounty: "..tostring(player:WaitForChild("leaderstats").Wanted.Value).." | "..tostring(math.floor(player.Character:WaitForChild("Humanoid").Health))
				end
			end
		end)
	end

	for i = 1, #data do
		if data[i] ~= game.Players.LocalPlayer then
			noob(data[i])
		end
	end

	game.Players.PlayerAdded:connect(function(Player)
		noob(Player)
	end)

	spawn(function()
		placemarker.Anchored = true
		placemarker.CanCollide = false
		placemarker.Size = Vector3.new(0.3, 0.3, 0.3)
		placemarker.Transparency = 1
		makemarker(placemarker, placemarker, Color3.fromRGB(0, 255, 0), 0.15, 0)
	end)    

	local UserInputService = game:GetService"UserInputService"

	UserInputService.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton2 then
			enabled = true 
			Plr = getClosestPlayerToCursor()
			game.StarterGui:SetCore("SendNotification", {
    Title = "Silent Aimbot";
    Text = "Locking onto  named: "..tostring(Plr.Name);
    Icon = "rbxassetid://1518747557"

})
			
		end
	end)

	UserInputService.InputEnded:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton2 then
			enabled = false
		end
	end)

	function getClosestPlayerToCursor()
		local closestPlayer
		local shortestDistance = math.huge

		for i, v in pairs(game.Players:GetPlayers()) do
			if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("Humanoid") and v.Character.Humanoid.Health ~= 0 and v.Character:FindFirstChild("LowerTorso") then
				local pos = CC:WorldToViewportPoint(v.Character.PrimaryPart.Position)
				local magnitude = (Vector2.new(pos.X, pos.Y) - Vector2.new(mouse.X, mouse.Y)).magnitude
				if magnitude < shortestDistance then
					closestPlayer = v
					shortestDistance = magnitude
				end
			end
		end
		return closestPlayer
	end

	game:GetService"RunService".Stepped:connect(function()
		if enabled and Plr.Character and Plr.Character:FindFirstChild("LowerTorso") then
			placemarker.CFrame = CFrame.new(Plr.Character.LowerTorso.Position+(Plr.Character.LowerTorso.Velocity*accomidationfactor))
		else
			placemarker.CFrame = CFrame.new(0, 9999, 0)
		end
	end)

	local mt = getrawmetatable(game)
	local old = mt.__namecall
	setreadonly(mt, false)
	mt.__namecall = newcclosure(function(...)
		local args = {...}
		if enabled and getnamecallmethod() == "FireServer" and args[2] == "UpdateMousePos" then
			args[3] = Plr.Character.LowerTorso.Position+(Plr.Character.LowerTorso.Velocity*accomidationfactor)
			return old(unpack(args))
		end
		return old(...)
	end)
end)
ss:NewButton("Silent Aim", "ButtonInfo", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/tayodevelup/imsoniac/main/silentaim", true))()
end)
ss:NewToggle("Silent Aim Show FOV", "ToggleInfo", function(state)
    Aiming.ShowFOV = state
end)
ss:NewSlider("FOV Size", "SliderInfo", 500, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
    Aiming.FOV = s
end)
ss:NewColorPicker("Silent Aim FOV Color ", "Color Info", Color3.fromRGB(0,0,0), function(color)
   Aiming.FOVColour = color
end)
as:NewButton("Aimbot Enable (Q)", "ButtonInfo", function()
    repeat wait() until game:IsLoaded()

getgenv().AimPart = "HumanoidRootPart" -- For R15 Games: {UpperTorso, LowerTorso, HumanoidRootPart, Head} | For R6 Games: {Head, Torso, HumanoidRootPart}
getgenv().AimlockToggleKey = "y" -- Toggles Aimbot On/Off 
getgenv().AimlockKey = "q"
getgenv().AimRadius = 30 -- How far away from someones character you want to lock on at
getgenv().ThirdPerson = true 
getgenv().FirstPerson = true
getgenv().TeamCheck = false -- Check if Target is on your Team (True means it wont lock onto your teamates, false is vice versa) (Set it to false if there are no teams)
getgenv().PredictMovement = true -- Predicts if they are moving in fast velocity (like jumping) so the aimbot will go a bit faster to match their speed 
getgenv().PredictionVelocity = 6.5
getgenv().OldPre = 6.5
getgenv().CheckIfJumped = true
getgenv().NoRecoil = true

local Players, Uis, RService, SGui = game:GetService"Players", game:GetService"UserInputService", game:GetService"RunService", game:GetService"StarterGui";
local Client, Mouse, Camera, CF, RNew, Vec3, Vec2 = Players.LocalPlayer, Players.LocalPlayer:GetMouse(), workspace.CurrentCamera, CFrame.new, Ray.new, Vector3.new, Vector2.new;
local Aimlock, MousePressed, CanNotify = true, false, false;
local AimlockTarget;
local OldPre;

getgenv().CamGozSenseAimbotLoaded = true

getgenv().WorldToViewportPoint = function(P)
    return Camera:WorldToViewportPoint(P)
end

getgenv().WorldToScreenPoint = function(P)
    return Camera.WorldToScreenPoint(Camera, P)
end

getgenv().GetObscuringObjects = function(T)
    if T and T:FindFirstChild(getgenv().AimPart) and Client and Client.Character:FindFirstChild("Head") then 
        local RayPos = workspace:FindPartOnRay(RNew(
            T[getgenv().AimPart].Position, Client.Character.Head.Position)
        )
        if RayPos then return RayPos:IsDescendantOf(T) end
    end
end

getgenv().GetNearestTarget = function()
    -- Credits to whoever made this, i didnt make it, and my own mouse2plr function kinda sucks
    local players = {}
    local PLAYER_HOLD  = {}
    local DISTANCES = {}
    for i, v in pairs(Players:GetPlayers()) do
        if v ~= Client then
            table.insert(players, v)
        end
    end
    for i, v in pairs(players) do
        if v.Character ~= nil then
            local AIM = v.Character:FindFirstChild("Head")
            if getgenv().TeamCheck == true and v.Team ~= Client.Team then
                local DISTANCE = (v.Character:FindFirstChild("Head").Position - game.Workspace.CurrentCamera.CFrame.p).magnitude
                local RAY = Ray.new(game.Workspace.CurrentCamera.CFrame.p, (Mouse.Hit.p - game.Workspace.CurrentCamera.CFrame.p).unit * DISTANCE)
                local HIT,POS = game.Workspace:FindPartOnRay(RAY, game.Workspace)
                local DIFF = math.floor((POS - AIM.Position).magnitude)
                PLAYER_HOLD[v.Name .. i] = {}
                PLAYER_HOLD[v.Name .. i].dist= DISTANCE
                PLAYER_HOLD[v.Name .. i].plr = v
                PLAYER_HOLD[v.Name .. i].diff = DIFF
                table.insert(DISTANCES, DIFF)
            elseif getgenv().TeamCheck == false and v.Team == Client.Team then 
                local DISTANCE = (v.Character:FindFirstChild("Head").Position - game.Workspace.CurrentCamera.CFrame.p).magnitude
                local RAY = Ray.new(game.Workspace.CurrentCamera.CFrame.p, (Mouse.Hit.p - game.Workspace.CurrentCamera.CFrame.p).unit * DISTANCE)
                local HIT,POS = game.Workspace:FindPartOnRay(RAY, game.Workspace)
                local DIFF = math.floor((POS - AIM.Position).magnitude)
                PLAYER_HOLD[v.Name .. i] = {}
                PLAYER_HOLD[v.Name .. i].dist= DISTANCE
                PLAYER_HOLD[v.Name .. i].plr = v
                PLAYER_HOLD[v.Name .. i].diff = DIFF
                table.insert(DISTANCES, DIFF)
            end
        end
    end
    
    if unpack(DISTANCES) == nil then
        return nil
    end
    
    local L_DISTANCE = math.floor(math.min(unpack(DISTANCES)))
    if L_DISTANCE > getgenv().AimRadius then
        return nil
    end
    
    for i, v in pairs(PLAYER_HOLD) do
        if v.diff == L_DISTANCE then
            return v.plr
        end
    end
    return nil
end

Mouse.KeyDown:Connect(function(a)
    if not (Uis:GetFocusedTextBox()) then 
        if a == AimlockKey and AimlockTarget == nil then
            pcall(function()
                if MousePressed ~= true then MousePressed = true end 
                local Target;Target = GetNearestTarget()
                if Target ~= nil then 
                    AimlockTarget = Target
                end
            end)
        elseif a == AimlockKey and AimlockTarget ~= nil then
            if AimlockTarget ~= nil then AimlockTarget = nil end
            if MousePressed ~= false then 
                MousePressed = false 
            end
        elseif a == AimlockToggleKey then
            Aimlock = not Aimlock
        end
    end
end)
RService.RenderStepped:Connect(function()
    if getgenv().ThirdPerson == true and getgenv().FirstPerson == true then 
        if (Camera.Focus.p - Camera.CoordinateFrame.p).Magnitude > 1 or (Camera.Focus.p - Camera.CoordinateFrame.p).Magnitude <= 1 then 
            CanNotify = true 
        else 
            CanNotify = false 
        end
    elseif getgenv().ThirdPerson == true and getgenv().FirstPerson == false then 
        if (Camera.Focus.p - Camera.CoordinateFrame.p).Magnitude > 1 then 
            CanNotify = true 
        else 
            CanNotify = false 
        end
    elseif getgenv().ThirdPerson == false and getgenv().FirstPerson == true then 
        if (Camera.Focus.p - Camera.CoordinateFrame.p).Magnitude <= 1 then 
            CanNotify = true 
        else 
            CanNotify = false 
        end
    end
    if Aimlock == true and MousePressed == true then 
        if AimlockTarget and AimlockTarget.Character and AimlockTarget.Character:FindFirstChild(getgenv().AimPart) then 
            if getgenv().FirstPerson == true then
                if CanNotify == true then
                    if getgenv().PredictMovement == true then 
                        Camera.CFrame = CF(Camera.CFrame.p, AimlockTarget.Character[getgenv().AimPart].Position + AimlockTarget.Character[getgenv().AimPart].Velocity/PredictionVelocity)
                    elseif getgenv().PredictMovement == false then 
                        Camera.CFrame = CF(Camera.CFrame.p, AimlockTarget.Character[getgenv().AimPart].Position)
                    end
                end
            elseif getgenv().ThirdPerson == true then 
                if CanNotify == true then
                    if getgenv().PredictMovement == true then 
                        Camera.CFrame = CF(Camera.CFrame.p, AimlockTarget.Character[getgenv().AimPart].Position + AimlockTarget.Character[getgenv().AimPart].Velocity/PredictionVelocity)
                    elseif getgenv().PredictMovement == false then 
                        Camera.CFrame = CF(Camera.CFrame.p, AimlockTarget.Character[getgenv().AimPart].Position)
                    end
                end 
            end
        end
    end
    if CheckIfJumped == true then
       if AimlockTarget.Character.Humanoid.FloorMaterial == Enum.Material.Air then
	       PredictionVelocity = 25
       else
	       PredictionVelocity = OldPre
       end
    end
end)

if NoRecoil == true then
    local mt = getrawmetatable(game)
    local newindex = mt.__newindex
    setreadonly(mt,false)
    function isframework(scriptInstance)
        if tostring(scriptInstance) == "Framework" then
            return true
        end
        return false
    end
    function checkArgs(instance,index)
        if tostring(instance):lower():find("camera") and tostring(index) == "CFrame" then
            return true
        end
        return false
    end
    mt.__newindex = newcclosure(function(self,index,value)
        local callingScr = getcallingscript()
        if isframework(callingScr) and checkArgs(self,index) then
           return;
        end
        return newindex(self,index,value)
    end)
    setreadonly(mt,true)
end
end)
ts:NewButton("Uphill Mountain", "ButtonInfo", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(485.651947, 112.5, -644.316833, -0.998899043, 1.33881997e-06, 0.0469136797, 8.00526664e-07, 1, -1.14929126e-05, -0.0469136797, -1.14426994e-05, -0.998899043)
end)
ts:NewButton("AK Mountain", "ButtonInfo", function()
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-658.31897, 80.9998474, -778.077576, -0.142138869, 1.05273443e-08, -0.989845812, 4.51260629e-09, 1, 9.98731764e-09, 0.989845812, -3.04721426e-09, -0.142138869)
end)
ts:NewButton("Rev Mountain", "ButtonInfo", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-659.053162, 110.748001, -158.224365, 0.146754071, -2.38941595e-08, -0.989172995, -1.60316838e-09, 1, -2.43935396e-08, 0.989172995, 5.16566212e-09, 0.146754071)
end)
mms:NewButton("Korblox (Client Sided)", "ButtonInfo", function()
    	local L_396_ = game.Players.LocalPlayer.Character
	local L_397_ = game.Players.LocalPlayer.Character
	local L_398_ = L_396_.Head
	local L_399_ = L_398_.face
	local L_400_ = L_397_.RightFoot
	local L_401_ = L_397_.RightLowerLeg
	local L_402_ = L_397_.RightUpperLeg
	local L_403_ = L_397_.LeftFoot
	local L_404_ = L_397_.LeftLowerLeg
	local L_405_ = L_397_.LeftUpperLeg
    
    -- Right
	L_400_.MeshId = "http://www.roblox.com/asset/?id=902942093"
	L_401_.MeshId = "http://www.roblox.com/asset/?id=902942093"
	L_402_.MeshId = "http://www.roblox.com/asset/?id=902942096"
	L_402_.TextureID = "http://roblox.com/asset/?id=902843398"
	L_400_.Transparency = 1
	L_401_.Transparency = 1
end)
rs:NewButton("CFrame Guns FIX", "ButtonInfo", function()
    for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
        if v:IsA("Script") and v.Name ~= "Health" and v.Name ~= "Sound" and v:FindFirstChild("LocalScript") then
            v:Destroy()
        end
    end
    game.Players.LocalPlayer.CharacterAdded:Connect(function(char)
        repeat
            wait()
        until game.Players.LocalPlayer.Character
        char.ChildAdded:Connect(function(child)
            if child:IsA("Script") then 
                wait(0.1)
                if child:FindFirstChild("LocalScript") then
                    child.LocalScript:FireServer()
                end
            end
        end)
    end)
end)
rs:NewButton("CFrame Speed (N)", "ButtonInfo", function()
    	repeat
		wait()
	until game:IsLoaded()
	local L_134_ = game:service('Players')
	local L_135_ = L_134_.LocalPlayer
	repeat
		wait()
	until L_135_.Character
	local L_136_ = game:service('UserInputService')
	local L_137_ = game:service('RunService')
	getgenv().Multiplier = 0.5
	local L_138_ = true
	local L_139_
	L_136_.InputBegan:connect(function(L_140_arg0)
		if L_140_arg0.KeyCode == Enum.KeyCode.LeftBracket then
			Multiplier = Multiplier + 0.01
			print(Multiplier)
			wait(0.2)
			while L_136_:IsKeyDown(Enum.KeyCode.LeftBracket) do
				wait()
				Multiplier = Multiplier + 0.01
				print(Multiplier)
			end
		end
		if L_140_arg0.KeyCode == Enum.KeyCode.RightBracket then
			Multiplier = Multiplier - 0.01
			print(Multiplier)
			wait(0.2)
			while L_136_:IsKeyDown(Enum.KeyCode.RightBracket) do
				wait()
				Multiplier = Multiplier - 0.01
				print(Multiplier)
			end
		end
		if L_140_arg0.KeyCode == Enum.KeyCode.N then
			L_138_ = not L_138_
			if L_138_ == true then
				repeat
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + game.Players.LocalPlayer.Character.Humanoid.MoveDirection * Multiplier
					game:GetService("RunService").Stepped:wait()
				until L_138_ == false
			end
		end
	end)
end)
rs:NewSlider("CFrame Speed ", "SliderInfo", 5, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
    getgenv().Multiplier = s
end)
gms:NewTextBox("AntiLock Speed", "TextboxInfo", function(txt)
	getgenv().Multiplier = txt
end)
gms:NewButton("Anti-Lock (Z)", "ButtonInfo", function()
    	repeat
		wait()
	until game:IsLoaded()
	getgenv().Fix = false
	getgenv().TeclasWS = {
		["tecla1"] = "nil", -- speed +5
		["tecla2"] = "nil", -- speed -5
		["tecla3"] = "H" -- toggle
	}



-- // servicios
	local L_183_ = game:GetService("Players")
	local L_184_ = game:GetService("StarterGui") or "son una mierda"

-- // objetos
	local L_185_ = L_183_.LocalPlayer
	local L_186_ = L_185_:GetMouse()

-- // variables
	local L_187_ = getrenv()._G
	local L_188_ = getrawmetatable(game)
	local L_189_ = L_188_.__newindex
	local L_190_ = L_188_.__index
	local L_191_ = 22
	local L_192_ = true

-- // funciones para acortar codigo :]
	function anunciar_atentado_terrorista(L_199_arg0)
		L_184_:SetCore("SendNotification", {
			Title = "anti lock fix",
			Text = L_199_arg0
		})
	end
	getgenv().TECHWAREWALKSPEED_LOADED = true
	wait(1.5)
	anunciar_atentado_terrorista("Press  " .. TeclasWS.tecla3 .. " To Turn On/Off Anti-Lock Fix")

-- // conexión
	L_186_.KeyDown:Connect(function(L_200_arg0)
		if L_200_arg0:lower() == TeclasWS.tecla1:lower() then
			L_191_ = L_191_ + 1
			anunciar_atentado_terrorista("播放器速度已提高 (speed = " .. tostring(L_191_) .. ")")
		elseif L_200_arg0:lower() == TeclasWS.tecla2:lower() then
			L_191_ = L_191_ - 1
			anunciar_atentado_terrorista("玩家的速度已降低 (speed = " .. tostring(L_191_) .. ")")
		elseif L_200_arg0:lower() == TeclasWS.tecla3:lower() then
			if L_192_ then
				L_192_ = false
				anunciar_atentado_terrorista("anti lock fix off")
			else
				L_192_ = true
				anunciar_atentado_terrorista("anti lock fix on")
			end
		end
	end)

-- // mi parte favorita: metametodos
	setreadonly(L_188_, false)
	L_188_.__index = newcclosure(function(L_201_arg0, L_202_arg1)
		local L_203_ = checkcaller()
		if L_202_arg1 == "WalkSpeed" and not L_203_ then
			return L_187_.CurrentWS
		end
		return L_190_(L_201_arg0, L_202_arg1)
	end)
	L_188_.__newindex = newcclosure(function(L_204_arg0, L_205_arg1, L_206_arg2)
		local L_207_ = checkcaller()
		if L_192_ then
			if L_205_arg1 == "WalkSpeed" and L_206_arg2 ~= 0 and not L_207_ then
				return L_189_(L_204_arg0, L_205_arg1, L_191_)
			end
		end
		return L_189_(L_204_arg0, L_205_arg1, L_206_arg2)
	end)
	setreadonly(L_188_, true)
	repeat
		wait()
	until game:IsLoaded()
	local L_193_ = game:service('Players')
	local L_194_ = L_193_.LocalPlayer
	repeat
		wait()
	until L_194_.Character
	local L_195_ = game:service('UserInputService')
	local L_196_ = game:service('RunService')
	getgenv().Multiplier = 0.27
	local L_197_ = false
	local L_198_
	L_195_.InputBegan:connect(function(L_208_arg0)
		if L_208_arg0.KeyCode == Enum.KeyCode.LeftBracket then
			Multiplier = Multiplier + 0.01
			print(Multiplier)
			wait(0.2)
			while L_195_:IsKeyDown(Enum.KeyCode.LeftBracket) do
				wait()
				Multiplier = Multiplier + 0.01
				print(Multiplier)
			end
		end
		if L_208_arg0.KeyCode == Enum.KeyCode.RightBracket then
			Multiplier = Multiplier - 0.01
			print(Multiplier)
			wait(0.2)
			while L_195_:IsKeyDown(Enum.KeyCode.RightBracket) do
				wait()
				Multiplier = Multiplier - 0.01
				print(Multiplier)
			end
		end
		if L_208_arg0.KeyCode == Enum.KeyCode.Z then
			L_197_ = not L_197_
			if L_197_ == true then
				repeat
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + -game.Players.LocalPlayer.Character.Humanoid.MoveDirection * Multiplier
					game:GetService("RunService").Stepped:wait()
				until L_197_ == false
			end
		end
	end)
	if Fix == true then
   -- This file was generated using Luraph Obfuscator v12.2 by memcorrupt.
		local L_209_ = assert
		local L_210_ = select
		local L_211_ = tonumber
		local L_212_ = unpack
		local L_213_ = pcall
		local L_214_ = setfenv
		local L_215_ = setmetatable
		local L_216_ = type
		local L_217_ = getfenv
		local L_218_ = tostring
		local L_219_ = error
		local L_220_ = string.sub
		local L_221_ = string.byte
		local L_222_ = string.char
		local L_223_ = string.rep
		local L_224_ = string.gsub
		local L_225_ = string.match
		local L_226_ = L_221_("c", 1)
		local L_227_, L_228_ = #{
			3852
		}, #{
			1542,
			4736,
			4007,
			4631,
			3665,
			5388,
			3846,
			6707,
			6297,
			3491,
			6638,
			322,
			1151,
			2603,
			563,
			2191,
			1745,
			3784,
			3605,
			549,
			3440
		} + L_226_ + 130951
		local L_229_ = {}
		local L_230_ = 1
		local function L_231_func(L_232_arg0, L_233_arg1)
			local L_234_
			L_232_arg0 = L_224_(L_220_(L_232_arg0, 5), "..", function(L_246_arg0)
				if L_221_(L_246_arg0, 2) == 72 then
					L_234_ = L_211_(L_220_(L_246_arg0, 1, 1))
					return ""
				else
					local L_247_ = L_222_(L_211_(L_246_arg0, 16))
					if L_234_ then
						local L_248_ = L_223_(L_247_, L_234_)
						L_234_ = nil
						return L_248_
					else
						return L_247_
					end
				end
			end)
			local function L_235_func()
				local L_249_ = L_221_(L_232_arg0, L_230_, L_230_)
				L_230_ = L_230_ + 1
				return L_249_
			end
			local function L_236_func()
				local L_250_, L_251_, L_252_, L_253_ = L_221_(L_232_arg0, L_230_, L_230_ + 3)
				L_230_ = L_230_ + 4
				return L_253_ * 16777216 + L_252_ * 65536 + L_251_ * 256 + L_250_
			end
			local function L_237_func(L_254_arg0, L_255_arg1, L_256_arg2)
				if L_256_arg2 then
					local L_257_, L_258_ = 0, 0
					for L_259_forvar0 = L_255_arg1, L_256_arg2 do
						L_257_ = L_257_ + 2 ^ L_258_ * L_237_func(L_254_arg0, L_259_forvar0)
						L_258_ = L_258_ + 1
					end
					return L_257_
				else
					local L_260_ = 2 ^ (L_255_arg1 - 1)
					return L_260_ <= L_254_arg0 % (L_260_ + L_260_) and 1 or 0
				end
			end
			local function L_238_func()
				local L_261_, L_262_ = L_236_func(), L_236_func()
				if L_261_ == 0 and L_262_ == 0 then
					return 0
				end
				return (-2 * L_237_func(L_262_, 32) + 1) * 2 ^ (L_237_func(L_262_, 21, 31) - 1023) * ((L_237_func(L_262_, 1, 20) * 4294967296 + L_261_) / 4503599627370496 + 1)
			end
			local function L_239_func(L_263_arg0)
				local L_264_ = {
					L_221_(L_232_arg0, L_230_, L_230_ + 3)
				}
				L_230_ = L_230_ + 4
				local L_265_ = {
					nil,
					nil,
					nil,
					nil,
					nil,
					nil,
					nil,
					nil
				}
				for L_271_forvar0 = 1, 8 do
					L_265_[L_271_forvar0] = L_237_func(L_263_arg0, L_271_forvar0)
				end
				local L_266_ = ""
				for L_272_forvar0 = 1, 4 do
					local L_273_, L_274_ = 0, 0
					for L_275_forvar0 = 1, 8 do
						local L_276_ = L_237_func(L_264_[L_272_forvar0], L_275_forvar0)
						if L_265_[L_275_forvar0] == 1 then
							L_276_ = L_276_ == 1 and 0 or 1
						end
						L_273_ = L_273_ + 2 ^ L_274_ * L_276_
						L_274_ = L_274_ + 1
					end
					L_266_ = L_266_ .. L_222_(L_273_)
				end
				local L_267_, L_268_, L_269_, L_270_ = L_221_(L_266_, 1, 4)
				return L_270_ * 16777216 + L_269_ * 65536 + L_268_ * 256 + L_267_
			end
			local function L_240_func(L_277_arg0)
				local L_278_ = L_236_func()
				L_230_ = L_230_ + L_278_
				local L_279_ = {
					nil,
					nil,
					nil,
					nil,
					nil,
					nil,
					nil,
					nil
				}
				for L_281_forvar0 = 1, 8 do
					L_279_[L_281_forvar0] = L_237_func(L_277_arg0, L_281_forvar0)
				end
				local L_280_ = ""
				for L_282_forvar0 = 1, L_278_ do
					local L_283_, L_284_ = 0, 0
					for L_285_forvar0 = 1, 8 do
						local L_286_ = L_237_func(L_221_(L_232_arg0, L_230_ - L_278_ + L_282_forvar0 - 1), L_285_forvar0)
						if L_279_[L_285_forvar0] == 1 then
							L_286_ = L_286_ == 1 and 0 or 1
						end
						L_283_ = L_283_ + 2 ^ L_284_ * L_286_
						L_284_ = L_284_ + 1
					end
					L_280_ = L_280_ .. L_222_(L_283_)
				end
				return L_280_
			end
			local L_241_ = L_235_func()
			local L_242_ = L_235_func()
			local function L_243_func()
				local L_287_ = {
					[103667] = {},
					[38060] = {},
					[45149] = {},
					[9417] = {}
				}
				L_236_func()
				L_235_func()
				L_236_func()
				local L_288_ = L_236_func()
				for L_292_forvar0 = L_227_, L_288_ do
					L_287_[45149][L_292_forvar0] = L_236_func()
				end
				L_235_func()
				L_236_func()
				L_235_func()
				L_236_func()
				L_236_func()
				L_235_func()
				L_236_func()
				L_235_func()
				local L_289_ = L_236_func() - (#{
					1370,
					1209,
					4744,
					2762,
					2762,
					4496,
					746,
					2097,
					868,
					675,
					5896,
					5905,
					1264,
					1377,
					2324,
					2535,
					2455,
					2024,
					4200,
					819,
					2174
				} + L_226_ + 133651)
				for L_293_forvar0 = L_227_, L_289_ do
					local L_294_ = {}
					local L_295_ = L_239_func(L_242_)
					L_294_[45656] = L_237_func(L_295_, #{
						5814
					}, #{
						3157,
						742,
						1730,
						4905,
						389,
						6452,
						849,
						5686,
						6065
					})
					L_294_[61862] = L_237_func(L_295_, #{
						2964
					}, #{
						56,
						3876,
						5543,
						6838,
						3598,
						6818,
						5391,
						6122,
						925,
						4757,
						859,
						1878,
						4590,
						67,
						4836,
						2634,
						4282,
						4271
					})
					L_294_[18579] = L_237_func(L_295_, #{
						570,
						2790,
						6499,
						5,
						4155,
						3345,
						5596,
						6074,
						6955,
						3140,
						615,
						479,
						1033,
						3672,
						6567,
						1655,
						659,
						5115,
						4899
					}, #{
						4263,
						540,
						5996,
						1550,
						1109,
						1963,
						6238,
						6961,
						1601,
						5125,
						3322,
						365,
						4954,
						3184,
						3351,
						6810,
						5650,
						1673,
						6936,
						2988,
						3398
					} + L_226_ + -94)
					L_294_[130194] = L_237_func(L_295_, #{
						1771
					}, #{
						2731,
						6825,
						2697,
						6338,
						6780,
						5662,
						3663,
						3474,
						3520,
						1857,
						696,
						4324,
						2551,
						4854,
						798,
						2400,
						2686,
						456
					})
					L_294_[38582] = L_237_func(L_295_, #{
						5493,
						4999,
						5858,
						2245,
						644,
						4538,
						5372,
						5497,
						5274,
						1576,
						4080,
						6763,
						929,
						471,
						165,
						6493,
						3877,
						5587,
						4223,
						6203
					} + L_226_ + -92, #{
						1746,
						5174,
						1303,
						2907,
						2470,
						5017,
						1137,
						3995,
						6202,
						3939,
						4308,
						5391,
						6640,
						292,
						4747,
						1302,
						3306,
						3916,
						6595,
						1005,
						5661,
						6400
					} + L_226_ + -89)
					L_294_[34201] = L_237_func(L_295_, #{
						6706
					}, #{
						5101,
						1298,
						5093,
						3944,
						3662,
						6753,
						1063,
						1882,
						3440
					})
					L_294_[40637] = L_237_func(L_295_, #{
						5506,
						6555,
						4666,
						4578,
						6077,
						952,
						6770,
						5796,
						3294,
						5346
					}, #{
						6870,
						6346,
						5674,
						6256,
						6409,
						5479,
						1114,
						5034,
						5823,
						1774,
						6060,
						4946,
						3493,
						2373,
						5582,
						1197,
						3453,
						6819
					})
					L_287_[9417][L_293_forvar0] = L_294_
				end
				L_236_func()
				local L_290_ = L_236_func() - (#{
					5231,
					5804,
					280,
					395,
					1977,
					2152,
					3882,
					1570,
					6890,
					2773,
					6453,
					61,
					4978,
					5415,
					2109,
					4646,
					5734,
					2543,
					735,
					1902
				} + L_226_ + 133595)
				for L_296_forvar0 = L_227_, L_290_ do
					local L_297_ = {}
					local L_298_ = L_235_func()
					if L_298_ == #{
						108,
						4617,
						3576,
						6894,
						4139,
						4666,
						2352,
						75,
						1255,
						5969,
						3345,
						1104,
						1532,
						3392,
						225,
						2333,
						4490,
						2696,
						3563,
						5893,
						3214,
						4110,
						2036,
						2051
					} + L_226_ + -48 then
						L_297_[40047] = #{
							525,
							1839,
							5610,
							5800,
							6176,
							90,
							2670,
							2561,
							5045,
							6632,
							1175,
							5433,
							2096,
							1694,
							1814,
							1208,
							1354,
							3623,
							5192,
							2153,
							4668,
							5292
						} + L_226_ + 119803 == #{
							898,
							3630,
							2514,
							4590,
							1193,
							3510,
							3317,
							4205,
							671,
							5088,
							4806,
							3913,
							1136,
							2006,
							398,
							6116,
							3816,
							1286,
							1711,
							3508
						} + L_226_ + 83106
					end
					if L_298_ == #{
						4386,
						1957,
						3410,
						2655,
						6185,
						5613,
						2254,
						477,
						4831,
						3402,
						1645,
						5173,
						6581,
						4211,
						6135,
						1076,
						2959,
						2867,
						3613,
						2798,
						4865,
						6426
					} + L_226_ + 18 then
						L_297_[40047] = #{
							6313,
							1019,
							5980,
							2891,
							2240,
							2763,
							376,
							5761,
							5080,
							1635,
							5877,
							2213,
							4677,
							4379,
							3286,
							6010,
							4068,
							3610,
							2714,
							4903,
							4487
						} + L_226_ + 50596 == #{
							6313,
							1019,
							5980,
							2891,
							2240,
							2763,
							376,
							5761,
							5080,
							1635,
							5877,
							2213,
							4677,
							4379,
							3286,
							6010,
							4068,
							3610,
							2714,
							4903,
							4487
						} + L_226_ + 50596
					end
					if L_298_ == #{
						1246,
						3460,
						6342,
						3914,
						1965,
						904,
						6334,
						1519,
						6740,
						3996,
						5434,
						3542,
						5842,
						5538,
						3650,
						4334,
						3874,
						945,
						2662,
						4650,
						3062
					} + L_226_ + 126 then
						L_297_[40047] = L_235_func()
					end
					if L_298_ == #{
						2901,
						1821,
						1898,
						727,
						2060,
						476,
						2493,
						358,
						5714,
						5857,
						1010,
						155,
						254,
						97,
						4123,
						2686,
						2685,
						1023,
						3399,
						2115,
						1584,
						4378,
						5717
					} + L_226_ + 3 then
						L_297_[40047] = L_238_func()
					end
					if L_298_ == #{
						1347,
						2983,
						3002,
						1622,
						360,
						2907,
						2483,
						1118,
						1989,
						4939,
						3445,
						1953,
						5448,
						2553,
						5362,
						5669,
						2991,
						1043,
						5159,
						5207,
						6229,
						2710,
						4023,
						463
					} + L_226_ + -59 then
						L_297_[40047] = L_238_func()
					end
					if L_298_ == #{
						3116,
						2048,
						527,
						2371,
						453,
						2800,
						3597,
						3379,
						2168,
						4701,
						4527,
						3879,
						1873,
						2425,
						3725,
						4842,
						5692,
						2325,
						1018,
						509,
						6167
					} + L_226_ + -14 then
						L_297_[40047] = L_240_func(L_241_)
					end
					if L_298_ == #{
						306,
						316,
						1911,
						3317,
						3507,
						2029,
						5123,
						1109,
						5947,
						3205,
						5051,
						1044
					} then
						L_297_[40047] = L_236_func()
					end
					if L_298_ == #{
						2281,
						304,
						6440,
						1774,
						2079,
						2727,
						6406,
						5495,
						3407,
						3228,
						2319,
						5038,
						851,
						6522,
						4124,
						1949,
						3968,
						1764,
						3562,
						3957,
						5645,
						2693
					} + L_226_ + -89 then
						L_297_[40047] = L_238_func()
					end
					if L_298_ == #{
						750,
						6689,
						4224,
						1238,
						2689,
						5895,
						5547,
						6342,
						1389,
						259,
						5454,
						4011,
						665,
						3348,
						3479,
						6888,
						2058,
						1148,
						1369,
						2284,
						4997,
						778
					} + L_226_ + -77 then
						L_297_[40047] = L_240_func(#{
							3522,
							193,
							4686,
							399,
							5770,
							707,
							3352,
							3015,
							5996,
							1704,
							2303,
							3375,
							416,
							545,
							3598,
							1523,
							5512,
							3519,
							101,
							1853,
							3150,
							4597,
							5853,
							4522
						} + L_226_ + -3)
					end
					L_287_[103667][L_296_forvar0 - L_227_] = L_297_
				end
				L_287_[30793] = L_235_func()
				L_235_func()
				L_236_func()
				L_236_func()
				L_235_func()
				L_235_func()
				L_287_[13226] = L_235_func()
				L_235_func()
				L_287_[128277] = L_235_func()
				local L_291_ = L_236_func()
				for L_299_forvar0 = L_227_, L_291_ do
					L_287_[38060][L_299_forvar0 - L_227_] = L_243_func()
				end
				return L_287_
			end
			local function L_244_func(L_300_arg0, L_301_arg1, L_302_arg2)
				local L_303_, L_304_ = 32, 2
				local L_305_ = L_300_arg0[9417]
				local L_306_ = L_215_({}, {
					__index = function(L_315_arg0, L_316_arg1)
						local L_317_ = L_300_arg0[103667][L_316_arg1]
						if L_220_(L_216_(L_317_[40047]), 1, 1) == "s" then
							return {
								[40047] = L_220_(L_317_[40047], 3)
							}
						end
						return L_317_
					end
				})
				local L_307_ = 30793
				local L_308_ = L_300_arg0[38060]
				local L_309_ = 40047
				local L_310_ = L_300_arg0[128277]
				local L_311_ = 38582
				local L_312_ = L_300_arg0[45149]
				local L_313_ = 34201
				local function L_314_func(...)
					local L_318_ = 0
					local L_319_ = {
						L_212_({}, 1, L_300_arg0[13226])
					}
					local L_320_ = 1
					local L_321_ = {}
					local L_322_ = {}
					local L_323_ = 1
					local L_324_ = L_217_()
					local L_325_ = {
						...
					}
					local L_326_ = #L_325_ - 1
					for L_333_forvar0 = 0, L_326_ do
						if L_333_forvar0 < L_310_ then
							L_319_[L_333_forvar0] = L_325_[L_333_forvar0 + 1]
						end
					end
					local function L_327_func(...)
						local L_334_ = L_210_("#", ...)
						local L_335_ = {
							...
						}
						return L_334_, L_335_
					end
					local function L_328_func()
						while true do
							local L_336_ = L_305_[L_320_]
							local L_337_ = L_336_[38582]
							L_320_ = L_320_ + 1
							local L_338_ = L_336_[18579]
							local L_339_ = L_336_[130194]
							local L_340_ = L_336_[130194] - L_228_
							local L_341_ = L_336_[34201]
							local L_342_ = L_336_[40637]
							if L_337_ < 19 then
								if L_337_ < 9 then
									if L_337_ >= 4 then
										if L_337_ >= 6 then
											if L_337_ >= 7 then
												if L_337_ ~= 8 then
													L_324_[L_306_[L_339_][L_309_]] = L_319_[L_338_]
												else
													L_319_[L_338_] = L_306_[L_339_][L_309_]
												end
											else
												local L_343_, L_344_, L_345_
												if L_341_ ~= 1 then
													if L_341_ ~= 0 then
														L_344_ = L_338_ + L_341_ - 1
													else
														L_344_ = L_318_
													end
													L_344_, L_343_ = L_327_func(L_319_[L_338_](L_212_(L_319_, L_338_ + 1, L_344_)))
												else
													L_344_, L_343_ = L_327_func(L_319_[L_338_]())
												end
												if L_342_ ~= 1 then
													if L_342_ ~= 0 then
														L_344_ = L_338_ + L_342_ - 2
													else
														L_344_ = L_344_ + L_338_
													end
													L_345_ = 0
													for L_346_forvar0 = L_338_, L_344_ do
														L_345_ = L_345_ + 1
														L_319_[L_346_forvar0] = L_343_[L_345_]
													end
												end
												L_318_ = L_344_ - 1
											end
										elseif L_337_ ~= 5 then
											if L_341_ > 255 then
												L_341_ = L_306_[L_341_ - 256][L_309_]
											else
												L_341_ = L_319_[L_341_]
											end
											if L_342_ > 255 then
												L_342_ = L_306_[L_342_ - 256][L_309_]
											else
												L_342_ = L_319_[L_342_]
											end
											L_319_[L_338_] = L_341_ / L_342_
										else
											L_319_[L_338_] = L_341_ ~= 0
											if L_342_ ~= 0 then
												L_320_ = L_320_ + 1
											end
										end
									elseif L_337_ < 2 then
										if L_337_ ~= 1 then
											if L_341_ > 255 then
												L_341_ = L_306_[L_341_ - 256][L_309_]
											else
												L_341_ = L_319_[L_341_]
											end
											if L_342_ > 255 then
												L_342_ = L_306_[L_342_ - 256][L_309_]
											else
												L_342_ = L_319_[L_342_]
											end
											L_319_[L_338_] = L_341_ - L_342_
										else
											if L_341_ > 255 then
												L_341_ = L_306_[L_341_ - 256][L_309_]
											else
												L_341_ = L_319_[L_341_]
											end
											if L_342_ > 255 then
												L_342_ = L_306_[L_342_ - 256][L_309_]
											else
												L_342_ = L_319_[L_342_]
											end
											if L_341_ == L_342_ ~= (L_338_ ~= 0) then
												L_320_ = L_320_ + 1
											end
										end
									elseif L_337_ == 3 then
										if not not L_319_[L_338_] == (L_342_ == 0) then
											L_320_ = L_320_ + 1
										end
									else
										L_319_[L_338_] = L_302_arg2[L_341_]
									end
								elseif L_337_ >= 14 then
									if L_337_ < 16 then
										if L_337_ ~= 15 then
											if L_342_ > 255 then
												L_342_ = L_306_[L_342_ - 256][L_309_]
											else
												L_342_ = L_319_[L_342_]
											end
											L_319_[L_338_] = L_319_[L_341_][L_342_]
										else
											for L_347_forvar0 = L_338_, L_341_ do
												L_319_[L_347_forvar0] = nil
											end
										end
									elseif L_337_ >= 17 then
										if L_337_ == 18 then
											if L_341_ > 255 then
												L_341_ = L_306_[L_341_ - 256][L_309_]
											else
												L_341_ = L_319_[L_341_]
											end
											if L_342_ > 255 then
												L_342_ = L_306_[L_342_ - 256][L_309_]
											else
												L_342_ = L_319_[L_342_]
											end
											L_319_[L_338_] = L_341_ % L_342_
										else
											local L_348_ = (L_342_ - 1) * 50
											if L_341_ == 0 then
												L_341_ = L_318_ - L_338_
											end
											for L_349_forvar0 = 1, L_341_ do
												L_319_[L_338_][L_348_ + L_349_forvar0] = L_319_[L_338_ + L_349_forvar0]
											end
										end
									else
										local L_350_ = L_319_[L_341_]
										for L_351_forvar0 = L_341_ + 1, L_342_ do
											L_350_ = L_350_ .. L_319_[L_351_forvar0]
										end
										L_319_[L_338_] = L_350_
									end
								elseif L_337_ >= 11 then
									if L_337_ >= 12 then
										if L_337_ ~= 13 then
											L_319_[L_338_] = -L_319_[L_341_]
										else
											local L_352_ = L_308_[L_339_]
											local L_353_ = {}
											if L_352_[L_307_] > 0 then
												do
													local L_355_ = {}
													L_353_ = L_215_({}, {
														__index = function(L_356_arg0, L_357_arg1)
															local L_358_ = L_355_[L_357_arg1]
															return L_358_[1][L_358_[2]]
														end,
														__newindex = function(L_359_arg0, L_360_arg1, L_361_arg2)
															local L_362_ = L_355_[L_360_arg1]
															L_362_[1][L_362_[2]] = L_361_arg2
														end
													})
													for L_363_forvar0 = 1, L_352_[L_307_] do
														local L_364_ = L_305_[L_320_]
														if L_364_[L_311_] == L_303_ then
															L_355_[L_363_forvar0 - 1] = {
																L_319_,
																L_364_[L_313_]
															}
														elseif L_364_[L_311_] == L_304_ then
															L_355_[L_363_forvar0 - 1] = {
																L_302_arg2,
																L_364_[L_313_]
															}
														end
														L_320_ = L_320_ + 1
													end
													L_321_[#L_321_ + 1] = L_355_
												end
											end
											local L_354_ = L_244_func(L_352_, L_324_, L_353_)
											L_319_[L_338_] = L_354_
										end
									else
										local L_365_ = L_319_[L_338_ + 2]
										local L_366_ = L_319_[L_338_] + L_365_
										L_319_[L_338_] = L_366_
										if L_365_ > 0 then
											if L_366_ <= L_319_[L_338_ + 1] then
												L_320_ = L_320_ + L_340_
												L_319_[L_338_ + 3] = L_366_
											end
										elseif L_366_ >= L_319_[L_338_ + 1] then
											L_320_ = L_320_ + L_340_
											L_319_[L_338_ + 3] = L_366_
										end
									end
								elseif L_337_ ~= 10 then
									if L_341_ > 255 then
										L_341_ = L_306_[L_341_ - 256][L_309_]
									else
										L_341_ = L_319_[L_341_]
									end
									if L_342_ > 255 then
										L_342_ = L_306_[L_342_ - 256][L_309_]
									else
										L_342_ = L_319_[L_342_]
									end
									if L_341_ < L_342_ ~= (L_338_ ~= 0) then
										L_320_ = L_320_ + 1
									end
								else
									local L_367_, L_368_
									if L_341_ ~= 1 then
										if L_341_ ~= 0 then
											L_368_ = L_338_ + L_341_ - 1
										else
											L_368_ = L_318_
										end
										L_368_, L_367_ = L_327_func(L_319_[L_338_](L_212_(L_319_, L_338_ + 1, L_368_)))
									else
										L_368_, L_367_ = L_327_func(L_319_[L_338_]())
									end
									L_319_ = L_367_
									return true, 1, L_368_
								end
							elseif L_337_ >= 28 then
								if L_337_ >= 33 then
									if L_337_ < 35 then
										if L_337_ ~= 34 then
											L_319_[L_338_] = {
												L_212_(L_229_, 1, L_341_ == 0 and 895 or L_341_)
											}
										else
											if L_341_ > 255 then
												L_341_ = L_306_[L_341_ - 256][L_309_]
											else
												L_341_ = L_319_[L_341_]
											end
											if L_342_ > 255 then
												L_342_ = L_306_[L_342_ - 256][L_309_]
											else
												L_342_ = L_319_[L_34..... (1 KB left)
