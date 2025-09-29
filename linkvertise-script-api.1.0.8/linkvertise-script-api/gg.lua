if not _G._PREMIUM_LOAD_KEY_ then return end

local PremiumUILibrary = {}

local TweenService = game:GetService("TweenService")
local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local Lighting = game:GetService("Lighting")
local RunService = game:GetService("RunService")

PremiumUILibrary.UI = {}
PremiumUILibrary.Theme = {
    Background = Color3.fromRGB(20, 20, 20),
    Primary = Color3.fromRGB(200, 25, 25),
    DarkRed = Color3.fromRGB(120, 15, 15),
    Secondary = Color3.fromRGB(35, 35, 35),
    Accent = Color3.fromRGB(0, 200, 255),
    Text = Color3.fromRGB(220, 220, 220),
    PlaceholderText = Color3.fromRGB(150, 150, 150),
    DiscordBlurple = Color3.fromRGB(88, 101, 242),
}

PremiumUILibrary.GradientColors = {
    {Color3.fromRGB(0,255,255), Color3.fromRGB(255,0,255)},
    {Color3.fromRGB(255,0,0), Color3.fromRGB(255,255,0)},
    {Color3.fromRGB(0,255,0), Color3.fromRGB(0,0,255)},
    {Color3.fromRGB(255,128,0), Color3.fromRGB(0,255,128)},
    {Color3.fromRGB(190, 45, 255), Color3.fromRGB(255, 155, 45)},
    {Color3.fromRGB(255, 50, 50), Color3.fromRGB(50, 200, 255)},
    {Color3.fromRGB(80, 255, 120), Color3.fromRGB(255, 80, 200)},
}
PremiumUILibrary.Gradients = {}

function PremiumUILibrary:applyButtonEffects(button, baseColor, hoverColor, pressColor)
    local originalSize = button.Size
    button.MouseEnter:Connect(function()
        TweenService:Create(button,TweenInfo.new(0.15),{BackgroundColor3=hoverColor,Size=UDim2.new(1,0,0,42)}):Play()
    end)
    button.MouseLeave:Connect(function()
        TweenService:Create(button,TweenInfo.new(0.15),{BackgroundColor3=baseColor,Size=originalSize}):Play()
    end)
    button.MouseButton1Down:Connect(function()
        TweenService:Create(button,TweenInfo.new(0.1),{BackgroundColor3=pressColor}):Play()
    end)
    button.MouseButton1Up:Connect(function()
        TweenService:Create(button,TweenInfo.new(0.15),{BackgroundColor3=hoverColor,Size=UDim2.new(1,0,0,42)}):Play()
    end)
end

function PremiumUILibrary:createMainUI()
    local playerGui=Players.LocalPlayer:WaitForChild("PlayerGui")
    local screenGui=Instance.new("ScreenGui")
    screenGui.Name="PremiumUI_Main"
    screenGui.ResetOnSpawn=false
    screenGui.IgnoreGuiInset = true
    screenGui.Parent=playerGui
    self.UI.ScreenGui=screenGui
    
    local blur = Instance.new("BlurEffect")
    blur.Name = "PremiumUIBlur"
    blur.Size = 24
    blur.Parent = Lighting
    self.UI.BlurEffect = blur
    
    local mainFrame=Instance.new("Frame")
    mainFrame.Name="PremiumFrame"
    mainFrame.Size=UDim2.new(0,400,0,500)
    mainFrame.Position=UDim2.new(0.5,0,0.5,0)
    mainFrame.AnchorPoint=Vector2.new(0.5,0.5)
    mainFrame.BackgroundColor3=self.Theme.Background
    mainFrame.BorderSizePixel=0
    mainFrame.ClipsDescendants = true
    mainFrame.Parent=screenGui
    self.UI.MainFrame=mainFrame
    
    local corner=Instance.new("UICorner")
    corner.CornerRadius=UDim.new(0,12)
    corner.Parent=mainFrame
    
    local stroke=Instance.new("UIStroke")
    stroke.Thickness=6
    stroke.Color = Color3.fromRGB(255, 255, 255)
    stroke.ApplyStrokeMode=Enum.ApplyStrokeMode.Border
    stroke.Parent=mainFrame
    self.UI.MainStroke = stroke
    
    local gradient = Instance.new("UIGradient")
    local pick = self.GradientColors[math.random(1, #self.GradientColors)]
    gradient.Color = ColorSequence.new({
        ColorSequenceKeypoint.new(0.0, pick[1]),
        ColorSequenceKeypoint.new(1.0, pick[2])
    })
    gradient.Rotation = 0
    gradient.Parent = stroke
    table.insert(self.Gradients, gradient)
    self.UI.MainGradient = gradient

    local scanline = Instance.new("Frame")
    scanline.Name = "Scanline"
    scanline.Size = UDim2.new(1, 0, 0, 4)
    scanline.Position = UDim2.new(0, 0, -0.1, 0)
    scanline.BackgroundColor3 = pick[1]
    scanline.BackgroundTransparency = 0.75
    scanline.BorderSizePixel = 0
    scanline.ZIndex = 2
    scanline.Parent = mainFrame
    self.UI.Scanline = scanline
    
    local padding=Instance.new("UIPadding")
    padding.PaddingTop=UDim.new(0,20)
    padding.PaddingBottom=UDim.new(0,10)
    padding.PaddingLeft=UDim.new(0,20)
    padding.PaddingRight=UDim.new(0,20)
    padding.Parent=mainFrame
    
    local listLayout=Instance.new("UIListLayout")
    listLayout.FillDirection=Enum.FillDirection.Vertical
    listLayout.SortOrder=Enum.SortOrder.LayoutOrder
    listLayout.Padding=UDim.new(0,10)
    listLayout.Parent=mainFrame
    
    local titleLabel=Instance.new("TextLabel")
    titleLabel.LayoutOrder = 1
    titleLabel.Size = UDim2.new(1, 0, 0, 30)
    titleLabel.Text = "Fx_Scripts - Premium Loader"
    titleLabel.Font = Enum.Font.GothamBold
    titleLabel.TextColor3 = self.Theme.Text
    titleLabel.TextSize = 20
    titleLabel.BackgroundTransparency = 1
    titleLabel.Parent = mainFrame
    self.UI.TitleLabel = titleLabel

    local function createSecurityLine(order)
        local line = Instance.new("Frame")
        line.Name = "SecurityLine"
        line.LayoutOrder = order
        line.Size = UDim2.new(1, 0, 0, 2)
        line.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        line.BorderSizePixel = 0
        line.Parent = mainFrame
        local lineStroke = Instance.new("UIStroke")
        lineStroke.Thickness = 2
        lineStroke.Color = Color3.fromRGB(255, 255, 255)
        lineStroke.Parent = line
        local lineGradient = Instance.new("UIGradient")
        lineGradient.Color = gradient.Color
        lineGradient.Rotation = math.random(0, 360)
        lineGradient.Parent = lineStroke
        table.insert(self.Gradients, lineGradient)
        return line
    end

    createSecurityLine(2)

    local infoLabel=Instance.new("TextLabel")
    infoLabel.LayoutOrder=3
    infoLabel.Size=UDim2.new(1,0,0,30)
    infoLabel.Text="Status: Key Verified. Ready."
    infoLabel.Font=Enum.Font.Gotham
    infoLabel.TextColor3=Color3.fromRGB(50,255,50)
    infoLabel.TextSize=18
    infoLabel.BackgroundTransparency=1
    infoLabel.Parent=mainFrame
    self.UI.InfoLabel = infoLabel
    
    local function createButton(text,order,clr,callback)
        local b=Instance.new("TextButton")
        b.LayoutOrder=order
        b.Size=UDim2.new(1,0,0,40)
        b.BackgroundColor3=clr
        b.BorderSizePixel=0
        b.Font=Enum.Font.GothamBold
        b.Text=text
        b.TextColor3=self.Theme.Text
        b.TextSize=18
        b.Parent=mainFrame
        
        local c=Instance.new("UICorner")
        c.CornerRadius=UDim.new(0,6)
        c.Parent=b
        
        local hoverColor = clr == self.Theme.Primary and self.Theme.Primary:Lerp(Color3.new(1,1,1), 0.2) or self.Theme.Primary
        self:applyButtonEffects(b,clr,hoverColor,self.Theme.DarkRed)
        b.MouseButton1Click:Connect(callback)
        return b
    end
    
    self.UI.MainLoaderButton = createButton("Load Main Script 🚀",4,self.Theme.Primary,function()print("Main Script Loaded!")end)
    self.UI.ExtraFeatureButton = createButton("Load Extra Feature (VIP)",5,self.Theme.DiscordBlurple,function()print("VIP Script Loaded!")end)

    local toggle=Instance.new("TextButton")
    toggle.LayoutOrder=6
    toggle.Size=UDim2.new(1,0,0,40)
    toggle.BackgroundColor3=self.Theme.Secondary
    toggle.Text="Auto Farm: OFF"
    toggle.TextColor3=self.Theme.Text
    toggle.Font=Enum.Font.Gotham
    toggle.TextSize=18
    toggle.Parent=mainFrame
    self.UI.FarmToggle = toggle
    
    local cornerToggle=Instance.new("UICorner")
    cornerToggle.CornerRadius=UDim.new(0,6)
    cornerToggle.Parent=toggle

    local state=false
    toggle.MouseButton1Click:Connect(function()
        state=not state
        toggle.Text="Auto Farm: "..(state and "ON" or "OFF")
        local newColor = state and self.Theme.Primary or self.Theme.Secondary
        local newHover = self.Theme.Primary
        TweenService:Create(toggle, TweenInfo.new(0.2), {BackgroundColor3 = newColor}):Play()
        self:applyButtonEffects(toggle, newColor, newHover, self.Theme.DarkRed)
        print("Auto Farm Toggled: "..(state and "ON" or "OFF"))
    end)
    self:applyButtonEffects(toggle, self.Theme.Secondary, self.Theme.Primary, self.Theme.DarkRed)
    
    local dropdown=Instance.new("TextButton")
    dropdown.LayoutOrder=7
    dropdown.Size=UDim2.new(1,0,0,40)
    dropdown.BackgroundColor3=self.Theme.Secondary
    dropdown.Text="Select Mode: Normal"
    dropdown.TextColor3=self.Theme.Text
    dropdown.Font=Enum.Font.Gotham
    dropdown.TextSize=18
    dropdown.Parent=mainFrame
    self.UI.ModeDropdown = dropdown

    local cornerDropdown=Instance.new("UICorner")
    cornerDropdown.CornerRadius=UDim.new(0,6)
    cornerDropdown.Parent=dropdown
    
    local modes={"Normal","Insane","God"}
    local i=1
    dropdown.MouseButton1Click:Connect(function()
        i=i%#modes+1
        dropdown.Text="Select Mode: "..modes[i]
        print("Mode set to: "..modes[i])
    end)
    self:applyButtonEffects(dropdown, self.Theme.Secondary, self.Theme.Primary, self.Theme.DarkRed)

    local sliderFrame=Instance.new("Frame")
    sliderFrame.LayoutOrder=8
    sliderFrame.Size=UDim2.new(1,0,0,50)
    sliderFrame.BackgroundTransparency=1
    sliderFrame.Parent=mainFrame
    self.UI.SliderFrame = sliderFrame
    
    local sliderLabel=Instance.new("TextLabel")
    sliderLabel.Size=UDim2.new(0.5,0,1,0)
    sliderLabel.Text="WalkSpeed: 16"
    sliderLabel.TextColor3=self.Theme.Text
    sliderLabel.BackgroundTransparency=1
    sliderLabel.Font=Enum.Font.Gotham
    sliderLabel.TextSize=16
    sliderLabel.TextXAlignment=Enum.TextXAlignment.Left
    sliderLabel.Parent=sliderFrame
    self.UI.SliderLabel = sliderLabel
    
    local slider=Instance.new("Frame")
    slider.Size=UDim2.new(0.5, 0, 0, 10)
    slider.Position=UDim2.new(0.5,0,0.5,0)
    slider.AnchorPoint = Vector2.new(0, 0.5)
    slider.BackgroundColor3=self.Theme.Secondary
    slider.Parent=sliderFrame
    self.UI.WalkspeedSlider = slider
    
    local fill=Instance.new("Frame")
    fill.Name = "Fill"
    fill.Size=UDim2.new(0,0,1,0)
    fill.BackgroundColor3=self.Theme.Primary
    fill.Parent=slider
    self.UI.SliderFill = fill
    
    local sliderCorner=Instance.new("UICorner")
    sliderCorner.CornerRadius=UDim.new(0,5)
    sliderCorner.Parent=slider

    local knob=Instance.new("Frame")
    knob.Name = "Knob"
    knob.Size=UDim2.new(0,20,0,20)
    knob.Position=UDim2.new(0, -10, 0.5, -10)
    knob.BackgroundColor3=self.Theme.Text
    knob.BorderSizePixel=0
    knob.ZIndex=2
    knob.Parent=slider
    self.UI.SliderKnob = knob

    local knobCorner=Instance.new("UICorner")
    knobCorner.CornerRadius=UDim.new(1,0)
    knobCorner.Parent=knob

    local draggingSlider=false
    local minVal, maxVal = 16, 100

    local function updateSlider(xPos)
        local pos = math.clamp(xPos, 0, slider.AbsoluteSize.X)
        local ratio = pos / slider.AbsoluteSize.X
        fill.Size = UDim2.new(ratio, 0, 1, 0)
        knob.Position = UDim2.new(ratio, -10, 0.5, -10)
        local val = minVal + ratio * (maxVal - minVal)
        sliderLabel.Text = "WalkSpeed: "..math.floor(val)
        
        local character = Players.LocalPlayer.Character
        if character and character:FindFirstChildOfClass("Humanoid") then
            character.Humanoid.WalkSpeed = val
        end
    end

    slider.InputBegan:Connect(function(input)
        if input.UserInputType==Enum.UserInputType.MouseButton1 then
            draggingSlider=true
            updateSlider(input.Position.X - slider.AbsolutePosition.X)
        end
    end)

    UserInputService.InputEnded:Connect(function(input)
        if input.UserInputType==Enum.UserInputType.MouseButton1 then
            draggingSlider=false
        end
    end)
    
    UserInputService.InputChanged:Connect(function(input)
        if draggingSlider and input.UserInputType==Enum.UserInputType.MouseMovement then
            updateSlider(input.Position.X - slider.AbsolutePosition.X)
        end
    end)
    
    task.wait(0.1)
    updateSlider(0)

    local keybind=Instance.new("TextButton")
    keybind.LayoutOrder=9
    keybind.Size=UDim2.new(1,0,0,40)
    keybind.BackgroundColor3=self.Theme.Secondary
    keybind.Text="Bind: RightControl"
    keybind.TextColor3=self.Theme.Text
    keybind.Font=Enum.Font.Gotham
    keybind.TextSize=18
    keybind.Parent=mainFrame
    self.UI.KeybindButton = keybind

    local cornerKeybind=Instance.new("UICorner")
    cornerKeybind.CornerRadius=UDim.new(0,6)
    cornerKeybind.Parent=keybind
    
    local bindingKey = false
    local currentBind=Enum.KeyCode.RightControl
    
    keybind.MouseButton1Click:Connect(function()
        keybind.Text="Press a key..."
        bindingKey=true
    end)
    
    UserInputService.InputBegan:Connect(function(input,gp)
        if not gp then
            if bindingKey then
                currentBind=input.KeyCode
                keybind.Text="Bind: "..tostring(currentBind.Name)
                bindingKey=false
            elseif input.KeyCode==currentBind and not bindingKey then
                mainFrame.Visible=not mainFrame.Visible
            end
        end
    end)
    self:applyButtonEffects(keybind, self.Theme.Secondary, self.Theme.Primary, self.Theme.DarkRed)

    createSecurityLine(10)

    local poweredByLabel = Instance.new("TextLabel")
    poweredByLabel.LayoutOrder = 11
    poweredByLabel.Size = UDim2.new(1, 0, 0, 15)
    poweredByLabel.BackgroundTransparency = 1
    poweredByLabel.Font = Enum.Font.Gotham
    poweredByLabel.Text = "Powered by Fx_Scripts"
    poweredByLabel.TextColor3 = self.Theme.PlaceholderText
    poweredByLabel.TextSize = 10
    poweredByLabel.TextXAlignment = Enum.TextXAlignment.Center
    poweredByLabel.Parent = mainFrame
    
    local drag={Dragging=false,StartPos=Vector2.new(),StartOffset=Vector2.new()}
    
    local function onDrag(input)
        if drag.Dragging then
            local delta=input.Position-drag.StartPos
            mainFrame.Position=UDim2.new(0.5,drag.StartOffset.X+delta.X,0.5,drag.StartOffset.Y+delta.Y)
        end
    end

    titleLabel.InputBegan:Connect(function(input)
        if input.UserInputType==Enum.UserInputType.MouseButton1 then
            drag.Dragging=true
            drag.StartPos=input.Position
            drag.StartOffset=Vector2.new(mainFrame.Position.X.Offset,mainFrame.Position.Y.Offset)
            UserInputService.InputChanged:Connect(onDrag)
        end
    end)
    
    UserInputService.InputEnded:Connect(function(input)
        if input.UserInputType==Enum.UserInputType.MouseButton1 then
            drag.Dragging=false
        end
    end)
end

function PremiumUILibrary:startAnimations()
    task.spawn(function()
        while RunService.Stepped do
            for _, gradInstance in ipairs(self.Gradients) do
                if gradInstance and gradInstance.Parent then
                    local tween = TweenService:Create(gradInstance, TweenInfo.new(3, Enum.EasingStyle.Linear), {Rotation = gradInstance.Rotation + 360})
                    tween:Play()
                end
            end
            task.wait(3)
        end
    end)

    task.spawn(function()
        local scanline = self.UI.Scanline
        while scanline and scanline.Parent do
            scanline.Position = UDim2.new(0, 0, -0.1, 0)
            local scanTween = TweenService:Create(scanline, TweenInfo.new(2.5, Enum.EasingStyle.Linear), {Position = UDim2.new(0, 0, 1.1, 0)})
            scanTween:Play()
            scanTween.Completed:Wait()
            task.wait(1)
        end
    end)
end

function PremiumUILibrary:init()
    self:createMainUI()
    self:startAnimations()
end

return PremiumUILibrary
