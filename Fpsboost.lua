-- ₰ ◀ Lightning Hub - Full Functional Script ▶ ₰

local UnSkyUIGUI = {}

local UIS = game:GetService("UserInputService")
local Players = game:GetService("Players")
local Lighting = game:GetService("Lighting")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

-- GUI
UnSkyUIGUI["1"] = Instance.new("ScreenGui")
UnSkyUIGUI["1"].Parent = Players.LocalPlayer:WaitForChild("PlayerGui")
UnSkyUIGUI["1"].ResetOnSpawn = false
UnSkyUIGUI["1"].IgnoreGuiInset = true
UnSkyUIGUI["1"].ZIndexBehavior = Enum.ZIndexBehavior.Sibling
UnSkyUIGUI["1"].Name = "LightningHubGui"

-- ENTER BUTTON FRAME
UnSkyUIGUI["3"] = Instance.new("Frame", UnSkyUIGUI["1"])
UnSkyUIGUI["3"].BorderSizePixel = 0
UnSkyUIGUI["3"].BackgroundColor3 = Color3.fromRGB(255,255,255)
UnSkyUIGUI["3"].AnchorPoint = Vector2.new(0.5,0.5)
UnSkyUIGUI["3"].Size = UDim2.new(0.043,0,0.085,0)
UnSkyUIGUI["3"].Position = UDim2.new(0.075,0,0.075,0)
UnSkyUIGUI["3"].Name = "Enter"

Instance.new("UICorner", UnSkyUIGUI["3"])

local EnterStroke = Instance.new("UIStroke", UnSkyUIGUI["3"])
EnterStroke.Thickness = 2

UnSkyUIGUI["6"] = Instance.new("ImageButton", UnSkyUIGUI["3"])
UnSkyUIGUI["6"].BackgroundTransparency = 1
UnSkyUIGUI["6"].AnchorPoint = Vector2.new(0.5,0.5)
UnSkyUIGUI["6"].Position = UDim2.new(0.5,0,0.5,0)
UnSkyUIGUI["6"].Size = UDim2.new(1,0,1,0)
UnSkyUIGUI["6"].Image = "rbxassetid://13140874838"

local EnterGradient = Instance.new("UIGradient", UnSkyUIGUI["3"])
EnterGradient.Rotation = 15
EnterGradient.Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(76,255,235)),
	ColorSequenceKeypoint.new(0.5, Color3.fromRGB(22,255,198)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(255,255,0))
}

local EnterAspect = Instance.new("UIAspectRatioConstraint", UnSkyUIGUI["3"])
EnterAspect.AspectRatio = 1

-- MAIN GUI
UnSkyUIGUI["9"] = Instance.new("Frame", UnSkyUIGUI["1"])
UnSkyUIGUI["9"].Name = "MainGUI"
UnSkyUIGUI["9"].Visible = true
UnSkyUIGUI["9"].BorderSizePixel = 0
UnSkyUIGUI["9"].BackgroundColor3 = Color3.fromRGB(255,255,255)
UnSkyUIGUI["9"].Size = UDim2.new(0,5,0,3)
UnSkyUIGUI["9"].Position = UDim2.new(0.29158,0,0.25,0)

Instance.new("UICorner", UnSkyUIGUI["9"])

local MainStroke = Instance.new("UIStroke", UnSkyUIGUI["9"])
MainStroke.Thickness = 3
MainStroke.Transparency = 0.2
MainStroke.Color = Color3.fromRGB(255,255,0)

local MainGradient = Instance.new("UIGradient", UnSkyUIGUI["9"])
MainGradient.Rotation = 15
MainGradient.Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(122,124,255)),
	ColorSequenceKeypoint.new(0.8, Color3.fromRGB(110,112,149)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(156,156,255))
}

-- TITLE
local Title = Instance.new("TextLabel", UnSkyUIGUI["9"])
Title.BackgroundTransparency = 1
Title.Size = UDim2.new(0,200,0,35)
Title.Position = UDim2.new(0.2,0,0.05,0)
Title.Text = "Lightning Hub"
Title.TextScaled = true
Title.FontFace = Font.new("rbxasset://fonts/families/FredokaOne.json")
Title.TextColor3 = Color3.fromRGB(255,255,255)

local TitleGradient = Instance.new("UIGradient", Title)
TitleGradient.Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(255,255,0)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(255,255,255))
}

-- BUTTON CREATOR
local function CreateButton(text, posY)
	local Label = Instance.new("TextLabel", UnSkyUIGUI["9"])
	Label.BackgroundTransparency = 1
	Label.Size = UDim2.new(0,180,0,40)
	Label.Position = UDim2.new(0.19,0,posY,0)
	Label.Text = text
	Label.TextScaled = true
	Label.FontFace = Font.new("rbxasset://fonts/families/FredokaOne.json")
	Label.TextColor3 = Color3.fromRGB(135,207,0)

	local Button = Instance.new("TextButton", UnSkyUIGUI["9"])
	Button.Size = UDim2.new(0,96,0,32)
	Button.Position = UDim2.new(0.804,0,posY + 0.01,0)
	Button.BackgroundColor3 = Color3.fromRGB(255,0,0)
	Button.Text = "OFF"
	Button.TextScaled = true
	Button.FontFace = Font.new("rbxasset://fonts/families/FredokaOne.json")
	Button.TextColor3 = Color3.fromRGB(0,0,0)
	Button.BorderSizePixel = 0

	Instance.new("UICorner", Button)

	return Button
end

local OptimizeButton = CreateButton("Optimize Lightning",0.18)
local ShadowsButton = CreateButton("Disable Shadows",0.33)
local MaterialButton = CreateButton("Disable Material",0.48)
local HideVfxButton = CreateButton("Hide Vfx/Texture",0.63)
local PotatoButton = CreateButton("Potato Mode",0.83)

PotatoButton.Size = UDim2.new(0,138,0,50)
PotatoButton.Position = UDim2.new(0.771,0,0.83,0)

-- DRAG SYSTEM
local function makeDraggable(gui)
	local dragging = false
	local dragInput
	local dragStart
	local startPos

	gui.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1
			or input.UserInputType == Enum.UserInputType.Touch then

			dragging = true
			dragStart = input.Position
			startPos = gui.Position

			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)

	gui.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement
			or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)

	UIS.InputChanged:Connect(function(input)
		if dragging and input == dragInput then
			local delta = input.Position - dragStart

			gui.Position = UDim2.new(
				startPos.X.Scale,
				startPos.X.Offset + delta.X,
				startPos.Y.Scale,
				startPos.Y.Offset + delta.Y
			)
		end
	end)
end

makeDraggable(UnSkyUIGUI["3"])
makeDraggable(UnSkyUIGUI["9"])

-- TOGGLE GUI
UnSkyUIGUI["6"].MouseButton1Click:Connect(function()
	UnSkyUIGUI["9"].Visible = not UnSkyUIGUI["9"].Visible
	UnSkyUIGUI["3"].Visible = true
end)

-- STATES
local OptimizeState = false
local ShadowsState = false
local MaterialState = false
local VfxState = false
local PotatoState = false

-- REMOVE ACCESSORIES
local function stripAccessories(character)
	for _,v in pairs(character:GetDescendants()) do
		if v:IsA("Accessory")
			or v:IsA("Shirt")
			or v:IsA("Pants")
			or v:IsA("ShirtGraphic")
			or v:IsA("CharacterMesh") then
			v:Destroy()
		end
	end
end

-- REMOVE TRAILS
local function removeTrails(container)
	for _,v in pairs(container:GetDescendants()) do
		if v:IsA("Trail") then
			v:Destroy()
		end
	end

	container.DescendantAdded:Connect(function(v)
		if v:IsA("Trail") then
			v:Destroy()
		end
	end)
end

removeTrails(workspace)
removeTrails(ReplicatedStorage)

-- OPTIMIZE LIGHTING
OptimizeButton.MouseButton1Click:Connect(function()
	OptimizeState = not OptimizeState

	if OptimizeState then
		OptimizeButton.Text = "ON"
		OptimizeButton.BackgroundColor3 = Color3.fromRGB(0,180,0)

		Lighting.GlobalShadows = false

		local Atmosphere = Lighting:FindFirstChildOfClass("Atmosphere")
		if Atmosphere then
			Atmosphere.Density = 0
		end
	else
		OptimizeButton.Text = "OFF"
		OptimizeButton.BackgroundColor3 = Color3.fromRGB(255,0,0)

		Lighting.GlobalShadows = true
	end
end)

-- SHADOWS
ShadowsButton.MouseButton1Click:Connect(function()
	ShadowsState = not ShadowsState

	if ShadowsState then
		ShadowsButton.Text = "ON"
		ShadowsButton.BackgroundColor3 = Color3.fromRGB(0,180,0)

		Lighting.GlobalShadows = false
	else
		ShadowsButton.Text = "OFF"
		ShadowsButton.BackgroundColor3 = Color3.fromRGB(255,0,0)

		Lighting.GlobalShadows = true
	end
end)

-- MATERIAL
MaterialButton.MouseButton1Click:Connect(function()
	MaterialState = not MaterialState

	if MaterialState then
		MaterialButton.Text = "ON"
		MaterialButton.BackgroundColor3 = Color3.fromRGB(0,180,0)

		for _,obj in pairs(workspace:GetDescendants()) do
			if obj:IsA("BasePart") then
				obj.Material = Enum.Material.SmoothPlastic
			end
		end

		for _,plr in pairs(Players:GetPlayers()) do
			if plr.Character then
				stripAccessories(plr.Character)
			end
		end
	else
		MaterialButton.Text = "OFF"
		MaterialButton.BackgroundColor3 = Color3.fromRGB(255,0,0)
	end
end)

-- HIDE VFX/TEXTURE
HideVfxButton.MouseButton1Click:Connect(function()
	VfxState = not VfxState

	if VfxState then
		HideVfxButton.Text = "ON"
		HideVfxButton.BackgroundColor3 = Color3.fromRGB(0,180,0)

		local scanList = {
			workspace,
			ReplicatedStorage
		}

		for _,container in pairs(scanList) do
			for _,v in pairs(container:GetDescendants()) do

				-- WORKSPACE VFX ONLY
				if container == workspace then
					if v:IsA("ParticleEmitter")
						or v:IsA("Smoke")
						or v:IsA("Fire")
						or v:IsA("Sparkles") then
						v.Enabled = false
					end
				end

				-- REMOVE TRAILS EVERYWHERE
				if v:IsA("Trail") then
					v:Destroy()
				end

				-- REMOVE TEXTURES
				if v:IsA("Texture")
					or v:IsA("Decal") then
					v:Destroy()
				end
			end
		end

	else
		HideVfxButton.Text = "OFF"
		HideVfxButton.BackgroundColor3 = Color3.fromRGB(255,0,0)
	end
end)

-- POTATO MODE
PotatoButton.MouseButton1Click:Connect(function()
	PotatoState = not PotatoState

	if PotatoState then
		PotatoButton.Text = "ON"
		PotatoButton.BackgroundColor3 = Color3.fromRGB(0,180,0)

		Lighting.GlobalShadows = false

		local scanList = {
			workspace,
			ReplicatedStorage
		}

		for _,container in pairs(scanList) do
			for _,v in pairs(container:GetDescendants()) do

				if v:IsA("BasePart") then
					v.Material = Enum.Material.SmoothPlastic
				end

				if container == workspace then
					if v:IsA("ParticleEmitter")
						or v:IsA("Smoke")
						or v:IsA("Fire")
						or v:IsA("Sparkles") then
						v.Enabled = false
					end
				end

				if v:IsA("Trail") then
					v:Destroy()
				end

				if v:IsA("Texture")
					or v:IsA("Decal") then
					v:Destroy()
				end
			end
		end

		for _,plr in pairs(Players:GetPlayers()) do
			if plr.Character then
				stripAccessories(plr.Character)
			end
		end

	else
		PotatoButton.Text = "OFF"
		PotatoButton.BackgroundColor3 = Color3.fromRGB(255,0,0)
	end
end)

-- NEW PLAYERS
Players.PlayerAdded:Connect(function(player)
	player.CharacterAdded:Connect(function(char)
		task.wait(1)

		if MaterialState or PotatoState then
			stripAccessories(char)
		end
	end)
end)
