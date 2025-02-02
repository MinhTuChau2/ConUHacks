  07:37:46.132  > for _, obj in pairs(game:GetDescendants()) do
    if obj:IsA("Script") or obj:IsA("LocalScript") or obj:IsA("ModuleScript") then
        print(obj:GetFullName() .. ":\n" .. obj.Source .. "\n\n")
    end
end
  -  Studio
  07:37:46.134  Workspace.Floppa Npc.Move:
function newSound(id)
	local sound = Instance.new("Sound", script.Parent["Floppa cube"])
	sound.SoundId = id
	return sound
end

script.Parent["Floppa cube"].ClickDetector.MouseClick:Connect(function()
	local meow = newSound("rbxassetid://8772968188")
	local money = script.Parent.money:Clone()
	money.Parent = workspace
	money.Script.Disabled = false
	money.Money:Destroy()
	money.Position = script.Parent["Floppa cube"].Position
	meow:Play()
	wait(meow.TimeLength * 2)
	meow:Destroy()
end)

local velocity = Instance.new("BodyAngularVelocity", script.Parent["Floppa cube"])
while wait(math.random(2, 3)) do
	velocity.AngularVelocity = Vector3.new(math.random(-7, 7), 0, math.random(-7, 7))
end

  -  Edit
  07:37:46.134  Workspace.Floppa Npc.money.Script:
script.Parent.Touched:Connect(function(player)
	if (player.Parent:FindFirstChild("Humanoid") ~= nil) then
		local sound = Instance.new("Sound", script.Parent)
		sound.SoundId = "rbxassetid://4525871712"
		sound:Play()
		script.Parent.Transparency = 1
		script.Disabled = true
		wait(sound.TimeLength)
		sound:remove()
		script.Parent:remove()
	end
end)

  -  Edit
  07:37:46.134  Workspace.Floppa Npc.Move:
function newSound(id)
	local sound = Instance.new("Sound", script.Parent["Floppa cube"])
	sound.SoundId = id
	return sound
end

script.Parent["Floppa cube"].ClickDetector.MouseClick:Connect(function()
	local meow = newSound("rbxassetid://8772968188")
	local money = script.Parent.money:Clone()
	money.Parent = workspace
	money.Script.Disabled = false
	money.Money:Destroy()
	money.Position = script.Parent["Floppa cube"].Position
	meow:Play()
	wait(meow.TimeLength * 2)
	meow:Destroy()
end)

local velocity = Instance.new("BodyAngularVelocity", script.Parent["Floppa cube"])
while wait(math.random(2, 3)) do
	velocity.AngularVelocity = Vector3.new(math.random(-7, 7), 0, math.random(-7, 7))
end

  -  Edit
  07:37:46.134  Workspace.Floppa Npc.money.Script:
script.Parent.Touched:Connect(function(player)
	if (player.Parent:FindFirstChild("Humanoid") ~= nil) then
		local sound = Instance.new("Sound", script.Parent)
		sound.SoundId = "rbxassetid://4525871712"
		sound:Play()
		script.Parent.Transparency = 1
		script.Disabled = true
		wait(sound.TimeLength)
		sound:remove()
		script.Parent:remove()
	end
end)

  -  Edit
  07:37:46.134  Workspace.(inert name of player here!).Head.NPC chat script:
local head = script.Parent

local randomChats = {
	"I may struggle with geography, but I'm sure I'm somewhere around here.",
	"The baby in the sun from teletubbies is 24 years old now.",
	"If you ever feel bad about your looks just remember that shrek was inspired by a real life human being",
	"Bingo is like battle royale for the elderly.",
	"Somebody once told me the world is gonna roll me.",
}

while true do
	wait(math.random(15, 30))
	local last
	local r = randomChats[math.random(1, #randomChats)]
	if not(r == last) then
		game:GetService("Chat"):Chat(head, r, "Blue")
	end
end

-- Put this in the Head of the NPC that you want to talk.


  -  Edit
  07:37:46.134  Workspace.(inert name of player here!).Walking Script:
local CurrentPart = nil
local MaxInc = 16

function onTouched(hit)
	if hit.Parent == nil then
		return
	end

	local humanoid = hit.Parent:findFirstChild("Humanoid")

	if humanoid == nil then
		CurrentPart = hit
	end
end

function waitForChild(parent, childName)
	local child = parent:findFirstChild(childName)

	if child then
		return child
	end

	while true do
		print(childName)

		child = parent.ChildAdded:wait()

		if child.Name==childName then
			return child
		end
	end
end

local Figure = script.Parent
local Humanoid = waitForChild(Figure, "Humanoid")
local Torso = waitForChild(Figure, "Torso")
local Left = waitForChild(Figure, "Left Leg")
local Right = waitForChild(Figure, "Right Leg")

Humanoid.Jump = true

Left.Touched:connect(onTouched)
Right.Touched:connect(onTouched)

while true do
	wait(math.random(0.001, 3))

	if CurrentPart ~= nil then
		if math.random(1, 2) == 1 then
			Humanoid.Jump = true
		end

		Humanoid:MoveTo(Torso.Position + Vector3.new(math.random(-MaxInc, MaxInc), 0, math.random(-MaxInc, MaxInc)), CurrentPart)
	end
end

  -  Edit
  07:37:46.134  Workspace.Floppa Npc.Move:
function newSound(id)
	local sound = Instance.new("Sound", script.Parent["Floppa cube"])
	sound.SoundId = id
	return sound
end

script.Parent["Floppa cube"].ClickDetector.MouseClick:Connect(function()
	local meow = newSound("rbxassetid://8772968188")
	local money = script.Parent.money:Clone()
	money.Parent = workspace
	money.Script.Disabled = false
	money.Money:Destroy()
	money.Position = script.Parent["Floppa cube"].Position
	meow:Play()
	wait(meow.TimeLength * 2)
	meow:Destroy()
end)

local velocity = Instance.new("BodyAngularVelocity", script.Parent["Floppa cube"])
while wait(math.random(2, 3)) do
	velocity.AngularVelocity = Vector3.new(math.random(-7, 7), 0, math.random(-7, 7))
end

  -  Edit
  07:37:46.135  Workspace.Floppa Npc.money.Script:
script.Parent.Touched:Connect(function(player)
	if (player.Parent:FindFirstChild("Humanoid") ~= nil) then
		local sound = Instance.new("Sound", script.Parent)
		sound.SoundId = "rbxassetid://4525871712"
		sound:Play()
		script.Parent.Transparency = 1
		script.Disabled = true
		wait(sound.TimeLength)
		sound:remove()
		script.Parent:remove()
	end
end)

  -  Edit
  07:37:46.135  Workspace.SpeedPowerUp.SpeedScript:
local powerUp = script.Parent
local respawnTime = 20
local speedBoostAmount = 10  -- Speed increase
local powerUpDuration = 5  -- How long the speed boost lasts

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local speedBoostEvent = ReplicatedStorage:FindFirstChild("SpeedBoostEvent")

local function onTouched(otherPart)
	local character = otherPart.Parent
	local player = game.Players:GetPlayerFromCharacter(character)

	if player and speedBoostEvent then
		-- Trigger the event to apply speed boost on the client
		speedBoostEvent:FireClient(player, speedBoostAmount, powerUpDuration)

		-- Hide and respawn power-up
		powerUp.Transparency = 1
		powerUp.CanTouch = false
		task.wait(respawnTime)
		powerUp.Transparency = 0
		powerUp.CanTouch = true
	end
end

powerUp.Touched:Connect(onTouched)


  -  Edit
  07:37:46.135  StarterPlayer.StarterCharacterScripts.Camera:
-- LocalScript for Top-Down Camera with Zooming
local player = game.Players.LocalPlayer
local camera = game.Workspace.CurrentCamera
local userInputService = game:GetService("UserInputService")
local runService = game:GetService("RunService")

local zoomSpeed = 1 -- Speed of zooming in and out
local minZoom = 20 -- Minimum camera distance 
local maxZoom = 100-- Maximum camera distance
local zoomLevel = 40 -- Default starting zoom level

-- Lock the camera type to Scriptable to control it manually
camera.CameraType = Enum.CameraType.Scriptable

-- Function to update camera position based on player's position
local function updateCameraPosition()
	local character = player.Character
	if character then
		local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
		if humanoidRootPart then
			-- Set the camera to be above the player at a specific distance
			local cameraPosition = humanoidRootPart.Position + Vector3.new(0, zoomLevel, 0)
			local lookAtPosition = humanoidRootPart.Position
			camera.CFrame = CFrame.new(cameraPosition, lookAtPosition)
		end
	end
end

-- Function to handle zooming in and out with the mouse wheel
local function handleZoom()
	userInputService.InputChanged:Connect(function(input, gameProcessed)
		if gameProcessed then return end

		if input.UserInputType == Enum.UserInputType.MouseWheel then
			if input.Position.Z > 0 then
				-- Zooming out (moving camera further)
				zoomLevel = math.min(zoomLevel + zoomSpeed, maxZoom)
			elseif input.Position.Z < 0 then
				-- Zooming in (moving camera closer)
				zoomLevel = math.max(zoomLevel - zoomSpeed, minZoom)
			end
		end
	end)
end

-- Update camera position every frame
runService.RenderStepped:Connect(function()
	updateCameraPosition()
end)

-- Enable zoom functionality
handleZoom()


  -  Edit
  07:37:46.135  StarterPlayer.StarterCharacterScripts.Move:
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local players = game:GetService("Players")
local player = players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

-- Store original speed values
local originalWalkSpeed = humanoid.WalkSpeed
local originalJumpHeight = humanoid.JumpHeight

-- Get the RemoteEvent
local speedBoostEvent = ReplicatedStorage:WaitForChild("SpeedBoostEvent")

-- Function to disable movement
local function disableMovement()
	humanoid.WalkSpeed = 0
	humanoid.JumpHeight = 0
end

-- Function to enable movement
local function enableMovement()
	humanoid.WalkSpeed = originalWalkSpeed
	humanoid.JumpHeight = originalJumpHeight
end

-- Function to create a glow effect
local function addGlowEffect(character)
	local highlight = Instance.new("Highlight")  -- Outline effect
	highlight.Name = "SpeedGlow"
	highlight.FillColor = Color3.fromRGB(99, 0, 255)  -- Blue glow
	highlight.FillTransparency = 0.5  -- Adjust transparency (0 = solid, 1 = invisible)
	highlight.OutlineColor = Color3.fromRGB(99, 0, 255)  -- White outline
	highlight.Parent = character
	print("Glow effect added.")
end

-- Function to remove the glow effect
local function removeGlowEffect(character)
	local glow = character:FindFirstChild("SpeedGlow")  -- Find the glow effect
	if glow then
		glow:Destroy()
		print("Glow effect removed.")
	end
end

-- Function to handle speed boost from RemoteEvent
local function onSpeedBoost(speedIncrease, duration)
	humanoid.WalkSpeed = originalWalkSpeed + speedIncrease
	print(player.Name .. " received a speed boost!")

	-- Add glow effect
	addGlowEffect(character)

	task.wait(duration)  -- Wait for the effect duration

	humanoid.WalkSpeed = originalWalkSpeed  -- Reset to original speed
	print(player.Name .. "'s speed boost ended.")

	-- Remove glow effect
	removeGlowEffect(character)
end

-- Connect RemoteEvent to function
speedBoostEvent.OnClientEvent:Connect(onSpeedBoost)

-- Disable movement initially, then enable after 10 seconds
disableMovement()
task.wait(10)
enableMovement()





  -  Edit
  07:37:46.136  StarterPlayer.StarterCharacterScripts.PointsDisplay:
local player = game.Players.LocalPlayer
local ReplicatedStorage = game:GetService("ReplicatedStorage")

-- Create the GUI for displaying points and time played
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = player:WaitForChild("PlayerGui")

-- Points Label
local pointsLabel = Instance.new("TextLabel")
pointsLabel.Parent = screenGui
pointsLabel.Size = UDim2.new(0, 200, 0, 50)
pointsLabel.Position = UDim2.new(1, -220, 0, 20)  -- Position adjusted for top-right
pointsLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
pointsLabel.TextScaled = true
pointsLabel.BackgroundTransparency = 0.5
pointsLabel.Font = Enum.Font.SourceSansBold
pointsLabel.Text = "Points: 0"

-- Time Played Label
local timeLabel = Instance.new("TextLabel")
timeLabel.Parent = screenGui
timeLabel.Size = UDim2.new(0, 200, 0, 50)
timeLabel.Position = UDim2.new(1, -220, 0, 80)  -- Position adjusted for top-right
timeLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
timeLabel.TextScaled = true
timeLabel.BackgroundTransparency = 0.5
timeLabel.Font = Enum.Font.SourceSansBold
timeLabel.Text = "Time Played: 0:00"

-- Listen for points and time update from the server
ReplicatedStorage.PointsUpdateRemote.OnClientEvent:Connect(function(points, timePlayed)
	-- Convert timePlayed to minutes and seconds
	local minutes = math.floor(timePlayed / 60)
	local seconds = timePlayed % 60

	-- Format the time as "minutes:seconds"
	local timeFormatted = string.format("%d:%02d", minutes, seconds)

	-- Update the labels with the new points and time
	wait(11)
	pointsLabel.Text = "Points: " .. tostring(points)
	timeLabel.Text = "Time Played: " .. timeFormatted
end)


  -  Edit
  07:37:46.136  StarterPack.HyperlaserGun.ToolScript:
-- Rescripted by Luckymaxer

Tool = script.Parent
Handle = Tool:WaitForChild("Handle")

Players = game:GetService("Players")

ServerControl = Tool:WaitForChild("ServerControl")
ClientControl = Tool:WaitForChild("ClientControl")

ClientControl.OnClientInvoke = function(Mode, Value)
	if Mode == "PlaySound" and Value then
		Value:Play()
	end
end

function InvokeServer(Mode, Value, arg)
	pcall(function()
		ServerControl:InvokeServer(Mode, Value, arg)
	end)
end

-- Create Attachments
local Attachment0 = Instance.new("Attachment")
local Attachment1 = Instance.new("Attachment")
Attachment0.Parent = Handle
Attachment0.Position = Vector3.new(0, 0.4, -1.1) -- Nozzle position
Attachment1.Parent = Handle

-- Create Laser Beam
local LaserBeam = Instance.new("Beam")
LaserBeam.Attachment0 = Attachment0
LaserBeam.Attachment1 = Attachment1
LaserBeam.Width0 = 0.05
LaserBeam.Width1 = 0.05
LaserBeam.Color = ColorSequence.new(Color3.fromRGB(255, 0, 0)) -- Red laser
LaserBeam.LightEmission = 1
LaserBeam.LightInfluence = 0
LaserBeam.Enabled = false -- Initially off
LaserBeam.Parent = Handle

-- Update Laser Aim
local function UpdateLaser(Mouse)
	while Tool.Parent and LaserBeam.Enabled do
		local origin = Handle.Position
		local direction = (Mouse.Hit.p - origin).unit * 100 -- Laser extends 100 studs

		local ray = Ray.new(origin, direction)
		local hit, position = workspace:FindPartOnRay(ray, Tool.Parent) -- Ignore own character

		if hit then
			Attachment1.Position = Handle.CFrame:pointToObjectSpace(position)
		else
			Attachment1.Position = Vector3.new(0, 0.5, -100) -- Default long range
		end

		wait() -- Keep updating position
	end
end

function Equipped(Mouse)
	Character = Tool.Parent
	Player = Players:GetPlayerFromCharacter(Character)
	Humanoid = Character:FindFirstChild("Humanoid")
	if not Player or not Humanoid or Humanoid.Health == 0 then
		return
	end

	-- Enable laser
	LaserBeam.Enabled = true

	-- Start laser update loop
	coroutine.wrap(UpdateLaser)(Mouse)

	Mouse.Button1Down:Connect(function()
		InvokeServer("Click", true, Mouse.Hit.p)
	end)
end

function Unequipped()
	LaserBeam.Enabled = false
end

Tool.Equipped:Connect(Equipped)
Tool.Unequipped:Connect(Unequipped)


  -  Edit
  07:37:46.136  StarterPack.HyperlaserGun.MouseIcon:
local MOUSE_ICON = 'rbxasset://textures/GunCursor.png'
local RELOADING_ICON = 'rbxasset://textures/GunWaitCursor.png'

local Tool = script.Parent

local Mouse = nil

local function UpdateIcon()
	if Mouse then
		Mouse.Icon = Tool.Enabled and MOUSE_ICON or RELOADING_ICON
	end
end

local function OnEquipped(mouse)
	Mouse = mouse
	UpdateIcon()
end

local function OnChanged(property)
	if property == 'Enabled' then
		UpdateIcon()
	end
end

Tool.Equipped:connect(OnEquipped)
Tool.Changed:connect(OnChanged)


  -  Edit
  07:37:46.136  StarterPack.HyperlaserGun.Script:
Tool = script.Parent
Handle = Tool:WaitForChild("Handle")

Players = game:GetService("Players")
Debris = game:GetService("Debris")

Speed = 55
Duration = 9999999

NozzleOffset = Vector3.new(0, 0.4, -1.1)

Sounds = {
	Fire = Handle:WaitForChild("Fire"),
	Reload = Handle:WaitForChild("Reload"),
	HitFade = Handle:WaitForChild("HitFade")
}

PointLight = Handle:WaitForChild("PointLight")

ServerControl = (Tool:FindFirstChild("ServerControl") or Instance.new("RemoteFunction"))
ServerControl.Name = "ServerControl"
ServerControl.Parent = Tool

ClientControl = (Tool:FindFirstChild("ClientControl") or Instance.new("RemoteFunction"))
ClientControl.Name = "ClientControl"
ClientControl.Parent = Tool

ServerControl.OnServerInvoke = (function(player, Mode, Value, arg)
	if player ~= Player or Humanoid.Health == 0 or not Tool.Enabled then
		return
	end
	if Mode == "Click" and Value then
		Activated(arg)
	end
end)

function InvokeClient(Mode, Value)
	pcall(function()
		ClientControl:InvokeClient(Player, Mode, Value)
	end)
end

function TagHumanoid(humanoid, player)
	local Creator_Tag = Instance.new("ObjectValue")
	Creator_Tag.Name = "creator"
	Creator_Tag.Value = player
	Debris:AddItem(Creator_Tag, 2)
	Creator_Tag.Parent = humanoid
end

function UntagHumanoid(humanoid)
	for i, v in pairs(humanoid:GetChildren()) do
		if v:IsA("ObjectValue") and v.Name == "creator" then
			v:Destroy()
		end
	end
end

function FindCharacterAncestor(Parent)
	if Parent and Parent ~= game:GetService("Workspace") then
		local humanoid = Parent:FindFirstChild("Humanoid")
		if humanoid then
			return Parent, humanoid
		else
			return FindCharacterAncestor(Parent.Parent)
		end
	end
	return nil
end

function GetTransparentsRecursive(Parent, PartsTable)
	local PartsTable = (PartsTable or {})
	for i, v in pairs(Parent:GetChildren()) do
		local TransparencyExists = false
		pcall(function()
			local Transparency = v["Transparency"]
			if Transparency then
				TransparencyExists = true
			end
		end)
		if TransparencyExists then
			table.insert(PartsTable, v)
		end
		GetTransparentsRecursive(v, PartsTable)
	end
	return PartsTable
end

function SelectionBoxify(Object)
	local SelectionBox = Instance.new("SelectionBox")
	SelectionBox.Adornee = Object
	SelectionBox.Color = BrickColor.new("Toothpaste")
	SelectionBox.Parent = Object
	return SelectionBox
end

local function Light(Object)
	local Light = PointLight:Clone()
	Light.Range = (Light.Range + 2)
	Light.Parent = Object
end

function FadeOutObjects(Objects, FadeIncrement)
	repeat
		local LastObject = nil
		for i, v in pairs(Objects) do
			v.Transparency = (v.Transparency + FadeIncrement)
			LastObject = v
		end
		wait()
	until LastObject.Transparency >= 1 or not LastObject
end

local ReplicatedStorage = game:GetService("ReplicatedStorage")

-- Create or get the event for tracking deaths
local PlayerDiedEvent = ReplicatedStorage:FindFirstChild("PlayerDiedEvent") 
if not PlayerDiedEvent then
	PlayerDiedEvent = Instance.new("BindableEvent")
	PlayerDiedEvent.Name = "PlayerDiedEvent"
	PlayerDiedEvent.Parent = ReplicatedStorage
end

function Dematerialize(character, humanoid, FirstPart)
	if not character or not humanoid then
		return
	end

	-- Mark the player as dead (useful for the Point Manager & Spawn Manager)
	local player = game.Players:GetPlayerFromCharacter(character)
	if player then
		print(player.Name .. " has been dematerialized!")
		PlayerDiedEvent:Fire(player) -- Notify other scripts
	end

	-- Disable movement
	humanoid.WalkSpeed = 0

	local Parts = {}

	for i, v in pairs(character:GetChildren()) do
		if v:IsA("BasePart") then
			v.Anchored = true
			table.insert(Parts, v)
		elseif v:IsA("LocalScript") or v:IsA("Script") then
			v:Destroy()
		end
	end

	local SelectionBoxes = {}

	local FirstSelectionBox = SelectionBoxify(FirstPart)
	Light(FirstPart)
	wait(0)

	for i, v in pairs(Parts) do
		if v ~= FirstPart then
			table.insert(SelectionBoxes, SelectionBoxify(v))
			Light(v)
		end
	end

	local ObjectsWithTransparency = GetTransparentsRecursive(character)
	FadeOutObjects(ObjectsWithTransparency, 0.1)

	wait(0.5)

	character:BreakJoints()
	humanoid.Health = 0

	Debris:AddItem(character, 2)

	local FadeIncrement = 0.05
	Delay(0.2, function()
		FadeOutObjects({FirstSelectionBox}, FadeIncrement)
		if character and character.Parent then
			character:Destroy()
		end
	end)
	FadeOutObjects(SelectionBoxes, FadeIncrement)
end




function Touched(Projectile, Hit)
	if not Hit or not Hit.Parent then return end

	local character, humanoid = FindCharacterAncestor(Hit)

	if character and humanoid and character ~= Character then
		-- If it hits a humanoid, dematerialize them
		if Projectile then
			local HitFadeSound = Projectile:FindFirstChild(Sounds.HitFade.Name)
			local torso = humanoid.Torso
			if HitFadeSound and torso then
				HitFadeSound.Parent = torso
				HitFadeSound:Play()
			end
		end
		Dematerialize(character, humanoid, Hit)

		-- Destroy projectile after hitting a humanoid
		if Projectile and Projectile.Parent then
			Projectile:Destroy()
		end
	else
		-- If the projectile hits a non-humanoid object, bounce off of it
		local bodyVelocity = Projectile:FindFirstChild("BodyVelocity")
		if not bodyVelocity then return end

		-- Get the actual surface normal from the collision
		local hitNormal = Hit.CFrame:VectorToObjectSpace((Projectile.Position - Hit.Position).unit)

		-- Correct bounce calculation
		local currentVelocity = bodyVelocity.Velocity
		local reflectedVelocity = currentVelocity - 2 * (currentVelocity:Dot(hitNormal)) * hitNormal

		-- Ensure it doesn't climb too high by limiting Y velocity
		reflectedVelocity = Vector3.new(reflectedVelocity.X, math.clamp(reflectedVelocity.Y, -2, 2), reflectedVelocity.Z)

		-- Apply new velocity
		bodyVelocity.Velocity = reflectedVelocity * 0.99 -- Reduce speed slightly

		-- Track bounces
		if not Projectile:FindFirstChild("BounceCount") then
			local BounceCount = Instance.new("IntValue")
			BounceCount.Name = "BounceCount"
			BounceCount.Value = 0
			BounceCount.Parent = Projectile
		end

		Projectile.BounceCount.Value = Projectile.BounceCount.Value + 1

		-- Destroy projectile after 5 bounces
		if Projectile.BounceCount.Value >= 5 then
			Projectile:Destroy()
		end
	end
end


function Equipped()
	Character = Tool.Parent
	Player = Players:GetPlayerFromCharacter(Character)
	Humanoid = Character:FindFirstChild("Humanoid")
	if not Player or not Humanoid or Humanoid.Health == 0 then
		return
	end

	-- Get the player's humanoid root part
	local RootPart = Character:FindFirstChild("HumanoidRootPart")
	if not RootPart then return end

	-- Get the look direction while keeping the gun's height unchanged
	local LookDirection = RootPart.CFrame.LookVector
	local FixedHeight = Handle.Position.Y -- Keep the gun at its original height
	local FlatDirection = Vector3.new(LookDirection.X, 0.7, LookDirection.Z).unit

	-- Maintain the gun's height while pointing forward
	local NewGunPosition = Vector3.new(Handle.Position.X, FixedHeight, Handle.Position.Z)
	Tool.Handle.CFrame = CFrame.new(NewGunPosition, NewGunPosition + FlatDirection)

	-- Create attachments for the aiming beam
	local Attachment0 = Instance.new("Attachment")
	local Attachment1 = Instance.new("Attachment")
	Attachment0.Parent = Handle
	Attachment1.Parent = Handle

	-- Set position dynamically to extend forward from the gun
	Attachment0.Position = NozzleOffset
	Attachment1.Position = NozzleOffset + Vector3.new(0, 0.5, -60) -- Extend straight forward

	-- Create the beam
	local Beam = Instance.new("Beam")
	Beam.Name = "AimingBeam"
	Beam.Attachment0 = Attachment0
	Beam.Attachment1 = Attachment1
	Beam.Color = ColorSequence.new(Color3.new(0, 1, 1)) -- Cyan
	Beam.Width0 = 5 -- Adjusted for a thick laser effect
	Beam.Width1 = 5
	Beam.Brightness = 10 -- Lowered for a balanced glow
	Beam.LightEmission = 10 -- Lowered to prevent over-glow
	Beam.Parent = Tool
end



function Activated(target)
	if Tool.Enabled and Humanoid.Health > 0 then
		Tool.Enabled = false

		InvokeClient("PlaySound", Sounds.Fire)

		-- Get the position & forward direction from the Handle itself
		local HandleCFrame = Handle.CFrame
		local FiringPoint = HandleCFrame.Position + HandleCFrame:VectorToWorldSpace(NozzleOffset)

		-- Get the tool's facing direction without vertical tilt
		local LookDirection = HandleCFrame.LookVector
		local FlatDirection = Vector3.new(LookDirection.X,LookDirection.Y , LookDirection.Z).unit -- Keep horizontal

		-- Correct rotation before spawning the projectile
		local ProjectileCFrame = CFrame.new(FiringPoint, FiringPoint + FlatDirection)

		-- Create projectile
		local LaserShotClone = BaseShot:Clone()
		LaserShotClone.CFrame = ProjectileCFrame
		LaserShotClone.Parent = game.Workspace

		-- Apply velocity for forward movement
		local BodyVelocity = Instance.new("BodyVelocity")
		BodyVelocity.Velocity = FlatDirection * Speed -- Moves straight horizontally
		BodyVelocity.MaxForce = Vector3.new(math.huge, math.huge, math.huge) -- Prevents drag
		BodyVelocity.Parent = LaserShotClone

		-- Handle projectile collision
		LaserShotClone.Touched:Connect(function(Hit)
			if not Hit or not Hit.Parent then return end
			Touched(LaserShotClone, Hit)
		end)

		-- Destroy projectile after set time (prevents infinite projectiles)
		Debris:AddItem(LaserShotClone, 15) 

		-- Reload and re-enable tool
		InvokeClient("PlaySound", Sounds.Reload)
		wait(0)
		Tool.Enabled = true
	end
end




function Unequipped()

end

BaseShot = Instance.new("Part")
BaseShot.Name = "Effect"
BaseShot.BrickColor = BrickColor.new("Toothpaste")
BaseShot.Material = Enum.Material.Plastic
BaseShot.Shape = Enum.PartType.Ball -- 🔴 Change shape to Ball
BaseShot.TopSurface = Enum.SurfaceType.Smooth
BaseShot.BottomSurface = Enum.SurfaceType.Smooth
BaseShot.Size = Vector3.new(0.5, 0.5, 0.5) -- ⚫ Make it a perfect sphere
BaseShot.CanCollide = false
BaseShot.Locked = true
SelectionBoxify(BaseShot)
Light(BaseShot)
BaseShotSound = Sounds.HitFade:Clone()
BaseShotSound.Parent = BaseShot

Tool.Equipped:connect(Equipped)
Tool.Unequipped:connect(Unequipped)

  -  Edit
  07:37:46.136  StarterGui.ScreenGui.Countdown.timer:
local timer = script.Parent
local seconds = 10   -- Start with 0 seconds

-- Function to update the timer text
local function updateTimer()
	if seconds <= 0 then
			-- When seconds are 0, stop the timer
			seconds = 0
			timer.Text = "Start"
			return
	else
		seconds = seconds - 1
	end
		--format text
		timer.Text = tostring(seconds)
	
end

-- Repeat the update every second
while seconds > 0 do
	updateTimer()
	wait(1)
end

-- Final timer display when it reaches 0
timer.Text = "Start"
wait(0.5)
timer.Text=""
wait(2)
timer.Text="Press 1 to equip gun"
wait(10)
timer.Text=""




  -  Edit
  07:37:46.136  CoreGui.RobloxGui.Modules.PromptCreator:


  -  Edit
  07:37:46.136  CoreGui.RobloxGui.Modules.AggregatedData:


  -  Edit
  07:37:46.136  CoreGui.RobloxGui.Modules.InGameMenuInit:


  -  Edit
  07:37:46.136  CoreGui.RobloxGui.Modules.ErrorTestSets:


  -  Edit
  07:37:46.136  CoreGui.RobloxGui.Modules.Chrome:


  -  Edit
  07:37:46.136  CoreGui.RobloxGui.Modules.Chrome.ChromeShared.Analytics:


  -  Edit
  07:37:46.136  CoreGui.RobloxGui.Modules.Chrome.ChromeShared.Analytics.ChromeAnalytics:


  -  Edit
  07:37:46.136  CoreGui.RobloxGui.Modules.Chrome.ChromeShared.Analytics.OcclusionMetricsManager:


  -  Edit
  07:37:46.137  CoreGui.RobloxGui.Modules.Chrome.ChromeShared.Analytics.Tracker:


  -  Edit
  07:37:46.137  CoreGui.RobloxGui.Modules.Chrome.ChromeShared.Hooks.useChromeMenuItems:


  -  Edit
  07:37:46.137  CoreGui.RobloxGui.Modules.Chrome.ChromeShared.Hooks.useChromeMenuStatus:


  -  Edit
  07:37:46.137  CoreGui.RobloxGui.Modules.Chrome.ChromeShared.Hooks.useChromePeekId:


  -  Edit
  07:37:46.137  CoreGui.RobloxGui.Modules.Chrome.ChromeShared.Hooks.useChromePeekItems:


  -  Edit
  07:37:46.137  CoreGui.RobloxGui.Modules.Chrome.ChromeShared.Hooks.useChromeWindowItems:


  -  Edit
  07:37:46.137  CoreGui.RobloxGui.Modules.Chrome.ChromeShared.Hooks.useCoreGuiEnabled:


  -  Edit
  07:37:46.137  CoreGui.RobloxGui.Modules.Chrome.ChromeShared.Hooks.useHealthBinding:


  -  Edit
  07:37:46.137  CoreGui.RobloxGui.Modules.Chrome.ChromeShared.Hooks.useMappedObservableValue:


  -  Edit
  07:37:46.137  CoreGui.RobloxGui.Modules.Chrome.ChromeShared.Hooks.useMappedObservableValueBinding:


  -  Edit
  07:37:46.137  CoreGui.RobloxGui.Modules.Chrome.ChromeShared.Hooks.useMappedSignal:


  -  Edit
  07:37:46.137  CoreGui.RobloxGui.Modules.Chrome.ChromeShared.Hooks.useNotificationCount:


  -  Edit
  07:37:46.137  CoreGui.RobloxGui.Modules.Chrome.ChromeShared.Hooks.useObservableValue:


  -  Edit
  07:37:46.137  CoreGui.RobloxGui.Modules.Chrome.ChromeShared.Hooks.useTimeHysteresis:


  -  Edit
  07:37:46.137  CoreGui.RobloxGui.Modules.Chrome.ChromeShared.Hooks.useTopbarInsetHeight:


  -  Edit
  07:37:46.137  CoreGui.RobloxGui.Modules.Chrome.ChromeShared.Hooks.useWindowSize:


  -  Edit
  07:37:46.138  CoreGui.RobloxGui.Modules.Chrome.ChromeShared.Hooks.useWindowSizeIsLarge:


  -  Edit
  07:37:46.138  CoreGui.RobloxGui.Modules.Chrome.ChromeShared.Peek:


  -  Edit
  07:37:46.138  CoreGui.RobloxGui.Modules.Chrome.ChromeShared.Peek.IntegrationRow:


  -  Edit
  07:37:46.138  CoreGui.RobloxGui.Modules.Chrome.ChromeShared.Peek.Peek:


  -  Edit
  07:37:46.138  CoreGui.RobloxGui.Modules.Chrome.ChromeShared.Service:


  -  Edit
  07:37:46.138  CoreGui.RobloxGui.Modules.Chrome.ChromeShared.Service.ChromeService:


  -  Edit
  07:37:46.138  CoreGui.RobloxGui.Modules.Chrome.ChromeShared.Service.ChromeUtils:


  -  Edit
  07:37:46.138  CoreGui.RobloxGui.Modules.Chrome.ChromeShared.Service.ContainerSlotSignal:


  -  Edit
  07:37:46.138  CoreGui.RobloxGui.Modules.Chrome.ChromeShared.Service.KeepOutAreasHandler:


  -  Edit
  07:37:46.138  CoreGui.RobloxGui.Modules.Chrome.ChromeShared.Service.LocalStore:


  -  Edit
  07:37:46.138  CoreGui.RobloxGui.Modules.Chrome.ChromeShared.Service.PeekService:


  -  Edit
  07:37:46.138  CoreGui.RobloxGui.Modules.Chrome.ChromeShared.Service.Types:


  -  Edit
  07:37:46.138  CoreGui.RobloxGui.Modules.Chrome.ChromeShared.Service.ViewportUtil:


  -  Edit
  07:37:46.138  CoreGui.RobloxGui.Modules.Chrome.ChromeShared.Service.WindowSizeSignal:


  -  Edit
  07:37:46.138  CoreGui.RobloxGui.Modules.Chrome.ChromeShared.Unibar:


  -  Edit
  07:37:46.139  CoreGui.RobloxGui.Modules.Chrome.ChromeShared.Unibar.ComponentHosts.ContainerHost:


  -  Edit
  07:37:46.139  CoreGui.RobloxGui.Modules.Chrome.ChromeShared.Unibar.ComponentHosts.IconHost:


  -  Edit
  07:37:46.139  CoreGui.RobloxGui.Modules.Chrome.ChromeShared.Unibar.ComponentHosts.WindowHost:


  -  Edit
  07:37:46.139  CoreGui.RobloxGui.Modules.Chrome.ChromeShared.Unibar.Constants:


  -  Edit
  07:37:46.139  CoreGui.RobloxGui.Modules.Chrome.ChromeShared.Unibar.SubMenu:


  -  Edit
  07:37:46.139  CoreGui.RobloxGui.Modules.Chrome.ChromeShared.Unibar.SubMenuContext:


  -  Edit
  07:37:46.139  CoreGui.RobloxGui.Modules.Chrome.ChromeShared.Unibar.UnibarMenu:


  -  Edit
  07:37:46.139  CoreGui.RobloxGui.Modules.Chrome.ChromeShared.Unibar.UnibarMenuWrapper:


  -  Edit
  07:37:46.139  CoreGui.RobloxGui.Modules.Chrome.ChromeShared.Unibar.WindowManager:


  -  Edit
  07:37:46.139  CoreGui.RobloxGui.Modules.Chrome.ChromeShared.Utility.debounce:


  -  Edit
  07:37:46.139  CoreGui.RobloxGui.Modules.Chrome.ChromeShared.Utility.shouldRejectMultiTouch:


  -  Edit
  07:37:46.139  CoreGui.RobloxGui.Modules.Chrome.ConfigureChrome:


  -  Edit
  07:37:46.139  CoreGui.RobloxGui.Modules.Chrome.Enabled:


  -  Edit
  07:37:46.139  CoreGui.RobloxGui.Modules.Chrome.Flags.GetFFlagAddChromeActivatedEvents:


  -  Edit
  07:37:46.139  CoreGui.RobloxGui.Modules.Chrome.Flags.GetFFlagAppChatInExpConnectIconEnableSquadIndicator:


  -  Edit
  07:37:46.139  CoreGui.RobloxGui.Modules.Chrome.Flags.GetFFlagAppChatInExpConnectIconRedesign:


  -  Edit
  07:37:46.139  CoreGui.RobloxGui.Modules.Chrome.Flags.GetFFlagChromeSelfViewIgnoreCoreGui:


  -  Edit
  07:37:46.140  CoreGui.RobloxGui.Modules.Chrome.Flags.GetFFlagChromeSupportSocialService:


  -  Edit
  07:37:46.140  CoreGui.RobloxGui.Modules.Chrome.Flags.GetFFlagChromeTrackWindowPosition:


  -  Edit
  07:37:46.140  CoreGui.RobloxGui.Modules.Chrome.Flags.GetFFlagChromeTrackWindowStatus:


  -  Edit
  07:37:46.140  CoreGui.RobloxGui.Modules.Chrome.Flags.GetFFlagDisableSelfViewDefaultOpen:


  -  Edit
  07:37:46.140  CoreGui.RobloxGui.Modules.Chrome.Flags.GetFFlagEnableSongbirdInChrome:


  -  Edit
  07:37:46.140  CoreGui.RobloxGui.Modules.Chrome.Flags.GetFFlagEnableSongbirdPeek:


  -  Edit
  07:37:46.140  CoreGui.RobloxGui.Modules.Chrome.Flags.GetFFlagFixCapturesAvailability:


  -  Edit
  07:37:46.140  CoreGui.RobloxGui.Modules.Chrome.Flags.GetFFlagFixMicSelection:


  -  Edit
  07:37:46.140  CoreGui.RobloxGui.Modules.Chrome.Flags.GetFFlagFixShowMusicFtuxTooltipWithoutConnect:


  -  Edit
  07:37:46.140  CoreGui.RobloxGui.Modules.Chrome.Flags.GetFFlagShouldShowMusicFtuxTooltip:


  -  Edit
  07:37:46.140  CoreGui.RobloxGui.Modules.Chrome.Flags.GetFFlagShouldShowMusicFtuxTooltipXTimes:


  -  Edit
  07:37:46.140  CoreGui.RobloxGui.Modules.Chrome.Flags.GetFFlagTweakedMicPinning:


  -  Edit
  07:37:46.140  CoreGui.RobloxGui.Modules.Chrome.Flags.GetFFlagUnpinUnavailable:


  -  Edit
  07:37:46.140  CoreGui.RobloxGui.Modules.Chrome.Flags.GetFFlagUseNewUnibarIcon:


  -  Edit
  07:37:46.140  CoreGui.RobloxGui.Modules.Chrome.Flags.GetFIntMusicFtuxDismissDelayMs:


  -  Edit
  07:37:46.140  CoreGui.RobloxGui.Modules.Chrome.Flags.GetFIntMusicFtuxShowDelayMs:


  -  Edit
  07:37:46.141  CoreGui.RobloxGui.Modules.Chrome.Flags.GetFIntRobloxConnectFtuxDismissDelayMs:


  -  Edit
  07:37:46.141  CoreGui.RobloxGui.Modules.Chrome.Flags.GetFIntRobloxConnectFtuxShowDelayMs:


  -  Edit
  07:37:46.141  CoreGui.RobloxGui.Modules.Chrome.Flags.GetFStringConnectTooltipLocalStorageKey:


  -  Edit
  07:37:46.141  CoreGui.RobloxGui.Modules.Chrome.Flags.GetFStringMusicTooltipLocalStorageKey:


  -  Edit
  07:37:46.141  CoreGui.RobloxGui.Modules.Chrome.Flags.GetFStringMusicTooltipLocalStorageKey_v2:


  -  Edit
  07:37:46.141  CoreGui.RobloxGui.Modules.Chrome.Flags.GetShouldShowPlatformChatBasedOnPolicy:


  -  Edit
  07:37:46.141  CoreGui.RobloxGui.Modules.Chrome.Integrations:


  -  Edit
  07:37:46.141  CoreGui.RobloxGui.Modules.Chrome.Integrations.Captures.CapturesEntrypoint:


  -  Edit
  07:37:46.141  CoreGui.RobloxGui.Modules.Chrome.Integrations.Chat:


  -  Edit
  07:37:46.141  CoreGui.RobloxGui.Modules.Chrome.Integrations.ChromeIntegrationUtils:


  -  Edit
  07:37:46.141  CoreGui.RobloxGui.Modules.Chrome.Integrations.CommonFtuxTooltip:


  -  Edit
  07:37:46.141  CoreGui.RobloxGui.Modules.Chrome.Integrations.CommonIcon:


  -  Edit
  07:37:46.141  CoreGui.RobloxGui.Modules.Chrome.Integrations.Connect.ConnectIcon:


  -  Edit
  07:37:46.142  CoreGui.RobloxGui.Modules.Chrome.Integrations.Connect.ConnectIconDropdown:


  -  Edit
  07:37:46.142  CoreGui.RobloxGui.Modules.Chrome.Integrations.Connect.ConnectIconUnibar:


  -  Edit
  07:37:46.142  CoreGui.RobloxGui.Modules.Chrome.Integrations.Connect.isConnectDropdownEnabled:


  -  Edit
  07:37:46.142  CoreGui.RobloxGui.Modules.Chrome.Integrations.Connect.isConnectUnibarEnabled:


  -  Edit
  07:37:46.142  CoreGui.RobloxGui.Modules.Chrome.Integrations.Connect.registerConnectIntegration:


  -  Edit
  07:37:46.142  CoreGui.RobloxGui.Modules.Chrome.Integrations.DummyContainer:


  -  Edit
  07:37:46.142  CoreGui.RobloxGui.Modules.Chrome.Integrations.DummyWindow:


  -  Edit
  07:37:46.142  CoreGui.RobloxGui.Modules.Chrome.Integrations.DummyWindow2:


  -  Edit
  07:37:46.142  CoreGui.RobloxGui.Modules.Chrome.Integrations.FtuxTooltipAnchor:


  -  Edit
  07:37:46.142  CoreGui.RobloxGui.Modules.Chrome.Integrations.JoinVoice:


  -  Edit
  07:37:46.142  CoreGui.RobloxGui.Modules.Chrome.Integrations.MusicUtility.Constants:


  -  Edit
  07:37:46.142  CoreGui.RobloxGui.Modules.Chrome.Integrations.MusicUtility.LikeButton:


  -  Edit
  07:37:46.143  CoreGui.RobloxGui.Modules.Chrome.Integrations.MusicUtility.MusicEntrypoint:


  -  Edit
  07:37:46.143  CoreGui.RobloxGui.Modules.Chrome.Integrations.MusicUtility.MusicIcon:


  -  Edit
  07:37:46.143  CoreGui.RobloxGui.Modules.Chrome.Integrations.MusicUtility.MusicPlayingIcon:


  -  Edit
  07:37:46.143  CoreGui.RobloxGui.Modules.Chrome.Integrations.MusicUtility.OverflowButton:


  -  Edit
  07:37:46.143  CoreGui.RobloxGui.Modules.Chrome.Integrations.MusicUtility.PeekTrackDetails:


  -  Edit
  07:37:46.143  CoreGui.RobloxGui.Modules.Chrome.Integrations.MusicUtility.shouldUseSmallPeek:


  -  Edit
  07:37:46.143  CoreGui.RobloxGui.Modules.Chrome.Integrations.MusicUtility.Songbird:


  -  Edit
  07:37:46.143  CoreGui.RobloxGui.Modules.Chrome.Integrations.OverflowMenu:


  -  Edit
  07:37:46.143  CoreGui.RobloxGui.Modules.Chrome.Integrations.Party.Constants:


  -  Edit
  07:37:46.143  CoreGui.RobloxGui.Modules.Chrome.Integrations.Party.PartyMic:


  -  Edit
  07:37:46.143  CoreGui.RobloxGui.Modules.Chrome.Integrations.Party.PartyMicBinder:


  -  Edit
  07:37:46.143  CoreGui.RobloxGui.Modules.Chrome.Integrations.Party.PartyMicIcon:


  -  Edit
  07:37:46.143  CoreGui.RobloxGui.Modules.Chrome.Integrations.Party.usePartyIcon:


  -  Edit
  07:37:46.143  CoreGui.RobloxGui.Modules.Chrome.Integrations.PeekCloseButton:


  -  Edit
  07:37:46.144  CoreGui.RobloxGui.Modules.Chrome.Integrations.RedVoiceDot:


  -  Edit
  07:37:46.144  CoreGui.RobloxGui.Modules.Chrome.Integrations.SelfieView:


  -  Edit
  07:37:46.144  CoreGui.RobloxGui.Modules.Chrome.Integrations.ToggleMic:


  -  Edit
  07:37:46.144  CoreGui.RobloxGui.Modules.Chrome.Integrations.TrustAndSafety:


  -  Edit
  07:37:46.144  CoreGui.RobloxGui.Modules.Chrome.Integrations.UnibarMenuToggleButton:


  -  Edit
  07:37:46.144  CoreGui.RobloxGui.Modules.Chrome.Integrations.UnibarMenuToggleButtonV2:


  -  Edit
  07:37:46.144  CoreGui.RobloxGui.Modules.Chrome.Service:


  -  Edit
  07:37:46.144  CoreGui.RobloxGui.Modules.AbuseReportMenu:


  -  Edit
  07:37:46.144  CoreGui.RobloxGui.Modules.AbuseReportMenu.Analytics.collectAnalyticsParameters:


  -  Edit
  07:37:46.144  CoreGui.RobloxGui.Modules.AbuseReportMenu.Analytics.ReportAbuseAnalytics:


  -  Edit
  07:37:46.144  CoreGui.RobloxGui.Modules.AbuseReportMenu.Components.AbuseReportMenuNew:


  -  Edit
  07:37:46.144  CoreGui.RobloxGui.Modules.AbuseReportMenu.Components.Constants:


  -  Edit
  07:37:46.144  CoreGui.RobloxGui.Modules.AbuseReportMenu.Components.Containers.ReportExperienceMenuItemsContainer:


  -  Edit
  07:37:46.144  CoreGui.RobloxGui.Modules.AbuseReportMenu.Components.Containers.ReportPersonMenuItemsContainer:


  -  Edit
  07:37:46.144  CoreGui.RobloxGui.Modules.AbuseReportMenu.Components.createCleanup:


  -  Edit
  07:37:46.145  CoreGui.RobloxGui.Modules.AbuseReportMenu.Components.getMenuItemDimensions:


  -  Edit
  07:37:46.145  CoreGui.RobloxGui.Modules.AbuseReportMenu.Components.MenuItems.ButtonReportMenuItem:


  -  Edit
  07:37:46.145  CoreGui.RobloxGui.Modules.AbuseReportMenu.Components.MenuItems.DropdownReportMenuItem:


  -  Edit
  07:37:46.145  CoreGui.RobloxGui.Modules.AbuseReportMenu.Components.MenuItems.FreeCommentsMenuItem:


  -  Edit
  07:37:46.145  CoreGui.RobloxGui.Modules.AbuseReportMenu.Components.MenuItems.ModalBasedSelectorMenuItem:


  -  Edit
  07:37:46.145  CoreGui.RobloxGui.Modules.AbuseReportMenu.Components.MenuItems.ReportMenuItem:


  -  Edit
  07:37:46.145  CoreGui.RobloxGui.Modules.AbuseReportMenu.Components.ModalBasedSelector:


  -  Edit
  07:37:46.145  CoreGui.RobloxGui.Modules.AbuseReportMenu.Components.ModalBasedSelectorDialogController:


  -  Edit
  07:37:46.145  CoreGui.RobloxGui.Modules.AbuseReportMenu.Components.ModalBaseSelectorDialog:


  -  Edit
  07:37:46.145  CoreGui.RobloxGui.Modules.AbuseReportMenu.Components.ReportTextEntry:


  -  Edit
  07:37:46.145  CoreGui.RobloxGui.Modules.AbuseReportMenu.Components.ReportTypeSelector:


  -  Edit
  07:37:46.145  CoreGui.RobloxGui.Modules.AbuseReportMenu.Components.SelectInSceneReportMenu:


  -  Edit
  07:37:46.145  CoreGui.RobloxGui.Modules.AbuseReportMenu.Components.Types:


  -  Edit
  07:37:46.145  CoreGui.RobloxGui.Modules.AbuseReportMenu.Flags.GetFFlagAbuseReportShouldUseCanDisplayPeoplesUsernamesAppPolicy:


  -  Edit
  07:37:46.145  CoreGui.RobloxGui.Modules.AbuseReportMenu.Flags.GetFFlagAbuseReportTabHideShowRetimingEnabled:


  -  Edit
  07:37:46.146  CoreGui.RobloxGui.Modules.AbuseReportMenu.Flags.GetFFlagGetHumanoidDescriptionUpdates:


  -  Edit
  07:37:46.146  CoreGui.RobloxGui.Modules.AbuseReportMenu.Flags.GetFFlagModalSelectorCloseButton:


  -  Edit
  07:37:46.146  CoreGui.RobloxGui.Modules.AbuseReportMenu.Flags.GetFFlagTranslatorUseInAbuseMethods:


  -  Edit
  07:37:46.146  CoreGui.RobloxGui.Modules.AbuseReportMenu.Hooks.useCaptureScreenshot:


  -  Edit
  07:37:46.146  CoreGui.RobloxGui.Modules.AbuseReportMenu.Hooks.useHideForScreenshot:


  -  Edit
  07:37:46.146  CoreGui.RobloxGui.Modules.AbuseReportMenu.Hooks.useReportAnythingWithScreenshot:


  -  Edit
  07:37:46.146  CoreGui.RobloxGui.Modules.AbuseReportMenu.IXP.TnSIXPWrapper:


  -  Edit
  07:37:46.146  CoreGui.RobloxGui.Modules.AbuseReportMenu.jest.config:


  -  Edit
  07:37:46.146  CoreGui.RobloxGui.Modules.AbuseReportMenu.MenuConfigs.Experience.AbuseReasonMenuConfig:


  -  Edit
  07:37:46.146  CoreGui.RobloxGui.Modules.AbuseReportMenu.MenuConfigs.Experience.FreeFormCommentMenuConfig:


  -  Edit
  07:37:46.146  CoreGui.RobloxGui.Modules.AbuseReportMenu.MenuConfigs.Experience.OptionalAttachScreenshotMenuConfig:


  -  Edit
  07:37:46.146  CoreGui.RobloxGui.Modules.AbuseReportMenu.MenuConfigs.Experience.ReportExperienceMenuItemConfigList:


  -  Edit
  07:37:46.146  CoreGui.RobloxGui.Modules.AbuseReportMenu.MenuConfigs.Experience.SubmitReportButtonMenuConfig:


  -  Edit
  07:37:46.146  CoreGui.RobloxGui.Modules.AbuseReportMenu.MenuConfigs.getMenuItemsFromConfigs:


  -  Edit
  07:37:46.146  CoreGui.RobloxGui.Modules.AbuseReportMenu.MenuConfigs.getToastMessageFromAbuseReason:


  -  Edit
  07:37:46.146  CoreGui.RobloxGui.Modules.AbuseReportMenu.MenuConfigs.Players.AbuseReasonMenuConfig:


  -  Edit
  07:37:46.146  CoreGui.RobloxGui.Modules.AbuseReportMenu.MenuConfigs.Players.AbuseReasonModalSelectorMenuConfig:


  -  Edit
  07:37:46.147  CoreGui.RobloxGui.Modules.AbuseReportMenu.MenuConfigs.Players.FreeFormCommentMenuConfig:


  -  Edit
  07:37:46.147  CoreGui.RobloxGui.Modules.AbuseReportMenu.MenuConfigs.Players.MethodOfAbuseModalMenuConfig:


  -  Edit
  07:37:46.147  CoreGui.RobloxGui.Modules.AbuseReportMenu.MenuConfigs.Players.OptionalAttachScreenshotMenuConfig:


  -  Edit
  07:37:46.147  CoreGui.RobloxGui.Modules.AbuseReportMenu.MenuConfigs.Players.PlayerModalSelectorMenuConfig:


  -  Edit
  07:37:46.147  CoreGui.RobloxGui.Modules.AbuseReportMenu.MenuConfigs.Players.ReportPlayerMenuItemConfigList:


  -  Edit
  07:37:46.147  CoreGui.RobloxGui.Modules.AbuseReportMenu.MenuConfigs.Players.SubmitReportButtonMenuConfig:


  -  Edit
  07:37:46.147  CoreGui.RobloxGui.Modules.AbuseReportMenu.Reducers.analyticsReducer:


  -  Edit
  07:37:46.147  CoreGui.RobloxGui.Modules.AbuseReportMenu.Reducers.reportAnythingReducer:


  -  Edit
  07:37:46.147  CoreGui.RobloxGui.Modules.AbuseReportMenu.Reducers.reportExperienceUIStateReducer:


  -  Edit
  07:37:46.147  CoreGui.RobloxGui.Modules.AbuseReportMenu.Reducers.reportPersonUIStateReducer:


  -  Edit
  07:37:46.147  CoreGui.RobloxGui.Modules.AbuseReportMenu.ReportAnything.Components.AnnotationModal:


  -  Edit
  07:37:46.147  CoreGui.RobloxGui.Modules.AbuseReportMenu.ReportAnything.Components.Divider:


  -  Edit
  07:37:46.147  CoreGui.RobloxGui.Modules.AbuseReportMenu.ReportAnything.Components.RestartScreenshotDialog:


  -  Edit
  07:37:46.147  CoreGui.RobloxGui.Modules.AbuseReportMenu.ReportAnything.Components.ScreenshotDialog:


  -  Edit
  07:37:46.147  CoreGui.RobloxGui.Modules.AbuseReportMenu.ReportAnything.Components.ScreenshotDialogLandscapeModeHeader:


  -  Edit
  07:37:46.147  CoreGui.RobloxGui.Modules.AbuseReportMenu.ReportAnything.Components.ScreenshotDialogPortraitModeHeader:


  -  Edit
  07:37:46.147  CoreGui.RobloxGui.Modules.AbuseReportMenu.ReportAnything.Components.ScreenshotFlowStepHandler:


  -  Edit
  07:37:46.147  CoreGui.RobloxGui.Modules.AbuseReportMenu.ReportAnything.Components.ScreenshotFlowStepHandlerContainer:


  -  Edit
  07:37:46.148  CoreGui.RobloxGui.Modules.AbuseReportMenu.ReportAnything.Components.ScreenshotHighlighter:


  -  Edit
  07:37:46.148  CoreGui.RobloxGui.Modules.AbuseReportMenu.ReportAnything.Components.ScreenshotReviewDialog:


  -  Edit
  07:37:46.148  CoreGui.RobloxGui.Modules.AbuseReportMenu.ReportAnything.Resources.Assets:


  -  Edit
  07:37:46.148  CoreGui.RobloxGui.Modules.AbuseReportMenu.ReportAnything.Resources.Constants:


  -  Edit
  07:37:46.148  CoreGui.RobloxGui.Modules.AbuseReportMenu.ReportAnything.Utility.AbuseReportBuilder:


  -  Edit
  07:37:46.148  CoreGui.RobloxGui.Modules.AbuseReportMenu.ReportAnything.Utility.GetHumanoidDescription:


  -  Edit
  07:37:46.148  CoreGui.RobloxGui.Modules.AbuseReportMenu.ReportAnything.Utility.ReportAnythingAnalytics:


  -  Edit
  07:37:46.148  CoreGui.RobloxGui.Modules.AbuseReportMenu.ReportAnything.Utility.VirtualKeyboardMonitor:


  -  Edit
  07:37:46.148  CoreGui.RobloxGui.Modules.AbuseReportMenu.Utility.getAvailableMethodsOfAbuse:


  -  Edit
  07:37:46.148  CoreGui.RobloxGui.Modules.AbuseReportMenu.Utility.getMenuItemSizings:


  -  Edit
  07:37:46.148  CoreGui.RobloxGui.Modules.AbuseReportMenu.Utility.handlePreselectedPlayer:


  -  Edit
  07:37:46.148  CoreGui.RobloxGui.Modules.AbuseReportMenu.Utility.isInSelectInSceneReportMenuOverrideList:


  -  Edit
  07:37:46.148  CoreGui.RobloxGui.Modules.AbuseReportMenu.Utility.isShowSelectInSceneReportMenu:


  -  Edit
  07:37:46.148  CoreGui.RobloxGui.Modules.InGameChat.BubbleChat.Actions.AddMessage:


  -  Edit
  07:37:46.148  CoreGui.RobloxGui.Modules.InGameChat.BubbleChat.Actions.AddMessageFromEvent:


  -  Edit
  07:37:46.149  CoreGui.RobloxGui.Modules.InGameChat.BubbleChat.Actions.AddMessageWithTimeout:


  -  Edit
  07:37:46.149  CoreGui.RobloxGui.Modules.InGameChat.BubbleChat.Actions.BubbleChatEnabledChanged:


  -  Edit
  07:37:46.149  CoreGui.RobloxGui.Modules.InGameChat.BubbleChat.Actions.RemoveMessage:


  -  Edit
  07:37:46.149  CoreGui.RobloxGui.Modules.InGameChat.BubbleChat.Actions.SetMessageText:


  -  Edit
  07:37:46.149  CoreGui.RobloxGui.Modules.InGameChat.BubbleChat.Actions.UpdateChatSettings:


  -  Edit
  07:37:46.149  CoreGui.RobloxGui.Modules.InGameChat.BubbleChat.BubbleChat.storybook:


  -  Edit
  07:37:46.149  CoreGui.RobloxGui.Modules.InGameChat.BubbleChat.ChatSettings:


  -  Edit
  07:37:46.149  CoreGui.RobloxGui.Modules.InGameChat.BubbleChat.Components.App:


  -  Edit
  07:37:46.149  CoreGui.RobloxGui.Modules.InGameChat.BubbleChat.Components.BubbleChatBillboard:


  -  Edit
  07:37:46.149  CoreGui.RobloxGui.Modules.InGameChat.BubbleChat.Components.BubbleChatBillboards:


  -  Edit
  07:37:46.149  CoreGui.RobloxGui.Modules.InGameChat.BubbleChat.Components.BubbleChatList:


  -  Edit
  07:37:46.149  CoreGui.RobloxGui.Modules.InGameChat.BubbleChat.Components.ChatBubble:


  -  Edit
  07:37:46.149  CoreGui.RobloxGui.Modules.InGameChat.BubbleChat.Components.ChatBubbleDistant:


  -  Edit
  07:37:46.149  CoreGui.RobloxGui.Modules.InGameChat.BubbleChat.Components.ControlBubble:


  -  Edit
  07:37:46.149  CoreGui.RobloxGui.Modules.InGameChat.BubbleChat.Components.ControlBubbleV2:


  -  Edit
  07:37:46.149  CoreGui.RobloxGui.Modules.InGameChat.BubbleChat.Components.ControlsBubble:


  -  Edit
  07:37:46.149  CoreGui.RobloxGui.Modules.InGameChat.BubbleChat.Components.ControlsBubbleV2:


  -  Edit
  07:37:46.150  CoreGui.RobloxGui.Modules.InGameChat.BubbleChat.Components.VoiceBubble:


  -  Edit
  07:37:46.150  CoreGui.RobloxGui.Modules.InGameChat.BubbleChat.Constants:


  -  Edit
  07:37:46.150  CoreGui.RobloxGui.Modules.InGameChat.BubbleChat.GlobalConfig:


  -  Edit
  07:37:46.150  CoreGui.RobloxGui.Modules.InGameChat.BubbleChat.Helpers.createMockMessage:


  -  Edit
  07:37:46.150  CoreGui.RobloxGui.Modules.InGameChat.BubbleChat.Helpers.displayCameraDeniedToast:


  -  Edit
  07:37:46.150  CoreGui.RobloxGui.Modules.InGameChat.BubbleChat.Helpers.getPlayerFromPart:


  -  Edit
  07:37:46.150  CoreGui.RobloxGui.Modules.InGameChat.BubbleChat.Helpers.getSettingsForMessage:


  -  Edit
  07:37:46.150  CoreGui.RobloxGui.Modules.InGameChat.BubbleChat.Helpers.getSizeSpringFromSettings:


  -  Edit
  07:37:46.150  CoreGui.RobloxGui.Modules.InGameChat.BubbleChat.Helpers.getTransparencySpringFromSettings:


  -  Edit
  07:37:46.150  CoreGui.RobloxGui.Modules.InGameChat.BubbleChat.Helpers.getVoiceIndicatorAssetName:


  -  Edit
  07:37:46.150  CoreGui.RobloxGui.Modules.InGameChat.BubbleChat.Helpers.maybeAssert:


  -  Edit
  07:37:46.150  CoreGui.RobloxGui.Modules.InGameChat.BubbleChat.Helpers.StoryStore:


  -  Edit
  07:37:46.150  CoreGui.RobloxGui.Modules.InGameChat.BubbleChat.Helpers.validateMessage:


  -  Edit
  07:37:46.150  CoreGui.RobloxGui.Modules.InGameChat.BubbleChat.Logger:


  -  Edit
  07:37:46.150  CoreGui.RobloxGui.Modules.InGameChat.BubbleChat.Reducers.chatReducer:


  -  Edit
  07:37:46.151  CoreGui.RobloxGui.Modules.InGameChat.BubbleChat.Reducers.chatSettings:


  -  Edit
  07:37:46.151  CoreGui.RobloxGui.Modules.InGameChat.BubbleChat.Reducers.components:


  -  Edit
  07:37:46.151  CoreGui.RobloxGui.Modules.InGameChat.BubbleChat.Reducers.messages:


  -  Edit
  07:37:46.151  CoreGui.RobloxGui.Modules.InGameChat.BubbleChat.Reducers.userMessages:


  -  Edit
  07:37:46.151  CoreGui.RobloxGui.Modules.InGameChat.BubbleChat.Themes:


  -  Edit
  07:37:46.151  CoreGui.RobloxGui.Modules.InGameChat.BubbleChat.Types:


  -  Edit
  07:37:46.151  CoreGui.RobloxGui.Modules.ActionBindingsTab:


  -  Edit
  07:37:46.151  CoreGui.RobloxGui.Modules.Ads.AdTeleportPromptHandler:


  -  Edit
  07:37:46.151  CoreGui.RobloxGui.Modules.Ads.AdTeleportPromptUI:


  -  Edit
  07:37:46.151  CoreGui.RobloxGui.Modules.PlayerPermissionsModule:


  -  Edit
  07:37:46.151  CoreGui.RobloxGui.Modules.ApolloClient:


  -  Edit
  07:37:46.151  CoreGui.RobloxGui.Modules.ApolloClient.ApolloClient:


  -  Edit
  07:37:46.151  CoreGui.RobloxGui.Modules.IsExperienceMenuABTestEnabled:


  -  Edit
  07:37:46.151  CoreGui.RobloxGui.Modules.Flags.FFlagAllowDisconnectGuiForOkUnknown:


  -  Edit
  07:37:46.152  CoreGui.RobloxGui.Modules.Flags.FFlagAvatarContextMenuItemsChatButtonRefactor:


  -  Edit
  07:37:46.152  CoreGui.RobloxGui.Modules.Flags.FFlagCoreGuiFinalStateAnalytic:


  -  Edit
  07:37:46.152  CoreGui.RobloxGui.Modules.Flags.FFlagCoreScriptPublishPromptModal:


  -  Edit
  07:37:46.152  CoreGui.RobloxGui.Modules.Flags.FFlagCoreScriptShowTeleportPrompt:


  -  Edit
  07:37:46.152  CoreGui.RobloxGui.Modules.Flags.FFlagEmptyKickMessageTranslation:


  -  Edit
  07:37:46.152  CoreGui.RobloxGui.Modules.Flags.FFlagEnableAutomaticSizeVerticalOffsetWidthFix:


  -  Edit
  07:37:46.152  CoreGui.RobloxGui.Modules.Flags.FFlagEnableAvatarChatToggleUIUpgradeForLegacyChatService:


  -  Edit
  07:37:46.152  CoreGui.RobloxGui.Modules.Flags.FFlagEnableBundlePurchaseChecks:


  -  Edit
  07:37:46.152  CoreGui.RobloxGui.Modules.Flags.FFlagEnableCollectibleCheckToPurchaseItem:


  -  Edit
  07:37:46.152  CoreGui.RobloxGui.Modules.Flags.FFlagEnableExperienceMenuSessionTracking:


  -  Edit
  07:37:46.152  CoreGui.RobloxGui.Modules.Flags.FFlagEnableRestrictedAssetSaleLocationInspectAndBuy:


  -  Edit
  07:37:46.152  CoreGui.RobloxGui.Modules.Flags.FFlagEnableRichTextForBubbleChat:


  -  Edit
  07:37:46.152  CoreGui.RobloxGui.Modules.Flags.FFlagEnableSpatialRobloxGui:


  -  Edit
  07:37:46.152  CoreGui.RobloxGui.Modules.Flags.FFlagEnableTempFixCollectibleBundlePurchase:


  -  Edit
  07:37:46.152  CoreGui.RobloxGui.Modules.Flags.FFlagEnableVoiceChatStorybookFix:


  -  Edit
  07:37:46.152  CoreGui.RobloxGui.Modules.Flags.FFlagErrorPromptResizesHeight:


  -  Edit
  07:37:46.153  CoreGui.RobloxGui.Modules.Flags.FFlagExtendedExpMenuPortraitLayout:


  -  Edit
  07:37:46.153  CoreGui.RobloxGui.Modules.Flags.FFlagFixProximityPromptAncestry:


  -  Edit
  07:37:46.153  CoreGui.RobloxGui.Modules.Flags.FFlagInExperienceSettingsRefactorAnalytics:


  -  Edit
  07:37:46.153  CoreGui.RobloxGui.Modules.Flags.FFlagMuteNonFriendsEvent:


  -  Edit
  07:37:46.153  CoreGui.RobloxGui.Modules.Flags.FFlagPlayerIconAvatarFix:


  -  Edit
  07:37:46.153  CoreGui.RobloxGui.Modules.Flags.FFlagRemoveHardCodedFriendLimitPrompt:


  -  Edit
  07:37:46.153  CoreGui.RobloxGui.Modules.Flags.FFlagRemoveKickWhitespaceSub:


  -  Edit
  07:37:46.153  CoreGui.RobloxGui.Modules.Flags.FFlagUseRoactGlobalConfigInCoreScripts:


  -  Edit
  07:37:46.153  CoreGui.RobloxGui.Modules.Flags.FFlagVRBottomBarDebugPositionConfig:


  -  Edit
  07:37:46.153  CoreGui.RobloxGui.Modules.Flags.FFlagVRBottomBarHighlightedLeaveGameIcon:


  -  Edit
  07:37:46.153  CoreGui.RobloxGui.Modules.Flags.FFlagVRMoveVoiceIndicatorToBottomBar:


  -  Edit
  07:37:46.153  CoreGui.RobloxGui.Modules.Flags.FIntSafetyBubbleRadius:


  -  Edit
  07:37:46.153  CoreGui.RobloxGui.Modules.Flags.FIntSafetyBubbleTransparencyPercent:


  -  Edit
  07:37:46.153  CoreGui.RobloxGui.Modules.Flags.FIntVoiceChatTooltipDelay:


  -  Edit
  07:37:46.153  CoreGui.RobloxGui.Modules.Flags.FIntVRBottomBarPositionOffsetDepthNumber:


  -  Edit
  07:37:46.153  CoreGui.RobloxGui.Modules.Flags.FIntVRBottomBarPositionOffsetVerticalNumber:


  -  Edit
  07:37:46.153  CoreGui.RobloxGui.Modules.Flags.FStringSpatialRobloxUIIXPLayerName:


  -  Edit
  07:37:46.153  CoreGui.RobloxGui.Modules.Flags.FStringSpatialRobloxUIIXPSpatialUIVariantValue:


  -  Edit
  07:37:46.154  CoreGui.RobloxGui.Modules.Flags.FStringSpatialRobloxUIIXPUITypeVariableName:


  -  Edit
  07:37:46.154  CoreGui.RobloxGui.Modules.Flags.GetFFlagAbuseReportEnableReportSentPage:


  -  Edit
  07:37:46.154  CoreGui.RobloxGui.Modules.Flags.getFFlagAddApolloClientToExperienceChat:


  -  Edit
  07:37:46.154  CoreGui.RobloxGui.Modules.Flags.GetFFlagAddVoiceExposureLayer:


  -  Edit
  07:37:46.154  CoreGui.RobloxGui.Modules.Flags.GetFFlagAllowUsernameOverlayInScreenshotHud:


  -  Edit
  07:37:46.154  CoreGui.RobloxGui.Modules.Flags.GetFFlagAlwaysMountVoicePrompt:


  -  Edit
  07:37:46.154  CoreGui.RobloxGui.Modules.Flags.GetFFlagAlwaysShowVRToggle:


  -  Edit
  07:37:46.154  CoreGui.RobloxGui.Modules.Flags.GetFFlagBetaBadge:


  -  Edit
  07:37:46.154  CoreGui.RobloxGui.Modules.Flags.GetFFlagBetaBadgeLearnMoreLinkFormview:


  -  Edit
  07:37:46.154  CoreGui.RobloxGui.Modules.Flags.GetFFlagBubbleChatInexistantAdorneeFix:


  -  Edit
  07:37:46.154  CoreGui.RobloxGui.Modules.Flags.GetFFlagBubbleVoiceIndicatorSetting:


  -  Edit
  07:37:46.154  CoreGui.RobloxGui.Modules.Flags.GetFFlagChatTranslationForceSetting:


  -  Edit
  07:37:46.154  CoreGui.RobloxGui.Modules.Flags.GetFFlagChatTranslationHoldoutEnabled:


  -  Edit
  07:37:46.154  CoreGui.RobloxGui.Modules.Flags.GetFFlagChatTranslationLaunchEnabled:


  -  Edit
  07:37:46.154  CoreGui.RobloxGui.Modules.Flags.GetFFlagChatTranslationNewDefaults:


  -  Edit
  07:37:46.154  CoreGui.RobloxGui.Modules.Flags.GetFFlagChatTranslationSettingEnabled:


  -  Edit
  07:37:46.154  CoreGui.RobloxGui.Modules.Flags.GetFFlagChatTranslationWaitForIXP:


  -  Edit
  07:37:46.155  CoreGui.RobloxGui.Modules.Flags.GetFFlagClientToastNotificationsRedirect:


  -  Edit
  07:37:46.155  CoreGui.RobloxGui.Modules.Flags.GetFFlagConsolidateBubbleChat:


  -  Edit
  07:37:46.155  CoreGui.RobloxGui.Modules.Flags.GetFFlagDebounceConnectDisconnectButton:


  -  Edit
  07:37:46.155  CoreGui.RobloxGui.Modules.Flags.GetFFlagDisableChromeDefaultOpen:


  -  Edit
  07:37:46.155  CoreGui.RobloxGui.Modules.Flags.GetFFlagDisableChromeFollowupFTUX:


  -  Edit
  07:37:46.155  CoreGui.RobloxGui.Modules.Flags.GetFFlagDisableChromeFollowupOcclusion:


  -  Edit
  07:37:46.155  CoreGui.RobloxGui.Modules.Flags.GetFFlagDisableChromeFollowupUnibar:


  -  Edit
  07:37:46.155  CoreGui.RobloxGui.Modules.Flags.GetFFlagDisableChromePinnedChat:


  -  Edit
  07:37:46.155  CoreGui.RobloxGui.Modules.Flags.GetFFlagDisableChromeUnibar:


  -  Edit
  07:37:46.155  CoreGui.RobloxGui.Modules.Flags.GetFFlagDisableChromeV3Baseline:


  -  Edit
  07:37:46.155  CoreGui.RobloxGui.Modules.Flags.GetFFlagDisableChromeV3Captures:


  -  Edit
  07:37:46.155  CoreGui.RobloxGui.Modules.Flags.GetFFlagDisableChromeV3DockedMic:


  -  Edit
  07:37:46.155  CoreGui.RobloxGui.Modules.Flags.GetFFlagDisableChromeV3Icon:


  -  Edit
  07:37:46.155  CoreGui.RobloxGui.Modules.Flags.GetFFlagDisableChromeV3StaticSelfView:


  -  Edit
  07:37:46.156  CoreGui.RobloxGui.Modules.Flags.GetFFlagDisableChromeV4Baseline:


  -  Edit
  07:37:46.156  CoreGui.RobloxGui.Modules.Flags.GetFFlagDisableChromeV4ClosedSelfView:


  -  Edit
  07:37:46.156  CoreGui.RobloxGui.Modules.Flags.getFFlagDoNotPromptCameraPermissionsOnMount:


  -  Edit
  07:37:46.156  CoreGui.RobloxGui.Modules.Flags.getFFlagEnableAlwaysAvailableCamera:


  -  Edit
  07:37:46.156  CoreGui.RobloxGui.Modules.Flags.getFFlagEnableAnalyticsForCameraDevicePermissions:


  -  Edit
  07:37:46.156  CoreGui.RobloxGui.Modules.Flags.GetFFlagEnableConfigurableReportAbuseIXP:


  -  Edit
  07:37:46.156  CoreGui.RobloxGui.Modules.Flags.GetFFlagEnableConnectDisconnectAnalytics:


  -  Edit
  07:37:46.156  CoreGui.RobloxGui.Modules.Flags.GetFFlagEnableConnectDisconnectButtonAnalytics:


  -  Edit
  07:37:46.156  CoreGui.RobloxGui.Modules.Flags.GetFFlagEnableConnectDisconnectInSettingsAndChrome:


  -  Edit
  07:37:46.156  CoreGui.RobloxGui.Modules.Flags.GetFFlagEnableFeedbackReportDialogAdjustments:


  -  Edit
  07:37:46.156  CoreGui.RobloxGui.Modules.Flags.GetFFlagEnableInExpJoinVoiceAnalytics:


  -  Edit
  07:37:46.156  CoreGui.RobloxGui.Modules.Flags.GetFFlagEnableInExpMicPermissionsAnalytics:


  -  Edit
  07:37:46.156  CoreGui.RobloxGui.Modules.Flags.GetFFlagEnableInExpVoiceConsentAnalytics:


  -  Edit
  07:37:46.156  CoreGui.RobloxGui.Modules.Flags.GetFFlagEnableInExpVoiceUpsell:


  -  Edit
  07:37:46.157  CoreGui.RobloxGui.Modules.Flags.GetFFlagEnableInvitePromptLoadingState:


  -  Edit
  07:37:46.157  CoreGui.RobloxGui.Modules.Flags.GetFFlagEnableNewInviteMenu:


  -  Edit
  07:37:46.157  CoreGui.RobloxGui.Modules.Flags.GetFFlagEnableNewInviteMenuCustomization:


  -  Edit
  07:37:46.157  CoreGui.RobloxGui.Modules.Flags.GetFFlagEnableNewInviteMenuIXP:


  -  Edit
  07:37:46.157  CoreGui.RobloxGui.Modules.Flags.GetFFlagEnableNewInviteSendEndpoint:


  -  Edit
  07:37:46.157  CoreGui.RobloxGui.Modules.Flags.GetFFlagEnableSeamlessVoiceConnectDisconnectButton:


  -  Edit
  07:37:46.157  CoreGui.RobloxGui.Modules.Flags.GetFFlagEnableSeamlessVoiceDataConsentToast:


  -  Edit
  07:37:46.157  CoreGui.RobloxGui.Modules.Flags.GetFFlagEnableSeamlessVoiceUX:


  -  Edit
  07:37:46.157  CoreGui.RobloxGui.Modules.Flags.GetFFlagEnableSharedInviteStore:


  -  Edit
  07:37:46.157  CoreGui.RobloxGui.Modules.Flags.getFFlagEnableShimmeringIconLegacyChatService:


  -  Edit
  07:37:46.157  CoreGui.RobloxGui.Modules.Flags.GetFFlagEnableSoundSessionTelemetry:


  -  Edit
  07:37:46.157  CoreGui.RobloxGui.Modules.Flags.GetFFlagEnableUniveralVoiceToasts:


  -  Edit
  07:37:46.157  CoreGui.RobloxGui.Modules.Flags.GetFFlagEnableVoiceChatManualReconnect:


  -  Edit
  07:37:46.157  CoreGui.RobloxGui.Modules.Flags.GetFFlagEnableVoiceChatMuteOnBlock:


  -  Edit
  07:37:46.158  CoreGui.RobloxGui.Modules.Flags.GetFFlagEnableVoiceChatSpeakerIcons:


  -  Edit
  07:37:46.158  CoreGui.RobloxGui.Modules.Flags.GetFFlagEnableVoiceChatVoiceUISync:


  -  Edit
  07:37:46.158  CoreGui.RobloxGui.Modules.Flags.GetFFlagEnableVoiceDefaultChannel:


  -  Edit
  07:37:46.158  CoreGui.RobloxGui.Modules.Flags.GetFFlagEnableVoiceMuteAnalytics:


  -  Edit
  07:37:46.158  CoreGui.RobloxGui.Modules.Flags.GetFFlagEnableVoicePromptReasonText:


  -  Edit
  07:37:46.158  CoreGui.RobloxGui.Modules.Flags.GetFFlagEnableVRHubStateListener:


  -  Edit
  07:37:46.158  CoreGui.RobloxGui.Modules.Flags.GetFFlagExtraInviteModalStringValidation:


  -  Edit
  07:37:46.158  CoreGui.RobloxGui.Modules.Flags.GetFFlagFixMissingPlayerGuiCrash:


  -  Edit
  07:37:46.158  CoreGui.RobloxGui.Modules.Flags.GetFFlagFixSettingshubImportOrder:


  -  Edit
  07:37:46.158  CoreGui.RobloxGui.Modules.Flags.GetFFlagFixSoundSessionTelemetryNotRemovingSounds:


  -  Edit
  07:37:46.158  CoreGui.RobloxGui.Modules.Flags.GetFFlagFlashingDotUseAsyncInit:


  -  Edit
  07:37:46.158  CoreGui.RobloxGui.Modules.Flags.GetFFlagForceChatBubbleColorCS:


  -  Edit
  07:37:46.158  CoreGui.RobloxGui.Modules.Flags.GetFFlagGetClientReplicatorCheck:


  -  Edit
  07:37:46.158  CoreGui.RobloxGui.Modules.Flags.GetFFlagHideVoiceDisconnectButton:


  -  Edit
  07:37:46.158  CoreGui.RobloxGui.Modules.Flags.GetFFlagInvertMuteAllPermissionButton:


  -  Edit
  07:37:46.158  CoreGui.RobloxGui.Modules.Flags.GetFFlagInviteListStyleFixes:


  -  Edit
  07:37:46.158  CoreGui.RobloxGui.Modules.Flags.getFFlagLegacyConnectingMicStateFix:


  -  Edit
  07:37:46.159  CoreGui.RobloxGui.Modules.Flags.GetFFlagLuaInExperienceCoreScriptsGameInviteUnification:


  -  Edit
  07:37:46.159  CoreGui.RobloxGui.Modules.Flags.GetFFlagMicConnectingToast:


  -  Edit
  07:37:46.159  CoreGui.RobloxGui.Modules.Flags.getFFlagMicrophoneDevicePermissionsPromptLogging:


  -  Edit
  07:37:46.159  CoreGui.RobloxGui.Modules.Flags.GetFFlagMuteButtonRaceConditionFix:


  -  Edit
  07:37:46.159  CoreGui.RobloxGui.Modules.Flags.GetFFlagNewEventIngestPlayerScriptsDimensions:


  -  Edit
  07:37:46.159  CoreGui.RobloxGui.Modules.Flags.GetFFlagOldMenuUseSpeakerIcons:


  -  Edit
  07:37:46.159  CoreGui.RobloxGui.Modules.Flags.GetFFlagOptimizeHelpMenuInputEvent:


  -  Edit
  07:37:46.159  CoreGui.RobloxGui.Modules.Flags.GetFFlagPassShouldRequestPermsArg:


  -  Edit
  07:37:46.159  CoreGui.RobloxGui.Modules.Flags.GetFFlagPauseMuteFix:


  -  Edit
  07:37:46.159  CoreGui.RobloxGui.Modules.Flags.GetFFlagPlayerViewRemoteEventTimeoutEnabled:


  -  Edit
  07:37:46.159  CoreGui.RobloxGui.Modules.Flags.GetFFlagRecordRecording:


  -  Edit
  07:37:46.159  CoreGui.RobloxGui.Modules.Flags.GetFFlagRemoveAssetVersionEndpoint:


  -  Edit
  07:37:46.159  CoreGui.RobloxGui.Modules.Flags.GetFFlagRemoveInGameChatBubbleChatReferences:


  -  Edit
  07:37:46.160  CoreGui.RobloxGui.Modules.Flags.getFFlagRenderVoiceBubbleAfterAsyncInit:


  -  Edit
  07:37:46.160  CoreGui.RobloxGui.Modules.Flags.GetFFlagReportAbuseThankYouPageSizeFix:


  -  Edit
  07:37:46.160  CoreGui.RobloxGui.Modules.Flags.GetFFlagReportMenuCellToUseAutomaticSize:


  -  Edit
  07:37:46.160  CoreGui.RobloxGui.Modules.Flags.GetFFlagReportSentPageV2Enabled:


  -  Edit
  07:37:46.160  CoreGui.RobloxGui.Modules.Flags.GetFFlagRequestServerStatsFix:


  -  Edit
  07:37:46.160  CoreGui.RobloxGui.Modules.Flags.GetFFlagRtMessaging:


  -  Edit
  07:37:46.160  CoreGui.RobloxGui.Modules.Flags.GetFFlagScreenshotHudApi:


  -  Edit
  07:37:46.160  CoreGui.RobloxGui.Modules.Flags.GetFFlagSendDevicePermissionsModalAnalytics:


  -  Edit
  07:37:46.160  CoreGui.RobloxGui.Modules.Flags.GetFFlagShowMicConnectingIconAndToast:


  -  Edit
  07:37:46.160  CoreGui.RobloxGui.Modules.Flags.GetFFlagShowSpeakerIconWithChatBubbles:


  -  Edit
  07:37:46.160  CoreGui.RobloxGui.Modules.Flags.GetFFlagSoundTelemetryOsClock:


  -  Edit
  07:37:46.160  CoreGui.RobloxGui.Modules.Flags.GetFFlagSubscriptionFailureUX:


  -  Edit
  07:37:46.160  CoreGui.RobloxGui.Modules.Flags.GetFFlagThrottleInviteSendEndpoint:


  -  Edit
  07:37:46.160  CoreGui.RobloxGui.Modules.Flags.GetFFlagUpdateNudgeV3VoiceBanUI:


  -  Edit
  07:37:46.161  CoreGui.RobloxGui.Modules.Flags.GetFFlagUpdateSelfieViewOnBan:


  -  Edit
  07:37:46.161  CoreGui.RobloxGui.Modules.Flags.getFFlagUseCameraDevicesListener:


  -  Edit
  07:37:46.161  CoreGui.RobloxGui.Modules.Flags.GetFFlagUserIsChatTranslationEnabled:


  -  Edit
  07:37:46.161  CoreGui.RobloxGui.Modules.Flags.GetFFlagUXForCameraPerformanceIXPEnabled:


  -  Edit
  07:37:46.161  CoreGui.RobloxGui.Modules.Flags.GetFFlagVoiceAbuseReportsEnabled:


  -  Edit
  07:37:46.161  CoreGui.RobloxGui.Modules.Flags.GetFFlagVoiceARRemoveOffsiteLinksForVoice:


  -  Edit
  07:37:46.161  CoreGui.RobloxGui.Modules.Flags.GetFFlagVoiceARUnblockingUnmutingEnabled:


  -  Edit
  07:37:46.161  CoreGui.RobloxGui.Modules.Flags.GetFFlagVoiceBanShowToastOnSubsequentJoins:


  -  Edit
  07:37:46.161  CoreGui.RobloxGui.Modules.Flags.GetFFlagVoiceChatUILogging:


  -  Edit
  07:37:46.161  CoreGui.RobloxGui.Modules.Flags.GetFFlagVoiceRecordingIndicatorsEnabled:


  -  Edit
  07:37:46.161  CoreGui.RobloxGui.Modules.Flags.GetFFlagVoiceUserAgency3:


  -  Edit
  07:37:46.161  CoreGui.RobloxGui.Modules.Flags.GetFFlagVoiceUserAgencyEnableIXP:


  -  Edit
  07:37:46.161  CoreGui.RobloxGui.Modules.Flags.GetFFlagWrapBlockModalScreenInProvider:


  -  Edit
  07:37:46.162  CoreGui.RobloxGui.Modules.Flags.GetFIntCanHideGuiGroupId:


  -  Edit
  07:37:46.162  CoreGui.RobloxGui.Modules.Flags.GetFIntDebounceDisconnectButtonDelay:


  -  Edit
  07:37:46.162  CoreGui.RobloxGui.Modules.Flags.GetFIntEducationalPopupDisplayMaxCount:


  -  Edit
  07:37:46.162  CoreGui.RobloxGui.Modules.Flags.GetFIntFacialAnimationStreamingHeartbeatStatsIntervalSec:


  -  Edit
  07:37:46.162  CoreGui.RobloxGui.Modules.Flags.GetFIntPlayerViewRemoteEventTimeout:


  -  Edit
  07:37:46.162  CoreGui.RobloxGui.Modules.Flags.GetFIntSoundSessionTelemetryThrottle:


  -  Edit
  07:37:46.162  CoreGui.RobloxGui.Modules.Flags.GetFIntThrottleInviteSendEndpointDelay:


  -  Edit
  07:37:46.162  CoreGui.RobloxGui.Modules.Flags.GetFIntVoiceChatDeviceChangeDebounceDelay:


  -  Edit
  07:37:46.162  CoreGui.RobloxGui.Modules.Flags.GetFIntVoiceJoinM3ToastDurationSeconds:


  -  Edit
  07:37:46.162  CoreGui.RobloxGui.Modules.Flags.GetFIntVoiceReverseNudgeUXDisplayTimeSeconds:


  -  Edit
  07:37:46.162  CoreGui.RobloxGui.Modules.Flags.GetFIntVoiceToxicityToastDurationSeconds:


  -  Edit
  07:37:46.162  CoreGui.RobloxGui.Modules.Flags.GetFIntVRScaleGuiDistance:


  -  Edit
  07:37:46.162  CoreGui.RobloxGui.Modules.Flags.GetFStringChatTranslationEnabledLocales:


  -  Edit
  07:37:46.163  CoreGui.RobloxGui.Modules.Flags.GetFStringChatTranslationLayerName:


  -  Edit
  07:37:46.163  CoreGui.RobloxGui.Modules.Flags.GetFStringInExperienceNotificationsLayer:


  -  Edit
  07:37:46.163  CoreGui.RobloxGui.Modules.Flags.GetFStringLuaAppConsoleExperienceMenuLayer:


  -  Edit
  07:37:46.163  CoreGui.RobloxGui.Modules.Flags.GetFStringReportAbuseIXPLayer:


  -  Edit
  07:37:46.163  CoreGui.RobloxGui.Modules.Flags.GetFStringUXForCameraPerformanceIXPLayerName:


  -  Edit
  07:37:46.163  CoreGui.RobloxGui.Modules.Flags.GetFStringVoiceBetaBadgeLearnMore:


  -  Edit
  07:37:46.163  CoreGui.RobloxGui.Modules.Flags.GetFStringVoiceExposureIXPLayerName:


  -  Edit
  07:37:46.163  CoreGui.RobloxGui.Modules.Flags.GetFStringVoiceUserAgencyIXPLayerName:


  -  Edit
  07:37:46.163  CoreGui.RobloxGui.Modules.Flags.isEngineTruncationEnabledForIngameSettings:


  -  Edit
  07:37:46.163  CoreGui.RobloxGui.Modules.AvatarContextMenu.ContextMenuGui:


  -  Edit
  07:37:46.163  CoreGui.RobloxGui.Modules.AvatarContextMenu.ContextMenuItems:


  -  Edit
  07:37:46.163  CoreGui.RobloxGui.Modules.AvatarContextMenu.ContextMenuUtil:


  -  Edit
  07:37:46.163  CoreGui.RobloxGui.Modules.AvatarContextMenu.PlayerCarousel:


  -  Edit
  07:37:46.163  CoreGui.RobloxGui.Modules.AvatarContextMenu.SelectedCharacterIndicator:


  -  Edit
  07:37:46.163  CoreGui.RobloxGui.Modules.AvatarContextMenu.ThemeHandler:


  -  Edit
  07:37:46.163  CoreGui.RobloxGui.Modules.TrustAndSafety:


  -  Edit
  07:37:46.163  CoreGui.RobloxGui.Modules.TrustAndSafety.Actions.BeginReportFlow:


  -  Edit
  07:37:46.163  CoreGui.RobloxGui.Modules.TrustAndSafety.Actions.CloseBlockPlayerDialog:


  -  Edit
  07:37:46.164  CoreGui.RobloxGui.Modules.TrustAndSafety.Actions.CloseCategoryMenu:


  -  Edit
  07:37:46.164  CoreGui.RobloxGui.Modules.TrustAndSafety.Actions.CloseReportDialog:


  -  Edit
  07:37:46.164  CoreGui.RobloxGui.Modules.TrustAndSafety.Actions.CloseReportMenu:


  -  Edit
  07:37:46.164  CoreGui.RobloxGui.Modules.TrustAndSafety.Actions.CloseReportSentDialog:


  -  Edit
  07:37:46.164  CoreGui.RobloxGui.Modules.TrustAndSafety.Actions.EndReportFlow:


  -  Edit
  07:37:46.164  CoreGui.RobloxGui.Modules.TrustAndSafety.Actions.Hide:


  -  Edit
  07:37:46.164  CoreGui.RobloxGui.Modules.TrustAndSafety.Actions.NavigateBack:


  -  Edit
  07:37:46.164  CoreGui.RobloxGui.Modules.TrustAndSafety.Actions.OpenBlockPlayerDialog:


  -  Edit
  07:37:46.164  CoreGui.RobloxGui.Modules.TrustAndSafety.Actions.OpenCategoryMenu:


  -  Edit
  07:37:46.164  CoreGui.RobloxGui.Modules.TrustAndSafety.Actions.OpenReportDialog:


  -  Edit
  07:37:46.164  CoreGui.RobloxGui.Modules.TrustAndSafety.Actions.OpenReportMenu:


  -  Edit
  07:37:46.164  CoreGui.RobloxGui.Modules.TrustAndSafety.Actions.OpenReportSentDialog:


  -  Edit
  07:37:46.164  CoreGui.RobloxGui.Modules.TrustAndSafety.Actions.ScreenshotAnnotated:


  -  Edit
  07:37:46.164  CoreGui.RobloxGui.Modules.TrustAndSafety.Actions.SelectReportCategory:


  -  Edit
  07:37:46.165  CoreGui.RobloxGui.Modules.TrustAndSafety.Actions.SelectReportListing:


  -  Edit
  07:37:46.165  CoreGui.RobloxGui.Modules.TrustAndSafety.Actions.SetIdentifiedAvatars:


  -  Edit
  07:37:46.165  CoreGui.RobloxGui.Modules.TrustAndSafety.Actions.SetPlaceInfo:


  -  Edit
  07:37:46.165  CoreGui.RobloxGui.Modules.TrustAndSafety.Actions.SetScreenSize:


  -  Edit
  07:37:46.165  CoreGui.RobloxGui.Modules.TrustAndSafety.Actions.SetSelectedAvatars:


  -  Edit
  07:37:46.165  CoreGui.RobloxGui.Modules.TrustAndSafety.Actions.SetVoiceReportingFlow:


  -  Edit
  07:37:46.165  CoreGui.RobloxGui.Modules.TrustAndSafety.Actions.Show:


  -  Edit
  07:37:46.165  CoreGui.RobloxGui.Modules.TrustAndSafety.Actions.ShowToast:


  -  Edit
  07:37:46.165  CoreGui.RobloxGui.Modules.TrustAndSafety.Components.BlockPlayerItem:


  -  Edit
  07:37:46.165  CoreGui.RobloxGui.Modules.TrustAndSafety.Components.DebugCanvas:


  -  Edit
  07:37:46.165  CoreGui.RobloxGui.Modules.TrustAndSafety.Components.FillCircle:


  -  Edit
  07:37:46.165  CoreGui.RobloxGui.Modules.TrustAndSafety.Components.GameCell:


  -  Edit
  07:37:46.165  CoreGui.RobloxGui.Modules.TrustAndSafety.Components.ModalDialog:


  -  Edit
  07:37:46.165  CoreGui.RobloxGui.Modules.TrustAndSafety.Components.ReportAnything.RestartScreenshotDialog:


  -  Edit
  07:37:46.165  CoreGui.RobloxGui.Modules.TrustAndSafety.Components.ReportAnything.ScreenshotDialog:


  -  Edit
  07:37:46.165  CoreGui.RobloxGui.Modules.TrustAndSafety.Components.ReportAnything.ScreenshotDialogLandscapeModeHeader:


  -  Edit
  07:37:46.165  CoreGui.RobloxGui.Modules.TrustAndSafety.Components.ReportAnything.ScreenshotDialogPortraitModeHeader:


  -  Edit
  07:37:46.165  CoreGui.RobloxGui.Modules.TrustAndSafety.Components.ReportAnything.ScreenshotFlowStepHandler:


  -  Edit
  07:37:46.166  CoreGui.RobloxGui.Modules.TrustAndSafety.Components.ReportAnything.ScreenshotFlowStepHandlerContainer:


  -  Edit
  07:37:46.166  CoreGui.RobloxGui.Modules.TrustAndSafety.Components.ReportAnything.ScreenshotHighlighter:


  -  Edit
  07:37:46.166  CoreGui.RobloxGui.Modules.TrustAndSafety.Components.ReportAnything.ScreenshotLoadingDialog:


  -  Edit
  07:37:46.166  CoreGui.RobloxGui.Modules.TrustAndSafety.Components.ReportAnything.ScreenshotReviewDialog:


  -  Edit
  07:37:46.166  CoreGui.RobloxGui.Modules.TrustAndSafety.Components.ReportCategoryDialog:


  -  Edit
  07:37:46.166  CoreGui.RobloxGui.Modules.TrustAndSafety.Components.ReportDialog:


  -  Edit
  07:37:46.166  CoreGui.RobloxGui.Modules.TrustAndSafety.Components.ReportMenu:


  -  Edit
  07:37:46.166  CoreGui.RobloxGui.Modules.TrustAndSafety.Components.ReportSentDialog:


  -  Edit
  07:37:46.166  CoreGui.RobloxGui.Modules.TrustAndSafety.Components.TextEntryField:


  -  Edit
  07:37:46.166  CoreGui.RobloxGui.Modules.TrustAndSafety.Components.Toast:


  -  Edit
  07:37:46.166  CoreGui.RobloxGui.Modules.TrustAndSafety.Components.TrustAndSafetyApp:


  -  Edit
  07:37:46.166  CoreGui.RobloxGui.Modules.TrustAndSafety.Components.VirtualKeyboardMonitor:


  -  Edit
  07:37:46.166  CoreGui.RobloxGui.Modules.TrustAndSafety.Dependencies:


  -  Edit
  07:37:46.167  CoreGui.RobloxGui.Modules.TrustAndSafety.Flags.GetFFlagEnableARFlowSession:


  -  Edit
  07:37:46.167  CoreGui.RobloxGui.Modules.TrustAndSafety.Flags.GetFFlagEnableMOAForNonVoiceUsers:


  -  Edit
  07:37:46.167  CoreGui.RobloxGui.Modules.TrustAndSafety.Flags.GetFFlagEnableNewVoiceReportFlows:


  -  Edit
  07:37:46.167  CoreGui.RobloxGui.Modules.TrustAndSafety.Flags.GetFFlagEnableOptionalScreenshotButton2:


  -  Edit
  07:37:46.167  CoreGui.RobloxGui.Modules.TrustAndSafety.Flags.GetFFlagRAScreenshotOncePerMenuOpenEnabled:


  -  Edit
  07:37:46.167  CoreGui.RobloxGui.Modules.TrustAndSafety.Flags.GetFFlagReportAbuseMenuAutosizeYEnabled:


  -  Edit
  07:37:46.167  CoreGui.RobloxGui.Modules.TrustAndSafety.Flags.GetFFlagReportAnythingDebugCanvas:


  -  Edit
  07:37:46.167  CoreGui.RobloxGui.Modules.TrustAndSafety.Flags.GetFFlagReportAnythingLocalizationEnabled:


  -  Edit
  07:37:46.167  CoreGui.RobloxGui.Modules.TrustAndSafety.Flags.GetFFlagReportAnythingMultistepScreenshot:


  -  Edit
  07:37:46.167  CoreGui.RobloxGui.Modules.TrustAndSafety.Flags.GetFFlagReportAnythingScreenshot:


  -  Edit
  07:37:46.167  CoreGui.RobloxGui.Modules.TrustAndSafety.Flags.GetFFlagShrinkReportMenuForVisibility:


  -  Edit
  07:37:46.167  CoreGui.RobloxGui.Modules.TrustAndSafety.Flags.GetFIntIGMv1ARFlowScreenshotDelayFrames:


  -  Edit
  07:37:46.167  CoreGui.RobloxGui.Modules.TrustAndSafety.Flags.GetFIntRAMaxAnnotationCount:


  -  Edit
  07:37:46.168  CoreGui.RobloxGui.Modules.TrustAndSafety.Flags.IXPVoiceAbuseReportReportAbuseMenu:


  -  Edit
  07:37:46.168  CoreGui.RobloxGui.Modules.TrustAndSafety.GlobalConfig:


  -  Edit
  07:37:46.168  CoreGui.RobloxGui.Modules.TrustAndSafety.Reducers:


  -  Edit
  07:37:46.168  CoreGui.RobloxGui.Modules.TrustAndSafety.Reducers.common:


  -  Edit
  07:37:46.168  CoreGui.RobloxGui.Modules.TrustAndSafety.Reducers.displayOptions:


  -  Edit
  07:37:46.168  CoreGui.RobloxGui.Modules.TrustAndSafety.Reducers.placeInfo:


  -  Edit
  07:37:46.168  CoreGui.RobloxGui.Modules.TrustAndSafety.Reducers.report:


  -  Edit
  07:37:46.168  CoreGui.RobloxGui.Modules.TrustAndSafety.Resources.Assets:


  -  Edit
  07:37:46.168  CoreGui.RobloxGui.Modules.TrustAndSafety.Resources.Constants:


  -  Edit
  07:37:46.168  CoreGui.RobloxGui.Modules.TrustAndSafety.Thunks.BlockPlayer:


  -  Edit
  07:37:46.168  CoreGui.RobloxGui.Modules.TrustAndSafety.Thunks.FetchPlaceInfo:


  -  Edit
  07:37:46.168  CoreGui.RobloxGui.Modules.TrustAndSafety.Thunks.FilterIdentifiedAvatars:


  -  Edit
  07:37:46.168  CoreGui.RobloxGui.Modules.TrustAndSafety.Thunks.IdentifyAvatars:


  -  Edit
  07:37:46.168  CoreGui.RobloxGui.Modules.TrustAndSafety.Thunks.SendReport:


  -  Edit
  07:37:46.168  CoreGui.RobloxGui.Modules.TrustAndSafety.TrustAndSafetyAppPolicy:


  -  Edit
  07:37:46.168  CoreGui.RobloxGui.Modules.TrustAndSafety.Utility.AbuseReportBuilder:


  -  Edit
  07:37:46.169  CoreGui.RobloxGui.Modules.TrustAndSafety.Utility.GetHumanoidDescription:


  -  Edit
  07:37:46.169  CoreGui.RobloxGui.Modules.TrustAndSafety.Utility.ReportAnythingAnalytics:


  -  Edit
  07:37:46.169  CoreGui.RobloxGui.Modules.TrustAndSafety.Utility.ReportManager:


  -  Edit
  07:37:46.169  CoreGui.RobloxGui.Modules.TrustAndSafety.Utility.ScreenshotHelper:


  -  Edit
  07:37:46.169  CoreGui.RobloxGui.Modules.TrustAndSafety.Utility.ScreenshotHookManager:


  -  Edit
  07:37:46.169  CoreGui.RobloxGui.Modules.TrustAndSafety.Utility.SendAnalytics:


  -  Edit
  07:37:46.169  CoreGui.RobloxGui.Modules.TrustAndSafety.Utility.SessionUtility:


  -  Edit
  07:37:46.169  CoreGui.RobloxGui.Modules.Feedback:


  -  Edit
  07:37:46.169  CoreGui.RobloxGui.Modules.Feedback.Actions.IncrementFeedbackSubmissionAttempts:


  -  Edit
  07:37:46.169  CoreGui.RobloxGui.Modules.Feedback.Actions.SetFeedbackFlowState:


  -  Edit
  07:37:46.169  CoreGui.RobloxGui.Modules.Feedback.Actions.SetFeedbackReason:


  -  Edit
  07:37:46.169  CoreGui.RobloxGui.Modules.Feedback.Actions.SetScreenSize:


  -  Edit
  07:37:46.169  CoreGui.RobloxGui.Modules.Feedback.Actions.ShowHelpModal:


  -  Edit
  07:37:46.169  CoreGui.RobloxGui.Modules.Feedback.Actions.ShowOnboardingModal:


  -  Edit
  07:37:46.169  CoreGui.RobloxGui.Modules.Feedback.Components.FeedbackApp:


  -  Edit
  07:37:46.169  CoreGui.RobloxGui.Modules.Feedback.Components.FeedbackBarHint:


  -  Edit
  07:37:46.169  CoreGui.RobloxGui.Modules.Feedback.Components.FeedbackReportDialog:


  -  Edit
  07:37:46.170  CoreGui.RobloxGui.Modules.Feedback.Components.FeedbackSubmissionToast:


  -  Edit
  07:37:46.170  CoreGui.RobloxGui.Modules.Feedback.Components.HelpModal:


  -  Edit
  07:37:46.170  CoreGui.RobloxGui.Modules.Feedback.Components.ModalDialog:


  -  Edit
  07:37:46.170  CoreGui.RobloxGui.Modules.Feedback.Components.OnboardingModal:


  -  Edit
  07:37:46.170  CoreGui.RobloxGui.Modules.Feedback.Components.PortedComponents.Divider:


  -  Edit
  07:37:46.170  CoreGui.RobloxGui.Modules.Feedback.Components.PortedComponents.ThemedTextLabel:


  -  Edit
  07:37:46.170  CoreGui.RobloxGui.Modules.Feedback.Components.RefinedFeedbackBar:


  -  Edit
  07:37:46.170  CoreGui.RobloxGui.Modules.Feedback.Components.TextEntryField:


  -  Edit
  07:37:46.170  CoreGui.RobloxGui.Modules.Feedback.GlobalConfig:


  -  Edit
  07:37:46.170  CoreGui.RobloxGui.Modules.Feedback.Network.PostFeedback:


  -  Edit
  07:37:46.170  CoreGui.RobloxGui.Modules.Feedback.Reducers:


  -  Edit
  07:37:46.170  CoreGui.RobloxGui.Modules.Feedback.Reducers.common:


  -  Edit
  07:37:46.170  CoreGui.RobloxGui.Modules.Feedback.Reducers.displayOptions:


  -  Edit
  07:37:46.170  CoreGui.RobloxGui.Modules.Feedback.Reducers.feedbackFlowState:


  -  Edit
  07:37:46.170  CoreGui.RobloxGui.Modules.Feedback.Resources.Assets:


  -  Edit
  07:37:46.171  CoreGui.RobloxGui.Modules.Feedback.Resources.Constants:


  -  Edit
  07:37:46.171  CoreGui.RobloxGui.Modules.Feedback.Thunks.SendFeedbackThunk:


  -  Edit
  07:37:46.171  CoreGui.RobloxGui.Modules.Feedback.Thunks.ShowHelpModalThunk:


  -  Edit
  07:37:46.171  CoreGui.RobloxGui.Modules.Feedback.Thunks.ShowOnboardingModalThunk:


  -  Edit
  07:37:46.171  CoreGui.RobloxGui.Modules.AvatarEditorPrompts:


  -  Edit
  07:37:46.171  CoreGui.RobloxGui.Modules.AvatarEditorPrompts.Actions.AddAnalyticsInfo:


  -  Edit
  07:37:46.171  CoreGui.RobloxGui.Modules.AvatarEditorPrompts.Actions.CloseOpenPrompt:


  -  Edit
  07:37:46.171  CoreGui.RobloxGui.Modules.AvatarEditorPrompts.Actions.CreateOutfitConfirmed:


  -  Edit
  07:37:46.171  CoreGui.RobloxGui.Modules.AvatarEditorPrompts.Actions.GameNameFetched:


  -  Edit
  07:37:46.171  CoreGui.RobloxGui.Modules.AvatarEditorPrompts.Actions.OpenPrompt:


  -  Edit
  07:37:46.171  CoreGui.RobloxGui.Modules.AvatarEditorPrompts.Actions.ScreenSizeUpdated:


  -  Edit
  07:37:46.171  CoreGui.RobloxGui.Modules.AvatarEditorPrompts.AvatarEditorPromptsPolicy:


  -  Edit
  07:37:46.172  CoreGui.RobloxGui.Modules.AvatarEditorPrompts.Components.AvatarEditorPromptsApp:


  -  Edit
  07:37:46.172  CoreGui.RobloxGui.Modules.AvatarEditorPrompts.Components.Connection:


  -  Edit
  07:37:46.172  CoreGui.RobloxGui.Modules.AvatarEditorPrompts.Components.Connection.ContextActionsBinder:


  -  Edit
  07:37:46.172  CoreGui.RobloxGui.Modules.AvatarEditorPrompts.Components.HumanoidViewport:


  -  Edit
  07:37:46.172  CoreGui.RobloxGui.Modules.AvatarEditorPrompts.Components.ItemsList:


  -  Edit
  07:37:46.172  CoreGui.RobloxGui.Modules.AvatarEditorPrompts.Components.ItemsList.ListEntry:


  -  Edit
  07:37:46.172  CoreGui.RobloxGui.Modules.AvatarEditorPrompts.Components.ItemsList.ListSection:


  -  Edit
  07:37:46.172  CoreGui.RobloxGui.Modules.AvatarEditorPrompts.Components.Prompts.AllowInventoryReadAccessPrompt:


  -  Edit
  07:37:46.172  CoreGui.RobloxGui.Modules.AvatarEditorPrompts.Components.Prompts.CreateOutfitPrompt:


  -  Edit
  07:37:46.172  CoreGui.RobloxGui.Modules.AvatarEditorPrompts.Components.Prompts.DeleteOutfitPrompt:


  -  Edit
  07:37:46.172  CoreGui.RobloxGui.Modules.AvatarEditorPrompts.Components.Prompts.EnterOutfitNamePrompt:


  -  Edit
  07:37:46.172  CoreGui.RobloxGui.Modules.AvatarEditorPrompts.Components.Prompts.PromptWithAvatarViewport:


  -  Edit
  07:37:46.172  CoreGui.RobloxGui.Modules.AvatarEditorPrompts.Components.Prompts.PromptWithTextField:


  -  Edit
  07:37:46.172  CoreGui.RobloxGui.Modules.AvatarEditorPrompts.Components.Prompts.RenameOutfitPrompt:


  -  Edit
  07:37:46.172  CoreGui.RobloxGui.Modules.AvatarEditorPrompts.Components.Prompts.SaveAvatarPrompt:


  -  Edit
  07:37:46.173  CoreGui.RobloxGui.Modules.AvatarEditorPrompts.Components.Prompts.SetFavoritePrompt:


  -  Edit
  07:37:46.173  CoreGui.RobloxGui.Modules.AvatarEditorPrompts.Components.Prompts.UpdateOutfitPrompt:


  -  Edit
  07:37:46.173  CoreGui.RobloxGui.Modules.AvatarEditorPrompts.ConnectAvatarEditorServiceEvents:


  -  Edit
  07:37:46.173  CoreGui.RobloxGui.Modules.AvatarEditorPrompts.GetAssetIdsFromDescription:


  -  Edit
  07:37:46.173  CoreGui.RobloxGui.Modules.AvatarEditorPrompts.GetAssetNamesForIds:


  -  Edit
  07:37:46.173  CoreGui.RobloxGui.Modules.AvatarEditorPrompts.GetAssetsDifference:


  -  Edit
  07:37:46.173  CoreGui.RobloxGui.Modules.AvatarEditorPrompts.GetConformedHumanoidDescription:


  -  Edit
  07:37:46.173  CoreGui.RobloxGui.Modules.AvatarEditorPrompts.GetCurrentHumanoidDescription:


  -  Edit
  07:37:46.173  CoreGui.RobloxGui.Modules.AvatarEditorPrompts.Network.GetOutfitName:


  -  Edit
  07:37:46.173  CoreGui.RobloxGui.Modules.AvatarEditorPrompts.PromptType:


  -  Edit
  07:37:46.173  CoreGui.RobloxGui.Modules.AvatarEditorPrompts.Reducer:


  -  Edit
  07:37:46.173  CoreGui.RobloxGui.Modules.AvatarEditorPrompts.Reducer.AnalyticsInfo:


  -  Edit
  07:37:46.173  CoreGui.RobloxGui.Modules.AvatarEditorPrompts.Reducer.GameName:


  -  Edit
  07:37:46.173  CoreGui.RobloxGui.Modules.AvatarEditorPrompts.Reducer.PromptInfo:


  -  Edit
  07:37:46.173  CoreGui.RobloxGui.Modules.AvatarEditorPrompts.Reducer.ScreenSize:


  -  Edit
  07:37:46.174  CoreGui.RobloxGui.Modules.AvatarEditorPrompts.RoactGlobalConfig:


  -  Edit
  07:37:46.174  CoreGui.RobloxGui.Modules.AvatarEditorPrompts.Thunks.CloseOpenPrompt:


  -  Edit
  07:37:46.174  CoreGui.RobloxGui.Modules.AvatarEditorPrompts.Thunks.GetGameName:


  -  Edit
  07:37:46.174  CoreGui.RobloxGui.Modules.AvatarEditorPrompts.Thunks.OpenDeleteOutfitPrompt:


  -  Edit
  07:37:46.174  CoreGui.RobloxGui.Modules.AvatarEditorPrompts.Thunks.OpenRenameOutfitPrompt:


  -  Edit
  07:37:46.174  CoreGui.RobloxGui.Modules.AvatarEditorPrompts.Thunks.OpenSaveAvatarPrompt:


  -  Edit
  07:37:46.174  CoreGui.RobloxGui.Modules.AvatarEditorPrompts.Thunks.OpenSetFavoritePrompt:


  -  Edit
  07:37:46.174  CoreGui.RobloxGui.Modules.AvatarEditorPrompts.Thunks.OpenUpdateOutfitPrompt:


  -  Edit
  07:37:46.174  CoreGui.RobloxGui.Modules.AvatarEditorPrompts.Thunks.PerformCreateOutfit:


  -  Edit
  07:37:46.174  CoreGui.RobloxGui.Modules.AvatarEditorPrompts.Thunks.PerformDeleteOutfit:


  -  Edit
  07:37:46.174  CoreGui.RobloxGui.Modules.AvatarEditorPrompts.Thunks.PerformRenameOutfit:


  -  Edit
  07:37:46.174  CoreGui.RobloxGui.Modules.AvatarEditorPrompts.Thunks.PerformSaveAvatar:


  -  Edit
  07:37:46.174  CoreGui.RobloxGui.Modules.AvatarEditorPrompts.Thunks.PerformSetFavorite:


  -  Edit
  07:37:46.174  CoreGui.RobloxGui.Modules.AvatarEditorPrompts.Thunks.PerformUpdateOutfit:


  -  Edit
  07:37:46.174  CoreGui.RobloxGui.Modules.AvatarEditorPrompts.Thunks.SetAllowInventoryReadAccess:


  -  Edit
  07:37:46.175  CoreGui.RobloxGui.Modules.AvatarEditorPrompts.Thunks.SignalCreateOutfitPermissionDenied:


  -  Edit
  07:37:46.175  CoreGui.RobloxGui.Modules.AvatarEditorPrompts.Thunks.SignalDeleteOutfitPermissionDenied:


  -  Edit
  07:37:46.175  CoreGui.RobloxGui.Modules.AvatarEditorPrompts.Thunks.SignalRenameOutfitPermissionDenied:


  -  Edit
  07:37:46.175  CoreGui.RobloxGui.Modules.AvatarEditorPrompts.Thunks.SignalSaveAvatarPermissionDenied:


  -  Edit
  07:37:46.175  CoreGui.RobloxGui.Modules.AvatarEditorPrompts.Thunks.SignalSetFavoritePermissionDenied:


  -  Edit
  07:37:46.175  CoreGui.RobloxGui.Modules.AvatarEditorPrompts.Thunks.SignalUpdateOutfitPermissionDenied:


  -  Edit
  07:37:46.175  CoreGui.RobloxGui.Modules.Settings.Analytics.BlockingAnalytics:


  -  Edit
  07:37:46.175  CoreGui.RobloxGui.Modules.Settings.Analytics.CoreGuiFinalStateAnalytics:


  -  Edit
  07:37:46.175  CoreGui.RobloxGui.Modules.Settings.Analytics.VoiceAnalytics:


  -  Edit
  07:37:46.175  CoreGui.RobloxGui.Modules.Settings.BackButtonController:


  -  Edit
  07:37:46.175  CoreGui.RobloxGui.Modules.Settings.cameraDevicePermissionGrantedSignal:


  -  Edit
  07:37:46.175  CoreGui.RobloxGui.Modules.Settings.cameraDevicesHelper:


  -  Edit
  07:37:46.175  CoreGui.RobloxGui.Modules.Settings.Components.Blocking.ActionModal:


  -  Edit
  07:37:46.175  CoreGui.RobloxGui.Modules.Settings.Components.Blocking.BlockingModalContainer:


  -  Edit
  07:37:46.176  CoreGui.RobloxGui.Modules.Settings.Components.Blocking.BlockingModalScreen:


  -  Edit
  07:37:46.176  CoreGui.RobloxGui.Modules.Settings.Components.DropdownMenu:


  -  Edit
  07:37:46.176  CoreGui.RobloxGui.Modules.Settings.Components.MenuBackButton:


  -  Edit
  07:37:46.176  CoreGui.RobloxGui.Modules.Settings.Components.MenuFrontButton:


  -  Edit
  07:37:46.176  CoreGui.RobloxGui.Modules.Settings.Components.MuteToggles:


  -  Edit
  07:37:46.176  CoreGui.RobloxGui.Modules.Settings.Components.OverscanWrapper:


  -  Edit
  07:37:46.176  CoreGui.RobloxGui.Modules.Settings.Components.PermissionButton:


  -  Edit
  07:37:46.176  CoreGui.RobloxGui.Modules.Settings.Components.PermissionsButtons:


  -  Edit
  07:37:46.176  CoreGui.RobloxGui.Modules.Settings.Components.RecordingIndicator:


  -  Edit
  07:37:46.176  CoreGui.RobloxGui.Modules.Settings.Components.ReportConfirmation.CheckboxRow:


  -  Edit
  07:37:46.176  CoreGui.RobloxGui.Modules.Settings.Components.ReportConfirmation.ReportActionAreYouSure:


  -  Edit
  07:37:46.176  CoreGui.RobloxGui.Modules.Settings.Components.ReportConfirmation.ReportActionSelection:


  -  Edit
  07:37:46.176  CoreGui.RobloxGui.Modules.Settings.Components.ReportConfirmation.ReportConfirmationContainer:


  -  Edit
  07:37:46.176  CoreGui.RobloxGui.Modules.Settings.Components.ReportConfirmation.ReportConfirmationScreen:


  -  Edit
  07:37:46.177  CoreGui.RobloxGui.Modules.Settings.Components.SettingsFullScreenTitleBar:


  -  Edit
  07:37:46.177  CoreGui.RobloxGui.Modules.Settings.Enum.SeamlessVoiceStatus:


  -  Edit
  07:37:46.177  CoreGui.RobloxGui.Modules.Settings.Enum.UserSorts:


  -  Edit
  07:37:46.177  CoreGui.RobloxGui.Modules.Settings.Flags.FFlagInExperienceMenuCanvasGroupsInvisible:


  -  Edit
  07:37:46.177  CoreGui.RobloxGui.Modules.Settings.Flags.FFlagInExperienceMenuReorderFirstVariant:


  -  Edit
  07:37:46.177  CoreGui.RobloxGui.Modules.Settings.Flags.FFlagInExperienceMenuResetButtonTextToRespawn:


  -  Edit
  07:37:46.177  CoreGui.RobloxGui.Modules.Settings.Flags.FFlagOverrideInExperienceMenuReorderFirstVariant:


  -  Edit
  07:37:46.177  CoreGui.RobloxGui.Modules.Settings.Flags.FFlagRefactorInExpGameSettings:


  -  Edit
  07:37:46.177  CoreGui.RobloxGui.Modules.Settings.Flags.GetFFlagAbuseReportAnalyticsHasLaunchData:


  -  Edit
  07:37:46.177  CoreGui.RobloxGui.Modules.Settings.Flags.GetFFlagDefaultFriendingLabelTextNonEmpty:


  -  Edit
  07:37:46.177  CoreGui.RobloxGui.Modules.Settings.Flags.GetFFlagDisableMuteAllCheckForIsMuted:


  -  Edit
  07:37:46.177  CoreGui.RobloxGui.Modules.Settings.Flags.GetFFlagEnableExplicitSettingsChangeAnalytics:


  -  Edit
  07:37:46.177  CoreGui.RobloxGui.Modules.Settings.Flags.GetFFlagEnableLeaveGameUpsellEntrypoint:


  -  Edit
  07:37:46.177  CoreGui.RobloxGui.Modules.Settings.Flags.GetFFlagFixCyclicFullscreenIndexEvent:


  -  Edit
  07:37:46.177  CoreGui.RobloxGui.Modules.Settings.Flags.GetFFlagFixIGMBottomBarVisibility:


  -  Edit
  07:37:46.177  CoreGui.RobloxGui.Modules.Settings.Flags.GetFFlagFixIGMTabTransitions:


  -  Edit
  07:37:46.177  CoreGui.RobloxGui.Modules.Settings.Flags.GetFFlagFixPermissionsButtonsEvents:


  -  Edit
  07:37:46.177  CoreGui.RobloxGui.Modules.Settings.Flags.GetFFlagIGMv1ARFlowExpandedAnalyticsEnabled:


  -  Edit
  07:37:46.177  CoreGui.RobloxGui.Modules.Settings.Flags.GetFFlagMuteTogglesEnableIXP:


  -  Edit
  07:37:46.177  CoreGui.RobloxGui.Modules.Settings.Flags.GetFFlagReportAbuseMenuEntrypointAnalytics:


  -  Edit
  07:37:46.177  CoreGui.RobloxGui.Modules.Settings.Flags.GetFFlagRetryMutingNonFriends:


  -  Edit
  07:37:46.177  CoreGui.RobloxGui.Modules.Settings.Flags.GetFFlagSettingsHubButtonCanBeDisabled:


  -  Edit
  07:37:46.178  CoreGui.RobloxGui.Modules.Settings.Flags.GetFFlagShareGameSearchBoxFocusAnalytics:


  -  Edit
  07:37:46.178  CoreGui.RobloxGui.Modules.Settings.Flags.GetFFlagShowMuteToggles:


  -  Edit
  07:37:46.178  CoreGui.RobloxGui.Modules.Settings.Flags.GetFFlagSingleUserInvitePageKeybind:


  -  Edit
  07:37:46.178  CoreGui.RobloxGui.Modules.Settings.Flags.GetFFlagUseFriendsPropsInMuteToggles:


  -  Edit
  07:37:46.178  CoreGui.RobloxGui.Modules.Settings.Flags.GetFIntIGMv1ARFlowCSWaitFrames:


  -  Edit
  07:37:46.178  CoreGui.RobloxGui.Modules.Settings.Flags.GetFStringInExperienceMenuIXPLayer:


  -  Edit
  07:37:46.178  CoreGui.RobloxGui.Modules.Settings.Flags.GetFStringInExperienceMenuIXPVar:


  -  Edit
  07:37:46.178  CoreGui.RobloxGui.Modules.Settings.Flags.GetFStringMuteTogglesIXPLayerName:


  -  Edit
  07:37:46.178  CoreGui.RobloxGui.Modules.Settings.FrontButtonController:


  -  Edit
  07:37:46.178  CoreGui.RobloxGui.Modules.Settings.getCamMicPermissions:


  -  Edit
  07:37:46.178  CoreGui.RobloxGui.Modules.Settings.GfxReset:


  -  Edit
  07:37:46.178  CoreGui.RobloxGui.Modules.Settings.Integrations:


  -  Edit
  07:37:46.178  CoreGui.RobloxGui.Modules.Settings.Integrations.Constants:


  -  Edit
  07:37:46.178  CoreGui.RobloxGui.Modules.Settings.Integrations.SettingFields.CameraInverted:


  -  Edit
  07:37:46.178  CoreGui.RobloxGui.Modules.Settings.Integrations.SettingFields.Fullscreen:


  -  Edit
  07:37:46.178  CoreGui.RobloxGui.Modules.Settings.Integrations.SettingFields.Haptics:


  -  Edit
  07:37:46.179  CoreGui.RobloxGui.Modules.Settings.Integrations.SettingFields.PerformanceStats:


  -  Edit
  07:37:46.179  CoreGui.RobloxGui.Modules.Settings.Integrations.SettingFields.ReducedMotion:


  -  Edit
  07:37:46.179  CoreGui.RobloxGui.Modules.Settings.Integrations.SettingFields.ShiftLock:


  -  Edit
  07:37:46.179  CoreGui.RobloxGui.Modules.Settings.Integrations.SettingFields.UINavToggle:


  -  Edit
  07:37:46.179  CoreGui.RobloxGui.Modules.Settings.Integrations.Settings:


  -  Edit
  07:37:46.179  CoreGui.RobloxGui.Modules.Settings.Integrations.Utils:


  -  Edit
  07:37:46.179  CoreGui.RobloxGui.Modules.Settings.isCamEnabledForUserAndPlace:


  -  Edit
  07:37:46.179  CoreGui.RobloxGui.Modules.Settings.isCameraOnlyUser:


  -  Edit
  07:37:46.179  CoreGui.RobloxGui.Modules.Settings.leaveGame:


  -  Edit
  07:37:46.179  CoreGui.RobloxGui.Modules.Settings.Models.Game:


  -  Edit
  07:37:46.179  CoreGui.RobloxGui.Modules.Settings.onBlockButtonActivated:


  -  Edit
  07:37:46.179  CoreGui.RobloxGui.Modules.Settings.Pages.AppChat:


  -  Edit
  07:37:46.179  CoreGui.RobloxGui.Modules.Settings.Pages.CapturesPageWrapper:


  -  Edit
  07:37:46.179  CoreGui.RobloxGui.Modules.Settings.Pages.ExitModal:


  -  Edit
  07:37:46.180  CoreGui.RobloxGui.Modules.Settings.Pages.GameSettings:


  -  Edit
  07:37:46.180  CoreGui.RobloxGui.Modules.Settings.Pages.GameSettingsRowInitializers.ChatTranslationOptionsWithChatLanguageSwitcherInitializer:


  -  Edit
  07:37:46.180  CoreGui.RobloxGui.Modules.Settings.Pages.GameSettingsWrapper:


  -  Edit
  07:37:46.180  CoreGui.RobloxGui.Modules.Settings.Pages.Help:


  -  Edit
  07:37:46.180  CoreGui.RobloxGui.Modules.Settings.Pages.LeaveGame:


  -  Edit
  07:37:46.180  CoreGui.RobloxGui.Modules.Settings.Pages.LeaveGameToHome:


  -  Edit
  07:37:46.180  CoreGui.RobloxGui.Modules.Settings.Pages.LeaveGameUpsell.LeaveGameUpsell:


  -  Edit
  07:37:46.180  CoreGui.RobloxGui.Modules.Settings.Pages.Players:


  -  Edit
  07:37:46.180  CoreGui.RobloxGui.Modules.Settings.Pages.Record:


  -  Edit
  07:37:46.180  CoreGui.RobloxGui.Modules.Settings.Pages.ReportAbuseMenuNewContainerPage:


  -  Edit
  07:37:46.180  CoreGui.RobloxGui.Modules.Settings.Pages.ReportSentPage:


  -  Edit
  07:37:46.180  CoreGui.RobloxGui.Modules.Settings.Pages.ReportSentPageV2:


  -  Edit
  07:37:46.180  CoreGui.RobloxGui.Modules.Settings.Pages.ResetCharacter:


  -  Edit
  07:37:46.180  CoreGui.RobloxGui.Modules.Settings.Pages.ShareGame.Actions.ClosePage:


  -  Edit
  07:37:46.180  CoreGui.RobloxGui.Modules.Settings.Pages.ShareGame.Actions.OpenPage:


  -  Edit
  07:37:46.181  CoreGui.RobloxGui.Modules.Settings.Pages.ShareGame.Actions.ReceivedUserInviteStatus:


  -  Edit
  07:37:46.181  CoreGui.RobloxGui.Modules.Settings.Pages.ShareGame.Actions.SetDeviceLayout:


  -  Edit
  07:37:46.181  CoreGui.RobloxGui.Modules.Settings.Pages.ShareGame.Actions.SetGameInfoCreated:


  -  Edit
  07:37:46.181  CoreGui.RobloxGui.Modules.Settings.Pages.ShareGame.Actions.SetIsSmallTouchScreen:


  -  Edit
  07:37:46.181  CoreGui.RobloxGui.Modules.Settings.Pages.ShareGame.Actions.SetSearchAreaActive:


  -  Edit
  07:37:46.181  CoreGui.RobloxGui.Modules.Settings.Pages.ShareGame.Actions.SetSearchText:


  -  Edit
  07:37:46.181  CoreGui.RobloxGui.Modules.Settings.Pages.ShareGame.Actions.StoppedToastTimer:


  -  Edit
  07:37:46.181  CoreGui.RobloxGui.Modules.Settings.Pages.ShareGame.AppReducer:


  -  Edit
  07:37:46.181  CoreGui.RobloxGui.Modules.Settings.Pages.ShareGame.Components.App:


  -  Edit
  07:37:46.181  CoreGui.RobloxGui.Modules.Settings.Pages.ShareGame.Components.BackButton:


  -  Edit
  07:37:46.181  CoreGui.RobloxGui.Modules.Settings.Pages.ShareGame.Components.ConversationDetails:


  -  Edit
  07:37:46.181  CoreGui.RobloxGui.Modules.Settings.Pages.ShareGame.Components.ConversationEntry:


  -  Edit
  07:37:46.181  CoreGui.RobloxGui.Modules.Settings.Pages.ShareGame.Components.ConversationList:


  -  Edit
  07:37:46.181  CoreGui.RobloxGui.Modules.Settings.Pages.ShareGame.Components.ConversationThumbnail:


  -  Edit
  07:37:46.182  CoreGui.RobloxGui.Modules.Settings.Pages.ShareGame.Components.ErrorToaster:


  -  Edit
  07:37:46.182  CoreGui.RobloxGui.Modules.Settings.Pages.ShareGame.Components.FriendsErrorPage:


  -  Edit
  07:37:46.182  CoreGui.RobloxGui.Modules.Settings.Pages.ShareGame.Components.FullModalShareGameComponent:


  -  Edit
  07:37:46.182  CoreGui.RobloxGui.Modules.Settings.Pages.ShareGame.Components.Header:


  -  Edit
  07:37:46.182  CoreGui.RobloxGui.Modules.Settings.Pages.ShareGame.Components.IconButton:


  -  Edit
  07:37:46.182  CoreGui.RobloxGui.Modules.Settings.Pages.ShareGame.Components.InviteButton:


  -  Edit
  07:37:46.182  CoreGui.RobloxGui.Modules.Settings.Pages.ShareGame.Components.InviteListEntry:


  -  Edit
  07:37:46.182  CoreGui.RobloxGui.Modules.Settings.Pages.ShareGame.Components.InviteSingleUserContainer:


  -  Edit
  07:37:46.182  CoreGui.RobloxGui.Modules.Settings.Pages.ShareGame.Components.LayoutProvider:


  -  Edit
  07:37:46.182  CoreGui.RobloxGui.Modules.Settings.Pages.ShareGame.Components.LoadingFriendsPage:


  -  Edit
  07:37:46.182  CoreGui.RobloxGui.Modules.Settings.Pages.ShareGame.Components.LoadingModal:


  -  Edit
  07:37:46.182  CoreGui.RobloxGui.Modules.Settings.Pages.ShareGame.Components.ModalShareGamePageFrame:


  -  Edit
  07:37:46.183  CoreGui.RobloxGui.Modules.Settings.Pages.ShareGame.Components.NoFriendsPage:


  -  Edit
  07:37:46.183  CoreGui.RobloxGui.Modules.Settings.Pages.ShareGame.Components.RectangleButton:


  -  Edit
  07:37:46.183  CoreGui.RobloxGui.Modules.Settings.Pages.ShareGame.Components.SearchArea:


  -  Edit
  07:37:46.183  CoreGui.RobloxGui.Modules.Settings.Pages.ShareGame.Components.SearchBox:


  -  Edit
  07:37:46.183  CoreGui.RobloxGui.Modules.Settings.Pages.ShareGame.Components.ShareButton:


  -  Edit
  07:37:46.183  CoreGui.RobloxGui.Modules.Settings.Pages.ShareGame.Components.ShareGameContainer:


  -  Edit
  07:37:46.183  CoreGui.RobloxGui.Modules.Settings.Pages.ShareGame.Components.ShareGamePageFrame:


  -  Edit
  07:37:46.183  CoreGui.RobloxGui.Modules.Settings.Pages.ShareGame.Components.ShareInviteLink:


  -  Edit
  07:37:46.183  CoreGui.RobloxGui.Modules.Settings.Pages.ShareGame.Components.ShareInviteLinkMapDispatchToProps:


  -  Edit
  07:37:46.183  CoreGui.RobloxGui.Modules.Settings.Pages.ShareGame.Components.ShareInviteLinkMapStateToProps:


  -  Edit
  07:37:46.183  CoreGui.RobloxGui.Modules.Settings.Pages.ShareGame.Components.SingleUserThumbnail:


  -  Edit
  07:37:46.183  CoreGui.RobloxGui.Modules.Settings.Pages.ShareGame.Constants:


  -  Edit
  07:37:46.183  CoreGui.RobloxGui.Modules.Settings.Pages.ShareGame.getCustomizedInvitePromptParams:


  -  Edit
  07:37:46.183  CoreGui.RobloxGui.Modules.Settings.Pages.ShareGame.getTranslator:


  -  Edit
  07:37:46.183  CoreGui.RobloxGui.Modules.Settings.Pages.ShareGame.InviteStore:


  -  Edit
  07:37:46.183  CoreGui.RobloxGui.Modules.Settings.Pages.ShareGame.InviteToGamePrompt:


  -  Edit
  07:37:46.184  CoreGui.RobloxGui.Modules.Settings.Pages.ShareGame.mockTranslator:


  -  Edit
  07:37:46.184  CoreGui.RobloxGui.Modules.Settings.Pages.ShareGame.NewInviteMenuExperimentManager:


  -  Edit
  07:37:46.184  CoreGui.RobloxGui.Modules.Settings.Pages.ShareGame.PresenceUtil:


  -  Edit
  07:37:46.184  CoreGui.RobloxGui.Modules.Settings.Pages.ShareGame.Reducers.ConversationsSearch:


  -  Edit
  07:37:46.184  CoreGui.RobloxGui.Modules.Settings.Pages.ShareGame.Reducers.DeviceInfo:


  -  Edit
  07:37:46.184  CoreGui.RobloxGui.Modules.Settings.Pages.ShareGame.Reducers.GameInfo:


  -  Edit
  07:37:46.184  CoreGui.RobloxGui.Modules.Settings.Pages.ShareGame.Reducers.Invites:


  -  Edit
  07:37:46.184  CoreGui.RobloxGui.Modules.Settings.Pages.ShareGame.Reducers.Page:


  -  Edit
  07:37:46.184  CoreGui.RobloxGui.Modules.Settings.Pages.ShareGame.Reducers.Toasts:


  -  Edit
  07:37:46.184  CoreGui.RobloxGui.Modules.Settings.Pages.ShareGame.Spritesheets.ShareGameIcons:


  -  Edit
  07:37:46.184  CoreGui.RobloxGui.Modules.Settings.Pages.ShareGame.ThrottleFunctionCall:


  -  Edit
  07:37:46.184  CoreGui.RobloxGui.Modules.Settings.Pages.ShareGame.Thunks.ApiFetchUsersFriends:


  -  Edit
  07:37:46.184  CoreGui.RobloxGui.Modules.Settings.Pages.ShareGame.Thunks.ApiGetCanSendAndCanCustomizeInvites:


  -  Edit
  07:37:46.184  CoreGui.RobloxGui.Modules.Settings.Pages.ShareGame.Thunks.ApiSendGameInvite:


  -  Edit
  07:37:46.184  CoreGui.RobloxGui.Modules.Settings.Pages.ShareGame.Thunks.FetchUserFriends:


  -  Edit
  07:37:46.185  CoreGui.RobloxGui.Modules.Settings.Pages.ShareGame.Thunks.InviteUserIdToPlaceId:


  -  Edit
  07:37:46.185  CoreGui.RobloxGui.Modules.Settings.Pages.ShareGame.Thunks.InviteUserIdToPlaceIdCustomized:


  -  Edit
  07:37:46.185  CoreGui.RobloxGui.Modules.Settings.Pages.ShareGamePlaceholderPage:


  -  Edit
  07:37:46.185  CoreGui.RobloxGui.Modules.Settings.Reducers.SettingsReducer:


  -  Edit
  07:37:46.185  CoreGui.RobloxGui.Modules.Settings.Resources.Constants:


  -  Edit
  07:37:46.185  CoreGui.RobloxGui.Modules.Settings.Resources.GameSettingsConstants:


  -  Edit
  07:37:46.185  CoreGui.RobloxGui.Modules.Settings.Resources.MicrophoneDevicePermissionsLogging:


  -  Edit
  07:37:46.185  CoreGui.RobloxGui.Modules.Settings.Resources.SharedSettingsService:


  -  Edit
  07:37:46.185  CoreGui.RobloxGui.Modules.Settings.Settings.storybook:


  -  Edit
  07:37:46.185  CoreGui.RobloxGui.Modules.Settings.SettingsHub:


  -  Edit
  07:37:46.185  CoreGui.RobloxGui.Modules.Settings.SettingsPageFactory:


  -  Edit
  07:37:46.185  CoreGui.RobloxGui.Modules.Settings.SettingsState:


  -  Edit
  07:37:46.185  CoreGui.RobloxGui.Modules.Settings.ShareGameMaster:


  -  Edit
  07:37:46.185  CoreGui.RobloxGui.Modules.Settings.Theme:


  -  Edit
  07:37:46.186  CoreGui.RobloxGui.Modules.Settings.Utility:


  -  Edit
  07:37:46.186  CoreGui.RobloxGui.Modules.InGameMenuConstants:


  -  Edit
  07:37:46.186  CoreGui.RobloxGui.Modules.Common.Action:


  -  Edit
  07:37:46.186  CoreGui.RobloxGui.Modules.Common.Analytics:


  -  Edit
  07:37:46.186  CoreGui.RobloxGui.Modules.Common.AnalyticsReporters.Diag:


  -  Edit
  07:37:46.186  CoreGui.RobloxGui.Modules.Common.AnalyticsReporters.EventStream:


  -  Edit
  07:37:46.186  CoreGui.RobloxGui.Modules.Common.AnalyticsReporters.GoogleAnalytics:


  -  Edit
  07:37:46.186  CoreGui.RobloxGui.Modules.Common.AnalyticsReporters.Influx:


  -  Edit
  07:37:46.186  CoreGui.RobloxGui.Modules.Common.AvatarChatConstants:


  -  Edit
  07:37:46.186  CoreGui.RobloxGui.Modules.Common.CommonUtil:


  -  Edit
  07:37:46.186  CoreGui.RobloxGui.Modules.Common.EventConnection:


  -  Edit
  07:37:46.186  CoreGui.RobloxGui.Modules.Common.Examples.Roact-asteroids:


  -  Edit
  07:37:46.186  CoreGui.RobloxGui.Modules.Common.Examples.Roact-context:


  -  Edit
  07:37:46.186  CoreGui.RobloxGui.Modules.Common.Examples.Roact-counter:


  -  Edit
  07:37:46.186  CoreGui.RobloxGui.Modules.Common.Examples.Roact-events:


  -  Edit
  07:37:46.186  CoreGui.RobloxGui.Modules.Common.Examples.Roact-ref:


  -  Edit
  07:37:46.186  CoreGui.RobloxGui.Modules.Common.Examples.Roact-rodux:


  -  Edit
  07:37:46.187  CoreGui.RobloxGui.Modules.Common.Examples.Roact-router:


  -  Edit
  07:37:46.187  CoreGui.RobloxGui.Modules.Common.Examples.Roact-stress:


  -  Edit
  07:37:46.187  CoreGui.RobloxGui.Modules.Common.Flags.FFlagEnableForkedChatAnalytics:


  -  Edit
  07:37:46.187  CoreGui.RobloxGui.Modules.Common.Flags.FFlagInExperienceUserProfileSettingsEnabled:


  -  Edit
  07:37:46.187  CoreGui.RobloxGui.Modules.Common.Flags.FFlagMoveUGCValidationFunctionFeature:


  -  Edit
  07:37:46.187  CoreGui.RobloxGui.Modules.Common.Flags.FFlagWaveEmoteOnAvatarContextMenuWithExpChat:


  -  Edit
  07:37:46.187  CoreGui.RobloxGui.Modules.Common.Flags.FFlagWhisperEmoteOnAvatarContextMenuWithExpChat:


  -  Edit
  07:37:46.187  CoreGui.RobloxGui.Modules.Common.Flags.FStringRccInExperienceNameEnabledAllowList:


  -  Edit
  07:37:46.187  CoreGui.RobloxGui.Modules.Common.Flags.GetFFlagContactListClientEnabled:


  -  Edit
  07:37:46.187  CoreGui.RobloxGui.Modules.Common.Flags.GetFFlagContactListEnabled:


  -  Edit
  07:37:46.187  CoreGui.RobloxGui.Modules.Common.Flags.GetFFlagEnableInGameMenuDurationLogger:


  -  Edit
  07:37:46.187  CoreGui.RobloxGui.Modules.Common.Flags.GetFFlagEnableIXPInGame:


  -  Edit
  07:37:46.188  CoreGui.RobloxGui.Modules.Common.Flags.GetFFlagEnableVoiceDefaultServerScript:


  -  Edit
  07:37:46.188  CoreGui.RobloxGui.Modules.Common.Flags.GetFFlagPlayerViewRemoteEnabled:


  -  Edit
  07:37:46.188  CoreGui.RobloxGui.Modules.Common.Flags.GetFFlagPlayerViewValidateRequesteeEnabled:


  -  Edit
  07:37:46.188  CoreGui.RobloxGui.Modules.Common.Flags.GetIXPServiceWrapperWaitRefactor:


  -  Edit
  07:37:46.188  CoreGui.RobloxGui.Modules.Common.Functional:


  -  Edit
  07:37:46.188  CoreGui.RobloxGui.Modules.Common.GetHasGuiHidingPermission:


  -  Edit
  07:37:46.188  CoreGui.RobloxGui.Modules.Common.Hooks.useLocalPlayer:


  -  Edit
  07:37:46.188  CoreGui.RobloxGui.Modules.Common.Hooks.usePlayerCurrentScreenOrientation:


  -  Edit
  07:37:46.188  CoreGui.RobloxGui.Modules.Common.Hooks.usePlayerGui:


  -  Edit
  07:37:46.188  CoreGui.RobloxGui.Modules.Common.Hooks.useScreenSize:


  -  Edit
  07:37:46.188  CoreGui.RobloxGui.Modules.Common.httpRequest:


  -  Edit
  07:37:46.188  CoreGui.RobloxGui.Modules.Common.HumanoidReadyUtil:


  -  Edit
  07:37:46.188  CoreGui.RobloxGui.Modules.Common.Immutable:


  -  Edit
  07:37:46.189  CoreGui.RobloxGui.Modules.Common.LegacyThumbnailUrls:


  -  Edit
  07:37:46.189  CoreGui.RobloxGui.Modules.Common.LuaErrorReporter:


  -  Edit
  07:37:46.189  CoreGui.RobloxGui.Modules.Common.memoize:


  -  Edit
  07:37:46.189  CoreGui.RobloxGui.Modules.Common.NoYield:


  -  Edit
  07:37:46.189  CoreGui.RobloxGui.Modules.Common.ObjectPool:


  -  Edit
  07:37:46.189  CoreGui.RobloxGui.Modules.Common.PerfUtils:


  -  Edit
  07:37:46.189  CoreGui.RobloxGui.Modules.Common.RagdollRigging:


  -  Edit
  07:37:46.189  CoreGui.RobloxGui.Modules.Common.ReactPerfTracker:


  -  Edit
  07:37:46.189  CoreGui.RobloxGui.Modules.Common.removePII:


  -  Edit
  07:37:46.189  CoreGui.RobloxGui.Modules.Common.renderWithCoreScriptsStyleProvider:


  -  Edit
  07:37:46.189  CoreGui.RobloxGui.Modules.Common.Roact:


  -  Edit
  07:37:46.189  CoreGui.RobloxGui.Modules.Common.RoactRodux:


  -  Edit
  07:37:46.189  CoreGui.RobloxGui.Modules.Common.RoactUtilities.ExternalEventConnection:


  -  Edit
  07:37:46.189  CoreGui.RobloxGui.Modules.Common.RobloxTelemetryConfigs.LuaErrorV2CounterConfig:


  -  Edit
  07:37:46.189  CoreGui.RobloxGui.Modules.Common.RobloxTelemetryConfigs.LuaShellErrors:


  -  Edit
  07:37:46.190  CoreGui.RobloxGui.Modules.Common.Rodux:


  -  Edit
  07:37:46.190  CoreGui.RobloxGui.Modules.Common.Signal:


  -  Edit
  07:37:46.190  CoreGui.RobloxGui.Modules.Common.Spring:


  -  Edit
  07:37:46.190  CoreGui.RobloxGui.Modules.Common.StringUtilities.ParseQuery:


  -  Edit
  07:37:46.190  CoreGui.RobloxGui.Modules.Common.StringUtilities.StringReplaceAll:


  -  Edit
  07:37:46.190  CoreGui.RobloxGui.Modules.Common.StringUtilities.StringSplit:


  -  Edit
  07:37:46.190  CoreGui.RobloxGui.Modules.Common.StringUtilities.StringTrim:


  -  Edit
  07:37:46.190  CoreGui.RobloxGui.Modules.Common.Symbol:


  -  Edit
  07:37:46.190  CoreGui.RobloxGui.Modules.Common.Text:


  -  Edit
  07:37:46.190  CoreGui.RobloxGui.Modules.BackpackScript:


  -  Edit
  07:37:46.190  CoreGui.RobloxGui.Modules.EmotesMenu.Actions.EmotesChanged:


  -  Edit
  07:37:46.190  CoreGui.RobloxGui.Modules.EmotesMenu.Actions.EquippedEmotesChanged:


  -  Edit
  07:37:46.190  CoreGui.RobloxGui.Modules.EmotesMenu.Actions.FocusSegment:


  -  Edit
  07:37:46.191  CoreGui.RobloxGui.Modules.EmotesMenu.Actions.HideError:


  -  Edit
  07:37:46.191  CoreGui.RobloxGui.Modules.EmotesMenu.Actions.HideMenu:


  -  Edit
  07:37:46.191  CoreGui.RobloxGui.Modules.EmotesMenu.Actions.NumberEmotesLoadedChanged:


  -  Edit
  07:37:46.191  CoreGui.RobloxGui.Modules.EmotesMenu.Actions.SetGuiInset:


  -  Edit
  07:37:46.191  CoreGui.RobloxGui.Modules.EmotesMenu.Actions.SetLayout:


  -  Edit
  07:37:46.191  CoreGui.RobloxGui.Modules.EmotesMenu.Actions.SetLocale:


  -  Edit
  07:37:46.191  CoreGui.RobloxGui.Modules.EmotesMenu.Actions.ShowError:


  -  Edit
  07:37:46.191  CoreGui.RobloxGui.Modules.EmotesMenu.Actions.ShowMenu:


  -  Edit
  07:37:46.191  CoreGui.RobloxGui.Modules.EmotesMenu.Analytics:


  -  Edit
  07:37:46.191  CoreGui.RobloxGui.Modules.EmotesMenu.Components.EmotesButtons:


  -  Edit
  07:37:46.191  CoreGui.RobloxGui.Modules.EmotesMenu.Components.EmotesMenu:


  -  Edit
  07:37:46.191  CoreGui.RobloxGui.Modules.EmotesMenu.Components.EmotesWheel:


  -  Edit
  07:37:46.191  CoreGui.RobloxGui.Modules.EmotesMenu.Components.ErrorMessage:


  -  Edit
  07:37:46.191  CoreGui.RobloxGui.Modules.EmotesMenu.Components.SelectionEffect:


  -  Edit
  07:37:46.191  CoreGui.RobloxGui.Modules.EmotesMenu.Components.SelectionGradient:


  -  Edit
  07:37:46.191  CoreGui.RobloxGui.Modules.EmotesMenu.Components.SlotNumbers:


  -  Edit
  07:37:46.192  CoreGui.RobloxGui.Modules.EmotesMenu.Components.WheelBackground:


  -  Edit
  07:37:46.192  CoreGui.RobloxGui.Modules.EmotesMenu.Components.WheelText:


  -  Edit
  07:37:46.192  CoreGui.RobloxGui.Modules.EmotesMenu.Constants:


  -  Edit
  07:37:46.192  CoreGui.RobloxGui.Modules.EmotesMenu.EmotesMenuMaster:


  -  Edit
  07:37:46.192  CoreGui.RobloxGui.Modules.EmotesMenu.Layouts.Large:


  -  Edit
  07:37:46.192  CoreGui.RobloxGui.Modules.EmotesMenu.Layouts.Small:


  -  Edit
  07:37:46.192  CoreGui.RobloxGui.Modules.EmotesMenu.Layouts.TenFoot:


  -  Edit
  07:37:46.192  CoreGui.RobloxGui.Modules.EmotesMenu.Reducers.DisplayOptions:


  -  Edit
  07:37:46.192  CoreGui.RobloxGui.Modules.EmotesMenu.Reducers.EmotesMenuReducer:


  -  Edit
  07:37:46.192  CoreGui.RobloxGui.Modules.EmotesMenu.Reducers.EmotesPage:


  -  Edit
  07:37:46.192  CoreGui.RobloxGui.Modules.EmotesMenu.Reducers.EmotesWheel:


  -  Edit
  07:37:46.192  CoreGui.RobloxGui.Modules.EmotesMenu.Reducers.Layout:


  -  Edit
  07:37:46.192  CoreGui.RobloxGui.Modules.EmotesMenu.Reducers.Locale:


  -  Edit
  07:37:46.193  CoreGui.RobloxGui.Modules.EmotesMenu.Thunks.OpenMenu:


  -  Edit
  07:37:46.193  CoreGui.RobloxGui.Modules.EmotesMenu.Thunks.PlayEmote:


  -  Edit
  07:37:46.193  CoreGui.RobloxGui.Modules.EmotesMenu.Utility.CanPlayEmotes:


  -  Edit
  07:37:46.193  CoreGui.RobloxGui.Modules.EmotesMenu.Utility.GetSegmentFromPosition:


  -  Edit
  07:37:46.193  CoreGui.RobloxGui.Modules.EmotesMenu.Utility.MaybeSendEmoteFailureAnalyticsFromPlayer:


  -  Edit
  07:37:46.193  CoreGui.RobloxGui.Modules.CaptureMaster:


  -  Edit
  07:37:46.193  CoreGui.RobloxGui.Modules.ExperienceMenuABTestManager:


  -  Edit
  07:37:46.193  CoreGui.RobloxGui.Modules.CaptureNotification:


  -  Edit
  07:37:46.193  CoreGui.RobloxGui.Modules.Shimmer:


  -  Edit
  07:37:46.193  CoreGui.RobloxGui.Modules.Captures.CapturesApp:


  -  Edit
  07:37:46.193  CoreGui.RobloxGui.Modules.Experiment.GetCoreScriptsLayers:


  -  Edit
  07:37:46.193  CoreGui.RobloxGui.Modules.ChatUtil:


  -  Edit
  07:37:46.193  CoreGui.RobloxGui.Modules.ChatSelector:


  -  Edit
  07:37:46.193  CoreGui.RobloxGui.Modules.ContactList:


  -  Edit
  07:37:46.194  CoreGui.RobloxGui.Modules.ContactList.Actions.CloseCFM:


  -  Edit
  07:37:46.194  CoreGui.RobloxGui.Modules.ContactList.Actions.CloseDialog:


  -  Edit
  07:37:46.194  CoreGui.RobloxGui.Modules.ContactList.Actions.OpenOrUpdateCFM:


  -  Edit
  07:37:46.194  CoreGui.RobloxGui.Modules.ContactList.Actions.OpenOrUpdateDialog:


  -  Edit
  07:37:46.194  CoreGui.RobloxGui.Modules.ContactList.Actions.SetCurrentPage:


  -  Edit
  07:37:46.194  CoreGui.RobloxGui.Modules.ContactList.Actions.SetCurrentTag:


  -  Edit
  07:37:46.194  CoreGui.RobloxGui.Modules.ContactList.Actions.UpdateLastFriend:


  -  Edit
  07:37:46.194  CoreGui.RobloxGui.Modules.ContactList.Analytics:


  -  Edit
  07:37:46.194  CoreGui.RobloxGui.Modules.ContactList.Analytics.EventNamesEnum:


  -  Edit
  07:37:46.194  CoreGui.RobloxGui.Modules.ContactList.Analytics.EventStreamActionList:


  -  Edit
  07:37:46.194  CoreGui.RobloxGui.Modules.ContactList.Analytics.useAnalytics:


  -  Edit
  07:37:46.194  CoreGui.RobloxGui.Modules.ContactList.Components.CallBar:


  -  Edit
  07:37:46.194  CoreGui.RobloxGui.Modules.ContactList.Components.CallBarContainer:


  -  Edit
  07:37:46.194  CoreGui.RobloxGui.Modules.ContactList.Components.CallDialogContainer:


  -  Edit
  07:37:46.194  CoreGui.RobloxGui.Modules.ContactList.Components.CallHistory.CallHistoryContainer:


  -  Edit
  07:37:46.194  CoreGui.RobloxGui.Modules.ContactList.Components.CallHistory.CallHistoryItem:


  -  Edit
  07:37:46.195  CoreGui.RobloxGui.Modules.ContactList.Components.ContactListApp:


  -  Edit
  07:37:46.195  CoreGui.RobloxGui.Modules.ContactList.Components.ContactListCommon.ConfigureFriendMenu:


  -  Edit
  07:37:46.195  CoreGui.RobloxGui.Modules.ContactList.Components.ContactListCommon.Constants:


  -  Edit
  07:37:46.195  CoreGui.RobloxGui.Modules.ContactList.Components.ContactListCommon.NoItemView:


  -  Edit
  07:37:46.195  CoreGui.RobloxGui.Modules.ContactList.Components.ContactListContainer:


  -  Edit
  07:37:46.195  CoreGui.RobloxGui.Modules.ContactList.Components.ContactListHeader:


  -  Edit
  07:37:46.195  CoreGui.RobloxGui.Modules.ContactList.Components.ContactListSearchBar:


  -  Edit
  07:37:46.195  CoreGui.RobloxGui.Modules.ContactList.Components.FriendList.FriendListContainer:


  -  Edit
  07:37:46.195  CoreGui.RobloxGui.Modules.ContactList.Components.FriendList.FriendListItem:


  -  Edit
  07:37:46.195  CoreGui.RobloxGui.Modules.ContactList.Components.FriendList.SectionHeader:


  -  Edit
  07:37:46.195  CoreGui.RobloxGui.Modules.ContactList.Components.PlayerMenuContainer:


  -  Edit
  07:37:46.195  CoreGui.RobloxGui.Modules.ContactList.ContactList.storybook:


  -  Edit
  07:37:46.195  CoreGui.RobloxGui.Modules.ContactList.Context:


  -  Edit
  07:37:46.195  CoreGui.RobloxGui.Modules.ContactList.Context.ContactListContext:


  -  Edit
  07:37:46.195  CoreGui.RobloxGui.Modules.ContactList.dependencies:


  -  Edit
  07:37:46.195  CoreGui.RobloxGui.Modules.ContactList.Enums.CallState:


  -  Edit
  07:37:46.196  CoreGui.RobloxGui.Modules.ContactList.Enums.ErrorType:


  -  Edit
  07:37:46.196  CoreGui.RobloxGui.Modules.ContactList.Enums.FriendAction:


  -  Edit
  07:37:46.196  CoreGui.RobloxGui.Modules.ContactList.Enums.Pages:


  -  Edit
  07:37:46.196  CoreGui.RobloxGui.Modules.ContactList.Hooks.useStartCallCallback:


  -  Edit
  07:37:46.196  CoreGui.RobloxGui.Modules.ContactList.initCall:


  -  Edit
  07:37:46.196  CoreGui.RobloxGui.Modules.ContactList.Reducer:


  -  Edit
  07:37:46.196  CoreGui.RobloxGui.Modules.ContactList.Reducer.Dialog:


  -  Edit
  07:37:46.196  CoreGui.RobloxGui.Modules.ContactList.Reducer.LastRemovedFriend:


  -  Edit
  07:37:46.196  CoreGui.RobloxGui.Modules.ContactList.Reducer.Navigation:


  -  Edit
  07:37:46.196  CoreGui.RobloxGui.Modules.ContactList.Reducer.PlayerMenu:


  -  Edit
  07:37:46.196  CoreGui.RobloxGui.Modules.ContactList.teleportToRootPlace:


  -  Edit
  07:37:46.196  CoreGui.RobloxGui.Modules.CoreScriptsRhodiumTest.Helpers.withFlag:


  -  Edit
  07:37:46.196  CoreGui.RobloxGui.Modules.CoreScriptsRhodiumTest.Helpers.withServices:


  -  Edit
  07:37:46.196  CoreGui.RobloxGui.Modules.CoreScriptsRhodiumTest.Tests.InGameMenu.TestConstants:


  -  Edit
  07:37:46.197  CoreGui.RobloxGui.Modules.CoreUtility:


  -  Edit
  07:37:46.197  CoreGui.RobloxGui.Modules.HttpAnalyticsTab:


  -  Edit
  07:37:46.197  CoreGui.RobloxGui.Modules.DevConsole.Action:


  -  Edit
  07:37:46.197  CoreGui.RobloxGui.Modules.DevConsole.Actions.ActionBindingsUpdateSearchFilter:


  -  Edit
  07:37:46.197  CoreGui.RobloxGui.Modules.DevConsole.Actions.ChangeDevConsoleSize:


  -  Edit
  07:37:46.197  CoreGui.RobloxGui.Modules.DevConsole.Actions.ClientLogUpdateSearchFilter:


  -  Edit
  07:37:46.197  CoreGui.RobloxGui.Modules.DevConsole.Actions.ClientMemoryUpdateSearchFilter:


  -  Edit
  07:37:46.197  CoreGui.RobloxGui.Modules.DevConsole.Actions.ClientNetworkUpdateSearchFilter:


  -  Edit
  07:37:46.197  CoreGui.RobloxGui.Modules.DevConsole.Actions.ClientScriptsUpdateSearchFilter:


  -  Edit
  07:37:46.197  CoreGui.RobloxGui.Modules.DevConsole.Actions.DataStoresUpdateSearchFilter:


  -  Edit
  07:37:46.197  CoreGui.RobloxGui.Modules.DevConsole.Actions.DebugVisualizationsUpdateSearchFilter:


  -  Edit
  07:37:46.197  CoreGui.RobloxGui.Modules.DevConsole.Actions.ServerJobsUpdateSearchFilter:


  -  Edit
  07:37:46.197  CoreGui.RobloxGui.Modules.DevConsole.Actions.ServerLogUpdateSearchFilter:


  -  Edit
  07:37:46.197  CoreGui.RobloxGui.Modules.DevConsole.Actions.ServerMemoryUpdateSearchFilter:


  -  Edit
  07:37:46.197  CoreGui.RobloxGui.Modules.DevConsole.Actions.ServerNetworkUpdateSearchFilter:


  -  Edit
  07:37:46.198  CoreGui.RobloxGui.Modules.DevConsole.Actions.ServerScriptsUpdateSearchFilter:


  -  Edit
  07:37:46.198  CoreGui.RobloxGui.Modules.DevConsole.Actions.ServerStatsUpdateSearchFilter:


  -  Edit
  07:37:46.198  CoreGui.RobloxGui.Modules.DevConsole.Actions.SetActiveTab:


  -  Edit
  07:37:46.198  CoreGui.RobloxGui.Modules.DevConsole.Actions.SetDevConsoleMinimized:


  -  Edit
  07:37:46.198  CoreGui.RobloxGui.Modules.DevConsole.Actions.SetDevConsolePosition:


  -  Edit
  07:37:46.198  CoreGui.RobloxGui.Modules.DevConsole.Actions.SetDevConsoleVisibility:


  -  Edit
  07:37:46.198  CoreGui.RobloxGui.Modules.DevConsole.Actions.SetLuauHeapActiveSnapshot:


  -  Edit
  07:37:46.198  CoreGui.RobloxGui.Modules.DevConsole.Actions.SetLuauHeapCompareSnapshot:


  -  Edit
  07:37:46.198  CoreGui.RobloxGui.Modules.DevConsole.Actions.SetLuauHeapProfileTarget:


  -  Edit
  07:37:46.198  CoreGui.RobloxGui.Modules.DevConsole.Actions.SetLuauHeapState:


  -  Edit
  07:37:46.198  CoreGui.RobloxGui.Modules.DevConsole.Actions.SetRCCProfilerState:


  -  Edit
  07:37:46.198  CoreGui.RobloxGui.Modules.DevConsole.Actions.SetScriptProfilerRoot:


  -  Edit
  07:37:46.198  CoreGui.RobloxGui.Modules.DevConsole.Actions.SetScriptProfilerState:


  -  Edit
  07:37:46.198  CoreGui.RobloxGui.Modules.DevConsole.Actions.SetTabList:


  -  Edit
  07:37:46.198  CoreGui.RobloxGui.Modules.DevConsole.Actions.UpdateAveragePing:


  -  Edit
  07:37:46.198  CoreGui.RobloxGui.Modules.DevConsole.CircularBuffer:


  -  Edit
  07:37:46.198  CoreGui.RobloxGui.Modules.DevConsole.Components.ActionBindings.ActionBindingsChart:


  -  Edit
  07:37:46.199  CoreGui.RobloxGui.Modules.DevConsole.Components.ActionBindings.ActionBindingsData:


  -  Edit
  07:37:46.199  CoreGui.RobloxGui.Modules.DevConsole.Components.ActionBindings.MainViewActionBindings:


  -  Edit
  07:37:46.199  CoreGui.RobloxGui.Modules.DevConsole.Components.BannerButton:


  -  Edit
  07:37:46.199  CoreGui.RobloxGui.Modules.DevConsole.Components.BoxButton:


  -  Edit
  07:37:46.199  CoreGui.RobloxGui.Modules.DevConsole.Components.CellCheckbox:


  -  Edit
  07:37:46.199  CoreGui.RobloxGui.Modules.DevConsole.Components.CellLabel:


  -  Edit
  07:37:46.199  CoreGui.RobloxGui.Modules.DevConsole.Components.CheckBox:


  -  Edit
  07:37:46.199  CoreGui.RobloxGui.Modules.DevConsole.Components.CheckBoxContainer:


  -  Edit
  07:37:46.199  CoreGui.RobloxGui.Modules.DevConsole.Components.CheckBoxDropDown:


  -  Edit
  07:37:46.199  CoreGui.RobloxGui.Modules.DevConsole.Components.ClientServerButton:


  -  Edit
  07:37:46.199  CoreGui.RobloxGui.Modules.DevConsole.Components.DataConsumer:


  -  Edit
  07:37:46.199  CoreGui.RobloxGui.Modules.DevConsole.Components.DataContext:


  -  Edit
  07:37:46.199  CoreGui.RobloxGui.Modules.DevConsole.Components.DataProvider:


  -  Edit
  07:37:46.199  CoreGui.RobloxGui.Modules.DevConsole.Components.DataStores.DataStoresChart:


  -  Edit
  07:37:46.199  CoreGui.RobloxGui.Modules.DevConsole.Components.DataStores.DataStoresData:


  -  Edit
  07:37:46.199  CoreGui.RobloxGui.Modules.DevConsole.Components.DataStores.MainViewDataStores:


  -  Edit
  07:37:46.200  CoreGui.RobloxGui.Modules.DevConsole.Components.DebugVisualizations.DebugVisualizationsChart:


  -  Edit
  07:37:46.200  CoreGui.RobloxGui.Modules.DevConsole.Components.DebugVisualizations.DebugVisualizationsData:


  -  Edit
  07:37:46.200  CoreGui.RobloxGui.Modules.DevConsole.Components.DebugVisualizations.DebugVisualizationsStaticContent:


  -  Edit
  07:37:46.200  CoreGui.RobloxGui.Modules.DevConsole.Components.DebugVisualizations.MainViewDebugVisualizations:


  -  Edit
  07:37:46.200  CoreGui.RobloxGui.Modules.DevConsole.Components.DevConsoleTopBar:


  -  Edit
  07:37:46.200  CoreGui.RobloxGui.Modules.DevConsole.Components.DevConsoleWindow:


  -  Edit
  07:37:46.200  CoreGui.RobloxGui.Modules.DevConsole.Components.DropDown:


  -  Edit
  07:37:46.200  CoreGui.RobloxGui.Modules.DevConsole.Components.FullScreenDropDownButton:


  -  Edit
  07:37:46.200  CoreGui.RobloxGui.Modules.DevConsole.Components.HeaderButton:


  -  Edit
  07:37:46.200  CoreGui.RobloxGui.Modules.DevConsole.Components.LineGraph:


  -  Edit
  07:37:46.200  CoreGui.RobloxGui.Modules.DevConsole.Components.LineGraphHoverDisplay:


  -  Edit
  07:37:46.200  CoreGui.RobloxGui.Modules.DevConsole.Components.LiveUpdateElement:


  -  Edit
  07:37:46.201  CoreGui.RobloxGui.Modules.DevConsole.Components.Log.ClientLog:


  -  Edit
  07:37:46.201  CoreGui.RobloxGui.Modules.DevConsole.Components.Log.DevConsoleCommandLine:


  -  Edit
  07:37:46.201  CoreGui.RobloxGui.Modules.DevConsole.Components.Log.LogData:


  -  Edit
  07:37:46.201  CoreGui.RobloxGui.Modules.DevConsole.Components.Log.LogOutput:


  -  Edit
  07:37:46.201  CoreGui.RobloxGui.Modules.DevConsole.Components.Log.MainViewLog:


  -  Edit
  07:37:46.201  CoreGui.RobloxGui.Modules.DevConsole.Components.Log.ServerLog:


  -  Edit
  07:37:46.201  CoreGui.RobloxGui.Modules.DevConsole.Components.LuauHeap.LuauHeapData:


  -  Edit
  07:37:46.201  CoreGui.RobloxGui.Modules.DevConsole.Components.LuauHeap.LuauHeapTypes:


  -  Edit
  07:37:46.201  CoreGui.RobloxGui.Modules.DevConsole.Components.LuauHeap.LuauHeapView:


  -  Edit
  07:37:46.201  CoreGui.RobloxGui.Modules.DevConsole.Components.LuauHeap.LuauHeapViewEntry:


  -  Edit
  07:37:46.201  CoreGui.RobloxGui.Modules.DevConsole.Components.LuauHeap.LuauHeapViewPathEntry:


  -  Edit
  07:37:46.201  CoreGui.RobloxGui.Modules.DevConsole.Components.LuauHeap.LuauHeapViewRefEntry:


  -  Edit
  07:37:46.201  CoreGui.RobloxGui.Modules.DevConsole.Components.LuauHeap.LuauHeapViewStatEntry:


  -  Edit
  07:37:46.201  CoreGui.RobloxGui.Modules.DevConsole.Components.LuauHeap.MainViewLuauHeap:


  -  Edit
  07:37:46.202  CoreGui.RobloxGui.Modules.DevConsole.Components.Memory.ClientMemory:


  -  Edit
  07:37:46.202  CoreGui.RobloxGui.Modules.DevConsole.Components.Memory.ClientMemoryData:


  -  Edit
  07:37:46.202  CoreGui.RobloxGui.Modules.DevConsole.Components.Memory.MainViewMemory:


  -  Edit
  07:37:46.202  CoreGui.RobloxGui.Modules.DevConsole.Components.Memory.MemoryView:


  -  Edit
  07:37:46.202  CoreGui.RobloxGui.Modules.DevConsole.Components.Memory.MemoryViewEntry:


  -  Edit
  07:37:46.202  CoreGui.RobloxGui.Modules.DevConsole.Components.Memory.ServerMemory:


  -  Edit
  07:37:46.202  CoreGui.RobloxGui.Modules.DevConsole.Components.Memory.ServerMemoryData:


  -  Edit
  07:37:46.202  CoreGui.RobloxGui.Modules.DevConsole.Components.MicroProfiler.MainViewMicroProfiler:


  -  Edit
  07:37:46.202  CoreGui.RobloxGui.Modules.DevConsole.Components.MicroProfiler.RCCProfilerDataCompleteListener:


  -  Edit
  07:37:46.202  CoreGui.RobloxGui.Modules.DevConsole.Components.MicroProfiler.ServerProfilerInterface:


  -  Edit
  07:37:46.202  CoreGui.RobloxGui.Modules.DevConsole.Components.Network.ClientNetwork:


  -  Edit
  07:37:46.203  CoreGui.RobloxGui.Modules.DevConsole.Components.Network.MainViewNetwork:


  -  Edit
  07:37:46.203  CoreGui.RobloxGui.Modules.DevConsole.Components.Network.NetworkChart:


  -  Edit
  07:37:46.203  CoreGui.RobloxGui.Modules.DevConsole.Components.Network.NetworkChartEntry:


  -  Edit
  07:37:46.203  CoreGui.RobloxGui.Modules.DevConsole.Components.Network.NetworkData:


  -  Edit
  07:37:46.203  CoreGui.RobloxGui.Modules.DevConsole.Components.Network.NetworkSummary:


  -  Edit
  07:37:46.203  CoreGui.RobloxGui.Modules.DevConsole.Components.Network.NetworkView:


  -  Edit
  07:37:46.203  CoreGui.RobloxGui.Modules.DevConsole.Components.Network.ServerNetwork:


  -  Edit
  07:37:46.203  CoreGui.RobloxGui.Modules.DevConsole.Components.ScriptProfiler.Actions.ClearStateForNewProfilingSession:


  -  Edit
  07:37:46.203  CoreGui.RobloxGui.Modules.DevConsole.Components.ScriptProfiler.Actions.SetAverage:


  -  Edit
  07:37:46.203  CoreGui.RobloxGui.Modules.DevConsole.Components.ScriptProfiler.Actions.SetData:


  -  Edit
  07:37:46.203  CoreGui.RobloxGui.Modules.DevConsole.Components.ScriptProfiler.Actions.SetDataView:


  -  Edit
  07:37:46.203  CoreGui.RobloxGui.Modules.DevConsole.Components.ScriptProfiler.Actions.SetFrequency:


  -  Edit
  07:37:46.203  CoreGui.RobloxGui.Modules.DevConsole.Components.ScriptProfiler.Actions.SetIsProfiling:


  -  Edit
  07:37:46.203  CoreGui.RobloxGui.Modules.DevConsole.Components.ScriptProfiler.Actions.SetLiveUpdate:


  -  Edit
  07:37:46.204  CoreGui.RobloxGui.Modules.DevConsole.Components.ScriptProfiler.Actions.SetSearchData:


  -  Edit
  07:37:46.204  CoreGui.RobloxGui.Modules.DevConsole.Components.ScriptProfiler.Actions.SetShowGC:


  -  Edit
  07:37:46.204  CoreGui.RobloxGui.Modules.DevConsole.Components.ScriptProfiler.Actions.SetShowPlugins:


  -  Edit
  07:37:46.204  CoreGui.RobloxGui.Modules.DevConsole.Components.ScriptProfiler.Actions.SetThreads:


  -  Edit
  07:37:46.204  CoreGui.RobloxGui.Modules.DevConsole.Components.ScriptProfiler.Actions.SetTimerState:


  -  Edit
  07:37:46.204  CoreGui.RobloxGui.Modules.DevConsole.Components.ScriptProfiler.MainViewScriptProfiler:


  -  Edit
  07:37:46.204  CoreGui.RobloxGui.Modules.DevConsole.Components.ScriptProfiler.MobileSettingsView:


  -  Edit
  07:37:46.204  CoreGui.RobloxGui.Modules.DevConsole.Components.ScriptProfiler.ProfilerDataFormatV2:


  -  Edit
  07:37:46.204  CoreGui.RobloxGui.Modules.DevConsole.Components.ScriptProfiler.ProfilerExportView:


  -  Edit
  07:37:46.204  CoreGui.RobloxGui.Modules.DevConsole.Components.ScriptProfiler.ProfilerFunctionsView:


  -  Edit
  07:37:46.204  CoreGui.RobloxGui.Modules.DevConsole.Components.ScriptProfiler.ProfilerFunctionViewEntry:


  -  Edit
  07:37:46.204  CoreGui.RobloxGui.Modules.DevConsole.Components.ScriptProfiler.ProfilerUtil:


  -  Edit
  07:37:46.204  CoreGui.RobloxGui.Modules.DevConsole.Components.ScriptProfiler.ProfilerView:


  -  Edit
  07:37:46.204  CoreGui.RobloxGui.Modules.DevConsole.Components.ScriptProfiler.ProfilerViewEntry:


  -  Edit
  07:37:46.204  CoreGui.RobloxGui.Modules.DevConsole.Components.ScriptProfiler.TestData:


  -  Edit
  07:37:46.204  CoreGui.RobloxGui.Modules.DevConsole.Components.Scripts.MainViewScripts:


  -  Edit
  07:37:46.204  CoreGui.RobloxGui.Modules.DevConsole.Components.Scripts.ServerScripts:


  -  Edit
  07:37:46.204  CoreGui.RobloxGui.Modules.DevConsole.Components.Scripts.ServerScriptsData:


  -  Edit
  07:37:46.205  CoreGui.RobloxGui.Modules.DevConsole.Components.Scripts.ServerScriptsEntry:


  -  Edit
  07:37:46.205  CoreGui.RobloxGui.Modules.DevConsole.Components.ScrollingTextBox:


  -  Edit
  07:37:46.205  CoreGui.RobloxGui.Modules.DevConsole.Components.SearchBar:


  -  Edit
  07:37:46.205  CoreGui.RobloxGui.Modules.DevConsole.Components.ServerJobs.MainViewServerJobs:


  -  Edit
  07:37:46.205  CoreGui.RobloxGui.Modules.DevConsole.Components.ServerJobs.ServerJobsChart:


  -  Edit
  07:37:46.205  CoreGui.RobloxGui.Modules.DevConsole.Components.ServerJobs.ServerJobsData:


  -  Edit
  07:37:46.205  CoreGui.RobloxGui.Modules.DevConsole.Components.ServerStats.MainViewServerStats:


  -  Edit
  07:37:46.205  CoreGui.RobloxGui.Modules.DevConsole.Components.ServerStats.ServerStatsChart:


  -  Edit
  07:37:46.205  CoreGui.RobloxGui.Modules.DevConsole.Components.ServerStats.ServerStatsData:


  -  Edit
  07:37:46.205  CoreGui.RobloxGui.Modules.DevConsole.Components.TabRowButton:


  -  Edit
  07:37:46.205  CoreGui.RobloxGui.Modules.DevConsole.Components.TabRowContainer:


  -  Edit
  07:37:46.205  CoreGui.RobloxGui.Modules.DevConsole.Components.Tooltip:


  -  Edit
  07:37:46.205  CoreGui.RobloxGui.Modules.DevConsole.Components.UtilAndTab:


  -  Edit
  07:37:46.205  CoreGui.RobloxGui.Modules.DevConsole.Constants:


  -  Edit
  07:37:46.205  CoreGui.RobloxGui.Modules.DevConsole.Immutable:


  -  Edit
  07:37:46.205  CoreGui.RobloxGui.Modules.DevConsole.MiddleWare.DevConsoleAnalytics:


  -  Edit
  07:37:46.205  CoreGui.RobloxGui.Modules.DevConsole.Reducers.ActionBindingsData:


  -  Edit
  07:37:46.205  CoreGui.RobloxGui.Modules.DevConsole.Reducers.DataStoresData:


  -  Edit
  07:37:46.206  CoreGui.RobloxGui.Modules.DevConsole.Reducers.DebugVisualizationsData:


  -  Edit
  07:37:46.206  CoreGui.RobloxGui.Modules.DevConsole.Reducers.DevConsoleDisplayOptions:


  -  Edit
  07:37:46.206  CoreGui.RobloxGui.Modules.DevConsole.Reducers.DevConsoleReducer:


  -  Edit
  07:37:46.206  CoreGui.RobloxGui.Modules.DevConsole.Reducers.LogData:


  -  Edit
  07:37:46.206  CoreGui.RobloxGui.Modules.DevConsole.Reducers.LuauHeap:


  -  Edit
  07:37:46.206  CoreGui.RobloxGui.Modules.DevConsole.Reducers.MainView:


  -  Edit
  07:37:46.206  CoreGui.RobloxGui.Modules.DevConsole.Reducers.MemoryData:


  -  Edit
  07:37:46.206  CoreGui.RobloxGui.Modules.DevConsole.Reducers.MicroProfiler:


  -  Edit
  07:37:46.206  CoreGui.RobloxGui.Modules.DevConsole.Reducers.NetworkData:


  -  Edit
  07:37:46.206  CoreGui.RobloxGui.Modules.DevConsole.Reducers.ScriptProfiler:


  -  Edit
  07:37:46.206  CoreGui.RobloxGui.Modules.DevConsole.Reducers.ScriptsData:


  -  Edit
  07:37:46.206  CoreGui.RobloxGui.Modules.DevConsole.Reducers.ServerJobsData:


  -  Edit
  07:37:46.206  CoreGui.RobloxGui.Modules.DevConsole.Reducers.ServerStatsData:


  -  Edit
  07:37:46.206  CoreGui.RobloxGui.Modules.DevConsole.Signal:


  -  Edit
  07:37:46.206  CoreGui.RobloxGui.Modules.DevConsole.Util.convertTimeStamp:


  -  Edit
  07:37:46.206  CoreGui.RobloxGui.Modules.DevConsole.Util.getClientReplicator:


  -  Edit
  07:37:46.206  CoreGui.RobloxGui.Modules.DevConsole.Util.maxOfTable:


  -  Edit
  07:37:46.206  CoreGui.RobloxGui.Modules.DevConsole.Util.minOfTable:


  -  Edit
  07:37:46.206  CoreGui.RobloxGui.Modules.DevConsole.Util.setMouseVisibility:


  -  Edit
  07:37:46.207  CoreGui.RobloxGui.Modules.InGameMenu:


  -  Edit
  07:37:46.207  CoreGui.RobloxGui.Modules.InGameMenu.Actions.CancelLeavingGame:


  -  Edit
  07:37:46.207  CoreGui.RobloxGui.Modules.InGameMenu.Actions.CloseNativeClosePrompt:


  -  Edit
  07:37:46.207  CoreGui.RobloxGui.Modules.InGameMenu.Actions.CloseReportDialog:


  -  Edit
  07:37:46.207  CoreGui.RobloxGui.Modules.InGameMenu.Actions.CloseReportSentDialog:


  -  Edit
  07:37:46.207  CoreGui.RobloxGui.Modules.InGameMenu.Actions.DecrementControllerBar:


  -  Edit
  07:37:46.207  CoreGui.RobloxGui.Modules.InGameMenu.Actions.IncrementControllerBar:


  -  Edit
  07:37:46.207  CoreGui.RobloxGui.Modules.InGameMenu.Actions.NavigateBack:


  -  Edit
  07:37:46.207  CoreGui.RobloxGui.Modules.InGameMenu.Actions.OpenNativeClosePrompt:


  -  Edit
  07:37:46.207  CoreGui.RobloxGui.Modules.InGameMenu.Actions.OpenReportDialog:


  -  Edit
  07:37:46.207  CoreGui.RobloxGui.Modules.InGameMenu.Actions.OpenReportSentDialog:


  -  Edit
  07:37:46.207  CoreGui.RobloxGui.Modules.InGameMenu.Actions.ReceivedUserInviteStatus:


  -  Edit
  07:37:46.208  CoreGui.RobloxGui.Modules.InGameMenu.Actions.SetControlLayout:


  -  Edit
  07:37:46.208  CoreGui.RobloxGui.Modules.InGameMenu.Actions.SetControllerBarHeight:


  -  Edit
  07:37:46.208  CoreGui.RobloxGui.Modules.InGameMenu.Actions.SetCurrentPage:


  -  Edit
  07:37:46.208  CoreGui.RobloxGui.Modules.InGameMenu.Actions.SetCurrentZone:


  -  Edit
  07:37:46.208  CoreGui.RobloxGui.Modules.InGameMenu.Actions.SetFriendStatus:


  -  Edit
  07:37:46.208  CoreGui.RobloxGui.Modules.InGameMenu.Actions.SetGameNameAndDescription:


  -  Edit
  07:37:46.208  CoreGui.RobloxGui.Modules.InGameMenu.Actions.SetInputType:


  -  Edit
  07:37:46.208  CoreGui.RobloxGui.Modules.InGameMenu.Actions.SetInspectMenuEnabled:


  -  Edit
  07:37:46.208  CoreGui.RobloxGui.Modules.InGameMenu.Actions.SetLocaleId:


  -  Edit
  07:37:46.208  CoreGui.RobloxGui.Modules.InGameMenu.Actions.SetMainPageMoreMenuOpen:


  -  Edit
  07:37:46.208  CoreGui.RobloxGui.Modules.InGameMenu.Actions.SetMenuIconTooltipOpen:


  -  Edit
  07:37:46.208  CoreGui.RobloxGui.Modules.InGameMenu.Actions.SetMenuOpen:


  -  Edit
  07:37:46.208  CoreGui.RobloxGui.Modules.InGameMenu.Actions.SetRespawnBehavior:


  -  Edit
  07:37:46.208  CoreGui.RobloxGui.Modules.InGameMenu.Actions.SetRespawning:


  -  Edit
  07:37:46.208  CoreGui.RobloxGui.Modules.InGameMenu.Actions.SetScreenSize:


  -  Edit
  07:37:46.209  CoreGui.RobloxGui.Modules.InGameMenu.Actions.SetVideoRecording:


  -  Edit
  07:37:46.209  CoreGui.RobloxGui.Modules.InGameMenu.Actions.StartLeavingGame:


  -  Edit
  07:37:46.209  CoreGui.RobloxGui.Modules.InGameMenu.Components.App:


  -  Edit
  07:37:46.209  CoreGui.RobloxGui.Modules.InGameMenu.Components.AssetImage:


  -  Edit
  07:37:46.209  CoreGui.RobloxGui.Modules.InGameMenu.Components.BarOnTopScrollingFrame:


  -  Edit
  07:37:46.209  CoreGui.RobloxGui.Modules.InGameMenu.Components.BlurredModalPortal:


  -  Edit
  07:37:46.209  CoreGui.RobloxGui.Modules.InGameMenu.Components.ConfirmationDialog:


  -  Edit
  07:37:46.209  CoreGui.RobloxGui.Modules.InGameMenu.Components.Connection:


  -  Edit
  07:37:46.209  CoreGui.RobloxGui.Modules.InGameMenu.Components.Connection.FocusHandler:


  -  Edit
  07:37:46.209  CoreGui.RobloxGui.Modules.InGameMenu.Components.Connection.FocusHandlerUtils.FocusHandlerContext:


  -  Edit
  07:37:46.209  CoreGui.RobloxGui.Modules.InGameMenu.Components.Connection.FocusHandlerUtils.FocusHandlerContextProvider:


  -  Edit
  07:37:46.209  CoreGui.RobloxGui.Modules.InGameMenu.Components.Connection.FocusHighlightManager:


  -  Edit
  07:37:46.209  CoreGui.RobloxGui.Modules.InGameMenu.Components.Connection.FriendStatusConnector:


  -  Edit
  07:37:46.209  CoreGui.RobloxGui.Modules.InGameMenu.Components.Connection.LastInputTypeConnector:


  -  Edit
  07:37:46.209  CoreGui.RobloxGui.Modules.InGameMenu.Components.Connection.MouseOverrideManager:


  -  Edit
  07:37:46.210  CoreGui.RobloxGui.Modules.InGameMenu.Components.Connection.NativeCloseEventConnector:


  -  Edit
  07:37:46.210  CoreGui.RobloxGui.Modules.InGameMenu.Components.Connection.RootedConnection:


  -  Edit
  07:37:46.210  CoreGui.RobloxGui.Modules.InGameMenu.Components.Connection.VideoRecordConnector:


  -  Edit
  07:37:46.210  CoreGui.RobloxGui.Modules.InGameMenu.Components.ControlsPage:


  -  Edit
  07:37:46.210  CoreGui.RobloxGui.Modules.InGameMenu.Components.ControlsPage.ControlEntry:


  -  Edit
  07:37:46.210  CoreGui.RobloxGui.Modules.InGameMenu.Components.ControlsPage.ControlEntryHeader:


  -  Edit
  07:37:46.210  CoreGui.RobloxGui.Modules.InGameMenu.Components.ControlsPage.ControlLayoutContainer:


  -  Edit
  07:37:46.210  CoreGui.RobloxGui.Modules.InGameMenu.Components.ControlsPage.ControlLayouts.GamepadControls:


  -  Edit
  07:37:46.210  CoreGui.RobloxGui.Modules.InGameMenu.Components.ControlsPage.ControlLayouts.KeyboardControls:


  -  Edit
  07:37:46.210  CoreGui.RobloxGui.Modules.InGameMenu.Components.ControlsPage.ControlLayouts.TouchControls:


  -  Edit
  07:37:46.210  CoreGui.RobloxGui.Modules.InGameMenu.Components.ControlsPage.ControlLayouts.VRGamepadControls:


  -  Edit
  07:37:46.210  CoreGui.RobloxGui.Modules.InGameMenu.Components.ControlsPage.ControlLayoutSetter:


  -  Edit
  07:37:46.210  CoreGui.RobloxGui.Modules.InGameMenu.Components.Divider:


  -  Edit
  07:37:46.211  CoreGui.RobloxGui.Modules.InGameMenu.Components.DropDownSelection:


  -  Edit
  07:37:46.211  CoreGui.RobloxGui.Modules.InGameMenu.Components.EducationalPopup:


  -  Edit
  07:37:46.211  CoreGui.RobloxGui.Modules.InGameMenu.Components.EducationalPopupDialog:


  -  Edit
  07:37:46.211  CoreGui.RobloxGui.Modules.InGameMenu.Components.FullscreenTitleBar:


  -  Edit
  07:37:46.211  CoreGui.RobloxGui.Modules.InGameMenu.Components.GameIcon:


  -  Edit
  07:37:46.211  CoreGui.RobloxGui.Modules.InGameMenu.Components.GameIconHeader:


  -  Edit
  07:37:46.211  CoreGui.RobloxGui.Modules.InGameMenu.Components.GameSettingsPage.AdvancedPage:


  -  Edit
  07:37:46.211  CoreGui.RobloxGui.Modules.InGameMenu.Components.GameSettingsPage.AutoPropertyToggleEntry:


  -  Edit
  07:37:46.211  CoreGui.RobloxGui.Modules.InGameMenu.Components.GameSettingsPage.BasicPage:


  -  Edit
  07:37:46.211  CoreGui.RobloxGui.Modules.InGameMenu.Components.GameSettingsPage.CameraModeEntry:


  -  Edit
  07:37:46.211  CoreGui.RobloxGui.Modules.InGameMenu.Components.GameSettingsPage.CameraSensitivityEntry:


  -  Edit
  07:37:46.211  CoreGui.RobloxGui.Modules.InGameMenu.Components.GameSettingsPage.CategoryHeader:


  -  Edit
  07:37:46.211  CoreGui.RobloxGui.Modules.InGameMenu.Components.GameSettingsPage.ComfortSettingsEntry:


  -  Edit
  07:37:46.211  CoreGui.RobloxGui.Modules.InGameMenu.Components.GameSettingsPage.DeveloperLockLabel:


  -  Edit
  07:37:46.211  CoreGui.RobloxGui.Modules.InGameMenu.Components.GameSettingsPage.DeviceSelectionEntry:


  -  Edit
  07:37:46.211  CoreGui.RobloxGui.Modules.InGameMenu.Components.GameSettingsPage.GraphicsQualityEntry:


  -  Edit
  07:37:46.212  CoreGui.RobloxGui.Modules.InGameMenu.Components.GameSettingsPage.InputLabel:


  -  Edit
  07:37:46.212  CoreGui.RobloxGui.Modules.InGameMenu.Components.GameSettingsPage.MovementModeEntry:


  -  Edit
  07:37:46.212  CoreGui.RobloxGui.Modules.InGameMenu.Components.GameSettingsPage.SafetyBubbleModeEntry:


  -  Edit
  07:37:46.212  CoreGui.RobloxGui.Modules.InGameMenu.Components.GameSettingsPage.SliderEntry:


  -  Edit
  07:37:46.212  CoreGui.RobloxGui.Modules.InGameMenu.Components.GameSettingsPage.ToggleEntry:


  -  Edit
  07:37:46.212  CoreGui.RobloxGui.Modules.InGameMenu.Components.GameSettingsPage.VersionReporter:


  -  Edit
  07:37:46.212  CoreGui.RobloxGui.Modules.InGameMenu.Components.GameSettingsPage.VolumeEntry:


  -  Edit
  07:37:46.212  CoreGui.RobloxGui.Modules.InGameMenu.Components.GameSettingsPage.VRComfortAutoToggleEntry:


  -  Edit
  07:37:46.212  CoreGui.RobloxGui.Modules.InGameMenu.Components.GameSettingsPage.VRComfortSettingsPage:


  -  Edit
  07:37:46.212  CoreGui.RobloxGui.Modules.InGameMenu.Components.getGameIconRequestSize:


  -  Edit
  07:37:46.212  CoreGui.RobloxGui.Modules.InGameMenu.Components.IGMControllerBar:


  -  Edit
  07:37:46.212  CoreGui.RobloxGui.Modules.InGameMenu.Components.IGMControllerBar2:


  -  Edit
  07:37:46.212  CoreGui.RobloxGui.Modules.InGameMenu.Components.IGMMainPageControllerBar:


  -  Edit
  07:37:46.212  CoreGui.RobloxGui.Modules.InGameMenu.Components.IGMRespawnControllerBar:


  -  Edit
  07:37:46.212  CoreGui.RobloxGui.Modules.InGameMenu.Components.InfoDialog:


  -  Edit
  07:37:46.213  CoreGui.RobloxGui.Modules.InGameMenu.Components.InformationalDialog:


  -  Edit
  07:37:46.213  CoreGui.RobloxGui.Modules.InGameMenu.Components.InviteFriendsPage:


  -  Edit
  07:37:46.213  CoreGui.RobloxGui.Modules.InGameMenu.Components.InviteFriendsPage.AddFriendsNow:


  -  Edit
  07:37:46.213  CoreGui.RobloxGui.Modules.InGameMenu.Components.InviteFriendsPage.InviteFriendsList:


  -  Edit
  07:37:46.213  CoreGui.RobloxGui.Modules.InGameMenu.Components.InviteFriendsPage.LoadingFriendsError:


  -  Edit
  07:37:46.213  CoreGui.RobloxGui.Modules.InGameMenu.Components.InviteFriendsPage.SearchBox:


  -  Edit
  07:37:46.213  CoreGui.RobloxGui.Modules.InGameMenu.Components.InviteFriendsPage.SendInviteButton:


  -  Edit
  07:37:46.213  CoreGui.RobloxGui.Modules.InGameMenu.Components.KeyLabel:


  -  Edit
  07:37:46.213  CoreGui.RobloxGui.Modules.InGameMenu.Components.LeaveGameDialog:


  -  Edit
  07:37:46.213  CoreGui.RobloxGui.Modules.InGameMenu.Components.MainPage:


  -  Edit
  07:37:46.213  CoreGui.RobloxGui.Modules.InGameMenu.Components.MenuIconTooltip:


  -  Edit
  07:37:46.213  CoreGui.RobloxGui.Modules.InGameMenu.Components.OpenMenuButton:


  -  Edit
  07:37:46.213  CoreGui.RobloxGui.Modules.InGameMenu.Components.PaddedScrollFrame:


  -  Edit
  07:37:46.213  CoreGui.RobloxGui.Modules.InGameMenu.Components.Page:


  -  Edit
  07:37:46.213  CoreGui.RobloxGui.Modules.InGameMenu.Components.PageContainer:


  -  Edit
  07:37:46.214  CoreGui.RobloxGui.Modules.InGameMenu.Components.PageNavigation:


  -  Edit
  07:37:46.214  CoreGui.RobloxGui.Modules.InGameMenu.Components.PageNavigationWatcher:


  -  Edit
  07:37:46.214  CoreGui.RobloxGui.Modules.InGameMenu.Components.Pages:


  -  Edit
  07:37:46.214  CoreGui.RobloxGui.Modules.InGameMenu.Components.Pages.Dialog.LeaveGamePrompt:


  -  Edit
  07:37:46.214  CoreGui.RobloxGui.Modules.InGameMenu.Components.Pages.Dialog.LeavePrompt:


  -  Edit
  07:37:46.214  CoreGui.RobloxGui.Modules.InGameMenu.Components.Pages.Dialog.LeaveToAppPrompt:


  -  Edit
  07:37:46.214  CoreGui.RobloxGui.Modules.InGameMenu.Components.Pages.InitalPage:


  -  Edit
  07:37:46.214  CoreGui.RobloxGui.Modules.InGameMenu.Components.Pages.PlayersPage:


  -  Edit
  07:37:46.214  CoreGui.RobloxGui.Modules.InGameMenu.Components.PlayerCell:


  -  Edit
  07:37:46.214  CoreGui.RobloxGui.Modules.InGameMenu.Components.PlayerContextualMenu:


  -  Edit
  07:37:46.214  CoreGui.RobloxGui.Modules.InGameMenu.Components.PlayerLabel:


  -  Edit
  07:37:46.214  CoreGui.RobloxGui.Modules.InGameMenu.Components.PlayerLabelV2:


  -  Edit
  07:37:46.214  CoreGui.RobloxGui.Modules.InGameMenu.Components.PlayerMoreButton:


  -  Edit
  07:37:46.214  CoreGui.RobloxGui.Modules.InGameMenu.Components.PointerLabel:


  -  Edit
  07:37:46.214  CoreGui.RobloxGui.Modules.InGameMenu.Components.ReportPage:


  -  Edit
  07:37:46.215  CoreGui.RobloxGui.Modules.InGameMenu.Components.ReportPage.FillCircle:


  -  Edit
  07:37:46.215  CoreGui.RobloxGui.Modules.InGameMenu.Components.ReportPage.GameLabel:


  -  Edit
  07:37:46.215  CoreGui.RobloxGui.Modules.InGameMenu.Components.ReportPage.ReportButton:


  -  Edit
  07:37:46.215  CoreGui.RobloxGui.Modules.InGameMenu.Components.ReportPage.ReportDialog:


  -  Edit
  07:37:46.215  CoreGui.RobloxGui.Modules.InGameMenu.Components.ReportPage.ReportList:


  -  Edit
  07:37:46.215  CoreGui.RobloxGui.Modules.InGameMenu.Components.ReportPage.ReportSentDialog:


  -  Edit
  07:37:46.215  CoreGui.RobloxGui.Modules.InGameMenu.Components.ReportPage.TextEntryField:


  -  Edit
  07:37:46.215  CoreGui.RobloxGui.Modules.InGameMenu.Components.RespawnDialog:


  -  Edit
  07:37:46.215  CoreGui.RobloxGui.Modules.InGameMenu.Components.SearchBar:


  -  Edit
  07:37:46.215  CoreGui.RobloxGui.Modules.InGameMenu.Components.SideNavigation:


  -  Edit
  07:37:46.215  CoreGui.RobloxGui.Modules.InGameMenu.Components.SideNavigation.CloseMenuButton:


  -  Edit
  07:37:46.215  CoreGui.RobloxGui.Modules.InGameMenu.Components.SideNavigation.GameIconButton:


  -  Edit
  07:37:46.215  CoreGui.RobloxGui.Modules.InGameMenu.Components.SideNavigation.HomeButton:


  -  Edit
  07:37:46.215  CoreGui.RobloxGui.Modules.InGameMenu.Components.SideNavigation.SystemMenuButton:


  -  Edit
  07:37:46.216  CoreGui.RobloxGui.Modules.InGameMenu.Components.Slider:


  -  Edit
  07:37:46.216  CoreGui.RobloxGui.Modules.InGameMenu.Components.SliderWithInput:


  -  Edit
  07:37:46.216  CoreGui.RobloxGui.Modules.InGameMenu.Components.ThemedButton:


  -  Edit
  07:37:46.216  CoreGui.RobloxGui.Modules.InGameMenu.Components.ThemedTextLabel:


  -  Edit
  07:37:46.216  CoreGui.RobloxGui.Modules.InGameMenu.Components.ToggleSwitch:


  -  Edit
  07:37:46.216  CoreGui.RobloxGui.Modules.InGameMenu.Components.ViewportOverlay:


  -  Edit
  07:37:46.216  CoreGui.RobloxGui.Modules.InGameMenu.Components.ZonePortal:


  -  Edit
  07:37:46.216  CoreGui.RobloxGui.Modules.InGameMenu.createStore:


  -  Edit
  07:37:46.216  CoreGui.RobloxGui.Modules.InGameMenu.Enums.Direction:


  -  Edit
  07:37:46.216  CoreGui.RobloxGui.Modules.InGameMenu.Flags.FFlagAlwaysShowDisplayNameInExpMenu:


  -  Edit
  07:37:46.216  CoreGui.RobloxGui.Modules.InGameMenu.Flags.FFlagFixExitDialogBlockVRView:


  -  Edit
  07:37:46.216  CoreGui.RobloxGui.Modules.InGameMenu.Flags.FFlagFixSafetyBubbleWidth:


  -  Edit
  07:37:46.216  CoreGui.RobloxGui.Modules.InGameMenu.Flags.FFlagLuaMenuPerfImprovements:


  -  Edit
  07:37:46.216  CoreGui.RobloxGui.Modules.InGameMenu.Flags.FFlagRecordRecording:


  -  Edit
  07:37:46.216  CoreGui.RobloxGui.Modules.InGameMenu.Flags.GetFFlagCleanUpFullscreenTitleBarPromiseOnUnmount:


  -  Edit
  07:37:46.216  CoreGui.RobloxGui.Modules.InGameMenu.Flags.GetFFlagFixFullscreenTitleBarPromiseCancel:


  -  Edit
  07:37:46.217  CoreGui.RobloxGui.Modules.InGameMenu.Flags.GetFFlagFullscreenTitleBarInjectGameServices:


  -  Edit
  07:37:46.217  CoreGui.RobloxGui.Modules.InGameMenu.Flags.GetFFlagIGMGamepadSelectionHistory:


  -  Edit
  07:37:46.217  CoreGui.RobloxGui.Modules.InGameMenu.Flags.GetFFlagIGMRefactorPlayerContextualMenuGamepadSupport:


  -  Edit
  07:37:46.217  CoreGui.RobloxGui.Modules.InGameMenu.Flags.GetFFlagSideNavControllerBar:


  -  Edit
  07:37:46.217  CoreGui.RobloxGui.Modules.InGameMenu.Flags.GetFFlagTruncateDeviceSelection:


  -  Edit
  07:37:46.217  CoreGui.RobloxGui.Modules.InGameMenu.Flags.GetFIntFullscreenTitleBarTriggerDelayMillis:


  -  Edit
  07:37:46.217  CoreGui.RobloxGui.Modules.InGameMenu.GlobalConfig:


  -  Edit
  07:37:46.217  CoreGui.RobloxGui.Modules.InGameMenu.InGameMenuPolicy:


  -  Edit
  07:37:46.217  CoreGui.RobloxGui.Modules.InGameMenu.jest.config:


  -  Edit
  07:37:46.217  CoreGui.RobloxGui.Modules.InGameMenu.Localization.Localization:


  -  Edit
  07:37:46.217  CoreGui.RobloxGui.Modules.InGameMenu.Localization.LocalizationConsumer:


  -  Edit
  07:37:46.217  CoreGui.RobloxGui.Modules.InGameMenu.Localization.LocalizationContext:


  -  Edit
  07:37:46.217  CoreGui.RobloxGui.Modules.InGameMenu.Localization.LocalizationProvider:


  -  Edit
  07:37:46.217  CoreGui.RobloxGui.Modules.InGameMenu.Localization.withLocalization:


  -  Edit
  07:37:46.217  CoreGui.RobloxGui.Modules.InGameMenu.Mocks.MockUserGameSettings:


  -  Edit
  07:37:46.217  CoreGui.RobloxGui.Modules.InGameMenu.Network.httpRequest:


  -  Edit
  07:37:46.218  CoreGui.RobloxGui.Modules.InGameMenu.Network.Requests.DEPRECATED_ChatSendGameLinkMessage:


  -  Edit
  07:37:46.218  CoreGui.RobloxGui.Modules.InGameMenu.Network.Requests.DEPRECATED_ChatSendMessage:


  -  Edit
  07:37:46.218  CoreGui.RobloxGui.Modules.InGameMenu.Network.Requests.DEPRECATED_ChatStartOneToOneConversation:


  -  Edit
  07:37:46.218  CoreGui.RobloxGui.Modules.InGameMenu.Network.Requests.Games.GetIcons:


  -  Edit
  07:37:46.218  CoreGui.RobloxGui.Modules.InGameMenu.Network.Requests.GetPlaceInfos:


  -  Edit
  07:37:46.218  CoreGui.RobloxGui.Modules.InGameMenu.Network.Url:


  -  Edit
  07:37:46.218  CoreGui.RobloxGui.Modules.InGameMenu.reducer:


  -  Edit
  07:37:46.218  CoreGui.RobloxGui.Modules.InGameMenu.reducer.displayOptions:


  -  Edit
  07:37:46.218  CoreGui.RobloxGui.Modules.InGameMenu.reducer.friends:


  -  Edit
  07:37:46.218  CoreGui.RobloxGui.Modules.InGameMenu.reducer.gameInfo:


  -  Edit
  07:37:46.218  CoreGui.RobloxGui.Modules.InGameMenu.reducer.invites:


  -  Edit
  07:37:46.218  CoreGui.RobloxGui.Modules.InGameMenu.reducer.nativeClosePrompt:


  -  Edit
  07:37:46.218  CoreGui.RobloxGui.Modules.InGameMenu.reducer.navigationReducer:


  -  Edit
  07:37:46.218  CoreGui.RobloxGui.Modules.InGameMenu.reducer.report:


  -  Edit
  07:37:46.218  CoreGui.RobloxGui.Modules.InGameMenu.reducer.respawn:


  -  Edit
  07:37:46.219  CoreGui.RobloxGui.Modules.InGameMenu.Resources.Assets:


  -  Edit
  07:37:46.219  CoreGui.RobloxGui.Modules.InGameMenu.Resources.Constants:


  -  Edit
  07:37:46.219  CoreGui.RobloxGui.Modules.InGameMenu.Resources.Controls:


  -  Edit
  07:37:46.219  CoreGui.RobloxGui.Modules.InGameMenu.Resources.GetImageSetData:


  -  Edit
  07:37:46.219  CoreGui.RobloxGui.Modules.InGameMenu.Resources.Images:


  -  Edit
  07:37:46.219  CoreGui.RobloxGui.Modules.InGameMenu.SetupFunctions.bindMenuActions:


  -  Edit
  07:37:46.219  CoreGui.RobloxGui.Modules.InGameMenu.SetupFunctions.registerSetCores:


  -  Edit
  07:37:46.219  CoreGui.RobloxGui.Modules.InGameMenu.SetupFunctions.requestGameNameAndDescription:


  -  Edit
  07:37:46.219  CoreGui.RobloxGui.Modules.InGameMenu.TestHelpers.withInt:


  -  Edit
  07:37:46.219  CoreGui.RobloxGui.Modules.InGameMenu.Thunks.CloseMenu:


  -  Edit
  07:37:46.219  CoreGui.RobloxGui.Modules.InGameMenu.Thunks.InviteUserToPlaceId:


  -  Edit
  07:37:46.219  CoreGui.RobloxGui.Modules.InGameMenu.Thunks.NavigateUp:


  -  Edit
  07:37:46.219  CoreGui.RobloxGui.Modules.InGameMenu.Thunks.OpenEducationalPopup:


  -  Edit
  07:37:46.219  CoreGui.RobloxGui.Modules.InGameMenu.Thunks.OpenMenu:


  -  Edit
  07:37:46.219  CoreGui.RobloxGui.Modules.InGameMenu.Thunks.OpenSystemMenu:


  -  Edit
  07:37:46.220  CoreGui.RobloxGui.Modules.InGameMenu.Thunks.RespawnPlayer:


  -  Edit
  07:37:46.220  CoreGui.RobloxGui.Modules.InGameMenu.Thunks.SendReport:


  -  Edit
  07:37:46.220  CoreGui.RobloxGui.Modules.InGameMenu.Utility.constructGameLinkUrl:


  -  Edit
  07:37:46.220  CoreGui.RobloxGui.Modules.InGameMenu.Utility.divideTransparency:


  -  Edit
  07:37:46.220  CoreGui.RobloxGui.Modules.InGameMenu.Utility.ExternalEventConnection:


  -  Edit
  07:37:46.220  CoreGui.RobloxGui.Modules.InGameMenu.Utility.LeaveGame:


  -  Edit
  07:37:46.220  CoreGui.RobloxGui.Modules.InGameMenu.Utility.PlayerSearchPredicate:


  -  Edit
  07:37:46.220  CoreGui.RobloxGui.Modules.InGameMenu.Utility.Promise:


  -  Edit
  07:37:46.220  CoreGui.RobloxGui.Modules.InGameMenu.Utility.SendAnalytics:


  -  Edit
  07:37:46.220  CoreGui.RobloxGui.Modules.InGameMenu.Utility.UserLocalStore:


  -  Edit
  07:37:46.220  CoreGui.RobloxGui.Modules.GameTranslator:


  -  Edit
  07:37:46.220  CoreGui.RobloxGui.Modules.DevConsoleMaster:


  -  Edit
  07:37:46.220  CoreGui.RobloxGui.Modules.Emote.EmoteHelper:


  -  Edit
  07:37:46.221  CoreGui.RobloxGui.Modules.FriendingUtility:


  -  Edit
  07:37:46.221  CoreGui.RobloxGui.Modules.ErrorPrompt:


  -  Edit
  07:37:46.221  CoreGui.RobloxGui.Modules.ErrorReporting.PiiFilter:


  -  Edit
  07:37:46.221  CoreGui.RobloxGui.Modules.ErrorReporting.RateLimiter:


  -  Edit
  07:37:46.221  CoreGui.RobloxGui.Modules.PlayingSounds:


  -  Edit
  07:37:46.221  CoreGui.RobloxGui.Modules.FacialAnimationStreaming.FacialAnimationStreamingHeartbeatStats:


  -  Edit
  07:37:46.221  CoreGui.RobloxGui.Modules.FacialAnimationStreaming.RobloxTelemetryConfigs.AvatarChatHeartbeatStats:


  -  Edit
  07:37:46.221  CoreGui.RobloxGui.Modules.FacialAnimationStreaming.RobloxTelemetryConfigs.AvatarChatSubsessionInput:


  -  Edit
  07:37:46.221  CoreGui.RobloxGui.Modules.FacialAnimationStreaming.RobloxTelemetryConfigs.AvatarChatSubsessionStats:


  -  Edit
  07:37:46.221  CoreGui.RobloxGui.Modules.FTUX:


  -  Edit
  07:37:46.221  CoreGui.RobloxGui.Modules.FTUX.Components.FTUXPanel:


  -  Edit
  07:37:46.221  CoreGui.RobloxGui.Modules.FTUX.Components.FTUXSlideshow:


  -  Edit
  07:37:46.222  CoreGui.RobloxGui.Modules.FTUX.Components.Slideshow.Button:


  -  Edit
  07:37:46.222  CoreGui.RobloxGui.Modules.FTUX.Components.Slideshow.Description:


  -  Edit
  07:37:46.222  CoreGui.RobloxGui.Modules.FTUX.Components.Slideshow.EndItem:


  -  Edit
  07:37:46.222  CoreGui.RobloxGui.Modules.FTUX.Components.Slideshow.Header:


  -  Edit
  07:37:46.222  CoreGui.RobloxGui.Modules.FTUX.Components.Slideshow.Stepper:


  -  Edit
  07:37:46.222  CoreGui.RobloxGui.Modules.FTUX.Components.Slideshow.Title:


  -  Edit
  07:37:46.222  CoreGui.RobloxGui.Modules.FTUX.Components.Tooltips.ToolTip:


  -  Edit
  07:37:46.222  CoreGui.RobloxGui.Modules.FTUX.Components.Tooltips.VRFTUXToolTips:


  -  Edit
  07:37:46.222  CoreGui.RobloxGui.Modules.FTUX.Enums.ButtonEnum:


  -  Edit
  07:37:46.222  CoreGui.RobloxGui.Modules.FTUX.Enums.PlatformEnum:


  -  Edit
  07:37:46.222  CoreGui.RobloxGui.Modules.FTUX.Events.EventHandler:


  -  Edit
  07:37:46.222  CoreGui.RobloxGui.Modules.FTUX.Events.Events:


  -  Edit
  07:37:46.222  CoreGui.RobloxGui.Modules.FTUX.Events.EventType:


  -  Edit
  07:37:46.222  CoreGui.RobloxGui.Modules.FTUX.Events.VR.FirstPersonToggleEvent:


  -  Edit
  07:37:46.222  CoreGui.RobloxGui.Modules.FTUX.Events.VR.HapticFeedbackEvent:


  -  Edit
  07:37:46.222  CoreGui.RobloxGui.Modules.FTUX.Events.VR.HapticFeedbackTwiceEvent:


  -  Edit
  07:37:46.223  CoreGui.RobloxGui.Modules.FTUX.Events.VR.JumpEvent:


  -  Edit
  07:37:46.223  CoreGui.RobloxGui.Modules.FTUX.Events.VR.LeaveGameIconHighlightEvent:


  -  Edit
  07:37:46.223  CoreGui.RobloxGui.Modules.FTUX.Events.VR.MovementTooltipEvent:


  -  Edit
  07:37:46.223  CoreGui.RobloxGui.Modules.FTUX.Events.VR.MoveToGoalEvent:


  -  Edit
  07:37:46.223  CoreGui.RobloxGui.Modules.FTUX.Events.VR.PerspectiveTooltipEvent:


  -  Edit
  07:37:46.223  CoreGui.RobloxGui.Modules.FTUX.Events.VR.SoundFeedbackEvent:


  -  Edit
  07:37:46.223  CoreGui.RobloxGui.Modules.FTUX.Events.VR.VRFTUXEventHandler:


  -  Edit
  07:37:46.223  CoreGui.RobloxGui.Modules.FTUX.Features.EnableSafetyBubbleDummy:


  -  Edit
  07:37:46.223  CoreGui.RobloxGui.Modules.FTUX.Features.GetFeatures:


  -  Edit
  07:37:46.223  CoreGui.RobloxGui.Modules.FTUX.Flags.GetFFlagDebugEnableVRFTUXExperienceInStudio:


  -  Edit
  07:37:46.223  CoreGui.RobloxGui.Modules.FTUX.Flags.GetFFlagEnableVRFTUXExperience:


  -  Edit
  07:37:46.223  CoreGui.RobloxGui.Modules.FTUX.Resources.FTUXConstants:


  -  Edit
  07:37:46.223  CoreGui.RobloxGui.Modules.FTUX.Resources.FTUXEventTypes:


  -  Edit
  07:37:46.223  CoreGui.RobloxGui.Modules.FTUX.Resources.FTUXSlideshowData:


  -  Edit
  07:37:46.224  CoreGui.RobloxGui.Modules.FTUX.Utility.GenerateDummy:


  -  Edit
  07:37:46.224  CoreGui.RobloxGui.Modules.FTUX.Utility.IsFTUXExperience:


  -  Edit
  07:37:46.224  CoreGui.RobloxGui.Modules.FTUX.Utility.MockFTUXStyleAndLocalizationComponent:


  -  Edit
  07:37:46.224  CoreGui.RobloxGui.Modules.GamepadDisconnect.CoreScriptsGamepadDisconnectListener:


  -  Edit
  07:37:46.224  CoreGui.RobloxGui.Modules.InspectAndBuy.Actions.CloseOverlay:


  -  Edit
  07:37:46.224  CoreGui.RobloxGui.Modules.InspectAndBuy.Actions.HideMenu:


  -  Edit
  07:37:46.224  CoreGui.RobloxGui.Modules.InspectAndBuy.Actions.OpenOverlay:


  -  Edit
  07:37:46.224  CoreGui.RobloxGui.Modules.InspectAndBuy.Actions.SetAssetFromBundleInfo:


  -  Edit
  07:37:46.224  CoreGui.RobloxGui.Modules.InspectAndBuy.Actions.SetAssets:


  -  Edit
  07:37:46.224  CoreGui.RobloxGui.Modules.InspectAndBuy.Actions.SetAssetToBundlesMapping:


  -  Edit
  07:37:46.224  CoreGui.RobloxGui.Modules.InspectAndBuy.Actions.SetBundles:


  -  Edit
  07:37:46.224  CoreGui.RobloxGui.Modules.InspectAndBuy.Actions.SetBundlesAssetIsPartOf:


  -  Edit
  07:37:46.224  CoreGui.RobloxGui.Modules.InspectAndBuy.Actions.SetCollectibleResellableInstances:


  -  Edit
  07:37:46.225  CoreGui.RobloxGui.Modules.InspectAndBuy.Actions.SetDetailsInformation:


  -  Edit
  07:37:46.225  CoreGui.RobloxGui.Modules.InspectAndBuy.Actions.SetEquippedAssets:


  -  Edit
  07:37:46.225  CoreGui.RobloxGui.Modules.InspectAndBuy.Actions.SetExperienceInfo:


  -  Edit
  07:37:46.225  CoreGui.RobloxGui.Modules.InspectAndBuy.Actions.SetFavoriteAsset:


  -  Edit
  07:37:46.225  CoreGui.RobloxGui.Modules.InspectAndBuy.Actions.SetFavoriteBundle:


  -  Edit
  07:37:46.225  CoreGui.RobloxGui.Modules.InspectAndBuy.Actions.SetGamepadEnabled:


  -  Edit
  07:37:46.225  CoreGui.RobloxGui.Modules.InspectAndBuy.Actions.SetIsSubjectToChinaPolicies:


  -  Edit
  07:37:46.225  CoreGui.RobloxGui.Modules.InspectAndBuy.Actions.SetItemBeingPurchased:


  -  Edit
  07:37:46.225  CoreGui.RobloxGui.Modules.InspectAndBuy.Actions.SetLocale:


  -  Edit
  07:37:46.225  CoreGui.RobloxGui.Modules.InspectAndBuy.Actions.SetPlayerId:


  -  Edit
  07:37:46.225  CoreGui.RobloxGui.Modules.InspectAndBuy.Actions.SetPlayerName:


  -  Edit
  07:37:46.225  CoreGui.RobloxGui.Modules.InspectAndBuy.Actions.SetTryingOnInfo:


  -  Edit
  07:37:46.225  CoreGui.RobloxGui.Modules.InspectAndBuy.Actions.SetView:


  -  Edit
  07:37:46.225  CoreGui.RobloxGui.Modules.InspectAndBuy.Actions.ShowMenu:


  -  Edit
  07:37:46.225  CoreGui.RobloxGui.Modules.InspectAndBuy.Actions.UpdateStoreId:


  -  Edit
  07:37:46.225  CoreGui.RobloxGui.Modules.InspectAndBuy.AttributionConstants:


  -  Edit
  07:37:46.225  CoreGui.RobloxGui.Modules.InspectAndBuy.CharacterModelPool:


  -  Edit
  07:37:46.226  CoreGui.RobloxGui.Modules.InspectAndBuy.Colors:


  -  Edit
  07:37:46.226  CoreGui.RobloxGui.Modules.InspectAndBuy.CompactView:


  -  Edit
  07:37:46.226  CoreGui.RobloxGui.Modules.InspectAndBuy.Components.AssetCard:


  -  Edit
  07:37:46.226  CoreGui.RobloxGui.Modules.InspectAndBuy.Components.AssetDetails:


  -  Edit
  07:37:46.226  CoreGui.RobloxGui.Modules.InspectAndBuy.Components.AssetList:


  -  Edit
  07:37:46.226  CoreGui.RobloxGui.Modules.InspectAndBuy.Components.AttributionTraversal:


  -  Edit
  07:37:46.226  CoreGui.RobloxGui.Modules.InspectAndBuy.Components.AvatarHeadShot:


  -  Edit
  07:37:46.226  CoreGui.RobloxGui.Modules.InspectAndBuy.Components.AvatarViewport:


  -  Edit
  07:37:46.226  CoreGui.RobloxGui.Modules.InspectAndBuy.Components.BuyButton:


  -  Edit
  07:37:46.226  CoreGui.RobloxGui.Modules.InspectAndBuy.Components.CloseButton:


  -  Edit
  07:37:46.226  CoreGui.RobloxGui.Modules.InspectAndBuy.Components.Common.ControllerShortcutKeycodes:


  -  Edit
  07:37:46.226  CoreGui.RobloxGui.Modules.InspectAndBuy.Components.Container:


  -  Edit
  07:37:46.226  CoreGui.RobloxGui.Modules.InspectAndBuy.Components.DetailsButtons:


  -  Edit
  07:37:46.227  CoreGui.RobloxGui.Modules.InspectAndBuy.Components.DetailsDescription:


  -  Edit
  07:37:46.227  CoreGui.RobloxGui.Modules.InspectAndBuy.Components.DetailsText:


  -  Edit
  07:37:46.227  CoreGui.RobloxGui.Modules.InspectAndBuy.Components.DetailsThumbnail:


  -  Edit
  07:37:46.227  CoreGui.RobloxGui.Modules.InspectAndBuy.Components.Favorites:


  -  Edit
  07:37:46.227  CoreGui.RobloxGui.Modules.InspectAndBuy.Components.FavoritesButton:


  -  Edit
  07:37:46.227  CoreGui.RobloxGui.Modules.InspectAndBuy.Components.InitialView:


  -  Edit
  07:37:46.227  CoreGui.RobloxGui.Modules.InspectAndBuy.Components.InspectAndBuy:


  -  Edit
  07:37:46.227  CoreGui.RobloxGui.Modules.InspectAndBuy.Components.InspectAndBuyContext:


  -  Edit
  07:37:46.227  CoreGui.RobloxGui.Modules.InspectAndBuy.Components.InspectAndBuyControllerBar:


  -  Edit
  07:37:46.227  CoreGui.RobloxGui.Modules.InspectAndBuy.Components.LimitedLabel:


  -  Edit
  07:37:46.227  CoreGui.RobloxGui.Modules.InspectAndBuy.Components.NoInventoryNotice:


  -  Edit
  07:37:46.227  CoreGui.RobloxGui.Modules.InspectAndBuy.Components.Notification:


  -  Edit
  07:37:46.227  CoreGui.RobloxGui.Modules.InspectAndBuy.Components.Overlay:


  -  Edit
  07:37:46.227  CoreGui.RobloxGui.Modules.InspectAndBuy.Components.OverlayComponents:


  -  Edit
  07:37:46.227  CoreGui.RobloxGui.Modules.InspectAndBuy.Components.PlayerNameLabel:


  -  Edit
  07:37:46.227  CoreGui.RobloxGui.Modules.InspectAndBuy.Components.TryOnButton:


  -  Edit
  07:37:46.228  CoreGui.RobloxGui.Modules.InspectAndBuy.Components.TryOnViewport:


  -  Edit
  07:37:46.228  CoreGui.RobloxGui.Modules.InspectAndBuy.Constants:


  -  Edit
  07:37:46.228  CoreGui.RobloxGui.Modules.InspectAndBuy.createInspectAndBuyKeyMapper:


  -  Edit
  07:37:46.228  CoreGui.RobloxGui.Modules.InspectAndBuy.Enums.Overlay:


  -  Edit
  07:37:46.228  CoreGui.RobloxGui.Modules.InspectAndBuy.Flags.FFlagEnableFavoriteButtonForUgc:


  -  Edit
  07:37:46.228  CoreGui.RobloxGui.Modules.InspectAndBuy.Flags.GetCollectibleItemInInspectAndBuyEnabled:


  -  Edit
  07:37:46.228  CoreGui.RobloxGui.Modules.InspectAndBuy.Flags.GetFFlagDisplayCollectiblesIcon:


  -  Edit
  07:37:46.228  CoreGui.RobloxGui.Modules.InspectAndBuy.Flags.GetFFlagIBEnableCollectiblesSystemSupport:


  -  Edit
  07:37:46.228  CoreGui.RobloxGui.Modules.InspectAndBuy.Flags.GetFFlagIBEnableLimitedBundle:


  -  Edit
  07:37:46.228  CoreGui.RobloxGui.Modules.InspectAndBuy.Flags.GetFFlagIBGateUGC4ACollectibleAssetsBundles:


  -  Edit
  07:37:46.228  CoreGui.RobloxGui.Modules.InspectAndBuy.getSelectionImageObjectRegular:


  -  Edit
  07:37:46.228  CoreGui.RobloxGui.Modules.InspectAndBuy.getSelectionImageObjectRounded:


  -  Edit
  07:37:46.228  CoreGui.RobloxGui.Modules.InspectAndBuy.MockId:


  -  Edit
  07:37:46.229  CoreGui.RobloxGui.Modules.InspectAndBuy.Models.AssetInfo:


  -  Edit
  07:37:46.229  CoreGui.RobloxGui.Modules.InspectAndBuy.Models.BundleInfo:


  -  Edit
  07:37:46.229  CoreGui.RobloxGui.Modules.InspectAndBuy.Models.CollectibleInstance:


  -  Edit
  07:37:46.229  CoreGui.RobloxGui.Modules.InspectAndBuy.Models.ExperienceInfo:


  -  Edit
  07:37:46.229  CoreGui.RobloxGui.Modules.InspectAndBuy.Reducers.AssetBundles:


  -  Edit
  07:37:46.229  CoreGui.RobloxGui.Modules.InspectAndBuy.Reducers.Assets:


  -  Edit
  07:37:46.229  CoreGui.RobloxGui.Modules.InspectAndBuy.Reducers.Bundles:


  -  Edit
  07:37:46.229  CoreGui.RobloxGui.Modules.InspectAndBuy.Reducers.CollectibleResellableInstances:


  -  Edit
  07:37:46.229  CoreGui.RobloxGui.Modules.InspectAndBuy.Reducers.CreatingExperiences:


  -  Edit
  07:37:46.229  CoreGui.RobloxGui.Modules.InspectAndBuy.Reducers.DetailsInformation:


  -  Edit
  07:37:46.229  CoreGui.RobloxGui.Modules.InspectAndBuy.Reducers.EquippedAssets:


  -  Edit
  07:37:46.229  CoreGui.RobloxGui.Modules.InspectAndBuy.Reducers.FavoriteAssets:


  -  Edit
  07:37:46.229  CoreGui.RobloxGui.Modules.InspectAndBuy.Reducers.FavoriteBundles:


  -  Edit
  07:37:46.230  CoreGui.RobloxGui.Modules.InspectAndBuy.Reducers.Favorites:


  -  Edit
  07:37:46.230  CoreGui.RobloxGui.Modules.InspectAndBuy.Reducers.GamepadEnabled:


  -  Edit
  07:37:46.230  CoreGui.RobloxGui.Modules.InspectAndBuy.Reducers.InspectAndBuyReducer:


  -  Edit
  07:37:46.230  CoreGui.RobloxGui.Modules.InspectAndBuy.Reducers.IsLoaded:


  -  Edit
  07:37:46.230  CoreGui.RobloxGui.Modules.InspectAndBuy.Reducers.IsSubjectToChinaPolicies:


  -  Edit
  07:37:46.230  CoreGui.RobloxGui.Modules.InspectAndBuy.Reducers.ItemBeingPurchased:


  -  Edit
  07:37:46.230  CoreGui.RobloxGui.Modules.InspectAndBuy.Reducers.Locale:


  -  Edit
  07:37:46.230  CoreGui.RobloxGui.Modules.InspectAndBuy.Reducers.Overlay:


  -  Edit
  07:37:46.230  CoreGui.RobloxGui.Modules.InspectAndBuy.Reducers.PlayerId:


  -  Edit
  07:37:46.230  CoreGui.RobloxGui.Modules.InspectAndBuy.Reducers.PlayerName:


  -  Edit
  07:37:46.230  CoreGui.RobloxGui.Modules.InspectAndBuy.Reducers.StoreId:


  -  Edit
  07:37:46.230  CoreGui.RobloxGui.Modules.InspectAndBuy.Reducers.TryingOnInfo:


  -  Edit
  07:37:46.230  CoreGui.RobloxGui.Modules.InspectAndBuy.Reducers.View:


  -  Edit
  07:37:46.230  CoreGui.RobloxGui.Modules.InspectAndBuy.Reducers.Visible:


  -  Edit
  07:37:46.230  CoreGui.RobloxGui.Modules.InspectAndBuy.Selectors.GetIsFavorite:


  -  Edit
  07:37:46.230  CoreGui.RobloxGui.Modules.InspectAndBuy.Selectors.GotCurrentFavoriteCount:


  -  Edit
  07:37:46.230  CoreGui.RobloxGui.Modules.InspectAndBuy.Selectors.GotFavoriteForDetailsItem:


  -  Edit
  07:37:46.231  CoreGui.RobloxGui.Modules.InspectAndBuy.Selectors.IsDetailsItemPartOfBundleAndOffsale:


  -  Edit
  07:37:46.231  CoreGui.RobloxGui.Modules.InspectAndBuy.Services.Analytics:


  -  Edit
  07:37:46.231  CoreGui.RobloxGui.Modules.InspectAndBuy.Services.Network:


  -  Edit
  07:37:46.231  CoreGui.RobloxGui.Modules.InspectAndBuy.Symbol:


  -  Edit
  07:37:46.231  CoreGui.RobloxGui.Modules.InspectAndBuy.Test.getMockModel:


  -  Edit
  07:37:46.231  CoreGui.RobloxGui.Modules.InspectAndBuy.Test.MockNetwork:


  -  Edit
  07:37:46.231  CoreGui.RobloxGui.Modules.InspectAndBuy.Test.TestContainer:


  -  Edit
  07:37:46.231  CoreGui.RobloxGui.Modules.InspectAndBuy.Thunk:


  -  Edit
  07:37:46.231  CoreGui.RobloxGui.Modules.InspectAndBuy.Thunks.CreateFavoriteForAsset:


  -  Edit
  07:37:46.231  CoreGui.RobloxGui.Modules.InspectAndBuy.Thunks.CreateFavoriteForBundle:


  -  Edit
  07:37:46.231  CoreGui.RobloxGui.Modules.InspectAndBuy.Thunks.DeleteFavoriteForAsset:


  -  Edit
  07:37:46.231  CoreGui.RobloxGui.Modules.InspectAndBuy.Thunks.DeleteFavoriteForBundle:


  -  Edit
  07:37:46.231  CoreGui.RobloxGui.Modules.InspectAndBuy.Thunks.GetAssetBundles:


  -  Edit
  07:37:46.232  CoreGui.RobloxGui.Modules.InspectAndBuy.Thunks.GetAssetFavoriteCount:


  -  Edit
  07:37:46.232  CoreGui.RobloxGui.Modules.InspectAndBuy.Thunks.GetAssetsFromHumanoidDescription:


  -  Edit
  07:37:46.232  CoreGui.RobloxGui.Modules.InspectAndBuy.Thunks.GetBundleFavoriteCount:


  -  Edit
  07:37:46.232  CoreGui.RobloxGui.Modules.InspectAndBuy.Thunks.GetCharacterModelFromUserId:


  -  Edit
  07:37:46.232  CoreGui.RobloxGui.Modules.InspectAndBuy.Thunks.GetCollectibleResellableInstances:


  -  Edit
  07:37:46.232  CoreGui.RobloxGui.Modules.InspectAndBuy.Thunks.GetEconomyProductInfo:


  -  Edit
  07:37:46.232  CoreGui.RobloxGui.Modules.InspectAndBuy.Thunks.GetExperienceInfo:


  -  Edit
  07:37:46.232  CoreGui.RobloxGui.Modules.InspectAndBuy.Thunks.GetExperiencePlayability:


  -  Edit
  07:37:46.232  CoreGui.RobloxGui.Modules.InspectAndBuy.Thunks.GetFavoriteForAsset:


  -  Edit
  07:37:46.232  CoreGui.RobloxGui.Modules.InspectAndBuy.Thunks.GetFavoriteForBundle:


  -  Edit
  07:37:46.232  CoreGui.RobloxGui.Modules.InspectAndBuy.Thunks.GetHumanoidDescriptionFromCostumeId:


  -  Edit
  07:37:46.232  CoreGui.RobloxGui.Modules.InspectAndBuy.Thunks.GetItemDetails:


  -  Edit
  07:37:46.232  CoreGui.RobloxGui.Modules.InspectAndBuy.Thunks.GetPlayerName:


  -  Edit
  07:37:46.232  CoreGui.RobloxGui.Modules.InspectAndBuy.Thunks.GetProductInfo:


  -  Edit
  07:37:46.232  CoreGui.RobloxGui.Modules.InspectAndBuy.Thunks.GetVersionInfo:


  -  Edit
  07:37:46.232  CoreGui.RobloxGui.Modules.InspectAndBuy.Thunks.PromptPurchase:


  -  Edit
  07:37:46.233  CoreGui.RobloxGui.Modules.InspectAndBuy.Thunks.ReportOpenDetailsPage:


  -  Edit
  07:37:46.233  CoreGui.RobloxGui.Modules.InspectAndBuy.Thunks.SendCounter:


  -  Edit
  07:37:46.233  CoreGui.RobloxGui.Modules.InspectAndBuy.Thunks.TryOnItem:


  -  Edit
  07:37:46.233  CoreGui.RobloxGui.Modules.InspectAndBuy.Thunks.UpdateOwnedStatus:


  -  Edit
  07:37:46.233  CoreGui.RobloxGui.Modules.InspectAndBuy.UtilityFunctions:


  -  Edit
  07:37:46.233  CoreGui.RobloxGui.Modules.InspectAndBuy.WideLandscapeView:


  -  Edit
  07:37:46.233  CoreGui.RobloxGui.Modules.InspectAndBuy.WideView:


  -  Edit
  07:37:46.233  CoreGui.RobloxGui.Modules.isNewInGameMenuEnabled:


  -  Edit
  07:37:46.233  CoreGui.RobloxGui.Modules.Tracker.TrackerMenu:


  -  Edit
  07:37:46.233  CoreGui.RobloxGui.Modules.Tracker.TrackerPrompt:


  -  Edit
  07:37:46.233  CoreGui.RobloxGui.Modules.Tracker.TrackerPromptType:


  -  Edit
  07:37:46.233  CoreGui.RobloxGui.Modules.Interfaces.playerInterface:


  -  Edit
  07:37:46.233  CoreGui.RobloxGui.Modules.isNewTiltIconEnabled:


  -  Edit
  07:37:46.233  CoreGui.RobloxGui.Modules.PlayerList.ActionCreator:


  -  Edit
  07:37:46.233  CoreGui.RobloxGui.Modules.PlayerList.Actions.AddGameStat:


  -  Edit
  07:37:46.233  CoreGui.RobloxGui.Modules.PlayerList.Actions.AddPlayer:


  -  Edit
  07:37:46.234  CoreGui.RobloxGui.Modules.PlayerList.Actions.AddPlayerToTeam:


  -  Edit
  07:37:46.234  CoreGui.RobloxGui.Modules.PlayerList.Actions.AddTeam:


  -  Edit
  07:37:46.234  CoreGui.RobloxGui.Modules.PlayerList.Actions.ClosePlayerDropDown:


  -  Edit
  07:37:46.234  CoreGui.RobloxGui.Modules.PlayerList.Actions.OpenPlayerDropDown:


  -  Edit
  07:37:46.234  CoreGui.RobloxGui.Modules.PlayerList.Actions.RemoveGameStat:


  -  Edit
  07:37:46.234  CoreGui.RobloxGui.Modules.PlayerList.Actions.RemovePlayer:


  -  Edit
  07:37:46.234  CoreGui.RobloxGui.Modules.PlayerList.Actions.RemovePlayerFromTeam:


  -  Edit
  07:37:46.234  CoreGui.RobloxGui.Modules.PlayerList.Actions.RemoveTeam:


  -  Edit
  07:37:46.234  CoreGui.RobloxGui.Modules.PlayerList.Actions.SetGameStatAddId:


  -  Edit
  07:37:46.234  CoreGui.RobloxGui.Modules.PlayerList.Actions.SetGameStatText:


  -  Edit
  07:37:46.234  CoreGui.RobloxGui.Modules.PlayerList.Actions.SetHasPermissionToVoiceChat:


  -  Edit
  07:37:46.234  CoreGui.RobloxGui.Modules.PlayerList.Actions.SetInspectMenuEnabled:


  -  Edit
  07:37:46.234  CoreGui.RobloxGui.Modules.PlayerList.Actions.SetIsUsingGamepad:


  -  Edit
  07:37:46.234  CoreGui.RobloxGui.Modules.PlayerList.Actions.SetMinimized:


  -  Edit
  07:37:46.234  CoreGui.RobloxGui.Modules.PlayerList.Actions.SetPerformanceStatsVisible:


  -  Edit
  07:37:46.235  CoreGui.RobloxGui.Modules.PlayerList.Actions.SetPlayerAvatarIcon:


  -  Edit
  07:37:46.235  CoreGui.RobloxGui.Modules.PlayerList.Actions.SetPlayerFollowRelationship:


  -  Edit
  07:37:46.235  CoreGui.RobloxGui.Modules.PlayerList.Actions.SetPlayerFriendStatus:


  -  Edit
  07:37:46.235  CoreGui.RobloxGui.Modules.PlayerList.Actions.SetPlayerIsBlocked:


  -  Edit
  07:37:46.235  CoreGui.RobloxGui.Modules.PlayerList.Actions.SetPlayerIsCreator:


  -  Edit
  07:37:46.235  CoreGui.RobloxGui.Modules.PlayerList.Actions.SetPlayerIsFollowing:


  -  Edit
  07:37:46.235  CoreGui.RobloxGui.Modules.PlayerList.Actions.SetPlayerIsLocalPlayer:


  -  Edit
  07:37:46.235  CoreGui.RobloxGui.Modules.PlayerList.Actions.SetPlayerLeaderstat:


  -  Edit
  07:37:46.235  CoreGui.RobloxGui.Modules.PlayerList.Actions.SetPlayerListEnabled:


  -  Edit
  07:37:46.235  CoreGui.RobloxGui.Modules.PlayerList.Actions.SetPlayerListVisibility:


  -  Edit
  07:37:46.235  CoreGui.RobloxGui.Modules.PlayerList.Actions.SetPlayerSpecialGroupIcon:


  -  Edit
  07:37:46.235  CoreGui.RobloxGui.Modules.PlayerList.Actions.SetScreenSize:


  -  Edit
  07:37:46.235  CoreGui.RobloxGui.Modules.PlayerList.Actions.SetSettings:


  -  Edit
  07:37:46.235  CoreGui.RobloxGui.Modules.PlayerList.Actions.SetSmallTouchDevice:


  -  Edit
  07:37:46.235  CoreGui.RobloxGui.Modules.PlayerList.Actions.SetSubjectToChinaPolicies:


  -  Edit
  07:37:46.236  CoreGui.RobloxGui.Modules.PlayerList.Actions.SetTeamColor:


  -  Edit
  07:37:46.236  CoreGui.RobloxGui.Modules.PlayerList.Actions.SetTeamName:


  -  Edit
  07:37:46.236  CoreGui.RobloxGui.Modules.PlayerList.Actions.SetTempHideKey:


  -  Edit
  07:37:46.236  CoreGui.RobloxGui.Modules.PlayerList.Actions.SetTenFootInterface:


  -  Edit
  07:37:46.236  CoreGui.RobloxGui.Modules.PlayerList.Components.Connection.ContextActionsBinder:


  -  Edit
  07:37:46.236  CoreGui.RobloxGui.Modules.PlayerList.Components.Connection.CoreGuiConnector:


  -  Edit
  07:37:46.236  CoreGui.RobloxGui.Modules.PlayerList.Components.Connection.EventConnection:


  -  Edit
  07:37:46.236  CoreGui.RobloxGui.Modules.PlayerList.Components.Connection.EventConnections:


  -  Edit
  07:37:46.236  CoreGui.RobloxGui.Modules.PlayerList.Components.Connection.GuiServiceConnector:


  -  Edit
  07:37:46.236  CoreGui.RobloxGui.Modules.PlayerList.Components.Connection.LayoutValues:


  -  Edit
  07:37:46.236  CoreGui.RobloxGui.Modules.PlayerList.Components.Connection.LayoutValuesContext:


  -  Edit
  07:37:46.236  CoreGui.RobloxGui.Modules.PlayerList.Components.Connection.LeaderstatsConnector:


  -  Edit
  07:37:46.236  CoreGui.RobloxGui.Modules.PlayerList.Components.Connection.PlayerServiceConnector:


  -  Edit
  07:37:46.236  CoreGui.RobloxGui.Modules.PlayerList.Components.Connection.ScreenSizeConnector:


  -  Edit
  07:37:46.236  CoreGui.RobloxGui.Modules.PlayerList.Components.Connection.SocialConnector:


  -  Edit
  07:37:46.237  CoreGui.RobloxGui.Modules.PlayerList.Components.Connection.TeamServiceConnector:


  -  Edit
  07:37:46.237  CoreGui.RobloxGui.Modules.PlayerList.Components.Connection.TopStatConnector:


  -  Edit
  07:37:46.237  CoreGui.RobloxGui.Modules.PlayerList.Components.Connection.UserInputServiceConnector:


  -  Edit
  07:37:46.237  CoreGui.RobloxGui.Modules.PlayerList.Components.Presentation.CellExtender:


  -  Edit
  07:37:46.237  CoreGui.RobloxGui.Modules.PlayerList.Components.Presentation.DropDownButton:


  -  Edit
  07:37:46.237  CoreGui.RobloxGui.Modules.PlayerList.Components.Presentation.DropDownButtonAnimator:


  -  Edit
  07:37:46.237  CoreGui.RobloxGui.Modules.PlayerList.Components.Presentation.DropDownPlayerHeader:


  -  Edit
  07:37:46.237  CoreGui.RobloxGui.Modules.PlayerList.Components.Presentation.EntryFrame:


  -  Edit
  07:37:46.237  CoreGui.RobloxGui.Modules.PlayerList.Components.Presentation.FriendDropDownButton:


  -  Edit
  07:37:46.237  CoreGui.RobloxGui.Modules.PlayerList.Components.Presentation.PlayerDropDown:


  -  Edit
  07:37:46.237  CoreGui.RobloxGui.Modules.PlayerList.Components.Presentation.PlayerEntry:


  -  Edit
  07:37:46.237  CoreGui.RobloxGui.Modules.PlayerList.Components.Presentation.PlayerListApp:


  -  Edit
  07:37:46.237  CoreGui.RobloxGui.Modules.PlayerList.Components.Presentation.PlayerListDisplay:


  -  Edit
  07:37:46.238  CoreGui.RobloxGui.Modules.PlayerList.Components.Presentation.PlayerListSorter:


  -  Edit
  07:37:46.238  CoreGui.RobloxGui.Modules.PlayerList.Components.Presentation.PlayerNameTag:


  -  Edit
  07:37:46.238  CoreGui.RobloxGui.Modules.PlayerList.Components.Presentation.StatEntry:


  -  Edit
  07:37:46.238  CoreGui.RobloxGui.Modules.PlayerList.Components.Presentation.TeamEntry:


  -  Edit
  07:37:46.238  CoreGui.RobloxGui.Modules.PlayerList.Components.Presentation.TitleBar:


  -  Edit
  07:37:46.238  CoreGui.RobloxGui.Modules.PlayerList.Components.PresentationCommon.IconButton:


  -  Edit
  07:37:46.238  CoreGui.RobloxGui.Modules.PlayerList.Components.PresentationCommon.PlayerIcon:


  -  Edit
  07:37:46.238  CoreGui.RobloxGui.Modules.PlayerList.Components.PresentationCommon.TenFootSideBar:


  -  Edit
  07:37:46.238  CoreGui.RobloxGui.Modules.PlayerList.Components.PresentationMobile.DropDownButton:


  -  Edit
  07:37:46.238  CoreGui.RobloxGui.Modules.PlayerList.Components.PresentationMobile.DropDownButtonAnimator:


  -  Edit
  07:37:46.238  CoreGui.RobloxGui.Modules.PlayerList.Components.PresentationMobile.DropDownPlayerHeader:


  -  Edit
  07:37:46.238  CoreGui.RobloxGui.Modules.PlayerList.Components.PresentationMobile.FriendDropDownButton:


  -  Edit
  07:37:46.238  CoreGui.RobloxGui.Modules.PlayerList.Components.PresentationMobile.PlayerDropDown:


  -  Edit
  07:37:46.238  CoreGui.RobloxGui.Modules.PlayerList.Components.PresentationMobile.PlayerEntry:


  -  Edit
  07:37:46.238  CoreGui.RobloxGui.Modules.PlayerList.Components.PresentationMobile.PlayerListApp:


  -  Edit
  07:37:46.238  CoreGui.RobloxGui.Modules.PlayerList.Components.PresentationMobile.PlayerListDisplay:


  -  Edit
  07:37:46.239  CoreGui.RobloxGui.Modules.PlayerList.Components.PresentationMobile.PlayerListSorter:


  -  Edit
  07:37:46.239  CoreGui.RobloxGui.Modules.PlayerList.Components.PresentationMobile.PlayerNameTag:


  -  Edit
  07:37:46.239  CoreGui.RobloxGui.Modules.PlayerList.Components.PresentationMobile.StatEntry:


  -  Edit
  07:37:46.239  CoreGui.RobloxGui.Modules.PlayerList.Components.PresentationMobile.TeamEntry:


  -  Edit
  07:37:46.239  CoreGui.RobloxGui.Modules.PlayerList.Components.PresentationMobile.TitleBar:


  -  Edit
  07:37:46.239  CoreGui.RobloxGui.Modules.PlayerList.CreateLayoutValues:


  -  Edit
  07:37:46.239  CoreGui.RobloxGui.Modules.PlayerList.Flags.FFlagLeaderstatsWithASideOfClient:


  -  Edit
  07:37:46.239  CoreGui.RobloxGui.Modules.PlayerList.Flags.FFlagPlayerListFixBackgroundFlicker:


  -  Edit
  07:37:46.239  CoreGui.RobloxGui.Modules.PlayerList.Flags.FFlagPlayerListFixMobileScrolling:


  -  Edit
  07:37:46.239  CoreGui.RobloxGui.Modules.PlayerList.Flags.FFlagRemoveSideBarABTest:


  -  Edit
  07:37:46.239  CoreGui.RobloxGui.Modules.PlayerList.Flags.GetFFlagFixDropDownVisibility:


  -  Edit
  07:37:46.239  CoreGui.RobloxGui.Modules.PlayerList.Flags.GetFStringRemoveSideBarABTestLayerName:


  -  Edit
  07:37:46.240  CoreGui.RobloxGui.Modules.PlayerList.FormatStatString:


  -  Edit
  07:37:46.240  CoreGui.RobloxGui.Modules.PlayerList.GetFakeNeutralTeam:


  -  Edit
  07:37:46.240  CoreGui.RobloxGui.Modules.PlayerList.GlobalConfig:


  -  Edit
  07:37:46.240  CoreGui.RobloxGui.Modules.PlayerList.Hooks.usePlayerCombinedName:


  -  Edit
  07:37:46.240  CoreGui.RobloxGui.Modules.PlayerList.Hooks.useShouldShowVerifiedBadge:


  -  Edit
  07:37:46.240  CoreGui.RobloxGui.Modules.PlayerList.PlayerListInitialVisibleState:


  -  Edit
  07:37:46.240  CoreGui.RobloxGui.Modules.PlayerList.PlayerListManager:


  -  Edit
  07:37:46.240  CoreGui.RobloxGui.Modules.PlayerList.PlayerListMaster:


  -  Edit
  07:37:46.240  CoreGui.RobloxGui.Modules.PlayerList.PlayerListSwitcher:


  -  Edit
  07:37:46.240  CoreGui.RobloxGui.Modules.PlayerList.PlayerSorting:


  -  Edit
  07:37:46.240  CoreGui.RobloxGui.Modules.PlayerList.Reducers.DisplayOptions:


  -  Edit
  07:37:46.240  CoreGui.RobloxGui.Modules.PlayerList.Reducers.GameStats:


  -  Edit
  07:37:46.240  CoreGui.RobloxGui.Modules.PlayerList.Reducers.PlayerDropDown:


  -  Edit
  07:37:46.240  CoreGui.RobloxGui.Modules.PlayerList.Reducers.PlayerIconInfo:


  -  Edit
  07:37:46.241  CoreGui.RobloxGui.Modules.PlayerList.Reducers.PlayerKeys:


  -  Edit
  07:37:46.241  CoreGui.RobloxGui.Modules.PlayerList.Reducers.PlayerRelationship:


  -  Edit
  07:37:46.241  CoreGui.RobloxGui.Modules.PlayerList.Reducers.Players:


  -  Edit
  07:37:46.241  CoreGui.RobloxGui.Modules.PlayerList.Reducers.PlayerStats:


  -  Edit
  07:37:46.241  CoreGui.RobloxGui.Modules.PlayerList.Reducers.PlayerTeam:


  -  Edit
  07:37:46.241  CoreGui.RobloxGui.Modules.PlayerList.Reducers.Reducer:


  -  Edit
  07:37:46.241  CoreGui.RobloxGui.Modules.PlayerList.Reducers.ScreenSize:


  -  Edit
  07:37:46.241  CoreGui.RobloxGui.Modules.PlayerList.Reducers.Settings:


  -  Edit
  07:37:46.241  CoreGui.RobloxGui.Modules.PlayerList.Reducers.TeamColors:


  -  Edit
  07:37:46.241  CoreGui.RobloxGui.Modules.PlayerList.Reducers.TeamNames:


  -  Edit
  07:37:46.241  CoreGui.RobloxGui.Modules.PlayerList.Reducers.Teams:


  -  Edit
  07:37:46.241  CoreGui.RobloxGui.Modules.PlayerList.TestProviders:


  -  Edit
  07:37:46.241  CoreGui.RobloxGui.Modules.PlayerList.Thunks.BlockPlayer:


  -  Edit
  07:37:46.241  CoreGui.RobloxGui.Modules.PlayerList.Thunks.MakePlayerInfoRequests:


  -  Edit
  07:37:46.242  CoreGui.RobloxGui.Modules.PlayerList.Thunks.RequestFriendship:


  -  Edit
  07:37:46.242  CoreGui.RobloxGui.Modules.PlayerList.Thunks.UnblockPlayer:


  -  Edit
  07:37:46.242  CoreGui.RobloxGui.Modules.KeyboardUINavigation:


  -  Edit
  07:37:46.242  CoreGui.RobloxGui.Modules.NewChat:


  -  Edit
  07:37:46.242  CoreGui.RobloxGui.Modules.LuobuWarningToast:


  -  Edit
  07:37:46.242  CoreGui.RobloxGui.Modules.LuobuWarningToast.LuobuWarningToastComponent:


  -  Edit
  07:37:46.242  CoreGui.RobloxGui.Modules.NetworkPauseNotification:


  -  Edit
  07:37:46.242  CoreGui.RobloxGui.Modules.ProximityPromptsTests.PlayerHelper:


  -  Edit
  07:37:46.242  CoreGui.RobloxGui.Modules.PublishAssetPrompt:


  -  Edit
  07:37:46.242  CoreGui.RobloxGui.Modules.PublishAssetPrompt.Actions.CloseOpenPrompt:


  -  Edit
  07:37:46.242  CoreGui.RobloxGui.Modules.PublishAssetPrompt.Actions.CloseResultModal:


  -  Edit
  07:37:46.242  CoreGui.RobloxGui.Modules.PublishAssetPrompt.Actions.OpenPublishAssetPrompt:


  -  Edit
  07:37:46.242  CoreGui.RobloxGui.Modules.PublishAssetPrompt.Actions.OpenPublishAvatarPrompt:


  -  Edit
  07:37:46.242  CoreGui.RobloxGui.Modules.PublishAssetPrompt.Actions.OpenResultModal:


  -  Edit
  07:37:46.242  CoreGui.RobloxGui.Modules.PublishAssetPrompt.Actions.OpenValidationErrorModal:


  -  Edit
  07:37:46.243  CoreGui.RobloxGui.Modules.PublishAssetPrompt.Actions.SetHumanoidModel:


  -  Edit
  07:37:46.243  CoreGui.RobloxGui.Modules.PublishAssetPrompt.Actions.SetPriceInRobux:


  -  Edit
  07:37:46.243  CoreGui.RobloxGui.Modules.PublishAssetPrompt.Actions.SetPromptVisibility:


  -  Edit
  07:37:46.243  CoreGui.RobloxGui.Modules.PublishAssetPrompt.Components.AssetDescriptionTextBox:


  -  Edit
  07:37:46.243  CoreGui.RobloxGui.Modules.PublishAssetPrompt.Components.BasePublishPrompt:


  -  Edit
  07:37:46.243  CoreGui.RobloxGui.Modules.PublishAssetPrompt.Components.Common.InteractionFrame:


  -  Edit
  07:37:46.243  CoreGui.RobloxGui.Modules.PublishAssetPrompt.Components.Common.LabeledTextBox:


  -  Edit
  07:37:46.243  CoreGui.RobloxGui.Modules.PublishAssetPrompt.Components.Common.NameTextBox:


  -  Edit
  07:37:46.243  CoreGui.RobloxGui.Modules.PublishAssetPrompt.Components.Common.ObjectViewport:


  -  Edit
  07:37:46.243  CoreGui.RobloxGui.Modules.PublishAssetPrompt.Components.Common.PreviewViewport:


  -  Edit
  07:37:46.243  CoreGui.RobloxGui.Modules.PublishAssetPrompt.Components.Common.PublishInfoList:


  -  Edit
  07:37:46.243  CoreGui.RobloxGui.Modules.PublishAssetPrompt.Components.EmoteThumbnailEditor:


  -  Edit
  07:37:46.243  CoreGui.RobloxGui.Modules.PublishAssetPrompt.Components.EmoteThumbnailParameters:


  -  Edit
  07:37:46.243  CoreGui.RobloxGui.Modules.PublishAssetPrompt.Components.EmoteThumbnailView:


  -  Edit
  07:37:46.243  CoreGui.RobloxGui.Modules.PublishAssetPrompt.Components.LeaveCreationAlert:


  -  Edit
  07:37:46.244  CoreGui.RobloxGui.Modules.PublishAssetPrompt.Components.ObjectViewport:


  -  Edit
  07:37:46.244  CoreGui.RobloxGui.Modules.PublishAssetPrompt.Components.PublishAssetPromptApp:


  -  Edit
  07:37:46.244  CoreGui.RobloxGui.Modules.PublishAssetPrompt.Components.PublishAssetPromptSingleStep:


  -  Edit
  07:37:46.244  CoreGui.RobloxGui.Modules.PublishAssetPrompt.Components.PublishAvatarPrompt.AvatarParts.AvatarItemCard:


  -  Edit
  07:37:46.244  CoreGui.RobloxGui.Modules.PublishAssetPrompt.Components.PublishAvatarPrompt.AvatarParts.AvatarPartGrid:


  -  Edit
  07:37:46.244  CoreGui.RobloxGui.Modules.PublishAssetPrompt.Components.PublishAvatarPrompt.AvatarParts.AvatarPartViewport:


  -  Edit
  07:37:46.244  CoreGui.RobloxGui.Modules.PublishAssetPrompt.Components.PublishAvatarPrompt.PublishAvatarPrompt:


  -  Edit
  07:37:46.244  CoreGui.RobloxGui.Modules.PublishAssetPrompt.Components.ResultModal:


  -  Edit
  07:37:46.244  CoreGui.RobloxGui.Modules.PublishAssetPrompt.Components.ValidationErrorModal:


  -  Edit
  07:37:46.244  CoreGui.RobloxGui.Modules.PublishAssetPrompt.ConnectAssetServiceEvents:


  -  Edit
  07:37:46.244  CoreGui.RobloxGui.Modules.PublishAssetPrompt.Constants:


  -  Edit
  07:37:46.244  CoreGui.RobloxGui.Modules.PublishAssetPrompt.FFlagAppendBodyPartToTitle:


  -  Edit
  07:37:46.244  CoreGui.RobloxGui.Modules.PublishAssetPrompt.FFlagFixPublishAvatarVRViewports:


  -  Edit
  07:37:46.244  CoreGui.RobloxGui.Modules.PublishAssetPrompt.FFlagHideAvatarIECPromptOnUpsellSuccess:


  -  Edit
  07:37:46.244  CoreGui.RobloxGui.Modules.PublishAssetPrompt.GetFFlagValidateDescription:


  -  Edit
  07:37:46.244  CoreGui.RobloxGui.Modules.PublishAssetPrompt.PromptType:


  -  Edit
  07:37:46.245  CoreGui.RobloxGui.Modules.PublishAssetPrompt.Reducer:


  -  Edit
  07:37:46.245  CoreGui.RobloxGui.Modules.PublishAssetPrompt.Reducer.PromptRequestReducer:


  -  Edit
  07:37:46.245  CoreGui.RobloxGui.Modules.PublishAssetPrompt.Thunks.CloseResultModal:


  -  Edit
  07:37:46.245  CoreGui.RobloxGui.Modules.PublishAssetPrompt.Thunks.OpenPublishAssetPrompt:


  -  Edit
  07:37:46.245  CoreGui.RobloxGui.Modules.PublishAssetPrompt.Thunks.OpenPublishAvatarPrompt:


  -  Edit
  07:37:46.245  CoreGui.RobloxGui.Modules.PublishAssetPrompt.Thunks.OpenResultModal:


  -  Edit
  07:37:46.245  CoreGui.RobloxGui.Modules.PublishAssetPrompt.Thunks.OpenValidationErrorModal:


  -  Edit
  07:37:46.245  CoreGui.RobloxGui.Modules.PurchasePrompt:


  -  Edit
  07:37:46.245  CoreGui.RobloxGui.Modules.PurchasePrompt.Actions.AccountInfoReceived:


  -  Edit
  07:37:46.245  CoreGui.RobloxGui.Modules.PurchasePrompt.Actions.BalanceInfoRecieved:


  -  Edit
  07:37:46.245  CoreGui.RobloxGui.Modules.PurchasePrompt.Actions.BundleProductInfoReceived:


  -  Edit
  07:37:46.245  CoreGui.RobloxGui.Modules.PurchasePrompt.Actions.CompleteRequest:


  -  Edit
  07:37:46.245  CoreGui.RobloxGui.Modules.PurchasePrompt.Actions.ErrorOccurred:


  -  Edit
  07:37:46.245  CoreGui.RobloxGui.Modules.PurchasePrompt.Actions.makeActionCreator:


  -  Edit
  07:37:46.245  CoreGui.RobloxGui.Modules.PurchasePrompt.Actions.PremiumInfoRecieved:


  -  Edit
  07:37:46.246  CoreGui.RobloxGui.Modules.PurchasePrompt.Actions.ProductInfoReceived:


  -  Edit
  07:37:46.246  CoreGui.RobloxGui.Modules.PurchasePrompt.Actions.PromptNativeUpsell:


  -  Edit
  07:37:46.246  CoreGui.RobloxGui.Modules.PurchasePrompt.Actions.PurchaseCompleteRecieved:


  -  Edit
  07:37:46.246  CoreGui.RobloxGui.Modules.PurchasePrompt.Actions.RequestAssetPurchase:


  -  Edit
  07:37:46.246  CoreGui.RobloxGui.Modules.PurchasePrompt.Actions.RequestAvatarCreationFeePurchase:


  -  Edit
  07:37:46.246  CoreGui.RobloxGui.Modules.PurchasePrompt.Actions.RequestBundlePurchase:


  -  Edit
  07:37:46.246  CoreGui.RobloxGui.Modules.PurchasePrompt.Actions.RequestGamepassPurchase:


  -  Edit
  07:37:46.246  CoreGui.RobloxGui.Modules.PurchasePrompt.Actions.RequestPremiumPurchase:


  -  Edit
  07:37:46.246  CoreGui.RobloxGui.Modules.PurchasePrompt.Actions.RequestProductPurchase:


  -  Edit
  07:37:46.246  CoreGui.RobloxGui.Modules.PurchasePrompt.Actions.RequestSubscriptionPurchase:


  -  Edit
  07:37:46.246  CoreGui.RobloxGui.Modules.PurchasePrompt.Actions.SetABVariation:


  -  Edit
  07:37:46.246  CoreGui.RobloxGui.Modules.PurchasePrompt.Actions.SetButtonState:


  -  Edit
  07:37:46.246  CoreGui.RobloxGui.Modules.PurchasePrompt.Actions.SetGamepadEnabled:


  -  Edit
  07:37:46.246  CoreGui.RobloxGui.Modules.PurchasePrompt.Actions.SetProduct:


  -  Edit
  07:37:46.246  CoreGui.RobloxGui.Modules.PurchasePrompt.Actions.SetPromptState:


  -  Edit
  07:37:46.246  CoreGui.RobloxGui.Modules.PurchasePrompt.Actions.SetPurchaseFlow:


  -  Edit
  07:37:46.246  CoreGui.RobloxGui.Modules.PurchasePrompt.Actions.SetWindowState:


  -  Edit
  07:37:46.247  CoreGui.RobloxGui.Modules.PurchasePrompt.Actions.StartHidingPrompt:


  -  Edit
  07:37:46.247  CoreGui.RobloxGui.Modules.PurchasePrompt.Actions.StartPurchase:


  -  Edit
  07:37:46.247  CoreGui.RobloxGui.Modules.PurchasePrompt.Actions.SubscriptionPurchaseInfoReceived:


  -  Edit
  07:37:46.247  CoreGui.RobloxGui.Modules.PurchasePrompt.Components.Connection.BrowserPurchaseFinishedConnector:


  -  Edit
  07:37:46.247  CoreGui.RobloxGui.Modules.PurchasePrompt.Components.Connection.EventConnections:


  -  Edit
  07:37:46.247  CoreGui.RobloxGui.Modules.PurchasePrompt.Components.Connection.ExternalEventConnection:


  -  Edit
  07:37:46.247  CoreGui.RobloxGui.Modules.PurchasePrompt.Components.Connection.InputTypeManager:


  -  Edit
  07:37:46.247  CoreGui.RobloxGui.Modules.PurchasePrompt.Components.Connection.LayoutValuesConsumer:


  -  Edit
  07:37:46.247  CoreGui.RobloxGui.Modules.PurchasePrompt.Components.Connection.LayoutValuesContext:


  -  Edit
  07:37:46.247  CoreGui.RobloxGui.Modules.PurchasePrompt.Components.Connection.LayoutValuesProvider:


  -  Edit
  07:37:46.247  CoreGui.RobloxGui.Modules.PurchasePrompt.Components.Connection.LocalizationContext:


  -  Edit
  07:37:46.247  CoreGui.RobloxGui.Modules.PurchasePrompt.Components.Connection.LocalizationContextConsumer:


  -  Edit
  07:37:46.247  CoreGui.RobloxGui.Modules.PurchasePrompt.Components.Connection.LocalizationContextProvider:


  -  Edit
  07:37:46.248  CoreGui.RobloxGui.Modules.PurchasePrompt.Components.Connection.MarketplaceServiceEventConnector:


  -  Edit
  07:37:46.248  CoreGui.RobloxGui.Modules.PurchasePrompt.Components.Connection.MultiTextLocalizer:


  -  Edit
  07:37:46.248  CoreGui.RobloxGui.Modules.PurchasePrompt.Components.Connection.NativePurchaseFinishedConnector:


  -  Edit
  07:37:46.248  CoreGui.RobloxGui.Modules.PurchasePrompt.Components.Connection.NumberLocalizer:


  -  Edit
  07:37:46.248  CoreGui.RobloxGui.Modules.PurchasePrompt.Components.Connection.provideRobloxLocale:


  -  Edit
  07:37:46.248  CoreGui.RobloxGui.Modules.PurchasePrompt.Components.Connection.PurchasePromptPolicy:


  -  Edit
  07:37:46.248  CoreGui.RobloxGui.Modules.PurchasePrompt.Components.Connection.TextLocalizer:


  -  Edit
  07:37:46.248  CoreGui.RobloxGui.Modules.PurchasePrompt.Components.Connection.withLayoutValues:


  -  Edit
  07:37:46.248  CoreGui.RobloxGui.Modules.PurchasePrompt.Components.PremiumUpsell.PremiumUpsellContainer:


  -  Edit
  07:37:46.248  CoreGui.RobloxGui.Modules.PurchasePrompt.Components.PremiumUpsell.PremiumUpsellOverlay:


  -  Edit
  07:37:46.248  CoreGui.RobloxGui.Modules.PurchasePrompt.Components.ProductPurchase.Animator:


  -  Edit
  07:37:46.248  CoreGui.RobloxGui.Modules.PurchasePrompt.Components.ProductPurchase.ProductPurchaseContainer:


  -  Edit
  07:37:46.248  CoreGui.RobloxGui.Modules.PurchasePrompt.Components.PurchasePromptApp:


  -  Edit
  07:37:46.248  CoreGui.RobloxGui.Modules.PurchasePrompt.Components.RobuxUpsell.RobuxUpsellContainer:


  -  Edit
  07:37:46.248  CoreGui.RobloxGui.Modules.PurchasePrompt.Components.RobuxUpsell.RobuxUpsellOverlay:


  -  Edit
  07:37:46.248  CoreGui.RobloxGui.Modules.PurchasePrompt.Components.SubscriptionPurchase.SubscriptionPurchaseContainer:


  -  Edit
  07:37:46.248  CoreGui.RobloxGui.Modules.PurchasePrompt.Components.SubscriptionPurchase.SubscriptionPurchaseOverlay:


  -  Edit
  07:37:46.249  CoreGui.RobloxGui.Modules.PurchasePrompt.connectToStore:


  -  Edit
  07:37:46.249  CoreGui.RobloxGui.Modules.PurchasePrompt.Enums.ButtonState:


  -  Edit
  07:37:46.249  CoreGui.RobloxGui.Modules.PurchasePrompt.Enums.Counter:


  -  Edit
  07:37:46.249  CoreGui.RobloxGui.Modules.PurchasePrompt.Enums.createEnum:


  -  Edit
  07:37:46.249  CoreGui.RobloxGui.Modules.PurchasePrompt.Enums.ItemType:


  -  Edit
  07:37:46.249  CoreGui.RobloxGui.Modules.PurchasePrompt.Enums.PaymentPlatform:


  -  Edit
  07:37:46.249  CoreGui.RobloxGui.Modules.PurchasePrompt.Enums.PromptState:


  -  Edit
  07:37:46.249  CoreGui.RobloxGui.Modules.PurchasePrompt.Enums.PurchaseError:


  -  Edit
  07:37:46.249  CoreGui.RobloxGui.Modules.PurchasePrompt.Enums.PurchaseFlow:


  -  Edit
  07:37:46.249  CoreGui.RobloxGui.Modules.PurchasePrompt.Enums.PurchaseWarning:


  -  Edit
  07:37:46.249  CoreGui.RobloxGui.Modules.PurchasePrompt.Enums.RequestType:


  -  Edit
  07:37:46.249  CoreGui.RobloxGui.Modules.PurchasePrompt.Enums.UpsellFlow:


  -  Edit
  07:37:46.249  CoreGui.RobloxGui.Modules.PurchasePrompt.Enums.VPCModalType:


  -  Edit
  07:37:46.249  CoreGui.RobloxGui.Modules.PurchasePrompt.Enums.WindowState:


  -  Edit
  07:37:46.249  CoreGui.RobloxGui.Modules.PurchasePrompt.Flags.GetFFlagDisablePurchasePromptFunctionForMaquettes:


  -  Edit
  07:37:46.249  CoreGui.RobloxGui.Modules.PurchasePrompt.Flags.GetFFlagDisableRobuxUpsell:


  -  Edit
  07:37:46.250  CoreGui.RobloxGui.Modules.PurchasePrompt.Flags.GetFFlagEnableInsufficientRobuxForBundleUpsellFix:


  -  Edit
  07:37:46.250  CoreGui.RobloxGui.Modules.PurchasePrompt.Flags.GetFFlagEnableLuobuInGameUpsell:


  -  Edit
  07:37:46.250  CoreGui.RobloxGui.Modules.PurchasePrompt.Flags.GetFFlagEnablePalisadesPaymentsPlatform:


  -  Edit
  07:37:46.250  CoreGui.RobloxGui.Modules.PurchasePrompt.Flags.GetFFlagEnablePerformPurchaseGCSHandling:


  -  Edit
  07:37:46.250  CoreGui.RobloxGui.Modules.PurchasePrompt.Flags.GetFFlagEnablePromptPurchaseRequestedV2:


  -  Edit
  07:37:46.250  CoreGui.RobloxGui.Modules.PurchasePrompt.Flags.GetFFlagEnablePromptPurchaseRequestedV2Take2:


  -  Edit
  07:37:46.250  CoreGui.RobloxGui.Modules.PurchasePrompt.Flags.GetFFlagEnableQuestIAPAnalytics:


  -  Edit
  07:37:46.250  CoreGui.RobloxGui.Modules.PurchasePrompt.Flags.GetFFlagEnableRestrictedAssetSaleLocationPurchasePrompt:


  -  Edit
  07:37:46.250  CoreGui.RobloxGui.Modules.PurchasePrompt.Flags.GetFFlagEnableRobloxCreditPurchase:


  -  Edit
  07:37:46.250  CoreGui.RobloxGui.Modules.PurchasePrompt.Flags.GetFFlagEnableSubscriptionPurchaseToast:


  -  Edit
  07:37:46.250  CoreGui.RobloxGui.Modules.PurchasePrompt.Flags.GetFFlagEnableTexasU18VPCForInExperienceBundleRobuxUpsellFlow:


  -  Edit
  07:37:46.250  CoreGui.RobloxGui.Modules.PurchasePrompt.Flags.GetFFlagEnableTexasU18VPCForInExperienceRobuxUpsellFlow:


  -  Edit
  07:37:46.250  CoreGui.RobloxGui.Modules.PurchasePrompt.Flags.GetFFlagEnableToastLiteRender:


  -  Edit
  07:37:46.250  CoreGui.RobloxGui.Modules.PurchasePrompt.Flags.GetFFlagEnableVpcForInExperiencePremiumUpsell:


  -  Edit
  07:37:46.250  CoreGui.RobloxGui.Modules.PurchasePrompt.Flags.GetFFlagEnableVpcForInExperienceSubscriptionPurchase:


  -  Edit
  07:37:46.251  CoreGui.RobloxGui.Modules.PurchasePrompt.Flags.GetFFlagFixBundlePromptThumbnail:


  -  Edit
  07:37:46.251  CoreGui.RobloxGui.Modules.PurchasePrompt.Flags.GetFFlagFixPlayerGuiSelectionBugOnPromptExit:


  -  Edit
  07:37:46.251  CoreGui.RobloxGui.Modules.PurchasePrompt.Flags.GetFFlagFixPlayerGuiSelectionBugOnPromptExitPremium:


  -  Edit
  07:37:46.251  CoreGui.RobloxGui.Modules.PurchasePrompt.Flags.GetFFlagRespectBalanceInfoForBundleUpsellInStudio:


  -  Edit
  07:37:46.251  CoreGui.RobloxGui.Modules.PurchasePrompt.Flags.GetFFlagReturnNotForSaleOnInvalidBundleId:


  -  Edit
  07:37:46.251  CoreGui.RobloxGui.Modules.PurchasePrompt.Flags.GetFFlagTranslateDevProducts:


  -  Edit
  07:37:46.251  CoreGui.RobloxGui.Modules.PurchasePrompt.Flags.GetFFlagUseCatalogItemDetailsToResolveBundlePurchase:


  -  Edit
  07:37:46.251  CoreGui.RobloxGui.Modules.PurchasePrompt.Flags.GetFFLagUseCoreScriptsRootProviderForUpsellModal:


  -  Edit
  07:37:46.251  CoreGui.RobloxGui.Modules.PurchasePrompt.Flags.GetFFlagUsePlatformNameForUnknown:


  -  Edit
  07:37:46.251  CoreGui.RobloxGui.Modules.PurchasePrompt.Flags.LargerRobuxUpsellTest:


  -  Edit
  07:37:46.251  CoreGui.RobloxGui.Modules.PurchasePrompt.getPreviewImageUrl:


  -  Edit
  07:37:46.251  CoreGui.RobloxGui.Modules.PurchasePrompt.Localization.getLocalizationContext:


  -  Edit
  07:37:46.251  CoreGui.RobloxGui.Modules.PurchasePrompt.Localization.KeyMappings:


  -  Edit
  07:37:46.251  CoreGui.RobloxGui.Modules.PurchasePrompt.Localization.Locales.ar-001:


  -  Edit
  07:37:46.251  CoreGui.RobloxGui.Modules.PurchasePrompt.Localization.Locales.bg-bg:


  -  Edit
  07:37:46.252  CoreGui.RobloxGui.Modules.PurchasePrompt.Localization.Locales.bn-bd:


  -  Edit
  07:37:46.252  CoreGui.RobloxGui.Modules.PurchasePrompt.Localization.Locales.bs-ba:


  -  Edit
  07:37:46.252  CoreGui.RobloxGui.Modules.PurchasePrompt.Localization.Locales.cs-cz:


  -  Edit
  07:37:46.252  CoreGui.RobloxGui.Modules.PurchasePrompt.Localization.Locales.da-dk:


  -  Edit
  07:37:46.252  CoreGui.RobloxGui.Modules.PurchasePrompt.Localization.Locales.de-de:


  -  Edit
  07:37:46.252  CoreGui.RobloxGui.Modules.PurchasePrompt.Localization.Locales.el-gr:


  -  Edit
  07:37:46.252  CoreGui.RobloxGui.Modules.PurchasePrompt.Localization.Locales.en-us:


  -  Edit
  07:37:46.252  CoreGui.RobloxGui.Modules.PurchasePrompt.Localization.Locales.es-es:


  -  Edit
  07:37:46.252  CoreGui.RobloxGui.Modules.PurchasePrompt.Localization.Locales.et-ee:


  -  Edit
  07:37:46.252  CoreGui.RobloxGui.Modules.PurchasePrompt.Localization.Locales.fi-fi:


  -  Edit
  07:37:46.252  CoreGui.RobloxGui.Modules.PurchasePrompt.Localization.Locales.fil-ph:


  -  Edit
  07:37:46.252  CoreGui.RobloxGui.Modules.PurchasePrompt.Localization.Locales.fr-fr:


  -  Edit
  07:37:46.252  CoreGui.RobloxGui.Modules.PurchasePrompt.Localization.Locales.hi-in:


  -  Edit
  07:37:46.252  CoreGui.RobloxGui.Modules.PurchasePrompt.Localization.Locales.hr-hr:


  -  Edit
  07:37:46.252  CoreGui.RobloxGui.Modules.PurchasePrompt.Localization.Locales.hu-hu:


  -  Edit
  07:37:46.252  CoreGui.RobloxGui.Modules.PurchasePrompt.Localization.Locales.id-id:


  -  Edit
  07:37:46.252  CoreGui.RobloxGui.Modules.PurchasePrompt.Localization.Locales.it-it:


  -  Edit
  07:37:46.252  CoreGui.RobloxGui.Modules.PurchasePrompt.Localization.Locales.ja-jp:


  -  Edit
  07:37:46.252  CoreGui.RobloxGui.Modules.PurchasePrompt.Localization.Locales.ka-ge:


  -  Edit
  07:37:46.252  CoreGui.RobloxGui.Modules.PurchasePrompt.Localization.Locales.kk-kz:


  -  Edit
  07:37:46.252  CoreGui.RobloxGui.Modules.PurchasePrompt.Localization.Locales.km-kh:


  -  Edit
  07:37:46.253  CoreGui.RobloxGui.Modules.PurchasePrompt.Localization.Locales.ko-kr:


  -  Edit
  07:37:46.253  CoreGui.RobloxGui.Modules.PurchasePrompt.Localization.Locales.lt-lt:


  -  Edit
  07:37:46.253  CoreGui.RobloxGui.Modules.PurchasePrompt.Localization.Locales.lv-lv:


  -  Edit
  07:37:46.253  CoreGui.RobloxGui.Modules.PurchasePrompt.Localization.Locales.ms-my:


  -  Edit
  07:37:46.253  CoreGui.RobloxGui.Modules.PurchasePrompt.Localization.Locales.my-mm:


  -  Edit
  07:37:46.253  CoreGui.RobloxGui.Modules.PurchasePrompt.Localization.Locales.nb-no:


  -  Edit
  07:37:46.253  CoreGui.RobloxGui.Modules.PurchasePrompt.Localization.Locales.nl-nl:


  -  Edit
  07:37:46.253  CoreGui.RobloxGui.Modules.PurchasePrompt.Localization.Locales.pl-pl:


  -  Edit
  07:37:46.253  CoreGui.RobloxGui.Modules.PurchasePrompt.Localization.Locales.pt-br:


  -  Edit
  07:37:46.253  CoreGui.RobloxGui.Modules.PurchasePrompt.Localization.Locales.ro-ro:


  -  Edit
  07:37:46.253  CoreGui.RobloxGui.Modules.PurchasePrompt.Localization.Locales.ru-ru:


  -  Edit
  07:37:46.253  CoreGui.RobloxGui.Modules.PurchasePrompt.Localization.Locales.si-lk:


  -  Edit
  07:37:46.253  CoreGui.RobloxGui.Modules.PurchasePrompt.Localization.Locales.sk-sk:


  -  Edit
  07:37:46.253  CoreGui.RobloxGui.Modules.PurchasePrompt.Localization.Locales.sl-sl:


  -  Edit
  07:37:46.253  CoreGui.RobloxGui.Modules.PurchasePrompt.Localization.Locales.sq-al:


  -  Edit
  07:37:46.253  CoreGui.RobloxGui.Modules.PurchasePrompt.Localization.Locales.sr-rs:


  -  Edit
  07:37:46.254  CoreGui.RobloxGui.Modules.PurchasePrompt.Localization.Locales.sv-se:


  -  Edit
  07:37:46.254  CoreGui.RobloxGui.Modules.PurchasePrompt.Localization.Locales.th-th:


  -  Edit
  07:37:46.254  CoreGui.RobloxGui.Modules.PurchasePrompt.Localization.Locales.tr-tr:


  -  Edit
  07:37:46.254  CoreGui.RobloxGui.Modules.PurchasePrompt.Localization.Locales.uk-ua:


  -  Edit
  07:37:46.254  CoreGui.RobloxGui.Modules.PurchasePrompt.Localization.Locales.vi-vn:


  -  Edit
  07:37:46.254  CoreGui.RobloxGui.Modules.PurchasePrompt.Localization.Locales.zh-cjv:


  -  Edit
  07:37:46.254  CoreGui.RobloxGui.Modules.PurchasePrompt.Localization.Locales.zh-cn:


  -  Edit
  07:37:46.254  CoreGui.RobloxGui.Modules.PurchasePrompt.Localization.Locales.zh-tw:


  -  Edit
  07:37:46.254  CoreGui.RobloxGui.Modules.PurchasePrompt.Localization.LocalizationService:


  -  Edit
  07:37:46.254  CoreGui.RobloxGui.Modules.PurchasePrompt.Misc.Constants:


  -  Edit
  07:37:46.254  CoreGui.RobloxGui.Modules.PurchasePrompt.Misc.createSignal:


  -  Edit
  07:37:46.254  CoreGui.RobloxGui.Modules.PurchasePrompt.Models.PremiumProduct:


  -  Edit
  07:37:46.254  CoreGui.RobloxGui.Modules.PurchasePrompt.Models.RobuxUpsell:


  -  Edit
  07:37:46.254  CoreGui.RobloxGui.Modules.PurchasePrompt.NativeUpsell.getUpsellFlow:


  -  Edit
  07:37:46.254  CoreGui.RobloxGui.Modules.PurchasePrompt.Network.checkUserPurchaseSettings:


  -  Edit
  07:37:46.255  CoreGui.RobloxGui.Modules.PurchasePrompt.Network.getAccountInfo:


  -  Edit
  07:37:46.255  CoreGui.RobloxGui.Modules.PurchasePrompt.Network.getBalanceInfo:


  -  Edit
  07:37:46.255  CoreGui.RobloxGui.Modules.PurchasePrompt.Network.getBundleDetails:


  -  Edit
  07:37:46.255  CoreGui.RobloxGui.Modules.PurchasePrompt.Network.getCatalogItemDetails:


  -  Edit
  07:37:46.255  CoreGui.RobloxGui.Modules.PurchasePrompt.Network.getIsAlreadyOwned:


  -  Edit
  07:37:46.255  CoreGui.RobloxGui.Modules.PurchasePrompt.Network.getPremiumProductInfo:


  -  Edit
  07:37:46.255  CoreGui.RobloxGui.Modules.PurchasePrompt.Network.getPremiumUpsellPrecheck:


  -  Edit
  07:37:46.255  CoreGui.RobloxGui.Modules.PurchasePrompt.Network.getProductInfo:


  -  Edit
  07:37:46.255  CoreGui.RobloxGui.Modules.PurchasePrompt.Network.getProductPurchasableDetails:


  -  Edit
  07:37:46.255  CoreGui.RobloxGui.Modules.PurchasePrompt.Network.getPurchaseWarning:


  -  Edit
  07:37:46.255  CoreGui.RobloxGui.Modules.PurchasePrompt.Network.getRobuxUpsellProduct:


  -  Edit
  07:37:46.255  CoreGui.RobloxGui.Modules.PurchasePrompt.Network.getSubscriptionPurchaseInfo:


  -  Edit
  07:37:46.255  CoreGui.RobloxGui.Modules.PurchasePrompt.Network.getToolAsset:


  -  Edit
  07:37:46.255  CoreGui.RobloxGui.Modules.PurchasePrompt.Network.getVngShopUrl:


  -  Edit
  07:37:46.255  CoreGui.RobloxGui.Modules.PurchasePrompt.Network.performPurchase:


  -  Edit
  07:37:46.256  CoreGui.RobloxGui.Modules.PurchasePrompt.Network.performPurchaseV2:


  -  Edit
  07:37:46.256  CoreGui.RobloxGui.Modules.PurchasePrompt.Network.performSubscriptionPurchase:


  -  Edit
  07:37:46.256  CoreGui.RobloxGui.Modules.PurchasePrompt.Network.postPremiumImpression:


  -  Edit
  07:37:46.256  CoreGui.RobloxGui.Modules.PurchasePrompt.Network.postPurchaseWarningAcknowledge:


  -  Edit
  07:37:46.256  CoreGui.RobloxGui.Modules.PurchasePrompt.Promise:


  -  Edit
  07:37:46.256  CoreGui.RobloxGui.Modules.PurchasePrompt.Reducers.ABVariationReducer:


  -  Edit
  07:37:46.256  CoreGui.RobloxGui.Modules.PurchasePrompt.Reducers.AccountInfoReducer:


  -  Edit
  07:37:46.256  CoreGui.RobloxGui.Modules.PurchasePrompt.Reducers.ButtonStateReducer:


  -  Edit
  07:37:46.256  CoreGui.RobloxGui.Modules.PurchasePrompt.Reducers.GamepadEnabledReducer:


  -  Edit
  07:37:46.256  CoreGui.RobloxGui.Modules.PurchasePrompt.Reducers.HasCompletedPurchaseReducer:


  -  Edit
  07:37:46.256  CoreGui.RobloxGui.Modules.PurchasePrompt.Reducers.NativeUpsellReducer:


  -  Edit
  07:37:46.256  CoreGui.RobloxGui.Modules.PurchasePrompt.Reducers.PremiumProductsReducer:


  -  Edit
  07:37:46.256  CoreGui.RobloxGui.Modules.PurchasePrompt.Reducers.ProductInfoReducer:


  -  Edit
  07:37:46.256  CoreGui.RobloxGui.Modules.PurchasePrompt.Reducers.ProductReducer:


  -  Edit
  07:37:46.256  CoreGui.RobloxGui.Modules.PurchasePrompt.Reducers.PromptRequestReducer:


  -  Edit
  07:37:46.257  CoreGui.RobloxGui.Modules.PurchasePrompt.Reducers.PromptStateReducer:


  -  Edit
  07:37:46.257  CoreGui.RobloxGui.Modules.PurchasePrompt.Reducers.PurchaseErrorReducer:


  -  Edit
  07:37:46.257  CoreGui.RobloxGui.Modules.PurchasePrompt.Reducers.PurchaseFlowReducer:


  -  Edit
  07:37:46.257  CoreGui.RobloxGui.Modules.PurchasePrompt.Reducers.PurchasingStartTimeReducer:


  -  Edit
  07:37:46.257  CoreGui.RobloxGui.Modules.PurchasePrompt.Reducers.Reducer:


  -  Edit
  07:37:46.257  CoreGui.RobloxGui.Modules.PurchasePrompt.Reducers.SubscriptionPurchaseInfoReducer:


  -  Edit
  07:37:46.257  CoreGui.RobloxGui.Modules.PurchasePrompt.Reducers.WindowStateReducer:


  -  Edit
  07:37:46.257  CoreGui.RobloxGui.Modules.PurchasePrompt.Services.ABTest:


  -  Edit
  07:37:46.257  CoreGui.RobloxGui.Modules.PurchasePrompt.Services.Analytics:


  -  Edit
  07:37:46.257  CoreGui.RobloxGui.Modules.PurchasePrompt.Services.ExternalSettings:


  -  Edit
  07:37:46.257  CoreGui.RobloxGui.Modules.PurchasePrompt.Services.LayoutValues:


  -  Edit
  07:37:46.257  CoreGui.RobloxGui.Modules.PurchasePrompt.Services.Network:


  -  Edit
  07:37:46.257  CoreGui.RobloxGui.Modules.PurchasePrompt.Services.PlatformInterface:


  -  Edit
  07:37:46.257  CoreGui.RobloxGui.Modules.PurchasePrompt.Services.PublicBindables:


  -  Edit
  07:37:46.257  CoreGui.RobloxGui.Modules.PurchasePrompt.strict:


  -  Edit
  07:37:46.257  CoreGui.RobloxGui.Modules.PurchasePrompt.Symbols.Symbol:


  -  Edit
  07:37:46.258  CoreGui.RobloxGui.Modules.PurchasePrompt.Test.MockABTest:


  -  Edit
  07:37:46.258  CoreGui.RobloxGui.Modules.PurchasePrompt.Test.MockExternalSettings:


  -  Edit
  07:37:46.258  CoreGui.RobloxGui.Modules.PurchasePrompt.Test.MockNetwork:


  -  Edit
  07:37:46.258  CoreGui.RobloxGui.Modules.PurchasePrompt.Test.MockStore:


  -  Edit
  07:37:46.258  CoreGui.RobloxGui.Modules.PurchasePrompt.Test.UnitTestContainer:


  -  Edit
  07:37:46.258  CoreGui.RobloxGui.Modules.PurchasePrompt.Thunk:


  -  Edit
  07:37:46.258  CoreGui.RobloxGui.Modules.PurchasePrompt.Thunks.completePurchase:


  -  Edit
  07:37:46.258  CoreGui.RobloxGui.Modules.PurchasePrompt.Thunks.completeRequest:


  -  Edit
  07:37:46.258  CoreGui.RobloxGui.Modules.PurchasePrompt.Thunks.hideWindow:


  -  Edit
  07:37:46.258  CoreGui.RobloxGui.Modules.PurchasePrompt.Thunks.initiateAvatarCreationFeePurchase:


  -  Edit
  07:37:46.258  CoreGui.RobloxGui.Modules.PurchasePrompt.Thunks.initiateBundlePurchase:


  -  Edit
  07:37:46.258  CoreGui.RobloxGui.Modules.PurchasePrompt.Thunks.initiatePremiumPrecheck:


  -  Edit
  07:37:46.258  CoreGui.RobloxGui.Modules.PurchasePrompt.Thunks.initiatePremiumPurchase:


  -  Edit
  07:37:46.258  CoreGui.RobloxGui.Modules.PurchasePrompt.Thunks.initiatePurchase:


  -  Edit
  07:37:46.258  CoreGui.RobloxGui.Modules.PurchasePrompt.Thunks.initiatePurchasePrecheck:


  -  Edit
  07:37:46.259  CoreGui.RobloxGui.Modules.PurchasePrompt.Thunks.initiateSubscriptionPurchase:


  -  Edit
  07:37:46.259  CoreGui.RobloxGui.Modules.PurchasePrompt.Thunks.initiateUserPurchaseSettingsPrecheck:


  -  Edit
  07:37:46.259  CoreGui.RobloxGui.Modules.PurchasePrompt.Thunks.launchPremiumUpsell:


  -  Edit
  07:37:46.259  CoreGui.RobloxGui.Modules.PurchasePrompt.Thunks.launchRobuxUpsell:


  -  Edit
  07:37:46.259  CoreGui.RobloxGui.Modules.PurchasePrompt.Thunks.launchSubscriptionPurchase:


  -  Edit
  07:37:46.259  CoreGui.RobloxGui.Modules.PurchasePrompt.Thunks.openRobuxStore:


  -  Edit
  07:37:46.259  CoreGui.RobloxGui.Modules.PurchasePrompt.Thunks.openSecuritySettings:


  -  Edit
  07:37:46.259  CoreGui.RobloxGui.Modules.PurchasePrompt.Thunks.openTermsOfUse:


  -  Edit
  07:37:46.259  CoreGui.RobloxGui.Modules.PurchasePrompt.Thunks.purchaseItem:


  -  Edit
  07:37:46.259  CoreGui.RobloxGui.Modules.PurchasePrompt.Thunks.resolveBundlePromptState:


  -  Edit
  07:37:46.259  CoreGui.RobloxGui.Modules.PurchasePrompt.Thunks.resolvePremiumPromptState:


  -  Edit
  07:37:46.259  CoreGui.RobloxGui.Modules.PurchasePrompt.Thunks.resolvePromptState:


  -  Edit
  07:37:46.259  CoreGui.RobloxGui.Modules.PurchasePrompt.Thunks.resolvePurchasePrecheck:


  -  Edit
  07:37:46.259  CoreGui.RobloxGui.Modules.PurchasePrompt.Thunks.resolveSubscriptionPromptState:


  -  Edit
  07:37:46.259  CoreGui.RobloxGui.Modules.PurchasePrompt.Thunks.retryAfterUpsell:


  -  Edit
  07:37:46.259  CoreGui.RobloxGui.Modules.PurchasePrompt.Thunks.sendCounter:


  -  Edit
  07:37:46.260  CoreGui.RobloxGui.Modules.PurchasePrompt.Thunks.sendEvent:


  -  Edit
  07:37:46.260  CoreGui.RobloxGui.Modules.PurchasePrompt.Utils.addRawValueMethodToEnum:


  -  Edit
  07:37:46.260  CoreGui.RobloxGui.Modules.PurchasePrompt.Utils.Base64:


  -  Edit
  07:37:46.260  CoreGui.RobloxGui.Modules.PurchasePrompt.Utils.ClickScamDetector:


  -  Edit
  07:37:46.260  CoreGui.RobloxGui.Modules.PurchasePrompt.Utils.debugLog:


  -  Edit
  07:37:46.260  CoreGui.RobloxGui.Modules.PurchasePrompt.Utils.getCounterCombinations:


  -  Edit
  07:37:46.260  CoreGui.RobloxGui.Modules.PurchasePrompt.Utils.getHasAmazonUserAgent:


  -  Edit
  07:37:46.260  CoreGui.RobloxGui.Modules.PurchasePrompt.Utils.getHasLuobuFlag:


  -  Edit
  07:37:46.260  CoreGui.RobloxGui.Modules.PurchasePrompt.Utils.getHasQuestUserAgent:


  -  Edit
  07:37:46.260  CoreGui.RobloxGui.Modules.PurchasePrompt.Utils.getPaymentFromPlatform:


  -  Edit
  07:37:46.260  CoreGui.RobloxGui.Modules.PurchasePrompt.Utils.getPaymentFromPlatformLegacy:


  -  Edit
  07:37:46.260  CoreGui.RobloxGui.Modules.PurchasePrompt.Utils.getPaymentPlatform:


  -  Edit
  07:37:46.260  CoreGui.RobloxGui.Modules.PurchasePrompt.Utils.getPlayerPrice:


  -  Edit
  07:37:46.261  CoreGui.RobloxGui.Modules.PurchasePrompt.Utils.getPlayerProductInfoPrice:


  -  Edit
  07:37:46.261  CoreGui.RobloxGui.Modules.PurchasePrompt.Utils.hasPendingRequest:


  -  Edit
  07:37:46.261  CoreGui.RobloxGui.Modules.PurchasePrompt.Utils.isGenericChallengeResponse:


  -  Edit
  07:37:46.261  CoreGui.RobloxGui.Modules.PurchasePrompt.Utils.isLinksAllowed:


  -  Edit
  07:37:46.261  CoreGui.RobloxGui.Modules.PurchasePrompt.Utils.isMockingPurchases:


  -  Edit
  07:37:46.261  CoreGui.RobloxGui.Modules.PurchasePrompt.Utils.meetsPrerequisites:


  -  Edit
  07:37:46.261  CoreGui.RobloxGui.Modules.PurchasePrompt.Utils.parseSubscriptionError:


  -  Edit
  07:37:46.261  CoreGui.RobloxGui.Modules.PurchasePrompt.Utils.PublishAssetAnalytics:


  -  Edit
  07:37:46.261  CoreGui.RobloxGui.Modules.PurchasePrompt.Utils.serializeTable:


  -  Edit
  07:37:46.261  CoreGui.RobloxGui.Modules.SelfieView:


  -  Edit
  07:37:46.261  CoreGui.RobloxGui.Modules.SelfieView.Components.CameraStatusDot:


  -  Edit
  07:37:46.261  CoreGui.RobloxGui.Modules.SelfieView.Components.CameraStatusIcon:


  -  Edit
  07:37:46.261  CoreGui.RobloxGui.Modules.SelfieView.Components.FaceClone:


  -  Edit
  07:37:46.261  CoreGui.RobloxGui.Modules.SelfieView.Components.Window:


  -  Edit
  07:37:46.261  CoreGui.RobloxGui.Modules.SelfieView.Flags.GetFFlagSelfieViewEnabled:


  -  Edit
  07:37:46.261  CoreGui.RobloxGui.Modules.SelfieView.Flags.GetFFlagSelfieViewFixMigration:


  -  Edit
  07:37:46.262  CoreGui.RobloxGui.Modules.SelfieView.Flags.GetFFlagSelfieViewGyroMigration:


  -  Edit
  07:37:46.262  CoreGui.RobloxGui.Modules.SelfieView.Hooks.useCameraOn:


  -  Edit
  07:37:46.262  CoreGui.RobloxGui.Modules.SelfieView.Hooks.useLocalPlayer:


  -  Edit
  07:37:46.262  CoreGui.RobloxGui.Modules.SelfieView.Hooks.useTooltipDismissal:


  -  Edit
  07:37:46.262  CoreGui.RobloxGui.Modules.SelfieView.Hooks.useTrackerMessage:


  -  Edit
  07:37:46.262  CoreGui.RobloxGui.Modules.SelfieView.Hooks.useTrackerMode:


  -  Edit
  07:37:46.262  CoreGui.RobloxGui.Modules.SelfieView.Utils.FaceChatUtils:


  -  Edit
  07:37:46.262  CoreGui.RobloxGui.Modules.SelfieView.Utils.ModelUtils:


  -  Edit
  07:37:46.262  CoreGui.RobloxGui.Modules.SelfieView.Utils.SizingUtils:


  -  Edit
  07:37:46.262  CoreGui.RobloxGui.Modules.SelfView.Analytics:


  -  Edit
  07:37:46.262  CoreGui.RobloxGui.Modules.SelfView.mountSelfViewOnCloseTooltip:


  -  Edit
  07:37:46.262  CoreGui.RobloxGui.Modules.SelfView.mountSelfViewOnOpenTooltip:


  -  Edit
  07:37:46.262  CoreGui.RobloxGui.Modules.SelfView.publicApi:


  -  Edit
  07:37:46.262  CoreGui.RobloxGui.Modules.SelfView.SelfViewTooltipFTUX:


  -  Edit
  07:37:46.262  CoreGui.RobloxGui.Modules.SelfView.selfViewVisibilityUpdatedSignal:


  -  Edit
  07:37:46.262  CoreGui.RobloxGui.Modules.SelfView.toggleSelfViewSignal:


  -  Edit
  07:37:46.263  CoreGui.RobloxGui.Modules.Server.ClientChat.BubbleChat.BubbleChat:


  -  Edit
  07:37:46.263  CoreGui.RobloxGui.Modules.Server.ClientChat.ChannelsBar:


  -  Edit
  07:37:46.263  CoreGui.RobloxGui.Modules.Server.ClientChat.ChannelsTab:


  -  Edit
  07:37:46.263  CoreGui.RobloxGui.Modules.Server.ClientChat.ChatBar:


  -  Edit
  07:37:46.263  CoreGui.RobloxGui.Modules.Server.ClientChat.ChatChannel:


  -  Edit
  07:37:46.263  CoreGui.RobloxGui.Modules.Server.ClientChat.ChatInstallVerifier:


  -  Edit
  07:37:46.263  CoreGui.RobloxGui.Modules.Server.ClientChat.ChatMain:


  -  Edit
  07:37:46.263  CoreGui.RobloxGui.Modules.Server.ClientChat.ChatScript:


  -  Edit
  07:37:46.263  CoreGui.RobloxGui.Modules.Server.ClientChat.ChatWindow:


  -  Edit
  07:37:46.263  CoreGui.RobloxGui.Modules.Server.ClientChat.ChatWindowInstaller:


  -  Edit
  07:37:46.263  CoreGui.RobloxGui.Modules.Server.ClientChat.CommandProcessor:


  -  Edit
  07:37:46.263  CoreGui.RobloxGui.Modules.Server.ClientChat.CurveUtil:


  -  Edit
  07:37:46.263  CoreGui.RobloxGui.Modules.Server.ClientChat.DefaultClientChatModules.ChatConstants:


  -  Edit
  07:37:46.263  CoreGui.RobloxGui.Modules.Server.ClientChat.DefaultClientChatModules.ChatLocalization:


  -  Edit
  07:37:46.263  CoreGui.RobloxGui.Modules.Server.ClientChat.DefaultClientChatModules.ChatSettings:


  -  Edit
  07:37:46.264  CoreGui.RobloxGui.Modules.Server.ClientChat.DefaultClientChatModules.CommandModules.ClearMessages:


  -  Edit
  07:37:46.264  CoreGui.RobloxGui.Modules.Server.ClientChat.DefaultClientChatModules.CommandModules.DeveloperConsole:


  -  Edit
  07:37:46.264  CoreGui.RobloxGui.Modules.Server.ClientChat.DefaultClientChatModules.CommandModules.GetVersion:


  -  Edit
  07:37:46.264  CoreGui.RobloxGui.Modules.Server.ClientChat.DefaultClientChatModules.CommandModules.PlayEmote:


  -  Edit
  07:37:46.264  CoreGui.RobloxGui.Modules.Server.ClientChat.DefaultClientChatModules.CommandModules.SwallowGuestChat:


  -  Edit
  07:37:46.264  CoreGui.RobloxGui.Modules.Server.ClientChat.DefaultClientChatModules.CommandModules.SwitchChannel:


  -  Edit
  07:37:46.264  CoreGui.RobloxGui.Modules.Server.ClientChat.DefaultClientChatModules.CommandModules.Team:


  -  Edit
  07:37:46.264  CoreGui.RobloxGui.Modules.Server.ClientChat.DefaultClientChatModules.CommandModules.Util:


  -  Edit
  07:37:46.264  CoreGui.RobloxGui.Modules.Server.ClientChat.DefaultClientChatModules.CommandModules.Whisper:


  -  Edit
  07:37:46.264  CoreGui.RobloxGui.Modules.Server.ClientChat.DefaultClientChatModules.MessageCreatorModules.DefaultChatMessage:


  -  Edit
  07:37:46.264  CoreGui.RobloxGui.Modules.Server.ClientChat.DefaultClientChatModules.MessageCreatorModules.MeCommandMessage:


  -  Edit
  07:37:46.264  CoreGui.RobloxGui.Modules.Server.ClientChat.DefaultClientChatModules.MessageCreatorModules.SetCoreMessage:


  -  Edit
  07:37:46.264  CoreGui.RobloxGui.Modules.Server.ClientChat.DefaultClientChatModules.MessageCreatorModules.SystemMessage:


  -  Edit
  07:37:46.264  CoreGui.RobloxGui.Modules.Server.ClientChat.DefaultClientChatModules.MessageCreatorModules.UnknownMessage:


  -  Edit
  07:37:46.264  CoreGui.RobloxGui.Modules.Server.ClientChat.DefaultClientChatModules.MessageCreatorModules.Util:


  -  Edit
  07:37:46.264  CoreGui.RobloxGui.Modules.Server.ClientChat.DefaultClientChatModules.MessageCreatorModules.WelcomeMessage:


  -  Edit
  07:37:46.264  CoreGui.RobloxGui.Modules.Server.ClientChat.DefaultClientChatModules.MessageCreatorModules.WhisperMessage:


  -  Edit
  07:37:46.264  CoreGui.RobloxGui.Modules.Server.ClientChat.MessageLabelCreator:


  -  Edit
  07:37:46.265  CoreGui.RobloxGui.Modules.Server.ClientChat.MessageLogDisplay:


  -  Edit
  07:37:46.265  CoreGui.RobloxGui.Modules.Server.ClientChat.MessageSender:


  -  Edit
  07:37:46.265  CoreGui.RobloxGui.Modules.Server.ClientChat.TransparencyTweener:


  -  Edit
  07:37:46.265  CoreGui.RobloxGui.Modules.Server.FreeCamera.FreeCamera:


  -  Edit
  07:37:46.265  CoreGui.RobloxGui.Modules.Server.FreeCamera.FreeCameraInstaller:


  -  Edit
  07:37:46.265  CoreGui.RobloxGui.Modules.Server.SendChatAnalytics:


  -  Edit
  07:37:46.265  CoreGui.RobloxGui.Modules.Server.ServerChat.ChatChannel:


  -  Edit
  07:37:46.265  CoreGui.RobloxGui.Modules.Server.ServerChat.ChatService:


  -  Edit
  07:37:46.265  CoreGui.RobloxGui.Modules.Server.ServerChat.ChatServiceInstaller:


  -  Edit
  07:37:46.265  CoreGui.RobloxGui.Modules.Server.ServerChat.ChatServiceRunner:


  -  Edit
  07:37:46.265  CoreGui.RobloxGui.Modules.Server.ServerChat.DefaultChatLocalization:


  -  Edit
  07:37:46.265  CoreGui.RobloxGui.Modules.Server.ServerChat.DefaultChatModules.ChatCommandsTeller:


  -  Edit
  07:37:46.265  CoreGui.RobloxGui.Modules.Server.ServerChat.DefaultChatModules.ChatFloodDetector:


  -  Edit
  07:37:46.265  CoreGui.RobloxGui.Modules.Server.ServerChat.DefaultChatModules.ChatMessageValidator:


  -  Edit
  07:37:46.265  CoreGui.RobloxGui.Modules.Server.ServerChat.DefaultChatModules.ExtraDataInitializer:


  -  Edit
  07:37:46.265  CoreGui.RobloxGui.Modules.Server.ServerChat.DefaultChatModules.FriendJoinNotifier:


  -  Edit
  07:37:46.265  CoreGui.RobloxGui.Modules.Server.ServerChat.DefaultChatModules.MeCommand:


  -  Edit
  07:37:46.266  CoreGui.RobloxGui.Modules.Server.ServerChat.DefaultChatModules.MuteSpeaker:


  -  Edit
  07:37:46.266  CoreGui.RobloxGui.Modules.Server.ServerChat.DefaultChatModules.PrivateMessaging:


  -  Edit
  07:37:46.266  CoreGui.RobloxGui.Modules.Server.ServerChat.DefaultChatModules.TeamChat:


  -  Edit
  07:37:46.266  CoreGui.RobloxGui.Modules.Server.ServerChat.DefaultChatModules.Utility.DisplayNameHelpers:


  -  Edit
  07:37:46.266  CoreGui.RobloxGui.Modules.Server.ServerChat.Speaker:


  -  Edit
  07:37:46.266  CoreGui.RobloxGui.Modules.Server.ServerChat.Util:


  -  Edit
  07:37:46.266  CoreGui.RobloxGui.Modules.Server.ServerPlayer.DefaultServerPlayerModules.PlayerSettings:


  -  Edit
  07:37:46.266  CoreGui.RobloxGui.Modules.Server.ServerPlayer.ServerPlayerInstaller:


  -  Edit
  07:37:46.266  CoreGui.RobloxGui.Modules.Server.ServerSound.SoundDispatcher:


  -  Edit
  07:37:46.266  CoreGui.RobloxGui.Modules.Server.ServerSound.SoundDispatcherInstaller:


  -  Edit
  07:37:46.266  CoreGui.RobloxGui.Modules.Server.ServerUtil:


  -  Edit
  07:37:46.266  CoreGui.RobloxGui.Modules.Server.UGCValidation.UGCValidationFunctionInstaller:


  -  Edit
  07:37:46.266  CoreGui.RobloxGui.Modules.Server.VR.VRAvatarGesturesServer:


  -  Edit
  07:37:46.266  CoreGui.RobloxGui.Modules.shouldSaveScreenshotToAlbum:


  -  Edit
  07:37:46.267  CoreGui.RobloxGui.Modules.SocialUtil:


  -  Edit
  07:37:46.267  CoreGui.RobloxGui.Modules.Stats.BarGraph:


  -  Edit
  07:37:46.267  CoreGui.RobloxGui.Modules.Stats.BaseMemoryAnalyzer:


  -  Edit
  07:37:46.267  CoreGui.RobloxGui.Modules.Stats.ClientMemoryAnalyzer:


  -  Edit
  07:37:46.267  CoreGui.RobloxGui.Modules.Stats.DecoratedValueLabel:


  -  Edit
  07:37:46.267  CoreGui.RobloxGui.Modules.Stats.ServerMemoryAnalyzer:


  -  Edit
  07:37:46.267  CoreGui.RobloxGui.Modules.Stats.StatsAggregator:


  -  Edit
  07:37:46.267  CoreGui.RobloxGui.Modules.Stats.StatsAggregatorManager:


  -  Edit
  07:37:46.267  CoreGui.RobloxGui.Modules.Stats.StatsAnnotatedGraph:


  -  Edit
  07:37:46.267  CoreGui.RobloxGui.Modules.Stats.StatsButton:


  -  Edit
  07:37:46.267  CoreGui.RobloxGui.Modules.Stats.StatsMiniTextPanel:


  -  Edit
  07:37:46.267  CoreGui.RobloxGui.Modules.Stats.StatsTextPanel:


  -  Edit
  07:37:46.267  CoreGui.RobloxGui.Modules.Stats.StatsUtils:


  -  Edit
  07:37:46.267  CoreGui.RobloxGui.Modules.Stats.StatsViewer:


  -  Edit
  07:37:46.267  CoreGui.RobloxGui.Modules.Stats.TreeViewItem:


  -  Edit
  07:37:46.267  CoreGui.RobloxGui.Modules.StyleWidgets:


  -  Edit
  07:37:46.267  CoreGui.RobloxGui.Modules.TenFootInterface:


  -  Edit
  07:37:46.268  CoreGui.RobloxGui.Modules.TestHelpers.MockAppStorageService:


  -  Edit
  07:37:46.268  CoreGui.RobloxGui.Modules.TestHelpers.MockGuiService:


  -  Edit
  07:37:46.268  CoreGui.RobloxGui.Modules.TestHelpers.MockVRService:


  -  Edit
  07:37:46.268  CoreGui.RobloxGui.Modules.TopBar:


  -  Edit
  07:37:46.268  CoreGui.RobloxGui.Modules.TopBar.Actions.RemoveKeepOutArea:


  -  Edit
  07:37:46.268  CoreGui.RobloxGui.Modules.TopBar.Actions.SetBackpackOpen:


  -  Edit
  07:37:46.268  CoreGui.RobloxGui.Modules.TopBar.Actions.SetCanChat:


  -  Edit
  07:37:46.268  CoreGui.RobloxGui.Modules.TopBar.Actions.SetEmotesEnabled:


  -  Edit
  07:37:46.268  CoreGui.RobloxGui.Modules.TopBar.Actions.SetEmotesOpen:


  -  Edit
  07:37:46.268  CoreGui.RobloxGui.Modules.TopBar.Actions.SetGameName:


  -  Edit
  07:37:46.268  CoreGui.RobloxGui.Modules.TopBar.Actions.SetGamepadMenuOpen:


  -  Edit
  07:37:46.268  CoreGui.RobloxGui.Modules.TopBar.Actions.SetGamepadNavigationDialogOpen:


  -  Edit
  07:37:46.268  CoreGui.RobloxGui.Modules.TopBar.Actions.SetInputType:


  -  Edit
  07:37:46.268  CoreGui.RobloxGui.Modules.TopBar.Actions.SetInspectMenuOpen:


  -  Edit
  07:37:46.268  CoreGui.RobloxGui.Modules.TopBar.Actions.SetIsDead:


  -  Edit
  07:37:46.268  CoreGui.RobloxGui.Modules.TopBar.Actions.SetKeepOutArea:


  -  Edit
  07:37:46.269  CoreGui.RobloxGui.Modules.TopBar.Actions.SetLeaderboardOpen:


  -  Edit
  07:37:46.269  CoreGui.RobloxGui.Modules.TopBar.Actions.SetMenuOpen:


  -  Edit
  07:37:46.269  CoreGui.RobloxGui.Modules.TopBar.Actions.SetMoreMenuOpen:


  -  Edit
  07:37:46.269  CoreGui.RobloxGui.Modules.TopBar.Actions.SetRespawnBehaviour:


  -  Edit
  07:37:46.269  CoreGui.RobloxGui.Modules.TopBar.Actions.SetScreenSize:


  -  Edit
  07:37:46.269  CoreGui.RobloxGui.Modules.TopBar.Actions.SetSmallTouchDevice:


  -  Edit
  07:37:46.269  CoreGui.RobloxGui.Modules.TopBar.Actions.SetTopBarEnabled:


  -  Edit
  07:37:46.269  CoreGui.RobloxGui.Modules.TopBar.Actions.UpdateChatMessages:


  -  Edit
  07:37:46.269  CoreGui.RobloxGui.Modules.TopBar.Actions.UpdateChatVisible:


  -  Edit
  07:37:46.269  CoreGui.RobloxGui.Modules.TopBar.Actions.UpdateCoreGuiEnabled:


  -  Edit
  07:37:46.269  CoreGui.RobloxGui.Modules.TopBar.Actions.UpdateHealth:


  -  Edit
  07:37:46.269  CoreGui.RobloxGui.Modules.TopBar.Actions.UpdateUnreadMessagesBadge:


  -  Edit
  07:37:46.269  CoreGui.RobloxGui.Modules.TopBar.Analytics:


  -  Edit
  07:37:46.269  CoreGui.RobloxGui.Modules.TopBar.Components.Connection:


  -  Edit
  07:37:46.269  CoreGui.RobloxGui.Modules.TopBar.Components.Connection.ChatConnector:


  -  Edit
  07:37:46.269  CoreGui.RobloxGui.Modules.TopBar.Components.Connection.CoreGuiConnector:


  -  Edit
  07:37:46.269  CoreGui.RobloxGui.Modules.TopBar.Components.Connection.EnabledNotifier:


  -  Edit
  07:37:46.270  CoreGui.RobloxGui.Modules.TopBar.Components.Connection.HealthConnector:


  -  Edit
  07:37:46.270  CoreGui.RobloxGui.Modules.TopBar.Components.Connection.LastInputTypeConnector:


  -  Edit
  07:37:46.270  CoreGui.RobloxGui.Modules.TopBar.Components.Connection.MenuConnector:


  -  Edit
  07:37:46.270  CoreGui.RobloxGui.Modules.TopBar.Components.Connection.OpenUIConnector:


  -  Edit
  07:37:46.270  CoreGui.RobloxGui.Modules.TopBar.Components.Presentation.BadgeOver12:


  -  Edit
  07:37:46.270  CoreGui.RobloxGui.Modules.TopBar.Components.Presentation.BadgeOver13:


  -  Edit
  07:37:46.270  CoreGui.RobloxGui.Modules.TopBar.Components.Presentation.BadgeOver13.AnalyticsContext:


  -  Edit
  07:37:46.270  CoreGui.RobloxGui.Modules.TopBar.Components.Presentation.BadgeOver13.Badge:


  -  Edit
  07:37:46.270  CoreGui.RobloxGui.Modules.TopBar.Components.Presentation.BadgeOver13.BadgeOver13:


  -  Edit
  07:37:46.270  CoreGui.RobloxGui.Modules.TopBar.Components.Presentation.BadgeOver13.openWebview:


  -  Edit
  07:37:46.270  CoreGui.RobloxGui.Modules.TopBar.Components.Presentation.BadgeOver13.Popup:


  -  Edit
  07:37:46.270  CoreGui.RobloxGui.Modules.TopBar.Components.Presentation.BadgeOver13.useAnalytics:


  -  Edit
  07:37:46.270  CoreGui.RobloxGui.Modules.TopBar.Components.Presentation.ChatIcon:


  -  Edit
  07:37:46.270  CoreGui.RobloxGui.Modules.TopBar.Components.Presentation.ChatIconFtuxTooltip:


  -  Edit
  07:37:46.271  CoreGui.RobloxGui.Modules.TopBar.Components.Presentation.ConnectIcon:


  -  Edit
  07:37:46.271  CoreGui.RobloxGui.Modules.TopBar.Components.Presentation.FlashingDot:


  -  Edit
  07:37:46.271  CoreGui.RobloxGui.Modules.TopBar.Components.Presentation.FlashingDotV2:


  -  Edit
  07:37:46.271  CoreGui.RobloxGui.Modules.TopBar.Components.Presentation.GamepadMenu:


  -  Edit
  07:37:46.271  CoreGui.RobloxGui.Modules.TopBar.Components.Presentation.GamepadMenu.BottomBar:


  -  Edit
  07:37:46.271  CoreGui.RobloxGui.Modules.TopBar.Components.Presentation.GamepadMenu.ButtonHint:


  -  Edit
  07:37:46.271  CoreGui.RobloxGui.Modules.TopBar.Components.Presentation.GamepadMenu.ChatIcon:


  -  Edit
  07:37:46.271  CoreGui.RobloxGui.Modules.TopBar.Components.Presentation.GamepadMenu.MenuCell:


  -  Edit
  07:37:46.271  CoreGui.RobloxGui.Modules.TopBar.Components.Presentation.GamepadMenu.MenuHeader:


  -  Edit
  07:37:46.271  CoreGui.RobloxGui.Modules.TopBar.Components.Presentation.GamepadMenu.MenuNavigationDismissablePrompt:


  -  Edit
  07:37:46.271  CoreGui.RobloxGui.Modules.TopBar.Components.Presentation.GamepadMenu.MenuNavigationPromptLocalStorage:


  -  Edit
  07:37:46.271  CoreGui.RobloxGui.Modules.TopBar.Components.Presentation.GamepadMenu.MenuNavigationToggleDialog:


  -  Edit
  07:37:46.271  CoreGui.RobloxGui.Modules.TopBar.Components.Presentation.GamepadMenu.QuickMenuControllerBar:


  -  Edit
  07:37:46.271  CoreGui.RobloxGui.Modules.TopBar.Components.Presentation.GamepadNavigationDialog:


  -  Edit
  07:37:46.271  CoreGui.RobloxGui.Modules.TopBar.Components.Presentation.GamepadNavigationDialog.GamepadNavigationDialog:


  -  Edit
  07:37:46.271  CoreGui.RobloxGui.Modules.TopBar.Components.Presentation.GamepadNavigationDialog.GamepadNavigationDialogShowCounter:


  -  Edit
  07:37:46.272  CoreGui.RobloxGui.Modules.TopBar.Components.Presentation.HeadsetMenu:


  -  Edit
  07:37:46.272  CoreGui.RobloxGui.Modules.TopBar.Components.Presentation.HeadsetMenu.DisconnectedDialog:


  -  Edit
  07:37:46.272  CoreGui.RobloxGui.Modules.TopBar.Components.Presentation.HealthBar:


  -  Edit
  07:37:46.272  CoreGui.RobloxGui.Modules.TopBar.Components.Presentation.HurtOverlay:


  -  Edit
  07:37:46.272  CoreGui.RobloxGui.Modules.TopBar.Components.Presentation.IconButton:


  -  Edit
  07:37:46.272  CoreGui.RobloxGui.Modules.TopBar.Components.Presentation.MenuIcon:


  -  Edit
  07:37:46.272  CoreGui.RobloxGui.Modules.TopBar.Components.Presentation.menuIconHoveredSignal:


  -  Edit
  07:37:46.272  CoreGui.RobloxGui.Modules.TopBar.Components.Presentation.MoreMenu:


  -  Edit
  07:37:46.272  CoreGui.RobloxGui.Modules.TopBar.Components.Presentation.RecordingPill:


  -  Edit
  07:37:46.272  CoreGui.RobloxGui.Modules.TopBar.Components.Presentation.VoiceBetaBadge:


  -  Edit
  07:37:46.272  CoreGui.RobloxGui.Modules.TopBar.Components.TopBarApp:


  -  Edit
  07:37:46.272  CoreGui.RobloxGui.Modules.TopBar.Constants:


  -  Edit
  07:37:46.272  CoreGui.RobloxGui.Modules.TopBar.Flags.FFlagAlwaysSelectButtonDismissesGamepadNavigationDialog:


  -  Edit
  07:37:46.272  CoreGui.RobloxGui.Modules.TopBar.Flags.FFlagAlwaysShowGamepadNavigationDialog:


  -  Edit
  07:37:46.273  CoreGui.RobloxGui.Modules.TopBar.Flags.FFlagGamepadNavigationDialogABTest:


  -  Edit
  07:37:46.273  CoreGui.RobloxGui.Modules.TopBar.Flags.FFlagLocalizeMenuNavigationToggleDialog:


  -  Edit
  07:37:46.273  CoreGui.RobloxGui.Modules.TopBar.Flags.GetFFlagChangeTopbarHeightCalculation:


  -  Edit
  07:37:46.273  CoreGui.RobloxGui.Modules.TopBar.Flags.GetFFlagEnableChromeBackwardsSignalAPI:


  -  Edit
  07:37:46.273  CoreGui.RobloxGui.Modules.TopBar.Flags.GetFFlagEnableTopBarAnalytics:


  -  Edit
  07:37:46.273  CoreGui.RobloxGui.Modules.TopBar.Flags.GetFFlagFixHealthDesync:


  -  Edit
  07:37:46.273  CoreGui.RobloxGui.Modules.TopBar.Flags.GetFIntGamepadNavigationDialogShowCount:


  -  Edit
  07:37:46.273  CoreGui.RobloxGui.Modules.TopBar.Flags.GetFStringGamepadNavigationDialogABTestLayerName:


  -  Edit
  07:37:46.273  CoreGui.RobloxGui.Modules.TopBar.GlobalConfig:


  -  Edit
  07:37:46.273  CoreGui.RobloxGui.Modules.TopBar.Reducer:


  -  Edit
  07:37:46.273  CoreGui.RobloxGui.Modules.TopBar.Reducer.Chat:


  -  Edit
  07:37:46.273  CoreGui.RobloxGui.Modules.TopBar.Reducer.CoreGuiEnabled:


  -  Edit
  07:37:46.273  CoreGui.RobloxGui.Modules.TopBar.Reducer.DisplayOptions:


  -  Edit
  07:37:46.273  CoreGui.RobloxGui.Modules.TopBar.Reducer.GameInfo:


  -  Edit
  07:37:46.273  CoreGui.RobloxGui.Modules.TopBar.Reducer.Health:


  -  Edit
  07:37:46.274  CoreGui.RobloxGui.Modules.TopBar.Reducer.MoreMenu:


  -  Edit
  07:37:46.274  CoreGui.RobloxGui.Modules.TopBar.Reducer.Respawn:


  -  Edit
  07:37:46.274  CoreGui.RobloxGui.Modules.TopBar.registerSetCores:


  -  Edit
  07:37:46.274  CoreGui.RobloxGui.Modules.TopBar.Thunks.GetCanChat:


  -  Edit
  07:37:46.274  CoreGui.RobloxGui.Modules.TopBar.Thunks.GetGameName:


  -  Edit
  07:37:46.274  CoreGui.RobloxGui.Modules.TopBar.Thunks.RespawnCharacter:


  -  Edit
  07:37:46.274  CoreGui.RobloxGui.Modules.TopBar.TokenMappers.MenuNavigationPromptTokenMapper:


  -  Edit
  07:37:46.274  CoreGui.RobloxGui.Modules.TopBar.TopBar.storybook:


  -  Edit
  07:37:46.274  CoreGui.RobloxGui.Modules.TopBar.TopBarAppPolicy:


  -  Edit
  07:37:46.274  CoreGui.RobloxGui.Modules.UIManager.Constants:


  -  Edit
  07:37:46.274  CoreGui.RobloxGui.Modules.UIManager.createCompatPanel:


  -  Edit
  07:37:46.274  CoreGui.RobloxGui.Modules.UIManager.createUIGroupDragBar:


  -  Edit
  07:37:46.275  CoreGui.RobloxGui.Modules.UIManager.DragBar:


  -  Edit
  07:37:46.275  CoreGui.RobloxGui.Modules.UIManager.registerRoactPanel:


  -  Edit
  07:37:46.275  CoreGui.RobloxGui.Modules.UIManager.UIManager:


  -  Edit
  07:37:46.275  CoreGui.RobloxGui.Modules.UIManager.Utils:


  -  Edit
  07:37:46.275  CoreGui.RobloxGui.Modules.VirtualCursor.Input:


  -  Edit
  07:37:46.275  CoreGui.RobloxGui.Modules.VirtualCursor.Interface:


  -  Edit
  07:37:46.275  CoreGui.RobloxGui.Modules.VirtualCursor.OnRenderStep:


  -  Edit
  07:37:46.275  CoreGui.RobloxGui.Modules.VirtualCursor.Properties:


  -  Edit
  07:37:46.275  CoreGui.RobloxGui.Modules.VirtualCursor.VirtualCursorMain:


  -  Edit
  07:37:46.275  CoreGui.RobloxGui.Modules.VoiceChat.Actions.ParticipantAdded:


  -  Edit
  07:37:46.275  CoreGui.RobloxGui.Modules.VoiceChat.Actions.ParticipantRemoved:


  -  Edit
  07:37:46.275  CoreGui.RobloxGui.Modules.VoiceChat.Actions.ParticipantsChanged:


  -  Edit
  07:37:46.275  CoreGui.RobloxGui.Modules.VoiceChat.Actions.PlayerRemoved:


  -  Edit
  07:37:46.275  CoreGui.RobloxGui.Modules.VoiceChat.Actions.VoiceEnabledChanged:


  -  Edit
  07:37:46.276  CoreGui.RobloxGui.Modules.VoiceChat.Actions.VoiceStateChanged:


  -  Edit
  07:37:46.276  CoreGui.RobloxGui.Modules.VoiceChat.Analytics:


  -  Edit
  07:37:46.276  CoreGui.RobloxGui.Modules.VoiceChat.Components.AudioDeviceInputDebugger:


  -  Edit
  07:37:46.276  CoreGui.RobloxGui.Modules.VoiceChat.Components.getIconVoiceIndicator:


  -  Edit
  07:37:46.276  CoreGui.RobloxGui.Modules.VoiceChat.Components.getPermissions:


  -  Edit
  07:37:46.276  CoreGui.RobloxGui.Modules.VoiceChat.Components.isVoiceServiceInitialized:


  -  Edit
  07:37:46.276  CoreGui.RobloxGui.Modules.VoiceChat.Components.onClickedCameraIndicator:


  -  Edit
  07:37:46.276  CoreGui.RobloxGui.Modules.VoiceChat.Components.onClickedLikelySpeakingBubble:


  -  Edit
  07:37:46.276  CoreGui.RobloxGui.Modules.VoiceChat.Components.onClickedVoiceIndicator:


  -  Edit
  07:37:46.276  CoreGui.RobloxGui.Modules.VoiceChat.Components.selfViewListenerChanged:


  -  Edit
  07:37:46.276  CoreGui.RobloxGui.Modules.VoiceChat.Components.VoiceIndicator:


  -  Edit
  07:37:46.276  CoreGui.RobloxGui.Modules.VoiceChat.Components.VoiceIndicatorFunc:


  -  Edit
  07:37:46.276  CoreGui.RobloxGui.Modules.VoiceChat.Constants:


  -  Edit
  07:37:46.276  CoreGui.RobloxGui.Modules.VoiceChat.createVoiceAbuseReportRequest:


  -  Edit
  07:37:46.277  CoreGui.RobloxGui.Modules.VoiceChat.Flags.GetFFlagDisableConsentModalForExistingUsers:


  -  Edit
  07:37:46.277  CoreGui.RobloxGui.Modules.VoiceChat.Flags.GetFFlagEnableConnectDisconnectPersistenceForReconnects:


  -  Edit
  07:37:46.277  CoreGui.RobloxGui.Modules.VoiceChat.Flags.GetFFlagOnlyEnableJoinVoiceInVoiceEnabledUniverses:


  -  Edit
  07:37:46.277  CoreGui.RobloxGui.Modules.VoiceChat.GlobalConfig:


  -  Edit
  07:37:46.277  CoreGui.RobloxGui.Modules.VoiceChat.Helpers.displayCameraDeniedToast:


  -  Edit
  07:37:46.277  CoreGui.RobloxGui.Modules.VoiceChat.Helpers.maybeAssert:


  -  Edit
  07:37:46.277  CoreGui.RobloxGui.Modules.VoiceChat.Hooks.useVoiceState:


  -  Edit
  07:37:46.277  CoreGui.RobloxGui.Modules.VoiceChat.initVoiceChatStore:


  -  Edit
  07:37:46.277  CoreGui.RobloxGui.Modules.VoiceChat.Logger:


  -  Edit
  07:37:46.277  CoreGui.RobloxGui.Modules.VoiceChat.Mocks.MockAppStorageService:


  -  Edit
  07:37:46.277  CoreGui.RobloxGui.Modules.VoiceChat.Mocks.MockAvatarChatService:


  -  Edit
  07:37:46.278  CoreGui.RobloxGui.Modules.VoiceChat.Reducers.voiceState:


  -  Edit
  07:37:46.278  CoreGui.RobloxGui.Modules.VoiceChat.ReportAbuseLogic:


  -  Edit
  07:37:46.278  CoreGui.RobloxGui.Modules.VoiceChat.VoiceChatServiceManager:


  -  Edit
  07:37:46.278  CoreGui.RobloxGui.Modules.VoiceChat.VoiceStateContext:


  -  Edit
  07:37:46.278  CoreGui.RobloxGui.Modules.VoiceChat.VoiceUsersByProximity:


  -  Edit
  07:37:46.278  CoreGui.RobloxGui.Modules.VoiceChatPrompt.Components.DevicePermissionsModal:


  -  Edit
  07:37:46.278  CoreGui.RobloxGui.Modules.VoiceChatPrompt.Components.VoiceChatConsentModal:


  -  Edit
  07:37:46.278  CoreGui.RobloxGui.Modules.VoiceChatPrompt.Components.VoiceChatPrompt:


  -  Edit
  07:37:46.278  CoreGui.RobloxGui.Modules.VoiceChatPrompt.Components.VoiceChatPromptFrame:


  -  Edit
  07:37:46.278  CoreGui.RobloxGui.Modules.VoiceChatPrompt.Components.VoiceChatTooltip:


  -  Edit
  07:37:46.278  CoreGui.RobloxGui.Modules.VoiceChatPrompt.Helpers.getMicDeeplinkDirections:


  -  Edit
  07:37:46.278  CoreGui.RobloxGui.Modules.VoiceChatPrompt.Helpers.getPrimingText:


  -  Edit
  07:37:46.278  CoreGui.RobloxGui.Modules.VoiceChatPrompt.PromptType:


  -  Edit
  07:37:46.278  CoreGui.RobloxGui.Modules.VoiceChatPrompt.VoiceChatPrompt.storybook:


  -  Edit
  07:37:46.278  CoreGui.RobloxGui.Modules.VR.Dialog:


  -  Edit
  07:37:46.279  CoreGui.RobloxGui.Modules.VR.Healthbar3D:


  -  Edit
  07:37:46.279  CoreGui.RobloxGui.Modules.VR.IsSpatialRobloxGuiEnabled:


  -  Edit
  07:37:46.279  CoreGui.RobloxGui.Modules.VR.NotificationHub:


  -  Edit
  07:37:46.279  CoreGui.RobloxGui.Modules.VR.NotifierHint3D:


  -  Edit
  07:37:46.279  CoreGui.RobloxGui.Modules.VR.Recenter:


  -  Edit
  07:37:46.279  CoreGui.RobloxGui.Modules.VR.SafetyBubble:


  -  Edit
  07:37:46.279  CoreGui.RobloxGui.Modules.VR.UserGui:


  -  Edit
  07:37:46.279  CoreGui.RobloxGui.Modules.VR.VirtualKeyboard:


  -  Edit
  07:37:46.279  CoreGui.RobloxGui.Modules.VR.VRAvatarGestures.VRAvatarGesturesClient:


  -  Edit
  07:37:46.279  CoreGui.RobloxGui.Modules.VR.VRAvatarHeightScaling:


  -  Edit
  07:37:46.279  CoreGui.RobloxGui.Modules.VR.VRBottomBar.VRBarSeparator:


  -  Edit
  07:37:46.279  CoreGui.RobloxGui.Modules.VR.VRBottomBar.VRBarVoiceIcon:


  -  Edit
  07:37:46.279  CoreGui.RobloxGui.Modules.VR.VRBottomBar.VRBottomBar:


  -  Edit
  07:37:46.279  CoreGui.RobloxGui.Modules.VR.VRHub:


  -  Edit
  07:37:46.279  CoreGui.RobloxGui.Modules.Watermark:


  -  Edit
  07:37:46.280  CoreGui.RobloxGui.Modules.Watermark.WatermarkComponent:


  -  Edit
  07:37:46.280  ServerScriptService.SpawnManager:
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local respawnTime = 3 -- Time before respawn (in seconds)

-- Predefined spawn locations
local spawnLocation1 = workspace:WaitForChild("SpawnLocation1")
local spawnLocation2 = workspace:WaitForChild("SpawnLocation2")

-- Table to store the original spawn positions for players
local playerSpawnPositions = {}

-- Create an event to notify the Point Manager when a player dies
local PlayerDiedEvent = ReplicatedStorage:FindFirstChild("PlayerDiedEvent")
if not PlayerDiedEvent then
	PlayerDiedEvent = Instance.new("BindableEvent")
	PlayerDiedEvent.Name = "PlayerDiedEvent"
	PlayerDiedEvent.Parent = ReplicatedStorage
end

-- Function to respawn both players
local function respawnPlayers()
	task.wait(respawnTime) -- Wait before respawning

	local players = Players:GetPlayers()
	if #players == 2 then -- Ensure there are exactly 2 players
		-- Assign each player to a different spawn location
		local player1 = players[1]
		local player2 = players[2]

		-- Respawn player 1 at spawnLocation1
		if player1 and player1.Character then
			player1:LoadCharacter()
			local character1 = player1.Character or player1.CharacterAdded:Wait()
			local primaryPart1 = character1:WaitForChild("HumanoidRootPart", 10)
			if primaryPart1 then
				character1:SetPrimaryPartCFrame(spawnLocation1.CFrame)
			end
		end

		-- Respawn player 2 at spawnLocation2
		if player2 and player2.Character then
			player2:LoadCharacter()
			local character2 = player2.Character or player2.CharacterAdded:Wait()
			local primaryPart2 = character2:WaitForChild("HumanoidRootPart", 10)
			if primaryPart2 then
				character2:SetPrimaryPartCFrame(spawnLocation2.CFrame)
			end
		end
	end
end

-- Detect when a player joins the game
Players.PlayerAdded:Connect(function(player)
	player.CharacterAdded:Connect(function(character)
		-- Store the player's original spawn position when they first spawn
		local primaryPart = character:WaitForChild("HumanoidRootPart")
		playerSpawnPositions[player.UserId] = primaryPart.CFrame

		-- Assign spawn locations for the first two players
		local players = Players:GetPlayers()
		if #players == 2 then
			local player1 = players[1]
			local player2 = players[2]

			-- If the first player is the current player, assign spawnLocation1
			if player == player1 then
				character:SetPrimaryPartCFrame(spawnLocation1.CFrame)
				-- If the second player is the current player, assign spawnLocation2
			elseif player == player2 then
				character:SetPrimaryPartCFrame(spawnLocation2.CFrame)
			end
		end

		-- Detect when the character dies
		character:WaitForChild("Humanoid").Died:Connect(function()
			-- Fire the PlayerDiedEvent so the Point Manager knows someone died
			PlayerDiedEvent:Fire(player)

			-- Respawn both players
			respawnPlayers()
		end)
	end)
end)


  -  Edit
  07:37:46.280  ServerScriptService.Script:

local lighting = game:GetService("Lighting")

local dayLength = 30 -- Change this to the length of your day in seconds
local nightLength = 30 -- Change this to the length of your night in seconds


while true do
	-- Day time: 6 AM to 6 PM
	for i = 6 * 60, 18 * 60 do
		lighting:SetMinutesAfterMidnight(i)
		wait(dayLength / (12 * 60)) 
	end

	-- Night time: 6 PM to 6 AM
	for i = 18 * 60, 24 * 60 do
		lighting:SetMinutesAfterMidnight(i)
		wait(nightLength / (12 * 60)) 
	end
	for i = 0, 6 * 60 do
		lighting:SetMinutesAfterMidnight(i)
		wait(nightLength / (12 * 60)) 
	end
end


  -  Edit
  07:37:46.280  ServerScriptService.PointsManager:
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")

-- Create RemoteEvent if it doesn't exist
local PointsUpdateRemote = ReplicatedStorage:FindFirstChild("PointsUpdateRemote") 
if not PointsUpdateRemote then
	PointsUpdateRemote = Instance.new("RemoteEvent")
	PointsUpdateRemote.Name = "PointsUpdateRemote"
	PointsUpdateRemote.Parent = ReplicatedStorage
end

-- Create BindableEvent for detecting player deaths
local PlayerDiedEvent = ReplicatedStorage:FindFirstChild("PlayerDiedEvent") 
if not PlayerDiedEvent then
	PlayerDiedEvent = Instance.new("BindableEvent")
	PlayerDiedEvent.Name = "PlayerDiedEvent"
	PlayerDiedEvent.Parent = ReplicatedStorage
end

-- Table to store points and time per player
local playerData = {}

-- Function to update time and points for all players
local function updateTime()
	while true do
		wait(1) -- Update every second
		for _, player in pairs(Players:GetPlayers()) do
			if playerData[player.UserId] then
				playerData[player.UserId].timePlayed = playerData[player.UserId].timePlayed + 1

				-- Every 10 seconds, add 1 point
				if playerData[player.UserId].timePlayed % 10 == 0 then
					playerData[player.UserId].points = playerData[player.UserId].points + 1
				end

				-- Send update to the client
				PointsUpdateRemote:FireClient(player, playerData[player.UserId].points, playerData[player.UserId].timePlayed)
			end
		end
	end
end

-- Handle when a player joins
Players.PlayerAdded:Connect(function(player)
	-- Initialize their points and time
	playerData[player.UserId] = { points = 0, timePlayed = 0 }

	-- Reset their time when they respawn
	player.CharacterAdded:Connect(function()
		wait(1) -- Small delay to ensure character is loaded
		playerData[player.UserId].timePlayed = 0
	end)
end)

-- Handle when a player dies
PlayerDiedEvent.Event:Connect(function(player)
	if player and playerData[player.UserId] then
		-- Add 10 points to the other player (the survivor)
		for _, otherPlayer in pairs(Players:GetPlayers()) do
			if otherPlayer ~= player and playerData[otherPlayer.UserId] then
				playerData[otherPlayer.UserId].points = playerData[otherPlayer.UserId].points + 5
				PointsUpdateRemote:FireClient(otherPlayer, playerData[otherPlayer.UserId].points, playerData[otherPlayer.UserId].timePlayed)
			end
		end
	end
end)

-- Start the timer
task.spawn(updateTime)


  -  Edit