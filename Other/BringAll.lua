-- u need to be fat
-- by farzad#9999
local host = "hellofarzad125" -- change to ur user

repeat wait() until game:IsLoaded()
-- < start of spraycan crasher > --
itemCount = 0
getgenv().groupid = nil
game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.Backpack, false)
local getGroups = game:GetService("GroupService"):GetGroupsAsync(game.Players.LocalPlayer.UserId)
if unpack(getGroups) == nil then
    warn('no groups'); return
else
    for _, groupInfo in pairs(getGroups) do
        if _ == 1 then
            getgenv().groupid = groupInfo.Id
        end
    end
end
function equipall()
    for _,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if v:IsA"Tool" and v.Name == "[SprayCan]" then
            v.Parent = game.Players.LocalPlayer.Character
        end
    end
end
function unequip()
    for _,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
        if v:IsA"Tool" and v.Name == "[SprayCan]" then
            v.Parent = game.Players.LocalPlayer.Backpack
        end
    end
end

repeat
    task.wait()
    game:GetService("ReplicatedStorage").MainEvent:FireServer("JoinCrew", getgenv().groupid)        --// join crew
    repeat wait() until game.Players.LocalPlayer.Backpack:FindFirstChild'[SprayCan]'; task.wait()   --// wait for tool to be added
    itemCount = itemCount + 1; print(itemCount)                                                     --// add count
    equipall()
until itemCount >= 40
unequip()
-- < end of spraycan grinder > --

local LocalPlayer = game.Players.LocalPlayer
local newHum = LocalPlayer.Character.Humanoid:Clone()
newHum.Parent = LocalPlayer.Character
LocalPlayer.Character.Humanoid:Destroy()

LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players:FindFirstChild(host).Character.HumanoidRootPart.CFrame
wait(.8)
for i,v in pairs(game.Players:GetChildren()) do
if v.UserId == game.Players:GetUserIdFromNameAsync(game.Players.LocalPlayer.Character.Name) or v.UserId == game.Players:GetUserIdFromNameAsync(host) then
else
local tool = LocalPlayer.Backpack:FindFirstChild("[SprayCan]")
tool.Parent = LocalPlayer.Character
firetouchinterest(tool.Handle, v.Character['Head'],0)
end
end

wait(.3)
if LocalPlayer.Character then
    game.Players.LocalPlayer.Character:BreakJoints()
end
