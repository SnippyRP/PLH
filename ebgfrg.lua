local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

local Window = Library.CreateLib("Prision Life Hub", "Ocean")

game.StarterGui:SetCore("SendNotification", 
	{
		Title = "Loaded PLH";
		Text = "Do you like my hub?";
		Duration = 5;
		Button1 = "yes";
		Button2 = "No"
	}
)


--//HOME
local Tab = Window:NewTab("Home")
local Section = Tab:NewSection("Credits")
Section:NewLabel("Prision Life Hub")
Section:NewLabel("Scripts by Snippy#1118")

--//PLAYER
local Tab = Window:NewTab("LocalPlayer")
local Section = Tab:NewSection("Movement")
Section:NewSlider("WalkSpeed", "Changes your players walking speed", 100, 0, function(s)
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)
Section:NewSlider("JumpPower", "Changes your players jump height", 500, 0, function(s)
	game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)
Section:NewButton("Super Punch", "Makes punching someone a one-shot", function()
	mainRemotes = game.ReplicatedStorage meleeRemote = mainRemotes['meleeEvent'] mouse = game.Players.LocalPlayer:GetMouse() punching = false cooldown = false function punch() cooldown = true local part = Instance.new("Part", game.Players.LocalPlayer.Character) part.Transparency = 1 part.Size = Vector3.new(5, 2, 3) part.CanCollide = false local w1 = Instance.new("Weld", part) w1.Part0 = game.Players.LocalPlayer.Character.Torso w1.Part1 = part w1.C1 = CFrame.new(0,0,2) part.Touched:connect(function(hit) if game.Players:FindFirstChild(hit.Parent.Name) then local plr = game.Players:FindFirstChild(hit.Parent.Name) if plr.Name ~= game.Players.LocalPlayer.Name then part:Destroy() for i = 1,100 do meleeRemote:FireServer(plr) end end end end) wait(1) cooldown = false part:Destroy() end mouse.KeyDown:connect(function(key) if cooldown == false then if key:lower() == "f" then punch() end end end)
end)

Section:NewButton("Infinite Stamina", "Lets you jump without loosing stamina", function()
	local plr = game:GetService("Players").LocalPlayer
	for i,v in next, getgc() do 
		if type(v) == "function" and getfenv(v).script and getfenv(v).script == plr.Character.ClientInputHandler then 
			for i2,v2 in next, debug.getupvalues(v) do 
				if type(v2) == "number" then 
					debug.setupvalue(v, i2, math.huge)
				end
			end
		end
	end
end)

local Section = Tab:NewSection("Tools")
Section:NewButton("Remington 870", "Gives you a Remington 870", function()
	game.Workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)
end)
Section:NewButton("M9", "Gives you an M9", function()
	game.Workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["M9"].ITEMPICKUP)
end)
Section:NewButton("AK47", "Gives you an AK47", function()
	game.Workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["AK-47"].ITEMPICKUP)
end)
Section:NewButton("Riot Shield (GAMEPASS)", "Gives you a Riot Shield (GAMEPASS)", function()
	game.Workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Riot Shield"].ITEMPICKUP)
end)
Section:NewButton("M4A1 (GAMEPASS)", "Gives you an M4A1 (GAMEPASS)", function()
	game.Workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["M4A1"].ITEMPICKUP)
end)
Section:NewButton("Hammer", "Gives you a Hammer", function()
	game.Workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.single["Hammer"].ITEMPICKUP)
end)
Section:NewButton("Crude Knife", "Gives you a Crude Knife", function()
	game.Workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.single["Crude Knife"].ITEMPICKUP)
end)
Section:NewButton("Keycard", "GIves you a keycard (one must be dropped)", function()
	game.Workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.single["Key card"].ITEMPICKUP)
end)

--//MODDING
local Tab = Window:NewTab("Gun Modding")
local Section = Tab:NewSection("M9")
Section:NewButton("Infinite Ammo", "Gives your M9 an infinite ammo (math.huge)", function()
	local plr = game.Players.localPlayer
	local gun = plr.Backpack.M9.GunStates
	local a = require(gun)
	a.MaxAmmo = math.huge
end)
Section:NewButton("One-Shot", "Makes your M9 a shotgun", function()
	local plr = game.Players.localPlayer
	local gun = plr.Backpack.M9.GunStates
	local a = require(gun)
	a.Bullets = 100
end)
Section:NewButton("Autofire", "Hold to shoot!", function()
	local plr = game.Players.localPlayer
	local gun = plr.Backpack.M9.GunStates
	local a = require(gun)
	a.AutoFire = true
end)
Section:NewButton("Rapid Fire", "Shoot Faster", function()
	local plr = game.Players.localPlayer
	local gun = plr.Backpack.M9.GunStates
	local a = require(gun)
	a.FireRate = 0
end)

local Section = Tab:NewSection("Remington 870")
Section:NewButton("Infinite Ammo", "Gives your Remington 870 an infinite ammo (math.huge)", function()
	local plr = game.Players.localPlayer
	local gun = plr.Backpack['Remington 870'].GunStates
	local a = require(gun)
	a.MaxAmmo = math.huge
end)
Section:NewButton("One-Shot", "Makes your Remington 870 a shotgun", function()
	local plr = game.Players.localPlayer
	local gun = plr.Backpack['Remington 870'].GunStates
	local a = require(gun)
	a.Bullets = 100
end)
Section:NewButton("Autofire", "Hold to shoot!", function()
	local plr = game.Players.localPlayer
	local gun = plr.Backpack['Remington 870'].GunStates
	local a = require(gun)
	a.AutoFire = true
end)
Section:NewButton("Rapid Fire", "Shoot Faster", function()
	local plr = game.Players.localPlayer
	local gun = plr.Backpack['Remington 870'].GunStates
	local a = require(gun)
	a.FireRate = 0
end)

local Section = Tab:NewSection("AK47")
Section:NewButton("Infinite Ammo", "Gives your AK47 an infinite ammo (math.huge)", function()
	local plr = game.Players.localPlayer
	local gun = plr.Backpack['AK-47'].GunStates
	local a = require(gun)
	a.MaxAmmo = math.huge
end)
Section:NewButton("One-Shot", "Makes your AK47 a shotgun", function()
	local plr = game.Players.localPlayer
	local gun = plr.Backpack['AK-47'].GunStates
	local a = require(gun)
	a.Bullets = 100
end)
Section:NewButton("Rapid Fire", "Shoot Faster", function()
	local plr = game.Players.localPlayer
	local gun = plr.Backpack['AK-47'].GunStates
	local a = require(gun)
	a.FireRate = 0
end)

--//SERVER
local Tab = Window:NewTab("Server")
local Section = Tab:NewSection("Arresting")
Section:NewTextBox("Arrest Player", "Arrests the specified player (name can be shortened)", function(plr)
	local Player = game.Players.LocalPlayer
	local cpos = Player.Character.HumanoidRootPart.CFrame


	for _,playerr in pairs(game:GetService("Players"):GetPlayers()) do
		if string.sub(string.lower(playerr.Name), 1, string.len(plr)) == string.lower(plr) then
			local i = 10
			repeat
				wait()
				i = i-1
				game.Workspace.Remote.arrest:InvokeServer(playerr.Character.HumanoidRootPart)
				Player.Character.HumanoidRootPart.CFrame = playerr.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 1)
			until i == 0
		end
	end

	Player.Character.HumanoidRootPart.CFrame = cpos
end)

Section:NewButton("Arrest All Criminals", "Arrests every criminal on the server", function()
	local Player = game.Players.LocalPlayer
	local cpos = Player.Character.HumanoidRootPart.CFrame
	for i,v in pairs(game.Teams.Criminals:GetPlayers()) do
		if v.Name ~= Player.Name then
			local i = 10
			repeat
				wait()
				i = i-1
				game.Workspace.Remote.arrest:InvokeServer(v.Character.HumanoidRootPart)
				Player.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 1)
			until i == 0
		end
	end
	Player.Character.HumanoidRootPart.CFrame = cpos
end)
Section:NewButton("Play sounds", "Plays sounds to lag the server", function()
	sounds = {}
	function getSounds(loc)
		if loc:IsA("Sound") then
			table.insert(sounds,loc)
		end
		for _,obj in pairs(loc:GetChildren()) do
			getSounds(obj)
		end
	end
	getSounds(game)
	game.DescendantAdded:connect(function(obj)
		if obj:IsA("Sound") then
			table.insert(sounds,obj)
		end
	end)
	while wait(0.2) do
		for _,sound in pairs(sounds) do
			pcall(function()
				sound:Play()
			end)
		end
	end
end)

local Section = Tab:NewSection("Killing")
Section:NewButton("Kill all", "Kills every player on the server", function()
	local team = game.Players.LocalPlayer.TeamColor

	workspace.Remote.TeamEvent:FireServer("Medium stone grey")

	game.Workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver.M9.ITEMPICKUP) 

	wait(.1)
	local function kill(a)
		local A_1 =
			{
				[1] =
				{	["Cframe"] = CFrame.new(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
					["Hit"] = a.Character.Head,
					["RayObject"] = Ray.new(Vector3.new(0,0,0), Vector3.new(0,0,0)),
					["Distance"] = 0,
				},
				[2] =
				{
					["Cframe"] = CFrame.new(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
					["Hit"] = a.Character.Head,
					["RayObject"] = Ray.new(Vector3.new(0,0,0), Vector3.new(0,0,0)),
					["Distance"] = 0,
				},
				[3] =
				{
					["Cframe"] = CFrame.new(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
					["Hit"] = a.Character.Head,
					["RayObject"] = Ray.new(Vector3.new(0,0,0), Vector3.new(0,0,0)),
					["Distance"] = 0,
				},
				[4] =
				{
					["Cframe"] = CFrame.new(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
					["Hit"] = a.Character.Head,
					["RayObject"] = Ray.new(Vector3.new(0,0,0), Vector3.new(0,0,0)),
					["Distance"] = 0,
				},
				[5] =
				{
					["Cframe"] = CFrame.new(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
					["Hit"] = a.Character.Head,
					["RayObject"] = Ray.new(Vector3.new(0,0,0), Vector3.new(0,0,0)),
					["Distance"] = 0,
				}
			}
		local A_2 = game.Players.LocalPlayer.Backpack.M9
		local Event = game:GetService("ReplicatedStorage").ShootEvent
		Event:FireServer(A_1, A_2)
		Event:FireServer(A_1, A_2)
	end

	for i,v in pairs(game.Players:GetChildren())do
		if v.Name ~= game.Players.LocalPlayer.Name then
			kill(v)
		end
	end
end)

Section:NewTextBox("Kill a player", "Kills the specified player (name can be shortened)", function(plr)
	local team = game.Players.LocalPlayer.TeamColor
	for _,playerr in pairs(game:GetService("Players"):GetPlayers()) do
		if string.sub(string.lower(playerr.Name), 1, string.len(plr)) == string.lower(plr) then
			local team = game.Players.LocalPlayer.TeamColor

			workspace.Remote.TeamEvent:FireServer("Medium stone grey")

			game.Workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver.M9.ITEMPICKUP) 

			wait(.1)
			local function kill(a)
				local A_1 =
					{
						[1] =
						{	["Cframe"] = CFrame.new(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
							["Hit"] = a.Character.Head,
							["RayObject"] = Ray.new(Vector3.new(0,0,0), Vector3.new(0,0,0)),
							["Distance"] = 0,
						},
						[2] =
						{
							["Cframe"] = CFrame.new(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
							["Hit"] = a.Character.Head,
							["RayObject"] = Ray.new(Vector3.new(0,0,0), Vector3.new(0,0,0)),
							["Distance"] = 0,
						},
						[3] =
						{
							["Cframe"] = CFrame.new(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
							["Hit"] = a.Character.Head,
							["RayObject"] = Ray.new(Vector3.new(0,0,0), Vector3.new(0,0,0)),
							["Distance"] = 0,
						},
						[4] =
						{
							["Cframe"] = CFrame.new(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
							["Hit"] = a.Character.Head,
							["RayObject"] = Ray.new(Vector3.new(0,0,0), Vector3.new(0,0,0)),
							["Distance"] = 0,
						},
						[5] =
						{
							["Cframe"] = CFrame.new(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
							["Hit"] = a.Character.Head,
							["RayObject"] = Ray.new(Vector3.new(0,0,0), Vector3.new(0,0,0)),
							["Distance"] = 0,
						}
					}
				local A_2 = game.Players.LocalPlayer.Backpack.M9
				local Event = game:GetService("ReplicatedStorage").ShootEvent
				Event:FireServer(A_1, A_2)
				Event:FireServer(A_1, A_2)
			end

			for i,v in pairs(game.Players:GetChildren())do
				if v.Name ~= game.Players.LocalPlayer.Name and v.Name == playerr.Name then
					kill(v)
				end
			end
		end
	end
end)

local KillAOn = false
Section:NewKeybind("Kill players nearby", "Kills every player nearby", Enum.KeyCode.Z, function()
	if KillAOn == false then
		KillAOn = true
		for i, plr in pairs(game.Players:GetChildren()) do
			if plr.Name ~= game.Players.LocalPlayer.Name then
				for i = 1, 10 do
					game.ReplicatedStorage.meleeEvent:FireServer(plr)
				end
			end
		end
	else
		KillAOn = false
	end
end)

local Section = Tab:NewSection("Map")
Section:NewButton("Remove Doors", "Deletes the doors on the client", function()
	game:GetService("Workspace").Doors:Destroy()
end)
Section:NewButton("Remove Walls", "Deletes the prision walls on the client", function()
	game.Workspace.Prison_Guard_Outpost:Destroy()
	game.Workspace.Prison_Cafeteria.building:Destroy()
	game.Workspace.Prison_Cafeteria.glass:Destroy()
	game.Workspace.Prison_Cafeteria.oven:Destroy()
	game.Workspace.Prison_Cafeteria.shelves:Destroy()
	game.Workspace.Prison_Cafeteria.vents:Destroy()
	game.Workspace.Prison_Cafeteria.accents:Destroy()
	game.Workspace.Prison_Cafeteria.vendingmachine:Destroy()
	game.Workspace.Prison_Cafeteria.Prison_table1:Destroy()
	game.Workspace.Prison_Cafeteria.counter:Destroy()
	game.Workspace.Prison_Cafeteria.boxes:Destroy()
end)

local Section = Tab:NewSection("Teleports")
Section:NewButton("Yard", "Teleports you to the yard", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(779.87,98,2458.93)
end)
Section:NewButton("Criminal Base", "Teleports you to the criminal base", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-976.125183, 109.123924, 2059.99536)
end)
Section:NewButton("Prision", "Teleports you to the prision", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(918.77,100,2379.07)
end)
Section:NewTextBox("Teleport to player", "Teleports to the player (name can be shortened)", function(plr)
	for _,playerr in pairs(game:GetService("Players"):GetPlayers()) do
		if string.sub(string.lower(playerr.Name), 1, string.len(plr)) == string.lower(plr) then
			local pos = playerr.Character.HumanoidRootPart.CFrame
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
		end	
	end
end)

--//TEAMS
local Tab = Window:NewTab("Teams")
local Section = Tab:NewSection("Team Colors")
Section:NewColorPicker("Team Color Picker", "Changes your nametag color to the value you pick", Color3.fromRGB(0,0,0), function(color)
	local pos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
	game.Workspace.Remote.loadchar:InvokeServer(game.Players.LocalPlayer,color)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
end)
local Section = Tab:NewSection("Teams")
Section:NewButton("Team Guards", "Changes your team to guards", function()
	workspace.Remote.TeamEvent:FireServer("Bright blue")
end)
Section:NewButton("Team Inmate", "Changes your team to inmates", function()
	workspace.Remote.TeamEvent:FireServer("Bright orange")
end)
Section:NewButton("Team Criminal", "Changes your team to criminals", function()
	wait(0.3)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-976.125183, 109.123924, 2059.99536)

	wait(0.3)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(918.77,100,2379.07)
end)
Section:NewButton("Team Neutral", "Changes your team to neutral", function()
	workspace.Remote.TeamEvent:FireServer("Medium stone grey")
end)

--//FE
local Tab = Window:NewTab("FE Scripts")
local Section = Tab:NewSection("Scripts made by me")
Section:NewTextBox("Smite", "Rains bullets down on a player (name can be shortened)", function(plr)
	for _,playerr in pairs(game:GetService("Players"):GetPlayers()) do
		if string.sub(string.lower(playerr.Name), 1, string.len(plr)) == string.lower(plr) then
			local pos = playerr.Character.HumanoidRootPart.CFrame.p
			wait(0.25)
			game.Workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["AK-47"].ITEMPICKUP)
			local Gun = game.Players.LocalPlayer.Backpack['AK-47']

			local Player = game.Players.LocalPlayer.Name
			local Mouse = game.Players.LocalPlayer:GetMouse()
			local Run = game:GetService("RunService")
			local Sound = Gun.Handle.FireSound

			local radius = 8
			local height = 20

			function CreateRay(Point_A, Point_B)
				local Ray = Ray.new(Point_A, (Point_B - Point_A).Unit * (2 ^ 31 - 1))
				local Part, Pos = workspace:FindPartOnRay(Ray, game.Players.LocalPlayer.Character)
				local Dist = (Point_A - Pos).Magnitude
				local CFrame = CFrame.new(Point_A, Pos) * CFrame.new(0, 0, -Dist / 2)

				return CFrame, Dist, Ray
			end

			function FireLaser(target,x,z)
				coroutine.resume(coroutine.create(function()
					local C, D, R = CreateRay(pos + Vector3.new(x,height,z) + Vector3.new(4,0,4), target.CFrame.p - Vector3.new(0,height,0))
					local Bullet = Instance.new("Part", Gun)
					Bullet.BrickColor = BrickColor.Yellow()
					Bullet.Material = "Neon"
					Bullet.Anchored = true
					Bullet.CanCollide = false
					Bullet.Size = Vector3.new(0.125, 0.125, D)
					Bullet.CFrame = C

					local bulletTable = {}
					table.insert(bulletTable, {
						Hit = target,
						Distance = D,
						Cframe = C,
						RayObject = R
					})

					game.ReplicatedStorage.ShootEvent:FireServer(bulletTable, Gun)
					local C = Sound:Clone()
					C.Parent = Gun
					C:Play()
					wait(0.25)
					Bullet:Remove()
				end))
			end


			Gun.Parent = game.Players.LocalPlayer.Character
			wait()
			local a = require(Gun.GunStates)
			a.Spread = 45
			a.ReloadTime = 0
			a.Bullets = 5

			Gun = game.Players.LocalPlayer.Character['AK-47']
			for i = 1,30 do
				local x = math.random(-radius,radius) 
				local z = math.random(-radius,radius)
				local tpart = Instance.new("Part",workspace)
				tpart.Transparency = 0.5
				tpart.Anchored = true
				tpart.CanCollide = false
				tpart.Size = Vector3.new(1,1,1)
				tpart.Position = pos + Vector3.new(x,0,z) + Vector3.new(4,0,4)
				game.ReplicatedStorage.SoundEvent:FireServer(Sound, Gun)
				FireLaser(tpart,x,z)
				tpart:Destroy()
			end
			wait()
			game.ReplicatedStorage.ReloadEvent:FireServer(Gun)
			Gun.Parent = game.Players.LocalPlayer.Backpack
		end	
	end
end)
Section:NewTextBox("Lightning", "Lightning strikes the player (name can be shortened)", function(plr)
	for _,playerr in pairs(game:GetService("Players"):GetPlayers()) do
		if string.sub(string.lower(playerr.Name), 1, string.len(plr)) == string.lower(plr) then

			local pos = game.Workspace[playerr.Name].Head.Position
			local startingpos = Vector3.new(0,110,0)
			local prevpos = nil

			wait()

			local pos = game.Workspace[playerr.Name].Head.CFrame.p
			local posV = game.Workspace[playerr.Name].Head.Position
			wait()
			game.Workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["AK-47"].ITEMPICKUP)
			local Gun = game.Players.LocalPlayer.Backpack['AK-47']

			local Player = game.Players.LocalPlayer.Name
			local Mouse = game.Players.LocalPlayer:GetMouse()
			local Run = game:GetService("RunService")
			local Sound = Gun.Handle.FireSound

			function CreateRay(Point_A, Point_B)
				local Ray = Ray.new(Point_A, (Point_B - Point_A).Unit * (2 ^ 31 - 1))
				local Part, Pos = workspace:FindPartOnRay(Ray, game.Players.LocalPlayer.Character)
				local Dist = (Point_A - Pos).Magnitude
				local CFrame = CFrame.new(Point_A, Pos) * CFrame.new(0, 0, -Dist / 2)

				return CFrame, Dist, Ray
			end

			function FireLaser(target,x,z,m,height)
				if m == 2 then
					coroutine.resume(coroutine.create(function()
						local C, D, R = CreateRay(pos + startingpos, Vector3.new(x,height*10,z))
						local Bullet = Instance.new("Part", Gun)
						Bullet.BrickColor = BrickColor.Yellow()
						Bullet.Material = "Neon"
						Bullet.Anchored = true
						Bullet.CanCollide = false
						Bullet.Size = Vector3.new(0.125, 0.125, D)
						Bullet.CFrame = C

						local bulletTable = {}
						table.insert(bulletTable, {
							Hit = target,
							Distance = D,
							Cframe = C,
							RayObject = R
						})

						game.ReplicatedStorage.ShootEvent:FireServer(bulletTable, Gun)
						local C = Sound:Clone()
						C.Parent = Gun
						C:Play()
						wait(0.25)
						Bullet:Remove()
					end))
				elseif m == 1 then
					coroutine.resume(coroutine.create(function()
						local C, D, R = CreateRay(prevpos, target.Position)
						local Bullet = Instance.new("Part", Gun)
						Bullet.BrickColor = BrickColor.Yellow()
						Bullet.Material = "Neon"
						Bullet.Anchored = true
						Bullet.CanCollide = false
						Bullet.Size = Vector3.new(0.125, 0.125, D)
						Bullet.CFrame = C

						local bulletTable = {}
						table.insert(bulletTable, {
							Hit = target,
							Distance = D,
							Cframe = C,
							RayObject = R
						})

						game.ReplicatedStorage.ShootEvent:FireServer(bulletTable, Gun)
						local C = Sound:Clone()
						C.Parent = Gun
						C:Play()
						wait(0.25)
						Bullet:Remove()
					end))
				end
			end


			Gun.Parent = game.Players.LocalPlayer.Character
			wait()
			local a = require(Gun.GunStates)
			a.Spread = 45
			a.ReloadTime = 0
			a.Bullets = 5

			Gun = game.Players.LocalPlayer.Character['AK-47']
			for ii = 1,3 do
				for i = 1,10 do
					local x = math.random(-3,3)
					local z = math.random(-3,3)
					if i == 1 then
						local tpart = Instance.new("Part",workspace)
						tpart.Transparency = 0.5
						tpart.Anchored = true
						tpart.CanCollide = false
						tpart.Size = Vector3.new(1,1,1)
						tpart.Position = posV + Vector3.new(x,100,z) - Vector3.new(0,i*10,0)
						game.ReplicatedStorage.SoundEvent:FireServer(Sound, Gun)
						FireLaser(tpart,x,z,2,i)
						prevpos = posV + Vector3.new(x,100,z) - Vector3.new(0,i*10,0)
						tpart:Destroy()
					elseif i == 10 then
						local tpart = game.Workspace[playerr.Name].Head
						game.ReplicatedStorage.SoundEvent:FireServer(Sound, Gun)
						FireLaser(tpart,x,z,1,i)
						prevpos = posV + Vector3.new(x,100,z) - Vector3.new(0,i*10,0)
					else
						local tpart = Instance.new("Part",workspace)
						tpart.Transparency = 0.5
						tpart.Anchored = true
						tpart.CanCollide = false
						tpart.Size = Vector3.new(1,1,1)
						tpart.Position = posV + Vector3.new(x,100,z) - Vector3.new(0,i*10,0)
						game.ReplicatedStorage.SoundEvent:FireServer(Sound, Gun)
						FireLaser(tpart,x,z,1,i)
						prevpos = posV + Vector3.new(x,100,z) - Vector3.new(0,i*10,0)
						tpart:Destroy()
					end
				end
			end
			wait()
			game.ReplicatedStorage.ReloadEvent:FireServer(Gun)
			Gun.Parent = game.Players.LocalPlayer.Backpack
		end
	end
end)


local Section = Tab:NewSection("Other scripts")
Section:NewButton("Septex FE Admin", "Loads Septex admin, loads of features", function()
	loadstring(game:HttpGet(('https://raw.githubusercontent.com/XTheMasterX/Scripts/Main/PrisonLife'),true))()
end)
