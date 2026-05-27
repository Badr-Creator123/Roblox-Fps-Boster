-- ₰ ◀ Lightning Hub - Full Functional Script ▶ ₰

local UnSkyUIGUI = {}
local UIS = game:GetService("UserInputService")
local Players = game:GetService("Players")

-- [إنشاء العناصر الرسومية - الكود الخاص بك]
UnSkyUIGUI["1"] = Instance.new("ScreenGui", Players.LocalPlayer:WaitForChild("PlayerGui"))
UnSkyUIGUI["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling
UnSkyUIGUI["1"].Name = "LightningHubGui"

UnSkyUIGUI["3"] = Instance.new("Frame", UnSkyUIGUI["1"])
UnSkyUIGUI["3"]["BorderSizePixel"] = 0
UnSkyUIGUI["3"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UnSkyUIGUI["3"]["AnchorPoint"] = Vector2.new(0.5, 0.5)
UnSkyUIGUI["3"]["Size"] = UDim2.new(0.03892, 0, 0.07973, 0)
UnSkyUIGUI["3"]["Position"] = UDim2.new(0.075, 0, 0.075, 0)
UnSkyUIGUI["3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UnSkyUIGUI["3"]["Name"] = [[Enter]]

UnSkyUIGUI["4"] = Instance.new("UICorner", UnSkyUIGUI["3"])

UnSkyUIGUI["5"] = Instance.new("UIStroke", UnSkyUIGUI["3"])
UnSkyUIGUI["5"]["Thickness"] = 2

UnSkyUIGUI["6"] = Instance.new("ImageButton", UnSkyUIGUI["3"])
UnSkyUIGUI["6"]["BorderSizePixel"] = 0
UnSkyUIGUI["6"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UnSkyUIGUI["6"]["AnchorPoint"] = Vector2.new(0.5, 0.5)
UnSkyUIGUI["6"]["Image"] = [[rbxassetid://13140874838]]
UnSkyUIGUI["6"]["Size"] = UDim2.new(1, 0, 1, 0)
UnSkyUIGUI["6"]["BackgroundTransparency"] = 1
UnSkyUIGUI["6"]["Name"] = [[EnterButton]]
UnSkyUIGUI["6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UnSkyUIGUI["6"]["Position"] = UDim2.new(0.5, 0, 0.5, 0)

UnSkyUIGUI["7"] = Instance.new("UIGradient", UnSkyUIGUI["3"])
UnSkyUIGUI["7"]["Rotation"] = 15
UnSkyUIGUI["7"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(76, 255, 235)),ColorSequenceKeypoint.new(0.573, Color3.fromRGB(22, 255, 198)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 255, 0))}

UnSkyUIGUI["8"] = Instance.new("UIAspectRatioConstraint", UnSkyUIGUI["3"])
UnSkyUIGUI["8"]["AspectRatio"] = 1

UnSkyUIGUI["9"] = Instance.new("Frame", UnSkyUIGUI["1"])
UnSkyUIGUI["9"]["BorderSizePixel"] = 0
UnSkyUIGUI["9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UnSkyUIGUI["9"]["Size"] = UDim2.new(0, 664, 0, 388)
UnSkyUIGUI["9"]["Position"] = UDim2.new(0.29158, 0, 0.25, 0)
UnSkyUIGUI["9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UnSkyUIGUI["9"]["Name"] = [[MainGUI]]
UnSkyUIGUI["9"].Visible = false

UnSkyUIGUI["a"] = Instance.new("UICorner", UnSkyUIGUI["9"])

UnSkyUIGUI["b"] = Instance.new("UIStroke", UnSkyUIGUI["9"])
UnSkyUIGUI["b"]["Transparency"] = 0.2
UnSkyUIGUI["b"]["Thickness"] = 3
UnSkyUIGUI["b"]["Color"] = Color3.fromRGB(255, 255, 0)

UnSkyUIGUI["c"] = Instance.new("UIStroke", UnSkyUIGUI["9"])
UnSkyUIGUI["c"]["Transparency"] = 0.2
UnSkyUIGUI["c"]["Thickness"] = 3.5
UnSkyUIGUI["c"]["Color"] = Color3.fromRGB(255, 255, 255)

UnSkyUIGUI["d"] = Instance.new("TextLabel", UnSkyUIGUI["9"])
UnSkyUIGUI["d"]["TextWrapped"] = true
UnSkyUIGUI["d"]["BorderSizePixel"] = 0
UnSkyUIGUI["d"]["TextScaled"] = true
UnSkyUIGUI["d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UnSkyUIGUI["d"]["TextSize"] = 14
UnSkyUIGUI["d"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal)
UnSkyUIGUI["d"]["TextColor3"] = Color3.fromRGB(0, 0, 0)
UnSkyUIGUI["d"]["BackgroundTransparency"] = 1
UnSkyUIGUI["d"]["AnchorPoint"] = Vector2.new(0.5, 0.5)
UnSkyUIGUI["d"]["Size"] = UDim2.new(0, 614, 0, 50)
UnSkyUIGUI["d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UnSkyUIGUI["d"]["Text"] = [[--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------]]
UnSkyUIGUI["d"]["Position"] = UDim2.new(0.5, 0, 0.10825, 0)

UnSkyUIGUI["e"] = Instance.new("TextLabel", UnSkyUIGUI["9"])
UnSkyUIGUI["e"]["TextWrapped"] = true
UnSkyUIGUI["e"]["BorderSizePixel"] = 0
UnSkyUIGUI["e"]["TextScaled"] = true
UnSkyUIGUI["e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UnSkyUIGUI["e"]["TextSize"] = 14
UnSkyUIGUI["e"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal)
UnSkyUIGUI["e"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
UnSkyUIGUI["e"]["BackgroundTransparency"] = 1
UnSkyUIGUI["e"]["AnchorPoint"] = Vector2.new(0.5, 0.5)
UnSkyUIGUI["e"]["Size"] = UDim2.new(0, 200, 0, 35)
UnSkyUIGUI["e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UnSkyUIGUI["e"]["Text"] = [[Lightning Hub]]
UnSkyUIGUI["e"]["Position"] = UDim2.new(0.2003, 0, 0.05, 0)

UnSkyUIGUI["f"] = Instance.new("UIGradient", UnSkyUIGUI["e"])
UnSkyUIGUI["f"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 0)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 255, 255))}

UnSkyUIGUI["10"] = Instance.new("UIStroke", UnSkyUIGUI["e"])

UnSkyUIGUI["11"] = Instance.new("UIGradient", UnSkyUIGUI["9"])
UnSkyUIGUI["11"]["Rotation"] = 15
UnSkyUIGUI["11"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(122, 124, 255)),ColorSequenceKeypoint.new(0.837, Color3.fromRGB(110, 112, 149)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(156, 156, 255))}

UnSkyUIGUI["12"] = Instance.new("TextLabel", UnSkyUIGUI["9"])
UnSkyUIGUI["12"]["TextWrapped"] = true
UnSkyUIGUI["12"]["BorderSizePixel"] = 0
UnSkyUIGUI["12"]["TextScaled"] = true
UnSkyUIGUI["12"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UnSkyUIGUI["12"]["TextSize"] = 14
UnSkyUIGUI["12"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal)
UnSkyUIGUI["12"]["TextColor3"] = Color3.fromRGB(90, 90, 90)
UnSkyUIGUI["12"]["BackgroundTransparency"] = 1
UnSkyUIGUI["12"]["AnchorPoint"] = Vector2.new(0.5, 0.5)
UnSkyUIGUI["12"]["Size"] = UDim2.new(0, 138, 0, 15)
UnSkyUIGUI["12"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UnSkyUIGUI["12"]["Text"] = [[FPS-BOOSTER]]
UnSkyUIGUI["12"]["Position"] = UDim2.new(0.875, 0, 0.07345, 0)

UnSkyUIGUI["13"] = Instance.new("UIStroke", UnSkyUIGUI["12"])

UnSkyUIGUI["14"] = Instance.new("TextLabel", UnSkyUIGUI["9"])
UnSkyUIGUI["14"]["TextWrapped"] = true
UnSkyUIGUI["14"]["BorderSizePixel"] = 0
UnSkyUIGUI["14"]["TextScaled"] = true
UnSkyUIGUI["14"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UnSkyUIGUI["14"]["TextSize"] = 14
UnSkyUIGUI["14"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal)
UnSkyUIGUI["14"]["TextColor3"] = Color3.fromRGB(0, 0, 0)
UnSkyUIGUI["14"]["BackgroundTransparency"] = 1
UnSkyUIGUI["14"]["AnchorPoint"] = Vector2.new(0.5, 0.5)
UnSkyUIGUI["14"]["Size"] = UDim2.new(0, 614, 0, 50)
UnSkyUIGUI["14"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UnSkyUIGUI["14"]["Text"] = [[--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------]]
UnSkyUIGUI["14"]["Position"] = UDim2.new(0.51205, 0, 0.79381, 0)

UnSkyUIGUI["15"] = Instance.new("TextLabel", UnSkyUIGUI["9"])
UnSkyUIGUI["15"]["TextWrapped"] = true
UnSkyUIGUI["15"]["BorderSizePixel"] = 0
UnSkyUIGUI["15"]["TextScaled"] = true
UnSkyUIGUI["15"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UnSkyUIGUI["15"]["TextSize"] = 14
UnSkyUIGUI["15"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal)
UnSkyUIGUI["15"]["TextColor3"] = Color3.fromRGB(255, 0, 0)
UnSkyUIGUI["15"]["BackgroundTransparency"] = 1
UnSkyUIGUI["15"]["AnchorPoint"] = Vector2.new(0.5, 0.5)
UnSkyUIGUI["15"]["Size"] = UDim2.new(0, 138, 0, 15)
UnSkyUIGUI["15"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UnSkyUIGUI["15"]["Text"] = [[OP!]]
UnSkyUIGUI["15"]["Position"] = UDim2.new(0.875, 0, 0.76418, 0)

UnSkyUIGUI["16"] = Instance.new("UIStroke", UnSkyUIGUI["15"])

UnSkyUIGUI["17"] = Instance.new("TextLabel", UnSkyUIGUI["9"])
UnSkyUIGUI["17"]["TextWrapped"] = true
UnSkyUIGUI["17"]["BorderSizePixel"] = 0
UnSkyUIGUI["17"]["TextScaled"] = true
UnSkyUIGUI["17"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UnSkyUIGUI["17"]["TextSize"] = 14
UnSkyUIGUI["17"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal)
UnSkyUIGUI["17"]["TextColor3"] = Color3.fromRGB(207, 111, 0)
UnSkyUIGUI["17"]["BackgroundTransparency"] = 1
UnSkyUIGUI["17"]["AnchorPoint"] = Vector2.new(0.5, 0.5)
UnSkyUIGUI["17"]["Size"] = UDim2.new(0, 138, 0, 40)
UnSkyUIGUI["17"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UnSkyUIGUI["17"]["Text"] = [[Potato Mode]]
UnSkyUIGUI["17"]["Position"] = UDim2.new(0.18825, 0, 0.89433, 0)

UnSkyUIGUI["18"] = Instance.new("UIStroke", UnSkyUIGUI["17"])

UnSkyUIGUI["19"] = Instance.new("TextLabel", UnSkyUIGUI["9"])
UnSkyUIGUI["19"]["TextWrapped"] = true
UnSkyUIGUI["19"]["BorderSizePixel"] = 0
UnSkyUIGUI["19"]["TextScaled"] = true
UnSkyUIGUI["19"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UnSkyUIGUI["19"]["TextSize"] = 14
UnSkyUIGUI["19"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal)
UnSkyUIGUI["19"]["TextColor3"] = Color3.fromRGB(135, 207, 0)
UnSkyUIGUI["19"]["BackgroundTransparency"] = 1
UnSkyUIGUI["19"]["AnchorPoint"] = Vector2.new(0.5, 0.5)
UnSkyUIGUI["19"]["Size"] = UDim2.new(0, 162, 0, 40)
UnSkyUIGUI["19"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UnSkyUIGUI["19"]["Text"] = [[Optimize Lightning]]
UnSkyUIGUI["19"]["Position"] = UDim2.new(0.18825, 0, 0.22423, 0)

UnSkyUIGUI["1a"] = Instance.new("UIStroke", UnSkyUIGUI["19"])

UnSkyUIGUI["1b"] = Instance.new("TextLabel", UnSkyUIGUI["9"])
UnSkyUIGUI["1b"]["TextWrapped"] = true
UnSkyUIGUI["1b"]["BorderSizePixel"] = 0
UnSkyUIGUI["1b"]["TextScaled"] = true
UnSkyUIGUI["1b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UnSkyUIGUI["1b"]["TextSize"] = 14
UnSkyUIGUI["1b"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal)
UnSkyUIGUI["1b"]["TextColor3"] = Color3.fromRGB(135, 207, 0)
UnSkyUIGUI["1b"]["BackgroundTransparency"] = 1
UnSkyUIGUI["1b"]["AnchorPoint"] = Vector2.new(0.5, 0.5)
UnSkyUIGUI["1b"]["Size"] = UDim2.new(0, 150, 0, 40)
UnSkyUIGUI["1b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UnSkyUIGUI["1b"]["Text"] = [[Disable Shadows]]
UnSkyUIGUI["1b"]["Position"] = UDim2.new(0.18675, 0, 0.37113, 0)

UnSkyUIGUI["1c"] = Instance.new("UIStroke", UnSkyUIGUI["1b"])

UnSkyUIGUI["1d"] = Instance.new("TextLabel", UnSkyUIGUI["9"])
UnSkyUIGUI["1d"]["TextWrapped"] = true
UnSkyUIGUI["1d"]["BorderSizePixel"] = 0
UnSkyUIGUI["1d"]["TextScaled"] = true
UnSkyUIGUI["1d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UnSkyUIGUI["1d"]["TextSize"] = 14
UnSkyUIGUI["1d"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal)
UnSkyUIGUI["1d"]["TextColor3"] = Color3.fromRGB(135, 207, 0)
UnSkyUIGUI["1d"]["BackgroundTransparency"] = 1
UnSkyUIGUI["1d"]["AnchorPoint"] = Vector2.new(0.5, 0.5)
UnSkyUIGUI["1d"]["Size"] = UDim2.new(0, 144, 0, 40)
UnSkyUIGUI["1d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UnSkyUIGUI["1d"]["Text"] = [[Disable Material]]
UnSkyUIGUI["1d"]["Position"] = UDim2.new(0.18825, 0, 0.5232, 0)

UnSkyUIGUI["1e"] = Instance.new("UIStroke", UnSkyUIGUI["1d"])

UnSkyUIGUI["1f"] = Instance.new("TextLabel", UnSkyUIGUI["9"])
UnSkyUIGUI["1f"]["TextWrapped"] = true
UnSkyUIGUI["1f"]["BorderSizePixel"] = 0
UnSkyUIGUI["1f"]["TextScaled"] = true
UnSkyUIGUI["1f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UnSkyUIGUI["1f"]["TextSize"] = 14
UnSkyUIGUI["1f"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal)
UnSkyUIGUI["1f"]["TextColor3"] = Color3.fromRGB(135, 207, 0)
UnSkyUIGUI["1f"]["BackgroundTransparency"] = 1
UnSkyUIGUI["1f"]["AnchorPoint"] = Vector2.new(0.5, 0.5)
UnSkyUIGUI["1f"]["Size"] = UDim2.new(0, 147, 0, 40)
UnSkyUIGUI["1f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UnSkyUIGUI["1f"]["Text"] = [[Hide Vfx/Texture]]
UnSkyUIGUI["1f"]["Position"] = UDim2.new(0.1875, 0, 0.66237, 0)

UnSkyUIGUI["20"] = Instance.new("UIStroke", UnSkyUIGUI["1f"])

UnSkyUIGUI["21"] = Instance.new("TextButton", UnSkyUIGUI["9"])
UnSkyUIGUI["21"]["TextWrapped"] = true
UnSkyUIGUI["21"]["BorderSizePixel"] = 0
UnSkyUIGUI["21"]["TextSize"] = 14
UnSkyUIGUI["21"]["TextColor3"] = Color3.fromRGB(0, 0, 0)
UnSkyUIGUI["21"]["TextScaled"] = true
UnSkyUIGUI["21"]["BackgroundColor3"] = Color3.fromRGB(255, 0, 0)
UnSkyUIGUI["21"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal)
UnSkyUIGUI["21"]["Size"] = UDim2.new(0, 138, 0, 50)
UnSkyUIGUI["21"]["Name"] = [[PotatoButton]]
UnSkyUIGUI["21"]["BorderColor3"] = Color3.fromRGB(255, 0, 0)
UnSkyUIGUI["21"]["Text"] = [[OFF]]
UnSkyUIGUI["21"]["Position"] = UDim2.new(0.77108, 0, 0.8299, 0)

UnSkyUIGUI["22"] = Instance.new("UICorner", UnSkyUIGUI["21"])
UnSkyUIGUI["23"] = Instance.new("UIStroke", UnSkyUIGUI["21"])
UnSkyUIGUI["23"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border

UnSkyUIGUI["24"] = Instance.new("TextButton", UnSkyUIGUI["9"])
UnSkyUIGUI["24"]["TextWrapped"] = true
UnSkyUIGUI["24"]["BorderSizePixel"] = 0
UnSkyUIGUI["24"]["TextSize"] = 14
UnSkyUIGUI["24"]["TextColor3"] = Color3.fromRGB(0, 0, 0)
UnSkyUIGUI["24"]["TextScaled"] = true
UnSkyUIGUI["24"]["BackgroundColor3"] = Color3.fromRGB(255, 0, 0)
UnSkyUIGUI["24"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal)
UnSkyUIGUI["24"]["Size"] = UDim2.new(0, 96, 0, 32)
UnSkyUIGUI["24"]["Name"] = [[HideVfxButton]]
UnSkyUIGUI["24"]["BorderColor3"] = Color3.fromRGB(255, 0, 0)
UnSkyUIGUI["24"]["Text"] = [[OFF]]
UnSkyUIGUI["24"]["Position"] = UDim2.new(0.80422, 0, 0.63144, 0)

UnSkyUIGUI["25"] = Instance.new("UICorner", UnSkyUIGUI["24"])
UnSkyUIGUI["26"] = Instance.new("UIStroke", UnSkyUIGUI["24"])
UnSkyUIGUI["26"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border

UnSkyUIGUI["27"] = Instance.new("TextButton", UnSkyUIGUI["9"])
UnSkyUIGUI["27"]["TextWrapped"] = true
UnSkyUIGUI["27"]["BorderSizePixel"] = 0
UnSkyUIGUI["27"]["TextSize"] = 14
UnSkyUIGUI["27"]["TextColor3"] = Color3.fromRGB(0, 0, 0)
UnSkyUIGUI["27"]["TextScaled"] = true
UnSkyUIGUI["27"]["BackgroundColor3"] = Color3.fromRGB(255, 0, 0)
UnSkyUIGUI["27"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal)
UnSkyUIGUI["27"]["Size"] = UDim2.new(0, 96, 0, 32)
UnSkyUIGUI["27"]["Name"] = [[MaterialButton]]
UnSkyUIGUI["27"]["BorderColor3"] = Color3.fromRGB(255, 0, 0)
UnSkyUIGUI["27"]["Text"] = [[OFF]]
UnSkyUIGUI["27"]["Position"] = UDim2.new(0.80422, 0, 0.48196, 0)

UnSkyUIGUI["28"] = Instance.new("UICorner", UnSkyUIGUI["27"])
UnSkyUIGUI["29"] = Instance.new("UIStroke", UnSkyUIGUI["27"])
UnSkyUIGUI["29"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border

UnSkyUIGUI["2a"] = Instance.new("TextButton", UnSkyUIGUI["9"])
UnSkyUIGUI["2a"]["TextWrapped"] = true
UnSkyUIGUI["2a"]["BorderSizePixel"] = 0
UnSkyUIGUI["2a"]["TextSize"] = 14
UnSkyUIGUI["2a"]["TextColor3"] = Color3.fromRGB(0, 0, 0)
UnSkyUIGUI["2a"]["TextScaled"] = true
UnSkyUIGUI["2a"]["BackgroundColor3"] = Color3.fromRGB(255, 0, 0)
UnSkyUIGUI["2a"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal)
UnSkyUIGUI["2a"]["Size"] = UDim2.new(0, 96, 0, 32)
UnSkyUIGUI["2a"]["Name"] = [[ShadowsButton]]
UnSkyUIGUI["2a"]["BorderColor3"] = Color3.fromRGB(255, 0, 0)
UnSkyUIGUI["2a"]["Text"] = [[OFF]]
UnSkyUIGUI["2a"]["Position"] = UDim2.new(0.80422, 0, 0.3299, 0)

UnSkyUIGUI["2b"] = Instance.new("UICorner", UnSkyUIGUI["2a"])
UnSkyUIGUI["2c"] = Instance.new("UIStroke", UnSkyUIGUI["2a"])
UnSkyUIGUI["2c"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border

UnSkyUIGUI["2d"] = Instance.new("TextButton", UnSkyUIGUI["9"])
UnSkyUIGUI["2d"]["TextWrapped"] = true
UnSkyUIGUI["2d"]["BorderSizePixel"] = 0
UnSkyUIGUI["2d"]["TextSize"] = 14
UnSkyUIGUI["2d"]["TextColor3"] = Color3.fromRGB(0, 0, 0)
UnSkyUIGUI["2d"]["TextScaled"] = true
UnSkyUIGUI["2d"]["BackgroundColor3"] = Color3.fromRGB(255, 0, 0)
UnSkyUIGUI["2d"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal)
UnSkyUIGUI["2d"]["Size"] = UDim2.new(0, 96, 0, 32)
UnSkyUIGUI["2d"]["Name"] = [[OptimizeButton]]
UnSkyUIGUI["2d"]["BorderColor3"] = Color3.fromRGB(255, 0, 0)
UnSkyUIGUI["2d"]["Text"] = [[OFF]]
UnSkyUIGUI["2d"]["Position"] = UDim2.new(0.80422, 0, 0.18299, 0)

UnSkyUIGUI["2e"] = Instance.new("UICorner", UnSkyUIGUI["2d"])
UnSkyUIGUI["2f"] = Instance.new("UIStroke", UnSkyUIGUI["2d"])
UnSkyUIGUI["2f"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border

UnSkyUIGUI["30"] = Instance.new("TextLabel", UnSkyUIGUI["9"])
UnSkyUIGUI["30"]["TextWrapped"] = true
UnSkyUIGUI["30"]["BorderSizePixel"] = 0
UnSkyUIGUI["30"]["TextScaled"] = true
UnSkyUIGUI["30"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UnSkyUIGUI["30"]["TextSize"] = 14
UnSkyUIGUI["30"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UnSkyUIGUI["30"]["TextColor3"] = Color3.fromRGB(0, 255, 18)
UnSkyUIGUI["30"]["BackgroundTransparency"] = 1
UnSkyUIGUI["30"]["Size"] = UDim2.new(0, 82, 0, 17)
UnSkyUIGUI["30"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UnSkyUIGUI["30"]["Text"] = [[Click to Turn ON]]
UnSkyUIGUI["30"]["Position"] = UDim2.new(0.81476, 0, 0.27577, 0)

UnSkyUIGUI["31"] = Instance.new("TextLabel", UnSkyUIGUI["9"])
UnSkyUIGUI["31"]["TextWrapped"] = true
UnSkyUIGUI["31"]["BorderSizePixel"] = 0
UnSkyUIGUI["31"]["TextScaled"] = true
UnSkyUIGUI["31"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UnSkyUIGUI["31"]["TextSize"] = 14
UnSkyUIGUI["31"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UnSkyUIGUI["31"]["TextColor3"] = Color3.fromRGB(0, 255, 18)
UnSkyUIGUI["31"]["BackgroundTransparency"] = 1
UnSkyUIGUI["31"]["Size"] = UDim2.new(0, 82, 0, 17)
UnSkyUIGUI["31"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UnSkyUIGUI["31"]["Text"] = [[Click to Turn ON]]
UnSkyUIGUI["31"]["Position"] = UDim2.new(0.81476, 0, 0.42268, 0)

UnSkyUIGUI["32"] = Instance.new("TextLabel", UnSkyUIGUI["9"])
UnSkyUIGUI["32"]["TextWrapped"] = true
UnSkyUIGUI["32"]["BorderSizePixel"] = 0
UnSkyUIGUI["32"]["TextScaled"] = true
UnSkyUIGUI["32"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UnSkyUIGUI["32"]["TextSize"] = 14
UnSkyUIGUI["32"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UnSkyUIGUI["32"]["TextColor3"] = Color3.fromRGB(0, 255, 18)
UnSkyUIGUI["32"]["BackgroundTransparency"] = 1
UnSkyUIGUI["32"]["Size"] = UDim2.new(0, 82, 0, 17)
UnSkyUIGUI["32"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UnSkyUIGUI["32"]["Text"] = [[Click to Turn ON]]
UnSkyUIGUI["32"]["Position"] = UDim2.new(0.81325, 0, 0.57474, 0)

UnSkyUIGUI["33"] = Instance.new("TextLabel", UnSkyUIGUI["9"])
UnSkyUIGUI["33"]["TextWrapped"] = true
UnSkyUIGUI["33"]["BorderSizePixel"] = 0
UnSkyUIGUI["33"]["TextScaled"] = true
UnSkyUIGUI["33"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UnSkyUIGUI["33"]["TextSize"] = 14
UnSkyUIGUI["33"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UnSkyUIGUI["33"]["TextColor3"] = Color3.fromRGB(0, 255, 18)
UnSkyUIGUI["33"]["BackgroundTransparency"] = 1
UnSkyUIGUI["33"]["Size"] = UDim2.new(0, 82, 0, 17)
UnSkyUIGUI["33"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UnSkyUIGUI["33"]["Text"] = [[Click to Turn ON]]
UnSkyUIGUI["33"]["Position"] = UDim2.new(0.81325, 0, 0.12887, 0)

UnSkyUIGUI["34"] = Instance.new("TextLabel", UnSkyUIGUI["9"])
UnSkyUIGUI["34"]["TextWrapped"] = true
UnSkyUIGUI["34"]["BorderSizePixel"] = 0
UnSkyUIGUI["34"]["TextScaled"] = true
UnSkyUIGUI["34"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UnSkyUIGUI["34"]["TextSize"] = 14
UnSkyUIGUI["34"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UnSkyUIGUI["34"]["TextColor3"] = Color3.fromRGB(0, 255, 18)
UnSkyUIGUI["34"]["BackgroundTransparency"] = 1
UnSkyUIGUI["34"]["Size"] = UDim2.new(0, 82, 0, 17)
UnSkyUIGUI["34"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UnSkyUIGUI["34"]["Text"] = [[Click to Turn ON]]
UnSkyUIGUI["34"]["Position"] = UDim2.new(0.81325, 0, 0.94588, 0)

UnSkyUIGUI["35"] = Instance.new("UIAspectRatioConstraint", UnSkyUIGUI["9"])
UnSkyUIGUI["35"]["AspectRatio"] = 1.71134

-- =========================================================================
-- [البرمجة الوظيفية للأزرار والتحكم بالـ Lag - تعديل وإضافة وتحسين]
-- =========================================================================

local MainGuiFrame = UnSkyUIGUI["9"]
local EnterButton = UnSkyUIGUI["6"]
local EnterFrame = UnSkyUIGUI["3"]

-- دالة السحب الاحترافية لحل مشكلة التعليق
local function makeDraggable(guiItem)
	local dragging, dragInput, dragStart, startPos
	guiItem.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true ; dragStart = input.Position ; startPos = guiItem.Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then dragging = false end
			end)
		end
	end)
	guiItem.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)
	UIS.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			local delta = input.Position - dragStart
			guiItem.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
		end
	end)
end

-- تطبيق السحب على النافذة الرئيسية وزر الدخول (البرق)
makeDraggable(MainGuiFrame)
makeDraggable(EnterFrame)

-- دالة مخصصة لمسح الإكسسوارات تماماً
local function stripAccessories(character)
	for _, v in pairs(character:GetDescendants()) do
		if v:IsA("Accessory") or v:IsA("Shirt") or v:IsA("Pants") or v:IsA("ShirtGraphic") or v:IsA("CharacterMesh") then
			v:Destroy()
		end
	end
end

-- إخفاء وإظهار الـ Main GUI عبر زر البرق الصغير
EnterButton.MouseButton1Click:Connect(function()
	MainGuiFrame.Visible = not MainGuiFrame.Visible
end)

-- متغيرات الحالة
local OptimizeState, ShadowsState, MaterialState, VfxState, PotatoState = false, false, false, false, false

-- 1. تحسين الإضاءة
UnSkyUIGUI["2d"].MouseButton1Click:Connect(function()
	OptimizeState = not OptimizeState
	if OptimizeState then
		UnSkyUIGUI["2d"].Text = "ON"
		UnSkyUIGUI["2d"].BackgroundColor3 = Color3.fromRGB(0, 180, 0)
		game:GetService("Lighting").GlobalShadows = false
		if game:GetService("Lighting"):FindFirstChildOfClass("Atmosphere") then
			game:GetService("Lighting"):FindFirstChildOfClass("Atmosphere").Density = 0
		end
	else
		UnSkyUIGUI["2d"].Text = "OFF"
		UnSkyUIGUI["2d"].BackgroundColor3 = Color3.fromRGB(255, 0, 0)
		game:GetService("Lighting").GlobalShadows = true
		if game:GetService("Lighting"):FindFirstChildOfClass("Atmosphere") then
			game:GetService("Lighting"):FindFirstChildOfClass("Atmosphere").Enabled = true
		end
	end
end)

-- 2. إخفاء الظلال
UnSkyUIGUI["2a"].MouseButton1Click:Connect(function()
	ShadowsState = not ShadowsState
	if ShadowsState then
		UnSkyUIGUI["2a"].Text = "ON"
		UnSkyUIGUI["2a"].BackgroundColor3 = Color3.fromRGB(0, 180, 0)
		game:GetService("Lighting").GlobalShadows = false
	else
		UnSkyUIGUI["2a"].Text = "OFF"
		UnSkyUIGUI["2a"].BackgroundColor3 = Color3.fromRGB(255, 0, 0)
		game:GetService("Lighting").GlobalShadows = true
	end
end)

-- 3. تعطيل الخامات (مع مسح الإكسسوارات)
UnSkyUIGUI["27"].MouseButton1Click:Connect(function()
	MaterialState = not MaterialState
	if MaterialState then
		UnSkyUIGUI["27"].Text = "ON"
		UnSkyUIGUI["27"].BackgroundColor3 = Color3.fromRGB(0, 180, 0)
		for _, obj in pairs(workspace:GetDescendants()) do
			if obj:IsA("BasePart") then obj.Material = Enum.Material.SmoothPlastic end
		end
		-- مسح إكسسوارات اللاعبين الحاليين
		for _, player in pairs(Players:GetPlayers()) do
			if player.Character then stripAccessories(player.Character) end
		end
	else
		UnSkyUIGUI["27"].Text = "OFF"
		UnSkyUIGUI["27"].BackgroundColor3 = Color3.fromRGB(255, 0, 0)
	end
end)

-- 4. إخفاء التأثيرات
UnSkyUIGUI["24"].MouseButton1Click:Connect(function()
	VfxState = not VfxState
	if VfxState then
		UnSkyUIGUI["24"].Text = "ON"
		UnSkyUIGUI["24"].BackgroundColor3 = Color3.fromRGB(0, 180, 0)
		for _, v in pairs(workspace:GetDescendants()) do
			if v:IsA("ParticleEmitter") or v:IsA("Smoke") or v:IsA("Fire") or v:IsA("Sparkles") then
				v.Enabled = false
			elseif v:IsA("Decal") or v:IsA("Texture") then
				v:Destroy()
			end
		end
	else
		UnSkyUIGUI["24"].Text = "OFF"
		UnSkyUIGUI["24"].BackgroundColor3 = Color3.fromRGB(255, 0, 0)
	end
end)

-- 5. وضع البطاطس (تحسين أقصى + مسح إكسسوارات)
UnSkyUIGUI["21"].MouseButton1Click:Connect(function()
	PotatoState = not PotatoState
	if PotatoState then
		UnSkyUIGUI["21"].Text = "ON"
		UnSkyUIGUI["21"].BackgroundColor3 = Color3.fromRGB(0, 180, 0)

		UnSkyUIGUI["2d"].Text, UnSkyUIGUI["2a"].Text, UnSkyUIGUI["27"].Text, UnSkyUIGUI["24"].Text = "ON", "ON", "ON", "ON"
		local greenColor = Color3.fromRGB(0, 180, 0)
		UnSkyUIGUI["2d"].BackgroundColor3, UnSkyUIGUI["2a"].BackgroundColor3, UnSkyUIGUI["27"].BackgroundColor3, UnSkyUIGUI["24"].BackgroundColor3 = greenColor, greenColor, greenColor, greenColor

		game:GetService("Lighting").GlobalShadows = false
		for _, v in pairs(workspace:GetDescendants()) do
			if v:IsA("BasePart") then
				v.Material = Enum.Material.SmoothPlastic
			elseif v:IsA("Decal") or v:IsA("Texture") then
				v:Destroy()
			elseif v:IsA("ParticleEmitter") or v:IsA("Smoke") or v:IsA("Fire") or v:IsA("Sparkles") then
				v.Enabled = false
			end
		end
		-- مسح الإكسسوارات لكل اللاعبين
		for _, player in pairs(Players:GetPlayers()) do
			if player.Character then stripAccessories(player.Character) end
		end
	else
		UnSkyUIGUI["21"].Text = "OFF"
		UnSkyUIGUI["21"].BackgroundColor3 = Color3.fromRGB(255, 0, 0)
	end
end)

-- تشغيل التحسينات على اللاعبين الجدد فور انضمامهم
Players.PlayerAdded:Connect(function(player)
	player.CharacterAdded:Connect(function(char)
		task.wait(1)
		if MaterialState or PotatoState then stripAccessories(char) end
	end)
end)
