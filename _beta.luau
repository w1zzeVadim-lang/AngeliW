if not game:IsLoaded() then game.Loaded:Wait() end
local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui", 15)
local lighting = game:GetService("Lighting")

for _, name in {"AngelW_TikTokGui", "SnowCanvasGui"} do
	local old = playerGui:FindFirstChild(name) or game.CoreGui:FindFirstChild(name)
	if old then pcall(function() old:Destroy() end) end
end

local ScreenGui = Instance.new("ScreenGui", playerGui)
ScreenGui.Name = "AngelW_TikTokGui"
ScreenGui.ResetOnSpawn = false

local MainFrame = Instance.new("Frame", ScreenGui)
MainFrame.Size = UDim2.new(0, 500, 0, 250)
MainFrame.Position = UDim2.new(0.5, 0, 0.5, 40)
MainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
MainFrame.BackgroundColor3 = Color3.fromRGB(11, 12, 13)
MainFrame.BorderSizePixel = 0
MainFrame.Active, MainFrame.Draggable = true, true
Instance.new("UICorner", MainFrame).CornerRadius = UDim.new(0, 10)

local Sidebar = Instance.new("Frame", MainFrame)
Sidebar.Size = UDim2.new(0, 145, 1, 0)
Sidebar.BackgroundColor3 = Color3.fromRGB(8, 9, 10)
Sidebar.BorderSizePixel = 0
Instance.new("UICorner", Sidebar).CornerRadius = UDim.new(0, 10)

local SidebarFix = Instance.new("Frame", Sidebar)
SidebarFix.Size = UDim2.new(0, 20, 1, 0)
SidebarFix.Position = UDim2.new(1, -20, 0, 0)
SidebarFix.BackgroundColor3 = Sidebar.BackgroundColor3
SidebarFix.BorderSizePixel = 0

local function createTxt(txt, font, sz, col, pos, parent)
	local lbl = Instance.new("TextLabel", parent)
	lbl.BackgroundTransparency = 1
	lbl.Text, lbl.Font, lbl.TextSize, lbl.TextColor3 = txt, font, sz, col
	lbl.TextXAlignment = Enum.TextXAlignment.Left
	return lbl
end

createTxt("MENU", Enum.Font.GothamBold, 9, Color3.fromRGB(75, 75, 80), UDim2.new(0, 18, 0, 16), Sidebar).Size = UDim2.new(1, -20, 0, 12)
createTxt("AngeliW", Enum.Font.GothamBold, 22, Color3.fromRGB(255, 255, 255), UDim2.new(0, 18, 0, 28), Sidebar).Size = UDim2.new(1, -20, 0, 30)

local EffectsTab = Instance.new("TextButton", Sidebar)
EffectsTab.Size = UDim2.new(1, -20, 0, 36)
EffectsTab.Position = UDim2.new(0, 10, 0, 85)
EffectsTab.BackgroundColor3 = Color3.fromRGB(16, 17, 19)
EffectsTab.BorderSizePixel = 0
EffectsTab.Text = "   ✨ Эффекты"
EffectsTab.Font, EffectsTab.TextSize = Enum.Font.GothamSemibold, 12
EffectsTab.TextColor3, EffectsTab.TextXAlignment = Color3.fromRGB(240, 240, 245), Enum.TextXAlignment.Left
Instance.new("UICorner", EffectsTab).CornerRadius = UDim.new(0, 6)

local ActiveLine = Instance.new("Frame", EffectsTab)
ActiveLine.Size = UDim2.new(0, 3, 0, 16)
ActiveLine.Position = UDim2.new(0, 6, 0.5, -8)
ActiveLine.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ActiveLine.BorderSizePixel = 0

local OpenBtn = Instance.new("TextButton", ScreenGui)
OpenBtn.Size = UDim2.new(0, 46, 0, 46)
OpenBtn.Position = UDim2.new(0, 20, 0.5, 20)
OpenBtn.BackgroundColor3 = Color3.fromRGB(8, 9, 10)
OpenBtn.TextColor3, OpenBtn.Text = Color3.fromRGB(255, 255, 255), "❄️"
OpenBtn.Font, OpenBtn.TextSize = Enum.Font.GothamBold, 18
OpenBtn.Active, OpenBtn.Draggable = true, true
Instance.new("UICorner", OpenBtn).CornerRadius = UDim.new(1, 0)
OpenBtn.MouseButton1Click:Connect(function() MainFrame.Visible = not MainFrame.Visible end)

local isSnowActive, isAuraActive = false, false
local originalMaterials, originalLighting = {}, {}

local snowCanvas = Instance.new("ScreenGui", playerGui)
snowCanvas.Name = "SnowCanvasGui"
snowCanvas.DisplayOrder = -1
local canvasFrame = Instance.new("Frame", snowCanvas)
canvasFrame.Size = UDim2.new(1, 0, 1, 0)
canvasFrame.BackgroundTransparency = 1

local function createInlineRow(titleText, sectionText, xPos, callback)
	local Card = Instance.new("Frame", MainFrame)
	Card.Size = UDim2.new(0, 165, 0, 150)
	Card.Position = UDim2.new(0, xPos, 0, 35)
	Card.BackgroundTransparency = 1
	
	local sLbl = createTxt(sectionText, Enum.Font.GothamBold, 10, Color3.fromRGB(70, 72, 75), UDim2.new(0, 0, 0, 5), Card)
	sLbl.Size = UDim2.new(1, 0, 0, 12)
	
	local mLbl = createTxt(titleText, Enum.Font.GothamSemibold, 14, Color3.fromRGB(225, 225, 230), UDim2.new(0, 0, 0, 60), Card)
	mLbl.Size = UDim2.new(1, -50, 0, 24) mLbl.TextWrapped = true

	local ToggleBG = Instance.new("TextButton", Card)
	ToggleBG.Size = UDim2.new(0, 42, 0, 22)
	ToggleBG.Position = UDim2.new(1, -44, 0, 61)
	ToggleBG.BackgroundColor3 = Color3.fromRGB(35, 37, 40)
	ToggleBG.Text = ""
	Instance.new("UICorner", ToggleBG).CornerRadius = UDim.new(1, 0)
	
	local Slider = Instance.new("Frame", ToggleBG)
	Slider.Size = UDim2.new(0, 16, 0, 16)
	Slider.Position = UDim2.new(0, 3, 0.5, -8)
	Slider.BackgroundColor3, Slider.BorderSizePixel = Color3.fromRGB(255, 255, 255), 0
	Instance.new("UICorner", Slider).CornerRadius = UDim.new(1, 0)
	
	local active = false
	ToggleBG.MouseButton1Click:Connect(function()
		active = not active
		if active then
			ToggleBG.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Slider.BackgroundColor3 = Color3.fromRGB(15, 16, 17)
			Slider:TweenPosition(UDim2.new(1, -19, 0.5, -8), "Out", "Quad", 0.12, true)
		else
			ToggleBG.BackgroundColor3 = Color3.fromRGB(35, 37, 40)
			Slider.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Slider:TweenPosition(UDim2.new(0, 3, 0.5, -8), "Out", "Quad", 0.12, true)
		end
		callback(active)
	end)
end

local function applyFX()
	local char = player.Character
	local torso = char and (char:FindFirstChild("UpperTorso") or char:FindFirstChild("Torso"))
	if torso then
		for _, v in pairs(char:GetDescendants()) do if v.Name == "AngelAuraOnly" then v:Destroy() end end
		if isAuraActive then
			local fire = Instance.new("Fire")
			fire.Name = "AngelAuraOnly"
			fire.Color, fire.SecondaryColor = Color3.fromRGB(0, 215, 255), Color3.fromRGB(0, 245, 255)
			fire.Size, fire.Heat, fire.Parent = 3.5, 5, torso
		end
	end
end

createInlineRow("Мягкий снег", "Окружение", 165, function(state)
	isSnowActive = state
	if isSnowActive then
		for _, p in {"TimeOfDay", "FogColor", "FogStart", "FogEnd", "Ambient", "OutdoorAmbient"} do originalLighting[p] = lighting[p] end
		lighting.TimeOfDay, lighting.FogColor, lighting.FogStart, lighting.FogEnd = "17:30:00", Color3.fromRGB(140, 160, 185), 100, 600
		lighting.Ambient, lighting.OutdoorAmbient = Color3.fromRGB(150, 165, 190), Color3.fromRGB(130, 145, 170)
		
		for _, v in pairs(workspace:GetDescendants()) do
			if v:IsA("BasePart") and not v.Parent:FindFirstChild("Humanoid") and v.Transparency < 1 then
				originalMaterials[v] = {Color = v.Color, Material = v.Material}
				if v.Size.X > 2 or v.Size.Z > 2 then v.Material = Enum.Material.Snow v.Color = Color3.fromRGB(245, 248, 255) end
			end
		end
		for i = 1, 70 do
			local fk = Instance.new("Frame", canvasFrame)
			fk.BorderSizePixel, fk.BackgroundColor3 = 0, Color3.fromRGB(230, 248, 255)
			Instance.new("UICorner", fk).CornerRadius = UDim.new(1, 0)
			fk.Size = UDim2.new(0, math.random(3, 6), 0, math.random(3, 6))
			fk.Position = UDim2.new(math.random(), 0, math.random() * -1.1, 0)
			local g = Instance.new("UIGradient", fk)
			g.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1, Color3.fromRGB(160, 235, 255))})
			local spd, sd = math.random(25, 45) * 0.0001, math.random(1, 100)
			task.spawn(function()
				while isSnowActive and fk.Parent do
					local pos = fk.Position
					local nY = pos.Y.Scale + spd
					if nY > 1.02 then nY = -0.05 fk.Position = UDim2.new(math.random(), 0, nY, 0) else fk.Position = UDim2.new(pos.X.Scale, 0, nY, 0) end
					fk.BackgroundTransparency = 0.1 + math.abs(math.sin(tick() * 3 + sd)) * 0.4
					task.wait(0.01)
				end
			end)
		end
	else
		if originalLighting.TimeOfDay then for p, v in pairs(originalLighting) do lighting[p] = v end else lighting.TimeOfDay, lighting.FogEnd = "14:00:00", 999999 end
		canvasFrame:ClearAllChildren()
		for p, d in pairs(originalMaterials) do if p and p.Parent then p.Color, p.Material = d.Color, d.Material end end
		originalMaterials = {}
	end
end)

createInlineRow("Лазурная аура", "Косметика", 325, function(state)
	isAuraActive = state
	if isAuraActive then applyFX() else
		local char = player.Character
		if char then for _, v in pairs(char:GetDescendants()) do if v.Name == "AngelAuraOnly" then v:Destroy() end end end
	end
end)

player.CharacterAdded:Connect(function() task.wait(1) if isAuraActive then applyFX() end end)
ScreenGui.Destroying:Connect(function() snowCanvas:Destroy() end)
