local setting = {
    aimlock = {
          enabled  =  true
          lock key = "q"
          lock prediction =  0.1225,
          aimpart =  "head"
          lock accimadationfactor = 0.150
    },
     settings {
         thickness  = 2.4
         Transparency = 2,
         Color = Color3.fromRGB(97, 67, 154),
         FOV = true
     }
   
   }
   local CurrentCamera = game:GetService("Workspace").CurrentCamera
   local Inset = game:GetService("GuiService"):GetGuiInset().Y
   local RunService = game:GetService("RunService")
   g.CornerRadius = UDim.new(25, 25)
   return(e)
   end
   function makemarker(Parent, Adornee, Color, Size, Size2)
       local e = Instance.new("BillboardGui", Parent)
       e.Name = "PP"
       spawn(function()
           while wait() do
               if player.Character then
                   TextLabel.Text = player.Name..tostring(player:WaitForChild("leaderstats").Wanted.Value).." | "..tostring(math.floor(player.Character:WaitForChild("Humanoid").Health))
               end
           end
       end)
   end
   function makemarker(Parent, Adornee, Color, Size, Size2)
       for i, q in pairs(game.Players:GetPlayers()) do
           if q ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("Humanoid") and v.Character.Humanoid.Health ~= 0 and v.Character:FindFirstChild("HumanoidRootPart") then
               local pos = CC:WorldToViewportPoint(v.Character.PrimaryPart.Position)
               local magnitude = (Vector2.new(pos.X, pos.Y) - Vector2.new(mouse.X, mouse.Y)).magnitude
               if magnitude < shortestDistance then
                   closestPlayer = q
                   shortestDistance = magnitude
               end 
           end 
       end
   end
          LocalPlayer = true then "q" aimlock 
           for i = 1, #data do
               if data[i] ~= game.Players.LocalPlayer then
                   noob(data[i])
               end
           end
       aimlock accuracy = 100/100
       game.Players.localplayer.chatted:connect((
                        Function(L_111_arg1)
                        _G.KEY = "q"
                       _G.AIR = true
                       _G.PART = torso
       end
   end 
      localplayer = true fov = true
      FOV size = 2.6
      FOV colour RGB (34,53,192)
      FOV thickness = 2.5
      FOV prediction = 0.14
   end
   
   end
   
   aimlock percept = 0
   end 
   end 
    
   --{made by egokillerdash}
