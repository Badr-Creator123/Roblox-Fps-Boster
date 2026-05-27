-- ₰ ◀ Lightning Hub - PERFECT FPS BOOSTER ▶ ₰

local Players = game:GetService("Players")
local UIS = game:GetService("UserInputService")
local Lighting = game:GetService("Lighting")
local Terrain = workspace:FindFirstChildOfClass("Terrain")

local LocalPlayer = Players.LocalPlayer

-- =========================================================
-- GUI
-- =========================================================

local GUI = Instance.new("ScreenGui")
GUI.Name = "LightningHubGui"
GUI.Parent = LocalPlayer:WaitForChild("PlayerGui")
GUI.ResetOnSpawn = false
GUI.IgnoreGuiInset = false
GUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

-- ENTER BUTTON
local EnterFrame = Instance.new("Frame", GUI)
EnterFrame.Size = UDim2.new(0.04,0,0.08,0)
EnterFrame.Position = UDim2.new(0.07,0,0.07,0)
EnterFrame.AnchorPoint = Vector2.new(0.5,0.5)
EnterFrame.BackgroundColor3 = Color3.fromRGB(255,255,255)
EnterFrame.BorderSizePixel = 0

Instance.new("UICorner", EnterFrame)

local EnterGradient = Instance.new("UIGradient", EnterFrame)
EnterGradient.Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(76,255,235)),
	ColorSequenceKeypoint.new(0.5, Color3.fromRGB(22,255,198)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(255,255,0))
}

local EnterButton = Instance.new("ImageButton", EnterFrame)
EnterButton.BackgroundTransparency = 1
EnterButton.Size = UDim2.new(1,0,1,0)
EnterButton.Image = "rbxassetid://13140874838"

-- MAIN GUI
local Main = Instance.new("Frame", GUI)
Main.Size = UDim2.new(0,664,0,388)
Main.Position = UDim2.new(0.29,0,0.25,0)
Main.BackgroundColor3 = Color3.fromRGB(35,35,45)
Main.BorderSizePixel = 0
Main.Visible = true

Instance.new("UICorner", Main)

local MainStroke = Instance.new("UIStroke", Main)
MainStroke.Thickness = 3
MainStroke.Color = Color3.fromRGB(255,255,0)

local MainGradient = Instance.new("UIGradient", Main)
MainGradient.Rotation = 15
MainGradient.Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(122,124,255)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(156,156,255))
}

local Title = Instance.new("TextLabel", Main)
Title.Size = UDim2.new(0,300,0,40)
Title.Position = UDim2.new(0.03,0,0.03,0)
Title.BackgroundTransparency = 1
Title.Text = "Lightning Hub - Perfect FPS"
Title.TextScaled = true
Title.Font = Enum.Font.FredokaOne
Title.TextColor3 = Color3.new(1,1,1)

-- =========================================================
-- DRAG SYSTEM
-- =========================================================

local function MakeDraggable(Frame)
	local Dragging = false
	local DragStart
	local StartPos
	local DragInput

	Frame.InputBegan:Connect(function(Input)
		if Input.UserInputType == Enum.UserInputType.MouseButton1
			or Input.UserInputType == Enum.UserInputType.Touch then

			Dragging = true
			DragStart = Input.Position
			StartPos = Frame.Position

			Input.Changed:Connect(function()
				if Input.UserInputState == Enum.UserInputState.End then
					Dragging = false
				end
			end)
		end
	end)

	Frame.InputChanged:Connect(function(Input)
		if Input.UserInputType == Enum.UserInputType.MouseMovement
			or Input.UserInputType == Enum.UserInputType.Touch then
			DragInput = Input
		end
	end)

	UIS.InputChanged:Connect(function(Input)
		if Input == DragInput and Dragging then
			local Delta = Input.Position - DragStart

			Frame.Position = UDim2.new(
				StartPos.X.Scale,
				StartPos.X.Offset + Delta.X,
				StartPos.Y.Scale,
				StartPos.Y.Offset + Delta.Y
			)
		end
	end)
end

MakeDraggable(Main)
MakeDraggable(EnterFrame)

-- =========================================================
-- TOGGLE GUI
-- =========================================================

EnterButton.MouseButton1Click:Connect(function()
	Main.Visible = not Main.Visible
	EnterFrame.Visible = true
end)

-- =========================================================
-- BUTTON CREATOR
-- =========================================================

local function CreateButton(Name, PosY)
	local Label = Instance.new("TextLabel", Main)
	Label.BackgroundTransparency = 1
	Label.Size = UDim2.new(0,220,0,40)
	Label.Position = UDim2.new(0.08,0,PosY,0)
	Label.Text = Name
	Label.TextScaled = true
	Label.Font = Enum.Font.FredokaOne
	Label.TextColor3 = Color3.fromRGB(180,255,180)

	local Button = Instance.new("TextButton", Main)
	Button.Size = UDim2.new(0,110,0,38)
	Button.Position = UDim2.new(0.75,0,PosY + 0.01,0)
	Button.BackgroundColor3 = Color3.fromRGB(255,0,0)
	Button.Text = "OFF"
	Button.TextScaled = true
	Button.Font = Enum.Font.FredokaOne
	Button.TextColor3 = Color3.new(1,1,1)
	Button.BorderSizePixel = 0

	Instance.new("UICorner", Button)

	return Button
end

local OptimizeButton = CreateButton("Optimize Graphics",0.18)
local ShadowButton = CreateButton("Disable Shadows",0.33)
local MaterialButton = CreateButton("Optimize Materials",0.48)
local VFXButton = CreateButton("Hide VFX / Trails",0.63)
local PotatoButton = CreateButton("Potato Mode",0.80)

-- =========================================================
-- STATES
-- =========================================================

local OptimizeEnabled = false
local ShadowEnabled = false
local MaterialEnabled = false
local VFXEnabled = false
local PotatoEnabled = false

-- =========================================================
-- SAFE FPS FUNCTIONS
-- =========================================================

local function SafeOptimizeObject(v)

	-- SAFE MATERIAL OPTIMIZATION
	if v:IsA("BasePart") then
		v.Material = Enum.Material.SmoothPlastic
		v.Reflectance = 0
	end

	-- SAFE TEXTURE REMOVAL
	if v:IsA("Texture") or v:IsA("Decal") then
		v.Transparency = 1
	end

	-- SAFE PARTICLE DISABLE
	if v:IsA("ParticleEmitter")
		or v:IsA("Trail")
		or v:IsA("Smoke")
		or v:IsA("Fire")
		or v:IsA("Sparkles") then

		v.Enabled = false
	end

	-- SAFE LIGHT DISABLE
	if v:IsA("PointLight")
		or v:IsA("SpotLight")
		or v:IsA("SurfaceLight") then

		v.Enabled = false
	end
end

-- =========================================================
-- CHARACTER OPTIMIZATION
-- =========================================================

local function OptimizeCharacter(Character)

	for _,v in pairs(Character:GetDescendants()) do

		-- REMOVE ACCESSORIES COMPLETELY
		if v:IsA("Accessory")
			or v:IsA("Hat") then
			v:Destroy()
		end

		-- REMOVE CLOTHES
		if v:IsA("Shirt")
			or v:IsA("Pants")
			or v:IsA("ShirtGraphic")
			or v:IsA("CharacterMesh") then
			v:Destroy()
		end

		-- DISABLE CHARACTER PARTICLES
		if v:IsA("ParticleEmitter")
			or v:IsA("Trail") then
			v.Enabled = false
		end
	end

	-- KEEP OPTIMIZING NEW ACCESSORIES AFTER RESPAWN
	Character.DescendantAdded:Connect(function(v)

		if v:IsA("Accessory")
			or v:IsA("Hat") then
			v:Destroy()
		end

		if v:IsA("ParticleEmitter")
			or v:IsA("Trail") then
			v.Enabled = false
		end
	end)
end

-- =========================================================
-- WORLD OPTIMIZATION
-- =========================================================

local function OptimizeWorld()

	Lighting.GlobalShadows = false
	Lighting.FogEnd = 100000

	if Terrain then
		Terrain.WaterWaveSize = 0
		Terrain.WaterWaveSpeed = 0
		Terrain.WaterReflectance = 0
		Terrain.WaterTransparency = 0
	end

	for _,v in pairs(game:GetDescendants()) do
		SafeOptimizeObject(v)
	end
end

-- KEEP NEW OBJECTS OPTIMIZED
game.DescendantAdded:Connect(function(v)

	if PotatoEnabled
		or VFXEnabled
		or MaterialEnabled then

		task.spawn(function()
			pcall(function()
				SafeOptimizeObject(v)
			end)
		end)
	end
end)

-- =========================================================
-- BUTTONS
-- =========================================================

OptimizeButton.MouseButton1Click:Connect(function()

	OptimizeEnabled = not OptimizeEnabled

	if OptimizeEnabled then

		OptimizeButton.Text = "ON"
		OptimizeButton.BackgroundColor3 = Color3.fromRGB(0,180,0)

		Lighting.GlobalShadows = false
		Lighting.EnvironmentDiffuseScale = 0
		Lighting.EnvironmentSpecularScale = 0

		local Atmosphere = Lighting:FindFirstChildOfClass("Atmosphere")
		if Atmosphere then
			Atmosphere.Density = 0
		end

	else

		OptimizeButton.Text = "OFF"
		OptimizeButton.BackgroundColor3 = Color3.fromRGB(255,0,0)
	end
end)

ShadowButton.MouseButton1Click:Connect(function()

	ShadowEnabled = not ShadowEnabled

	if ShadowEnabled then
		ShadowButton.Text = "ON"
		ShadowButton.BackgroundColor3 = Color3.fromRGB(0,180,0)

		Lighting.GlobalShadows = false

	else
		ShadowButton.Text = "OFF"
		ShadowButton.BackgroundColor3 = Color3.fromRGB(255,0,0)

		Lighting.GlobalShadows = true
	end
end)

MaterialButton.MouseButton1Click:Connect(function()

	MaterialEnabled = not MaterialEnabled

	if MaterialEnabled then

		MaterialButton.Text = "ON"
		MaterialButton.BackgroundColor3 = Color3.fromRGB(0,180,0)

		for _,v in pairs(workspace:GetDescendants()) do
			if v:IsA("BasePart") then
				v.Material = Enum.Material.SmoothPlastic
				v.Reflectance = 0
			end
		end

	else

		MaterialButton.Text = "OFF"
		MaterialButton.BackgroundColor3 = Color3.fromRGB(255,0,0)
	end
end)

VFXButton.MouseButton1Click:Connect(function()

	VFXEnabled = not VFXEnabled

	if VFXEnabled then

		VFXButton.Text = "ON"
		VFXButton.BackgroundColor3 = Color3.fromRGB(0,180,0)

		for _,v in pairs(game:GetDescendants()) do

			if v:IsA("ParticleEmitter")
				or v:IsA("Trail")
				or v:IsA("Smoke")
				or v:IsA("Fire")
				or v:IsA("Sparkles") then

				v.Enabled = false
			end

			if v:IsA("PointLight")
				or v:IsA("SpotLight")
				or v:IsA("SurfaceLight") then

				v.Enabled = false
			end
		end

	else

		VFXButton.Text = "OFF"
		VFXButton.BackgroundColor3 = Color3.fromRGB(255,0,0)
	end
end)

PotatoButton.MouseButton1Click:Connect(function()

	PotatoEnabled = not PotatoEnabled

	if PotatoEnabled then

		PotatoButton.Text = "ON"
		PotatoButton.BackgroundColor3 = Color3.fromRGB(0,180,0)

		OptimizeWorld()

		for _,Player in pairs(Players:GetPlayers()) do
			if Player.Character then
				OptimizeCharacter(Player.Character)
			end
		end

	else

		PotatoButton.Text = "OFF"
		PotatoButton.BackgroundColor3 = Color3.fromRGB(255,0,0)
	end
end)

-- =========================================================
-- FIX RESPAWN BUG PERFECTLY
-- =========================================================

local function HandlePlayer(Player)

	Player.CharacterAdded:Connect(function(Character)

		task.wait(1)

		if PotatoEnabled then
			OptimizeCharacter(Character)
		end

		if MaterialEnabled then
			for _,v in pairs(Character:GetDescendants()) do
				if v:IsA("BasePart") then
					v.Material = Enum.Material.SmoothPlastic
				end
			end
		end
	end)
end

for _,Player in pairs(Players:GetPlayers()) do
	HandlePlayer(Player)
end

Players.PlayerAdded:Connect(HandlePlayer)
