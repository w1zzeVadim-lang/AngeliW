-- ==========================================
-- ЧАСТЬ 1 ИЗ 9: ИСПРАВЛЕННЫЙ СТАРТ И ЦЕНТРОВКА
-- ==========================================

task.wait(1)
local p,tw,run,l=game.Players.LocalPlayer,game:GetService("TweenService"),game:GetService("RunService"),game:GetService("Lighting")
local g=p:WaitForChild("PlayerGui",10)

local function clean(n) 
    local o=g:FindFirstChild(n) or game.CoreGui:FindFirstChild(n) 
    if o then o:Destroy() end 
end 
clean("AngelW_TikTokGui") clean("SnowCanvasGui")

local sg=Instance.new("ScreenGui",g) sg.Name,sg.ResetOnSpawn="AngelW_TikTokGui",false
local mf=Instance.new("Frame",sg) mf.Size,mf.Position,mf.AnchorPoint,mf.BackgroundColor3,mf.BorderSizePixel,mf.ClipsDescendants=UDim2.new(0,430,0,260),UDim2.new(0.5,0,0.5,0),Vector2.new(0.5,0.5),Color3.fromRGB(15,15,18),0,true
Instance.new("UICorner",mf).CornerRadius=UDim.new(0,10)
local ms=Instance.new("UIStroke",mf) ms.Thickness,ms.Color=1,Color3.fromRGB(45,45,50)

local sb=Instance.new("Frame",mf) sb.Size,sb.BackgroundColor3,sb.BorderSizePixel=UDim2.new(0,130,1,0),Color3.fromRGB(11,11,13),0
local sst=Instance.new("UIStroke",sb) sst.Thickness,sst.Color=1,Color3.fromRGB(30,30,35)
local lo=Instance.new("TextLabel",sb) lo.Size,lo.Position,lo.Text,lo.TextColor3,lo.Font,lo.TextSize,lo.TextXAlignment,lo.BackgroundTransparency=UDim2.new(1,-15,0,45),UDim2.new(0,15,0,0),"AngeliW",Color3.fromRGB(240,240,245),Enum.Font.GothamBold,16,0,1

local tb1=Instance.new("TextButton",sb) tb1.Size,tb1.Position,tb1.BackgroundColor3,tb1.Text,tb1.TextColor3,tb1.Font,tb1.TextSize=UDim2.new(1,-16,0,32),UDim2.new(0,8,0,60),Color3.fromRGB(24,24,27),"✨ Функции",Color3.fromRGB(245,245,245),Enum.Font.GothamMedium,11
Instance.new("UICorner",tb1).CornerRadius=UDim.new(0,6)
local tb2=Instance.new("TextButton",sb) tb2.Size,tb2.Position,tb2.BackgroundColor3,tb2.Text,tb2.TextColor3,tb2.Font,tb2.TextSize=UDim2.new(1,-16,0,32),UDim2.new(0,8,0,100),Color3.fromRGB(16,16,18),"⚙️ Настройки",Color3.fromRGB(150,150,155),Enum.Font.GothamMedium,11
Instance.new("UICorner",tb2).CornerRadius=UDim.new(0,6)
local tb3=Instance.new("TextButton",sb) tb3.Size,tb3.Position,tb3.BackgroundColor3,tb3.Text,tb3.TextColor3,tb3.Font,tb3.TextSize=UDim2.new(1,-16,0,32),UDim2.new(0,8,0,140),Color3.fromRGB(16,16,18),"👑 Важные",Color3.fromRGB(150,150,155),Enum.Font.GothamMedium,11
Instance.new("UICorner",tb3).CornerRadius=UDim.new(0,6)
local tb4=Instance.new("TextButton",sb) tb4.Size,tb4.Position,tb4.BackgroundColor3,tb4.Text,tb4.TextColor3,tb4.Font,tb4.TextSize=UDim2.new(1,-16,0,32),UDim2.new(0,8,0,180),Color3.fromRGB(16,16,18),"📁 Конфиг",Color3.fromRGB(150,150,155),Enum.Font.GothamMedium,11
Instance.new("UICorner",tb4).CornerRadius=UDim.new(0,6)

-- ==========================================
-- ЧАСТЬ 2 ИЗ 9: СТРАНИЦЫ И НАВИГАЦИЯ
-- ==========================================

local co1=Instance.new("ScrollingFrame",mf) co1.Size,co1.Position,co1.BackgroundTransparency,co1.Visible,co1.CanvasSize,co1.ScrollBarThickness=UDim2.new(1,-145,1,-20),UDim2.new(0,145,0,15),1,true,UDim2.new(0,0,0,300),0
local co2=Instance.new("ScrollingFrame",mf) co2.Size,co2.Position,co2.BackgroundTransparency,co2.Visible,co2.CanvasSize,co2.ScrollBarThickness=UDim2.new(1,-145,1,-20),UDim2.new(0,145,0,15),1,false,UDim2.new(0,0,0,300),0
local co4=Instance.new("ScrollingFrame",mf) co4.Size,co4.Position,co4.BackgroundTransparency,co4.Visible,co4.CanvasSize,co4.ScrollBarThickness=UDim2.new(1,-145,1,-20),UDim2.new(0,145,0,15),1,false,UDim2.new(0,0,0,300),0

local co3_1=Instance.new("ScrollingFrame",mf) co3_1.Size,co3_1.Position,co3_1.BackgroundTransparency,co3_1.Visible,co3_1.CanvasSize,co3_1.ScrollBarThickness=UDim2.new(1,-145,1,-55),UDim2.new(0,145,0,50),1,false,UDim2.new(0,0,0,300),0
local co3_2=Instance.new("ScrollingFrame",mf) co3_2.Size,co3_2.Position,co3_2.BackgroundTransparency,co3_2.Visible,co3_2.CanvasSize,co3_2.ScrollBarThickness=UDim2.new(1,-145,1,-55),UDim2.new(0,145,0,50),1,false,UDim2.new(0,0,0,300),0
local subNav=Instance.new("Frame",mf) subNav.Size,subNav.Position,subNav.BackgroundTransparency,subNav.Visible=UDim2.new(1,-145,0,30),UDim2.new(0,145,0,15),1,false

local subBtn1=Instance.new("TextButton",subNav) subBtn1.Size,subBtn1.Position,subBtn1.BackgroundColor3,subBtn1.Text,subBtn1.TextColor3,subBtn1.Font,subBtn1.TextSize=UDim2.new(0,125,1,0),UDim2.new(0,0,0,0),Color3.fromRGB(24,24,27),"Корблокс",Color3.fromRGB(245,245,245),Enum.Font.GothamBold,11
Instance.new("UICorner",subBtn1).CornerRadius=UDim.new(0,6)
local subBtn2=Instance.new("TextButton",subNav) subBtn2.Size,subBtn2.Position,subBtn2.BackgroundColor3,subBtn2.Text,subBtn2.TextColor3,subBtn2.Font,subBtn2.TextSize=UDim2.new(0,125,1,0),UDim2.new(0,135,0,0),Color3.fromRGB(16,16,18),"Хедлесс + Рога",Color3.fromRGB(150,150,155),Enum.Font.GothamBold,11
Instance.new("UICorner",subBtn2).CornerRadius=UDim.new(0,6)

local ll1=Instance.new("UIListLayout",co1) ll1.Padding,ll1.SortOrder=UDim.new(0,10),0
local ll2=Instance.new("UIListLayout",co2) ll2.Padding,ll2.SortOrder=UDim.new(0,10),0
local ll3_1=Instance.new("UIListLayout",co3_1) ll3_1.Padding,ll3_1.SortOrder=UDim.new(0,10),0
local ll3_2=Instance.new("UIListLayout",co3_2) ll3_2.Padding,ll3_2.SortOrder=UDim.new(0,10),0
local ll4=Instance.new("UIListLayout",co4) ll4.Padding,ll4.SortOrder=UDim.new(0,10),0

local function resetMainButtons()
    tb1.BackgroundColor3,tb1.TextColor3=Color3.fromRGB(16,16,18),Color3.fromRGB(150,150,155)
    tb2.BackgroundColor3,tb2.TextColor3=Color3.fromRGB(16,16,18),Color3.fromRGB(150,150,155)
    tb3.BackgroundColor3,tb3.TextColor3=Color3.fromRGB(16,16,18),Color3.fromRGB(150,150,155)
    tb4.BackgroundColor3,tb4.TextColor3=Color3.fromRGB(16,16,18),Color3.fromRGB(150,150,155)
    co1.Visible,co2.Visible,co3_1.Visible,co3_2.Visible,co4.Visible,subNav.Visible=false,false,false,false,false,false,false
end

tb1.MouseButton1Click:Connect(function() resetMainButtons() co1.Visible=true tb1.BackgroundColor3,tb1.TextColor3=Color3.fromRGB(24,24,27),Color3.fromRGB(245,245,245) end)
tb2.MouseButton1Click:Connect(function() resetMainButtons() co2.Visible=true tb2.BackgroundColor3,tb2.TextColor3=Color3.fromRGB(24,24,27),Color3.fromRGB(245,245,245) end)
tb4.MouseButton1Click:Connect(function() resetMainButtons() co4.Visible=true tb4.BackgroundColor3,tb4.TextColor3=Color3.fromRGB(24,24,27),Color3.fromRGB(245,245,245) end)
tb3.MouseButton1Click:Connect(function() resetMainButtons() subNav.Visible,co3_1.Visible=true,true tb3.BackgroundColor3,tb3.TextColor3=Color3.fromRGB(24,24,27),Color3.fromRGB(245,245,245) subBtn1.BackgroundColor3,subBtn1.TextColor3=Color3.fromRGB(24,24,27),Color3.fromRGB(245,245,245) subBtn2.BackgroundColor3,subBtn2.TextColor3=Color3.fromRGB(16,16,18),Color3.fromRGB(150,150,155) end)

subBtn1.MouseButton1Click:Connect(function() co3_1.Visible,co3_2.Visible=true,false subBtn1.BackgroundColor3,subBtn1.TextColor3=Color3.fromRGB(24,24,27),Color3.fromRGB(245,245,245) subBtn2.BackgroundColor3,subBtn2.TextColor3=Color3.fromRGB(16,16,18),Color3.fromRGB(150,150,155) end)
subBtn2.MouseButton1Click:Connect(function() co3_1.Visible,co3_2.Visible=false,true subBtn1.BackgroundColor3,subBtn1.TextColor3=Color3.fromRGB(16,16,18),Color3.fromRGB(150,150,155) subBtn2.BackgroundColor3,subBtn2.TextColor3=Color3.fromRGB(24,24,27),Color3.fromRGB(245,245,245) end)
-- ==========================================
-- ЧАСТЬ 3 ИЗ 9: СОЗДАНИЕ ПАНЕЛЕЙ И КНОПОК
-- ==========================================

local function createTab(parent,title,descText) 
    local fr=Instance.new("Frame",parent) fr.Size,fr.BackgroundColor3=UDim2.new(0,260,0,65),Color3.fromRGB(20,20,23) 
    Instance.new("UICorner",fr).CornerRadius=UDim.new(0,8) Instance.new("UIStroke",fr).Color=Color3.fromRGB(35,35,40) 
    local lbl=Instance.new("TextLabel",fr) lbl.Size,lbl.Position,lbl.Text,lbl.TextColor3,lbl.Font,lbl.TextSize,lbl.TextXAlignment,lbl.BackgroundTransparency=UDim2.new(1,-12,0,25),UDim2.new(0,12,0,5),title,Color3.fromRGB(110,110,115),Enum.Font.GothamBold,9,0,1 
    if descText~="" then 
        local t=Instance.new("TextLabel",fr) t.Size,t.Position,t.Text,t.TextColor3,t.Font,t.TextSize,t.TextXAlignment,t.BackgroundTransparency=UDim2.new(0,180,0,30),UDim2.new(0,12,0,30),descText,Color3.fromRGB(220,220,225),Enum.Font.GothamMedium,11,0,1 
    end 
    return fr 
end 

local bSnowFrame=createTab(co1,"МЯГКИЙ СНЕГ","Падающий снег") 
local bSnow=Instance.new("TextButton",bSnowFrame) bSnow.Size,bSnow.Position,bSnow.BackgroundColor3,bSnow.Text,bSnow.TextColor3,bSnow.Font,bSnow.TextSize=UDim2.new(0,45,0,22),UDim2.new(1,-55,0,30),Color3.fromRGB(60,20,25),"ВЫКЛ",Color3.fromRGB(200,150,150),Enum.Font.GothamMedium,10 
Instance.new("UICorner",bSnow).CornerRadius=UDim.new(0,6) Instance.new("UIStroke",bSnow).Color=Color3.fromRGB(80,30,35) 

local bAura=createTab(co1,"ЧЕРНОЕ ПЛАМЯ","Темная аура") 
local bAuraBtn=Instance.new("TextButton",bAura) bAuraBtn.Size,bAuraBtn.Position,bAuraBtn.BackgroundColor3,bAuraBtn.Text,bAuraBtn.TextColor3,bAuraBtn.Font,bAuraBtn.TextSize=UDim2.new(0,45,0,22),UDim2.new(1,-55,0,30),Color3.fromRGB(60,20,25),"ВЫКЛ",Color3.fromRGB(200,150,150),Enum.Font.GothamMedium,10 
Instance.new("UICorner",bAuraBtn).CornerRadius=UDim.new(0,6) Instance.new("UIStroke",bAuraBtn).Color=Color3.fromRGB(80,30,35) 

local bJump=createTab(co1,"ТЕНЕВОЙ ПРЫЖОК","Тёмные кольца") 
local bJumpBtn=Instance.new("TextButton",bJump) bJumpBtn.Size,bJumpBtn.Position,bJumpBtn.BackgroundColor3,bJumpBtn.Text,bJumpBtn.TextColor3,bJumpBtn.Font,bJumpBtn.TextSize=UDim2.new(0,45,0,22),UDim2.new(1,-55,0,30),Color3.fromRGB(60,20,25),"ВЫКЛ",Color3.fromRGB(200,150,150),Enum.Font.GothamMedium,10 
Instance.new("UICorner",bJumpBtn).CornerRadius=UDim.new(0,6) Instance.new("UIStroke",bJumpBtn).Color=Color3.fromRGB(80,30,35) 

local function createSlider(parent,title,minV,maxV,defV) 
    local f=createTab(parent,title,"") local sBg=Instance.new("Frame",f) sBg.Size,sBg.Position,sBg.BackgroundColor3=UDim2.new(0,130,0,6),UDim2.new(0,22,0,38),Color3.fromRGB(40,40,45) Instance.new("UICorner",sBg) 
    local miL=Instance.new("TextLabel",f) miL.Size,miL.Position,miL.Text=UDim2.new(0,10,0,10),UDim2.new(0,10,0,36),tostring(minV) miL.TextColor3,miL.Font,miL.TextSize,miL.BackgroundTransparency=Color3.fromRGB(100,100,105),Enum.Font.GothamMedium,9,1 
    local maL=Instance.new("TextLabel",f) maL.Size,maL.Position,maL.Text=UDim2.new(0,20,0,10),UDim2.new(0,154,0,36),tostring(maxV) maL.TextColor3,maL.Font,maL.TextSize,maL.BackgroundTransparency=Color3.fromRGB(100,100,105),Enum.Font.GothamMedium,9,1 
    local sFil=Instance.new("Frame",sBg) sFil.BackgroundColor3=Color3.fromRGB(40,240,150) Instance.new("UICorner",sFil) 
    local sBtn=Instance.new("TextButton",sBg) sBtn.Size,sBtn.BackgroundColor3,sBtn.Text=UDim2.new(0,12,0,12),Color3.fromRGB(255,255,255),"" Instance.new("UICorner",sBtn).CornerRadius=UDim.new(1,0) 
    local num=Instance.new("TextLabel",f) num.Size,num.Position,num.Text=UDim2.new(0,35,0,22),UDim2.new(1,-95,0,30),tostring(defV) num.TextColor3,num.Font,num.TextSize,num.BackgroundColor3=Color3.fromRGB(245,245,245),Enum.Font.GothamBold,11,Color3.fromRGB(30,30,35) Instance.new("UICorner",num).CornerRadius=UDim.new(0,6) Instance.new("UIStroke",num).Color=Color3.fromRGB(50,50,55) 
    local startP=math.clamp((defV-minV)/(maxV-minV),0,1) sBtn.Position=UDim2.new(startP,-6,0.5,-6) sFil.Size=UDim2.new(startP,0,1,0) return sBg,sFil,sBtn,num 
end 

local sBgF,sFilF,sBtnF,numF=createSlider(co2,"КАСТОМНЫЙ FOV",1,130,70) 
local sBgS,sFilS,sBtnS,numS=createSlider(co2,"ПОЛЕТ (FLY SPEED)",1,15,1) 

local bFovOffFrame=sBgF.Parent 
local bOff=Instance.new("TextButton",bFovOffFrame) bOff.Size,bOff.Position,bOff.BackgroundColor3,bOff.Text,bOff.TextColor3,bOff.Font,bOff.TextSize=UDim2.new(0,45,0,22),UDim2.new(1,-55,0,30),Color3.fromRGB(40,240,150),"ON",Color3.fromRGB(15,15,18),Enum.Font.GothamMedium,10 
Instance.new("UICorner",bOff).CornerRadius=UDim.new(0,6) Instance.new("UIStroke",bOff).Color=Color3.fromRGB(50,255,160) 

local bFlyFrame=sBgS.Parent 
local bFlyToggle=Instance.new("TextButton",bFlyFrame) bFlyToggle.Size,bFlyToggle.Position,bFlyToggle.BackgroundColor3,bFlyToggle.Text,bFlyToggle.TextColor3,bFlyToggle.Font,bFlyToggle.TextSize=UDim2.new(0,45,0,22),UDim2.new(1,-55,0,30),Color3.fromRGB(60,20,25),"ВЫКЛ",Color3.fromRGB(200,150,150),Enum.Font.GothamMedium,10 
Instance.new("UICorner",bFlyToggle).CornerRadius=UDim.new(0,6) Instance.new("UIStroke",bFlyToggle).Color=Color3.fromRGB(80,30,35) 

local bCNcFrame=createTab(co2,"СКВОЗЬ СТЕНЫ (NOCLIP)","Проход сквозь объекты") 
local bNcToggle=Instance.new("TextButton",bCNcFrame) bNcToggle.Size,bNcToggle.Position,bNcToggle.BackgroundColor3,bNcToggle.Text,bNcToggle.TextColor3,bNcToggle.Font,bNcToggle.TextSize=UDim2.new(0,45,0,22),UDim2.new(1,-55,0,30),Color3.fromRGB(60,20,25),"ВЫКЛ",Color3.fromRGB(200,150,150),Enum.Font.GothamMedium,10 
Instance.new("UICorner",bNcToggle).CornerRadius=UDim.new(0,6) Instance.new("UIStroke",bNcToggle).Color=Color3.fromRGB(80,30,35) 

local bKorbloxFrame=createTab(co3_1,"KORBLOX LEG","Визуальная нога") 
local bKorbloxBtn=Instance.new("TextButton",bKorbloxFrame) bKorbloxBtn.Size,bKorbloxBtn.Position,bKorbloxBtn.BackgroundColor3,bKorbloxBtn.Text,bKorbloxBtn.TextColor3,bKorbloxBtn.Font,bKorbloxBtn.TextSize=UDim2.new(0,45,0,22),UDim2.new(1,-55,0,30),Color3.fromRGB(60,20,25),"ВЫКЛ",Color3.fromRGB(200,150,150),Enum.Font.GothamMedium,10 
Instance.new("UICorner",bKorbloxBtn).CornerRadius=UDim.new(0,6) Instance.new("UIStroke",bKorbloxBtn).Color=Color3.fromRGB(80,30,35) 

local bHeadlessFrame=createTab(co3_2,"ХЕДЛЕСС + РОГА","Голова с рогами") 
local bHeadlessBtn=Instance.new("TextButton",bHeadlessFrame) bHeadlessBtn.Size,bHeadlessBtn.Position,bHeadlessBtn.BackgroundColor3,bHeadlessBtn.Text,bHeadlessBtn.TextColor3,bHeadlessBtn.Font,bHeadlessBtn.TextSize=UDim2.new(0,45,0,22),UDim2.new(1,-55,0,30),Color3.fromRGB(60,20,25),"ВЫКЛ",Color3.fromRGB(200,150,150),Enum.Font.GothamMedium,10 
Instance.new("UICorner",bHeadlessBtn).CornerRadius=UDim.new(0,6) Instance.new("UIStroke",bHeadlessBtn).Color=Color3.fromRGB(80,30,35) 

local bOnlyHeadlessFrame=createTab(co3_2,"ПРОСТО ХЕДЛЕСС","Только невидимость") 
local bOnlyHeadlessBtn=Instance.new("TextButton",bOnlyHeadlessFrame) bOnlyHeadlessBtn.Size,bOnlyHeadlessBtn.Position,bOnlyHeadlessBtn.BackgroundColor3,bOnlyHeadlessBtn.Text,bOnlyHeadlessBtn.TextColor3,bOnlyHeadlessBtn.Font,bOnlyHeadlessBtn.TextSize=UDim2.new(0,45,0,22),UDim2.new(1,-55,0,30),Color3.fromRGB(60,20,25),"ВЫКЛ",Color3.fromRGB(200,150,150),Enum.Font.GothamMedium,10 
Instance.new("UICorner",bOnlyHeadlessBtn).CornerRadius=UDim.new(0,6) Instance.new("UIStroke",bOnlyHeadlessBtn).Color=Color3.fromRGB(80,30,35) 

local open=Instance.new("TextButton",sg) open.Size,open.Position,open.BackgroundColor3,open.TextColor3,open.Font,open.TextSize,open.Text=UDim2.new(0,75,0,35),UDim2.new(0.05,0,0.15,0),Color3.fromRGB(24,24,27),Color3.fromRGB(240,240,245),Enum.Font.GothamBold,12,"[ Меню ]" 
Instance.new("UICorner",open).CornerRadius=UDim.new(0,8) local ops=Instance.new("UIStroke",open) ops.Thickness,ops.Color=1,Color3.fromRGB(50,50,55) 

local mo=true open.MouseButton1Click:Connect(function() mo=not mo mf.Visible=mo if mo then tw:Create(mf,TweenInfo.new(0.3),{Size=UDim2.new(0,430,0,260)}):Play() end end) 
local uis=game:GetService("UserInputService") 

local function drag(f) 
    local dragging, dragInput, dragStart, startPos
    f.InputBegan:Connect(function(i) 
        if i.UserInputType == Enum.UserInputType.MouseButton1 or i.UserInputType == Enum.UserInputType.Touch then 
            dragging, dragStart, startPos = true, i.Position, f.Position 
            i.Changed:Connect(function() 
                if i.UserInputState == Enum.UserInputState.End then dragging = false end 
            end) 
        end 
    end) 
    f.InputChanged:Connect(function(i) 
        if i.UserInputType == Enum.UserInputType.MouseMovement or i.UserInputType == Enum.UserInputType.Touch then dragInput = i end 
    end) 
    uis.InputChanged:Connect(function(i) 
        if i == dragInput and dragging then 
            local delta = i.Position - dragStart 
            f.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y) 
        end 
    end) 
end 
drag(mf) drag(open)
-- ==========================================
-- ЧАСТЬ 4 ИЗ 9: СЛАЙДЕРЫ И КАМЕРА
-- ==========================================

local function setupSlider(sBg,sFil,sBtn,num,minV,maxV,defV,callback) 
    local dragS=false 
    local function updateS(input) 
        local pct=math.clamp((input.Position.X-sBg.AbsolutePosition.X)/sBg.AbsoluteSize.X,0,1) 
        sBtn.Position=UDim2.new(pct,-6,0.5,-6) sFil.Size=UDim2.new(pct,0,1,0) 
        local val=math.floor(minV+(pct*(maxV-minV))) num.Text=tostring(val) callback(val) 
    end 
    sBtn.InputBegan:Connect(function(i) if i.UserInputType==Enum.UserInputType.MouseButton1 or i.UserInputType==Enum.UserInputType.Touch then dragS=true end end) 
    uis.InputChanged:Connect(function(i) if dragS and (i.UserInputType==Enum.UserInputType.MouseMovement or i.UserInputType==Enum.UserInputType.Touch) then updateS(i) end end) 
    uis.InputEnded:Connect(function(i) if i.UserInputType==Enum.UserInputType.MouseButton1 or i.UserInputType==Enum.UserInputType.Touch then dragS=false end end) 
end 

setupSlider(sBgF,sFilF,sBtnF,numF,1,130,70,function(v) if bOff.Text=="ON" then workspace.CurrentCamera.FieldOfView=v end end) 
local flySpeed=1 setupSlider(sBgS,sFilS,sBtnS,numS,1,15,1,function(v) flySpeed=v end) 

bOff.MouseButton1Click:Connect(function() 
    if bOff.Text=="ON" then 
        bOff.Text,bOff.BackgroundColor3,bOff.TextColor3="OFF",Color3.fromRGB(60,20,25),Color3.fromRGB(200,150,150) bOff.UIStroke.Color=Color3.fromRGB(80,30,35) 
        workspace.CurrentCamera.FieldOfView=70 numF.Text="70" sBtnF.Position=UDim2.new(0.53,-6,0.5,-6) sFilF.Size=UDim2.new(0.53,0,1,0) 
    else 
        bOff.Text,bOff.BackgroundColor3,bOff.TextColor3="ON",Color3.fromRGB(40,240,150),Color3.fromRGB(15,15,18) bOff.UIStroke.Color=Color3.fromRGB(50,255,160) 
        workspace.CurrentCamera.FieldOfView=tonumber(numF.Text) or 70 
    end 
end) 
-- ==========================================
-- ЧАСТЬ 5 ИЗ 9: СИСТЕМА ПОЛЕТА И NOCLIP
-- ==========================================

local flying,noclip=false,false local bv,bgG=nil,nil 
local flyBtn=Instance.new("TextButton",sg) flyBtn.Size,flyBtn.Position,flyBtn.BackgroundColor3,flyBtn.TextColor3,flyBtn.Font,flyBtn.TextSize,flyBtn.Text,flyBtn.Visible=UDim2.new(0,90,0,45),UDim2.new(0.75,0,0.5,0),Color3.fromRGB(60,20,25),Color3.fromRGB(200,150,150),Enum.Font.GothamBold,14,"ЛЕЖАТЬ",false 
Instance.new("UICorner",flyBtn).CornerRadius=UDim.new(0,8) local fbs=Instance.new("UIStroke",flyBtn) fbs.Thickness,fbs.Color=1,Color3.fromRGB(80,30,35) 

flyBtn.MouseButton1Click:Connect(function() 
    if not p.Character or not p.Character:FindFirstChild("HumanoidRootPart") then return end flying=not flying 
    if flying then 
        flyBtn.BackgroundColor3,flyBtn.TextColor3,flyBtn.UIStroke.Color=Color3.fromRGB(40,240,150),Color3.fromRGB(15,15,18),Color3.fromRGB(50,255,160) 
        local r=p.Character.HumanoidRootPart bv=Instance.new("BodyVelocity",r) bv.MaxForce=Vector3.new(1e5,1e5,1e5) bv.Velocity=Vector3.new(0,0,0) 
        bgG=Instance.new("BodyGyro",r) bgG.MaxTorque=Vector3.new(1e5,1e5,1e5) bgG.CFrame=r.CFrame 
    else 
        flyBtn.BackgroundColor3,flyBtn.TextColor3,flyBtn.UIStroke.Color=Color3.fromRGB(60,20,25),Color3.fromRGB(200,150,150),Color3.fromRGB(80,30,35) 
        if bv then bv:Destroy() bv=nil end if bgG then bgG:Destroy() bgG=nil end 
        local h=p.Character and p.Character:FindFirstChild("Humanoid") if h then h.PlatformStand=false end 
    end 
end) 

bFlyToggle.MouseButton1Click:Connect(function() 
    local active=not flyBtn.Visible flyBtn.Visible=active 
    if active then bFlyToggle.Text,bFlyToggle.BackgroundColor3,bFlyToggle.TextColor3="ВКЛ",Color3.fromRGB(40,240,150),Color3.fromRGB(15,15,18) bFlyToggle.UIStroke.Color=Color3.fromRGB(50,255,160) 
    else 
        bFlyToggle.Text,bFlyToggle.BackgroundColor3,bFlyToggle.TextColor3="ВЫКЛ",Color3.fromRGB(60,20,25),Color3.fromRGB(200,150,150) bFlyToggle.UIStroke.Color=Color3.fromRGB(80,30,35) flying=false 
        flyBtn.BackgroundColor3,flyBtn.TextColor3,flyBtn.UIStroke.Color=Color3.fromRGB(60,20,25),Color3.fromRGB(200,150,150),Color3.fromRGB(80,30,35) 
        if bv then bv:Destroy() bv=nil end if bgG then bgG:Destroy() bgG=nil end 
        local h=p.Character and p.Character:FindFirstChild("Humanoid") if h then h.PlatformStand=false end 
    end 
end) 

bNcToggle.MouseButton1Click:Connect(function() noclip=not noclip if noclip then bNcToggle.Text,bNcToggle.BackgroundColor3,bNcToggle.TextColor3="ВКЛ",Color3.fromRGB(40,240,150),Color3.fromRGB(15,15,18) bNcToggle.UIStroke.Color=Color3.fromRGB(50,255,160) else bNcToggle.Text,bNcToggle.BackgroundColor3,bNcToggle.TextColor3="ВЫКЛ",Color3.fromRGB(60,20,25),Color3.fromRGB(200,150,150) bNcToggle.UIStroke.Color=Color3.fromRGB(80,30,35) end end) 

run.Heartbeat:Connect(function() 
    if noclip and p.Character then for _,v in pairs(p.Character:GetChildren()) do if v:IsA("BasePart") then v.CanCollide=false end end end 
    if flying and p.Character and p.Character:FindFirstChild("HumanoidRootPart") and p.Character:FindFirstChild("Humanoid") and bv and bgG then 
        local r,h,cam=p.Character.HumanoidRootPart,p.Character.Humanoid,workspace.CurrentCamera r.AssemblyLinearVelocity,r.AssemblyAngularVelocity=Vector3.new(0,0,0),Vector3.new(0,0,0) 
        bgG.CFrame=cam.CFrame h.PlatformStand=true bv.Velocity=cam.CFrame.LookVector*(flySpeed*25) 
    else 
        if bv then bv:Destroy() bv=nil end if bgG then bgG:Destroy() bgG=nil end 
        local h=p.Character and p.Character:FindFirstChild("Humanoid") if h and h.PlatformStand then h.PlatformStand=false end 
    end 
end)
-- ==========================================
-- ЧАСТЬ 6 ИЗ 9: ВИЗУАЛЬНЫЕ ЭФФЕКТЫ
-- ==========================================

local isa,snowFolder=false,workspace:FindFirstChild("SnowFX") or Instance.new("Folder",workspace) snowFolder.Name="SnowFX" 
bSnow.MouseButton1Click:Connect(function() isa=not isa if isa then bSnow.Text,bSnow.BackgroundColor3,bSnow.TextColor3="ВКЛ",Color3.fromRGB(40,240,150),Color3.fromRGB(15,15,18) bSnow.UIStroke.Color=Color3.fromRGB(50,255,160) else bSnow.Text,bSnow.BackgroundColor3,bSnow.TextColor3="ВЫКЛ",Color3.fromRGB(60,20,25),Color3.fromRGB(200,150,150) bSnow.UIStroke.Color=Color3.fromRGB(80,30,35) snowFolder:ClearAllChildren() end end) 

run.RenderStepped:Connect(function() 
    if isa and p.Character and p.Character:FindFirstChild("HumanoidRootPart") then 
        local root=p.Character.HumanoidRootPart 
        if math.random()<0.75 then 
            local pSnow=Instance.new("Part",snowFolder) 
            pSnow.Shape,pSnow.Size,pSnow.Material,pSnow.Color,pSnow.CanCollide,pSnow.Anchored=Enum.PartType.Ball,Vector3.new(0.6,0.6,0.6),Enum.Material.Neon,Color3.fromRGB(255,255,255),false,false 
            pSnow.Position=root.Position+Vector3.new(math.random(-70,70),math.random(20,35),math.random(-70,70)) 
            local bp=Instance.new("BodyVelocity",pSnow) bp.MaxForce,bp.Velocity=Vector3.new(1e5,1e5,1e5),Vector3.new(0,math.random(-45,-30),0) game:GetService("Debris"):AddItem(pSnow,4) 
        end 
    end 
end) 

local ia=false 
local function af() 
    local c=p.Character local t=c and (c:FindFirstChild("Torso") or c:FindFirstChild("UpperTorso")) 
    for _,v in pairs(game:GetService("Lighting"):GetChildren()) do if v.Name == "AngelLittleAtmosphere" then v:Destroy() end end
    if t then 
        for _,v in pairs(c:GetDescendants()) do if v.Name=="AngelAuraOnly" or v.Name=="AngelSparksOnly" then v:Destroy() end end 
        if ia then 
            local fAura=Instance.new("Fire",t) fAura.Name,fAura.Color,fAura.SecondaryColor,fAura.Size,fAura.Heat="AngelAuraOnly",Color3.fromRGB(5,0,10),Color3.fromRGB(20,10,35),5.5,9 
            local s=Instance.new("ParticleEmitter",t) s.Name,s.Texture,s.Color,s.LightEmission="AngelSparksOnly","rbxassetid://6100115049",ColorSequence.new(Color3.fromRGB(140,60,255)),0.9 s.Size,s.Lifetime,s.Rate,s.Speed,s.SpreadAngle=NumberSequence.new({NumberSequenceKeypoint.new(0,0.3),NumberSequenceKeypoint.new(1,0)}),NumberRange.new(0.6,1.2),35,NumberRange.new(3,7),Vector2.new(45,45) 
            
            local atm = Instance.new("Atmosphere", game:GetService("Lighting"))
            atm.Name, atm.Density, atm.Color, atm.Glare = "AngelLittleAtmosphere", 0.15, Color3.fromRGB(20,20,25), 0.1
        end 
    end 
end 
bAuraBtn.MouseButton1Click:Connect(function() ia=not ia if ia then bAuraBtn.Text,bAuraBtn.BackgroundColor3,bAuraBtn.TextColor3="ВКЛ",Color3.fromRGB(40,240,150),Color3.fromRGB(15,15,18) bAuraBtn.UIStroke.Color=Color3.fromRGB(50,255,160) else bAuraBtn.Text,bAuraBtn.BackgroundColor3,bAuraBtn.TextColor3="ВЫКЛ",Color3.fromRGB(60,20,25),Color3.fromRGB(200,150,150) bAuraBtn.UIStroke.Color=Color3.fromRGB(80,30,35) end af() end)

local rAct,wasAir,fF=false,false,workspace:FindFirstChild("FixFX") or Instance.new("Folder",workspace) fF.Name="FixFX"
local function makeRing(sz,tSz,sp) 
    local r=p.Character and p.Character:FindFirstChild("HumanoidRootPart") if not r then return end 
    local d=Instance.new("Part",fF) d.Shape,d.Size,d.Material,d.Color,d.CanCollide,d.Anchored=Enum.PartType.Cylinder,sz,Enum.Material.Neon,Color3.fromRGB(15,5,30),false,true d.CFrame=r.CFrame*CFrame.new(0,-2.8,0)*CFrame.Angles(0,0,math.rad(90)) 
    
    local pE = Instance.new("ParticleEmitter", d) pE.Texture,pE.Rate,pE.Speed,pE.Lifetime="rbxassetid://6100115049",30,NumberRange.new(3,10),NumberRange.new(0.3,0.5)
    pE.Color = ColorSequence.new(Color3.fromRGB(30,10,50)) pE.Size = NumberSequence.new(1.0,0)
    
    tw:Create(d,TweenInfo.new(sp),{Size=tSz,Transparency=1}):Play() game:GetService("Debris"):AddItem(d,sp) 
end 
bJumpBtn.MouseButton1Click:Connect(function() rAct=not rAct if rAct then bJumpBtn.Text,bJumpBtn.BackgroundColor3,bJumpBtn.UIStroke.Color="ВКЛ",Color3.fromRGB(40,240,150),Color3.fromRGB(50,255,160) bJumpBtn.TextColor3=Color3.fromRGB(15,15,18) else bJumpBtn.Text,bJumpBtn.BackgroundColor3,bJumpBtn.UIStroke.Color="ВЫКЛ",Color3.fromRGB(60,20,25),Color3.fromRGB(80,30,35) bJumpBtn.TextColor3=Color3.fromRGB(200,150,155) end end) 
run.Heartbeat:Connect(function() local h=p.Character and p.Character:FindFirstChild("Humanoid") if h and rAct then local air=h.FloorMaterial==Enum.Material.Air if air and not wasAir then makeRing(Vector3.new(0.1,1.5,1.5),Vector3.new(0.01,7,7),0.25) makeRing(Vector3.new(0.05,1,1),Vector3.new(0.01,11,11),0.3) end wasAir=air end end) 
-- ==========================================
-- ЧАСТЬ 7 ИЗ 9: ЛОКАЛЬНЫЙ КОРБЛОКС
-- ==========================================

_G.korbloxActive = _G.korbloxActive or false
_G.headlessActive = _G.headlessActive or false
_G.onlyHeadlessActive = _G.onlyHeadlessActive or false

local originalLegData = {} 
local KORBLOX_MESH_ID, KORBLOX_TEXTURE_ID, DARK_GREY_COLOR = "rbxassetid://101851696", "rbxassetid://101851254", Color3.fromRGB(64,64,64)

local function applyKorbloxLocal()
    local char = p.Character if not char then return end 
    local hum = char:FindFirstChildOfClass("Humanoid") if not hum then return end
    if hum.RigType == Enum.HumanoidRigType.R15 then
        local rf, rl, ru = char:FindFirstChild("RightFoot"), char:FindFirstChild("RightLowerLeg"), char:FindFirstChild("RightUpperLeg")
        if ru and rl and rf then
            if not originalLegData["R15"] then 
                originalLegData["R15"] = {
                    ru_MeshId = ru.MeshId, ru_TextureID = ru.TextureID, ru_Color = ru.Color,
                    ru_Transparency = ru.Transparency, rl_Transparency = rl.Transparency, rf_Transparency = rf.Transparency
                } 
            end
            rf.Transparency, rl.Transparency = 1, 1
            ru.MeshId, ru.TextureID, ru.Color, ru.Transparency = "rbxassetid://902942096", "rbxassetid://902843398", Color3.new(1,1,1), 0
        end
    else
        local rightLeg = char:FindFirstChild("Right Leg")
        if rightLeg and rightLeg:IsA("BasePart") then
            if not originalLegData["R6_Color"] then
                originalLegData["R6_Color"] = rightLeg.Color
                local existingMesh = rightLeg:FindFirstChildOfClass("SpecialMesh")
                originalLegData["R6_Mesh"] = existingMesh and existingMesh:Clone() or nil
            end
            for _,v in ipairs(char:GetChildren()) do
                if v:IsA("CharacterMesh") and v.BodyPart == Enum.BodyPart.RightLeg then v:Destroy() end
            end
            local mesh = rightLeg:FindFirstChildOfClass("SpecialMesh") or Instance.new("SpecialMesh", rightLeg)
            rightLeg.Color, rightLeg.Transparency = DARK_GREY_COLOR, 0
            mesh.MeshType = Enum.MeshType.FileMesh mesh.MeshId, mesh.TextureId = KORBLOX_MESH_ID, KORBLOX_TEXTURE_ID mesh.Scale = Vector3.new(1,1,1)
        end
    end
end

local function removeKorbloxLocal()
    local char = p.Character if not char then return end 
    local hum = char:FindFirstChildOfClass("Humanoid") if not hum then return end
    if hum.RigType == Enum.HumanoidRigType.R15 then
        local rf, rl, ru = char:FindFirstChild("RightFoot"), char:FindFirstChild("RightLowerLeg"), char:FindFirstChild("RightUpperLeg")
        local d = originalLegData["R15"]
        if d and ru and rl and rf then
            ru.MeshId, ru.TextureID, ru.Color, ru.Transparency = d.ru_MeshId, d.ru_TextureID, d.ru_Color, d.ru_Transparency
            rl.Transparency, rf.Transparency = d.rl_Transparency, d.rf_Transparency
            originalLegData["R15"] = nil
        end
    else
        local rightLeg = char:FindFirstChild("Right Leg")
        if rightLeg then
            local mesh = rightLeg:FindFirstChildOfClass("SpecialMesh") if mesh then mesh:Destroy() end
            if originalLegData["R6_Mesh"] then originalLegData["R6_Mesh"]:Clone().Parent = rightLeg end
            if originalLegData["R6_Color"] then rightLeg.Color = originalLegData["R6_Color"] end
            originalLegData["R6_Color"], originalLegData["R6_Mesh"] = nil, nil
        end
    end
end

bKorbloxBtn.MouseButton1Click:Connect(function()
    _G.korbloxActive = not _G.korbloxActive
    if _G.korbloxActive then bKorbloxBtn.Text, bKorbloxBtn.BackgroundColor3, bKorbloxBtn.TextColor3 = "ВКЛ", Color3.fromRGB(40,240,150), Color3.fromRGB(15,15,18) bKorbloxBtn.UIStroke.Color = Color3.fromRGB(50,255,160) applyKorbloxLocal()
    else bKorbloxBtn.Text, bKorbloxBtn.BackgroundColor3, bKorbloxBtn.TextColor3 = "ВЫКЛ", Color3.fromRGB(60,20,25), Color3.fromRGB(200,150,150) bKorbloxBtn.UIStroke.Color = Color3.fromRGB(80,30,35) removeKorbloxLocal() end
end)

task.spawn(function() while true do if _G.korbloxActive and p.Character then applyKorbloxLocal() end task.wait(0.5) end end)
-- ==========================================
-- ЧАСТЬ 8 ИЗ 9: ХЕДЛЕСС И ОБРАБОТЧИК СПАВНА
-- ==========================================

local activeAccessories = {} local headlessConnection = nil local headIds = {215718515, 74891470, 1744060292}

local function weldParts(part0, part1, c0, c1)
    for _, child in pairs(part1:GetChildren()) do if child:IsA("Weld") or child:IsA("WeldConstraint") or child.Name == "AccessoryWeld" then child:Destroy() end end
    local weld = Instance.new("Weld") weld.Name, weld.Part0, weld.Part1, weld.C0, weld.C1, weld.Parent = "AccessoryWeld", part0, part1, c0, c1, part0 return weld
end

local function safeGetObjects(assetId)
    local success, result = pcall(function() return game:GetObjects("rbxassetid://" .. tostring(assetId)) end)
    if success and result and #result > 0 then return result end return nil
end

local function addAccessoryToCharacter(accessoryId, parentPart, character)
    if not parentPart or not parentPart.Parent then return end 
    local accessoryKey = tostring(accessoryId) .. "_" .. parentPart.Name 
    if activeAccessories[accessoryKey] then return end
    local accessory = safeGetObjects(accessoryId) 
    if accessory then 
        accessory.Name, accessory.Parent = accessory.Name .. "_Custom", workspace
        local handle = accessory:FindFirstChild("Handle") if not handle or not handle:IsA("BasePart") then accessory:Destroy() return end
        local attachment = handle:FindFirstChildOfClass("Attachment")
        if attachment then
            local pAttach = nil for _, d in pairs(parentPart:GetDescendants()) do if d:IsA("Attachment") and d.Name == attachment.Name then pAttach = d break end end
            if pAttach then weldParts(parentPart, handle, pAttach.CFrame, attachment.CFrame) else weldParts(parentPart, handle, CFrame.new(), attachment.CFrame) end
        else
            local attPoint = accessory:FindFirstChild("AttachmentPoint") local c1 = attPoint and attPoint.CFrame or CFrame.new() local offset = parentPart.Name == "Head" and CFrame.new(0, 0.5, 0) or CFrame.new() weldParts(parentPart, handle, offset, c1)
        end
        handle.CanCollide, accessory.Parent = false, character activeAccessories[accessoryKey] = accessory
    end
end

local function forceHeadless(head)
    if not head or not head.Parent then return end head.Transparency = 1
    for _, child in pairs(head:GetChildren()) do if child:IsA("Decal") or child.Name == "face" then child.Transparency = 1 end end
    local headMesh = head:FindFirstChildOfClass("SpecialMesh") or head:FindFirstChild("Mesh") if headMesh then headMesh.Scale = Vector3.new(0.001, 0.001, 0.001) end
end

local function clearAllVisuals()
    if headlessConnection then headlessConnection:Disconnect() headlessConnection = nil end
    for key, acc in pairs(activeAccessories) do if acc and acc.Parent then acc:Destroy() end end table.clear(activeAccessories)
    local char = p.Character local head = char and char:FindFirstChild("Head")
    if head then
        head.Transparency = 0 for _, child in pairs(head:GetChildren()) do if child:IsA("Decal") or child.Name == "face" then child.Transparency = 0 end end
        local headMesh = head:FindFirstChildOfClass("SpecialMesh") or head:FindFirstChild("Mesh") if headMesh then headMesh.Scale = Vector3.new(1, 1, 1) end
    end
    for _,v in pairs(game:GetService("Lighting"):GetChildren()) do if v.Name == "AngelLittleAtmosphere" then v:Destroy() end end
end

local function applyVisualsOnce(spawnHorns)
    local char = p.Character if not char then return end local head = char:WaitForChild("Head", 3) if not head then return end forceHeadless(head)
    if spawnHorns then 
        table.clear(activeAccessories)
        for _, id in ipairs(headIds) do task.spawn(function() addAccessoryToCharacter(id, head, char) end) end 
    end
    if not headlessConnection then
        headlessConnection = run.Heartbeat:Connect(function()
            if (_G.headlessActive or _G.onlyHeadlessActive) and char and char.Parent and head and head.Parent then
                head.Transparency = 1 for _, child in pairs(head:GetChildren()) do if (child:IsA("Decal") or child.Name == "face") and child.Transparency ~= 1 then child.Transparency = 1 end end
            else if headlessConnection then headlessConnection:Disconnect() headlessConnection = nil end end
        end)
    end
end

bHeadlessBtn.MouseButton1Click:Connect(function()
    if _G.onlyHeadlessActive then return end _G.headlessActive = not _G.headlessActive
    if _G.headlessActive then bHeadlessBtn.Text, bHeadlessBtn.BackgroundColor3, bHeadlessBtn.TextColor3 = "ВКЛ", Color3.fromRGB(40, 240, 150), Color3.fromRGB(15, 15, 18) bHeadlessBtn.UIStroke.Color = Color3.fromRGB(50, 255, 160) applyVisualsOnce(true)
    else bHeadlessBtn.Text, bHeadlessBtn.BackgroundColor3, bHeadlessBtn.TextColor3 = "ВЫКЛ", Color3.fromRGB(60, 20, 25), Color3.fromRGB(200, 150, 150) bHeadlessBtn.UIStroke.Color = Color3.fromRGB(80, 30, 35) clearAllVisuals() end
end)

bOnlyHeadlessBtn.MouseButton1Click:Connect(function()
    if _G.headlessActive then return end _G.onlyHeadlessActive = not _G.onlyHeadlessActive
    if _G.onlyHeadlessActive then bOnlyHeadlessBtn.Text, bOnlyHeadlessBtn.BackgroundColor3, bOnlyHeadlessBtn.TextColor3 = "ВКЛ", Color3.fromRGB(40, 240, 150), Color3.fromRGB(15, 15, 18) bOnlyHeadlessBtn.UIStroke.Color = Color3.fromRGB(50, 255, 160) applyVisualsOnce(false)
    else bOnlyHeadlessBtn.Text, bOnlyHeadlessBtn.BackgroundColor3, bOnlyHeadlessBtn.TextColor3 = "ВЫКЛ", Color3.fromRGB(60, 20, 25), Color3.fromRGB(200, 150, 150) bOnlyHeadlessBtn.UIStroke.Color = Color3.fromRGB(80, 30, 35) clearAllVisuals() end
end)

p.CharacterAdded:Connect(function() 
    task.wait(0.6) 
    if _G.korbloxActive then applyKorbloxLocal() end 
    if _G.headlessActive then applyVisualsOnce(true) end 
    if _G.onlyHeadlessActive then applyVisualsOnce(false) end 
    if ia then af() end 
end)

sg.Destroying:Connect(function() clearAllVisuals() if fF then fF:Destroy() end if snowFolder then snowFolder:Destroy() end end)
-- ==========================================
-- ЧАСТЬ 9 ИЗ 9: ВКЛАДКА КОНФИГА И АВТО-СТАРТ
-- ==========================================

local configTab1 = createTab(co4, "СОХРАНИТЬ НАСТРОЙКИ", "Записать текущий конфиг")
local bSave = Instance.new("TextButton", configTab1) bSave.Size, bSave.Position, bSave.BackgroundColor3, bSave.Text, bSave.TextColor3, bSave.Font, bSave.TextSize = UDim2.new(0, 75, 0, 22), UDim2.new(1, -85, 0, 30), Color3.fromRGB(24, 24, 27), "СОХРАНИТЬ", Color3.fromRGB(245, 245, 245), Enum.Font.GothamMedium, 10
Instance.new("UICorner", bSave).CornerRadius = UDim.new(0, 6) Instance.new("UIStroke", bSave).Color = Color3.fromRGB(50, 50, 55)

local configTab2 = createTab(co4, "ЗАГРУЗИТЬ НАСТРОЙКИ", "Активировать ваш конфиг")
local bLoad = Instance.new("TextButton", configTab2) bLoad.Size, bLoad.Position, bLoad.BackgroundColor3, bLoad.Text, bLoad.TextColor3, bLoad.Font, bLoad.TextSize = UDim2.new(0, 75, 0, 22), UDim2.new(1, -85, 0, 30), Color3.fromRGB(24, 24, 27), "ЗАГРУЗИТЬ", Color3.fromRGB(245, 245, 245), Enum.Font.GothamMedium, 10
Instance.new("UICorner", bLoad).CornerRadius = UDim.new(0, 6) Instance.new("UIStroke", bLoad).Color = Color3.fromRGB(50, 50, 55)

local configTab3 = createTab(co4, "АВТО-ЗАГРУЗКА СТАРТ", "Включение при запуске скрипта")
local bAuto = Instance.new("TextButton", configTab3) bAuto.Size, bAuto.Position, bAuto.BackgroundColor3, bAuto.Text, bAuto.TextColor3, bAuto.Font, bAuto.TextSize = UDim2.new(0, 45, 0, 22), UDim2.new(1, -55, 0, 30), Color3.fromRGB(60, 20, 25), "ВЫКЛ", Color3.fromRGB(200, 150, 150), Enum.Font.GothamMedium, 10
Instance.new("UICorner", bAuto).CornerRadius = UDim.new(0, 6) Instance.new("UIStroke", bAuto).Color = Color3.fromRGB(80, 30, 35)

local function getSettingsTable()
    return {
        snow = isa, aura = ia, jump = rAct, fovOn = (bOff.Text == "ON"), fovVal = tonumber(numF.Text) or 70,
        flyOn = flyBtn.Visible, flyVal = flySpeed, noclip = noclip, korblox = _G.korbloxActive,
        headless = _G.headlessActive, onlyHeadless = _G.onlyHeadlessActive, autoLoad = (bAuto.Text == "ВКЛ")
    }
end

local function saveConfigToFile()
    local data = getSettingsTable()
    local success, str = pcall(function() return game:GetService("HttpService"):JSONEncode(data) end)
    if success and writefile then writefile("AngeliW_Config.json", str) bSave.Text = "ГОТОВО" task.wait(1) bSave.Text = "СОХРАНИТЬ" end
end

local function applySettingsTable(data)
    if data.autoLoad then bAuto.Text, bAuto.BackgroundColor3, bAuto.TextColor3 = "ВКЛ", Color3.fromRGB(40, 240, 150), Color3.fromRGB(15, 15, 18) bAuto.UIStroke.Color = Color3.fromRGB(50, 255, 160)
    else bAuto.Text, bAuto.BackgroundColor3, bAuto.TextColor3 = "ВЫКЛ", Color3.fromRGB(60, 20, 25), Color3.fromRGB(200, 150, 150) bAuto.UIStroke.Color = Color3.fromRGB(80, 30, 35) end
    if data.snow ~= isa then bSnow.BackgroundColor3 = Color3.fromRGB(40, 240, 150) isa = data.snow end
    if data.aura ~= ia then bAuraBtn.BackgroundColor3 = Color3.fromRGB(40, 240, 150) ia = data.aura af() end
    if data.jump ~= rAct then bJumpBtn.BackgroundColor3 = Color3.fromRGB(40, 240, 150) rAct = data.jump end
    if data.noclip ~= noclip then bNcToggle.BackgroundColor3 = Color3.fromRGB(40, 240, 150) noclip = data.noclip end
    if data.korblox ~= _G.korbloxActive then _G.korbloxActive = data.korblox applyKorbloxLocal() end
    if data.headless ~= _G.headlessActive then _G.headlessActive = data.headless applyVisualsOnce(true) end
    if data.onlyHeadless ~= _G.onlyHeadlessActive then _G.onlyHeadlessActive = data.onlyHeadless applyVisualsOnce(false) end
    if data.fovOn then
        bOff.Text, bOff.BackgroundColor3, bOff.TextColor3 = "ON", Color3.fromRGB(40, 240, 150), Color3.fromRGB(15, 15, 18) bOff.UIStroke.Color = Color3.fromRGB(50, 255, 160)
        workspace.CurrentCamera.FieldOfView = data.fovVal or 70 numF.Text = tostring(data.fovVal or 70)
    else
        bOff.Text, bOff.BackgroundColor3, bOff.TextColor3 = "OFF", Color3.fromRGB(60, 20, 25), Color3.fromRGB(200, 150, 150) bOff.UIStroke.Color = Color3.fromRGB(80, 30, 35)
        workspace.CurrentCamera.FieldOfView = 70 numF.Text = "70"
    end
    if data.flyOn then bFlyToggle.Text, bFlyToggle.BackgroundColor3, bFlyToggle.TextColor3 = "ВКЛ", Color3.fromRGB(40, 240, 150), Color3.fromRGB(15, 15, 18) bFlyToggle.UIStroke.Color = Color3.fromRGB(50, 255, 160) flyBtn.Visible = true
    else bFlyToggle.Text, bFlyToggle.BackgroundColor3, bFlyToggle.TextColor3 = "ВЫКЛ", Color3.fromRGB(60, 20, 25), Color3.fromRGB(200, 150, 150) bFlyToggle.UIStroke.Color = Color3.fromRGB(80, 30, 35) flyBtn.Visible = false end
    flySpeed = data.flyVal or 1 numS.Text = tostring(flySpeed)
end

local function loadConfigFromFile()
    if readfile and isfile and isfile("AngeliW_Config.json") then
        local str = readfile("AngeliW_Config.json")
        local success, data = pcall(function() return game:GetService("HttpService"):JSONDecode(str) end)
        if success and data then applySettingsTable(data) bLoad.Text = "УСПЕШНО" task.wait(1) bLoad.Text = "ЗАГРУЗИТЬ" end
    end
end

bSave.MouseButton1Click:Connect(saveConfigToFile)
bLoad.MouseButton1Click:Connect(loadConfigFromFile)
bAuto.MouseButton1Click:Connect(function()
    if bAuto.Text == "ВЫКЛ" then bAuto.Text, bAuto.BackgroundColor3, bAuto.TextColor3 = "ВКЛ", Color3.fromRGB(40, 240, 150), Color3.fromRGB(15, 15, 18) bAuto.UIStroke.Color = Color3.fromRGB(50, 255, 160)
    else bAuto.Text, bAuto.BackgroundColor3, bAuto.TextColor3 = "ВЫКЛ", Color3.fromRGB(60, 20, 25), Color3.fromRGB(200, 150, 150) bAuto.UIStroke.Color = Color3.fromRGB(80, 30, 35) end
    saveConfigToFile()
end)

task.spawn(function()
    task.wait(1.5)
    if readfile and isfile and isfile("AngeliW_Config.json") then
        local str = readfile("AngeliW_Config.json")
        local success, data = pcall(function() return game:GetService("HttpService"):JSONDecode(str) end)
        if success and data and data.autoLoad then loadConfigFromFile() end
    end
end)
