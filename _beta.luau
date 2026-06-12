if not game:IsLoaded() then game.Loaded:Wait() end
local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui", 10)

local oldGui = playerGui:FindFirstChild("AngelW_TikTokGui") or game.CoreGui:FindFirstChild("AngelW_TikTokGui")
if oldGui then oldGui:Destroy() end
local oldSnow = playerGui:FindFirstChild("SnowCanvasGui") or game.CoreGui:FindFirstChild("SnowCanvasGui")
if oldSnow then oldSnow:Destroy() end

local ScreenGui = Instance.new("ScreenGui", playerGui)
ScreenGui.Name = "AngelW_TikTokGui"
ScreenGui.ResetOnSpawn = false

local MainFrame = Instance.new("Frame", ScreenGui)
MainFrame.Size = UDim2.new(0, 240, 0, 165)
MainFrame.Position = UDim2.new(0.05, 0, 0.3, 0)
MainFrame.BackgroundColor3 = Color3.fromRGB(12, 12, 20)
MainFrame.BorderSizePixel = 0
MainFrame.Active = true
MainFrame.Draggable = true

local MainCorner = Instance.new("UICorner", MainFrame)
MainCorner.CornerRadius = UDim.new(0, 10)

local MainStroke = Instance.new("UIStroke", MainFrame)
MainStroke.Thickness = 2
MainStroke.Color = Color3.fromRGB(0, 180, 255)
MainStroke.Transparency = 0.3

local Title = Instance.new("TextLabel", MainFrame)
Title.Size = UDim2.new(1, 0, 0, 35)
Title.Text = "ANGELW  BETA  v0.1"
Title.TextColor3 = Color3.fromRGB(0, 235, 255)
Title.BackgroundColor3 = Color3.fromRGB(20, 20, 32)
Title.Font = Enum.Font.SourceSansBold
Title.TextSize = 15

local TitleCorner = Instance.new("UICorner", Title)
TitleCorner.CornerRadius = UDim.new(0, 10)

local SnowBtn = Instance.new("TextButton", MainFrame)
SnowBtn.Size = UDim2.new(0, 204, 0, 42)
SnowBtn.Position = UDim2.new(0, 18, 0, 52)
SnowBtn.Text = "Activate Snow ❄️"
SnowBtn.BackgroundColor3 = Color3.fromRGB(18, 22, 36)
SnowBtn.TextColor3 = Color3.fromRGB(0, 215, 255)
SnowBtn.Font = Enum.Font.SourceSansBold
SnowBtn.TextSize = 14

local SnowCorner = Instance.new("UICorner", SnowBtn)
SnowCorner.CornerRadius = UDim.new(0, 6)

local SnowStroke = Instance.new("UIStroke", SnowBtn)
SnowStroke.Thickness = 1.5
SnowStroke.Color = Color3.fromRGB(0, 140, 255)

local AuraBtn = Instance.new("TextButton", MainFrame)
AuraBtn.Size = UDim2.new(0, 204, 0, 42)
AuraBtn.Position = UDim2.new(0, 18, 0, 107)
AuraBtn.Text = "Activate Aura ✨"
AuraBtn.BackgroundColor3 = Color3.fromRGB(18, 22, 36)
AuraBtn.TextColor3 = Color3.fromRGB(0, 215, 255)
AuraBtn.Font = Enum.Font.SourceSansBold
AuraBtn.TextSize = 14

local AuraCorner = Instance.new("UICorner", AuraBtn)
AuraCorner.CornerRadius = UDim.new(0, 6)

local AuraStroke = Instance.new("UIStroke", AuraBtn)
AuraStroke.Thickness = 1.5
AuraStroke.Color = Color3.fromRGB(0, 140, 255)

local OpenBtn = Instance.new("TextButton", ScreenGui)
OpenBtn.Size = UDim2.new(0, 48, 0, 48)
OpenBtn.Position = UDim2.new(0.05, 0, 0.2, 0)
OpenBtn.BackgroundColor3 = Color3.fromRGB(15, 20, 35)
OpenBtn.TextColor3 = Color3.fromRGB(0, 240, 255)
OpenBtn.Text = "❄️"
OpenBtn.Font = Enum.Font.SourceSansBold
OpenBtn.TextSize = 22
OpenBtn.Active = true
OpenBtn.Draggable = true

local OpenCorner = Instance.new("UICorner", OpenBtn)
OpenCorner.CornerRadius = UDim.new(0, 24)

local OpenStroke = Instance.new("UIStroke", OpenBtn)
OpenStroke.Thickness = 2
OpenStroke.Color = Color3.fromRGB(0, 180, 255)

OpenBtn.MouseButton1Click:Connect(function() MainFrame.Visible = not MainFrame.Visible end)

local isSnowActive = false
local lighting = game:GetService("Lighting")
local originalMaterials = {}
local originalLighting = {}
local snowCanvas = Instance.new("ScreenGui", playerGui)
snowCanvas.Name = "SnowCanvasGui"
snowCanvas.DisplayOrder = -1
local canvasFrame = Instance.new("Frame", snowCanvas)
canvasFrame.Size = UDim2.new(1, 0, 1, 0)
canvasFrame.BackgroundTransparency = 1

SnowBtn.MouseButton1Click:Connect(function()
    isSnowActive = not isSnowActive
    if isSnowActive then
        SnowBtn.Text = "Disable Snow ❌"
        SnowBtn.TextColor3 = Color3.fromRGB(255, 100, 100)
        SnowStroke.Color = Color3.fromRGB(255, 50, 50)
        
        originalLighting.TimeOfDay = lighting.TimeOfDay
        originalLighting.FogColor = lighting.FogColor
        originalLighting.FogStart = lighting.FogStart
        originalLighting.FogEnd = lighting.FogEnd
        originalLighting.Ambient = lighting.Ambient
        originalLighting.OutdoorAmbient = lighting.OutdoorAmbient
        
        lighting.TimeOfDay = "17:30:00" 
        lighting.FogColor = Color3.fromRGB(140, 160, 185)
        lighting.FogStart = 100
        lighting.FogEnd = 600
        
        lighting.Ambient = Color3.fromRGB(150, 165, 190)
        lighting.OutdoorAmbient = Color3.fromRGB(130, 145, 170)
        
        for _, v in pairs(workspace:GetDescendants()) do
            if v:IsA("BasePart") and not v.Parent:FindFirstChild("Humanoid") and v.Transparency < 1 then
                originalMaterials[v] = {Color = v.Color, Material = v.Material}
                if v.Size.X > 2 or v.Size.Z > 2 then v.Material = Enum.Material.Snow v.Color = Color3.fromRGB(245, 248, 255) end
            end
        end
        local totalFlakes = 70
        for i = 1, totalFlakes do
            local flake = Instance.new("Frame", canvasFrame)
            flake.BorderSizePixel = 0
            flake.BackgroundColor3 = Color3.fromRGB(230, 248, 255)
            Instance.new("UICorner", flake).CornerRadius = UDim.new(1, 0)
            flake.Size = UDim2.new(0, math.random(3, 6), 0, math.random(3, 6))
            flake.Position = UDim2.new(math.random(), 0, math.random() * -1.1, 0)
            local gradient = Instance.new("UIGradient", flake)
            gradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1, Color3.fromRGB(160, 235, 255))})
            local fallSpeed = math.random(25, 45) * 0.0001
            local seed = math.random(1, 100)
            task.spawn(function()
                while isSnowActive and flake.Parent do
                    local currentPos = flake.Position
                    local newY = currentPos.Y.Scale + fallSpeed
                    if newY > 1.02 then newY = -0.05 flake.Position = UDim2.new(math.random(), 0, newY, 0) else flake.Position = UDim2.new(currentPos.X.Scale, 0, newY, 0) end
                    flake.BackgroundTransparency = 0.1 + math.abs(math.sin(tick() * 3 + seed)) * 0.4
                    task.wait(0.01)
                end
            end)
        end
    else
        SnowBtn.Text = "Activate Snow ❄️"
        SnowBtn.TextColor3 = Color3.fromRGB(0, 215, 255)
        SnowStroke.Color = Color3.fromRGB(0, 140, 255)
        
        if originalLighting.TimeOfDay then
            lighting.TimeOfDay = originalLighting.TimeOfDay
            lighting.FogColor = originalLighting.FogColor
            lighting.FogStart = originalLighting.FogStart
            lighting.FogEnd = originalLighting.FogEnd
            lighting.Ambient = originalLighting.Ambient
            lighting.OutdoorAmbient = originalLighting.OutdoorAmbient
        else
            lighting.TimeOfDay = "14:00:00"
            lighting.FogEnd = 999999
        end
        
        canvasFrame:ClearAllChildren()
        for part, data in pairs(originalMaterials) do if part and part.Parent then part.Color = data.Color part.Material = data.Material end end
        originalMaterials = {}
    end
end)

local isAuraActive = false
local function applyFX()
    local char = player.Character
    if not char then return end
    local torso = char:WaitForChild("UpperTorso", 5) or char:WaitForChild("Torso", 5)
    
    if torso then
        for _, v in pairs(char:GetDescendants()) do if v.Name == "AngelAuraOnly" then v:Destroy() end end
        if isAuraActive then
            local fireAura = Instance.new("Fire")
            fireAura.Name = "AngelAuraOnly"
            fireAura.Color = Color3.fromRGB(0, 215, 255)
            fireAura.SecondaryColor = Color3.fromRGB(0, 245, 255)
            fireAura.Size = 3.5
            fireAura.Heat = 5
            fireAura.Parent = torso
        end
    end
end

AuraBtn.MouseButton1Click:Connect(function()
    isAuraActive = not isAuraActive
    if isAuraActive then
        AuraBtn.Text = "Disable Aura ❌"
        AuraBtn.TextColor3 = Color3.fromRGB(255, 100, 100)
        AuraStroke.Color = Color3.fromRGB(255, 50, 50)
        applyFX()
    else
        AuraBtn.Text = "Activate Aura ✨"
        AuraBtn.TextColor3 = Color3.fromRGB(0, 215, 255)
        AuraStroke.Color = Color3.fromRGB(0, 140, 255)
        local char = player.Character
        if char then
            for _, v in pairs(char:GetDescendants()) do if v.Name == "AngelAuraOnly" then v:Destroy() end end
        end
    end
end)

player.CharacterAdded:Connect(function() task.wait(1) if isAuraActive then applyFX() end end)
ScreenGui.Destroying:Connect(function() snowCanvas:Destroy() end)
