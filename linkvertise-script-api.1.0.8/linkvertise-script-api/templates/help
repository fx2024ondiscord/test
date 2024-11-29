local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local CoreGui = game:GetService("CoreGui")

local Library = {
    Flags = {},
    Theme = {
        Main = Color3.fromRGB(20, 20, 20),
        Secondary = Color3.fromRGB(30, 30, 30),
        Accent = Color3.fromRGB(255, 50, 100),
        Text = Color3.fromRGB(255, 255, 255),
        Stroke = Color3.fromRGB(50, 50, 50)
    }
}

function Library:CreateWindow(config)
    config = config or {}
    config.Title = config.Title or "SexyUI by Fx_2024"
    config.Size = config.Size or UDim2.new(0, 550, 0, 350)

    local Window = {}
    Window.Tabs = {}

    local ScreenGui = Instance.new("ScreenGui")
    local Main = Instance.new("Frame")
    local UICorner = Instance.new("UICorner")
    local TopBar = Instance.new("Frame")
    local Title = Instance.new("TextLabel")
    local TabContainer = Instance.new("Frame")
    local TabList = Instance.new("UIListLayout")
    local ContentContainer = Instance.new("Frame")
    local Credit = Instance.new("TextLabel")
    
    if syn then
        syn.protect_gui(ScreenGui)
    end
    
    ScreenGui.Name = "SexyUI"
    ScreenGui.Parent = CoreGui
    ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    
    Main.Name = "Main"
    Main.Parent = ScreenGui
    Main.BackgroundColor3 = Library.Theme.Main
    Main.Position = UDim2.new(0.5, -config.Size.X.Offset / 2, 0.5, -config.Size.Y.Offset / 2)
    Main.Size = config.Size
    Main.ClipsDescendants = true
    
    UICorner.CornerRadius = UDim.new(0, 6)
    UICorner.Parent = Main
    
    TopBar.Name = "TopBar"
    TopBar.Parent = Main
    TopBar.BackgroundColor3 = Library.Theme.Secondary
    TopBar.Size = UDim2.new(1, 0, 0, 30)
    
    Title.Name = "Title"
    Title.Parent = TopBar
    Title.BackgroundTransparency = 1
    Title.Position = UDim2.new(0, 10, 0, 0)
    Title.Size = UDim2.new(1, -20, 1, 0)
    Title.Font = Enum.Font.GothamBold
    Title.Text = config.Title
    Title.TextColor3 = Library.Theme.Text
    Title.TextSize = 14
    Title.TextXAlignment = Enum.TextXAlignment.Left
    
    TabContainer.Name = "TabContainer"
    TabContainer.Parent = Main
    TabContainer.BackgroundColor3 = Library.Theme.Secondary
    TabContainer.Position = UDim2.new(0, 5, 0, 35)
    TabContainer.Size = UDim2.new(0, 120, 1, -40)
    
    TabList.Parent = TabContainer
    TabList.SortOrder = Enum.SortOrder.LayoutOrder
    TabList.Padding = UDim.new(0, 5)
    
    ContentContainer.Name = "ContentContainer"
    ContentContainer.Parent = Main
    ContentContainer.BackgroundColor3 = Library.Theme.Secondary
    ContentContainer.Position = UDim2.new(0, 130, 0, 35)
    ContentContainer.Size = UDim2.new(1, -135, 1, -40)
    
    Credit.Name = "Credit"
    Credit.Parent = Main
    Credit.BackgroundTransparency = 1
    Credit.Position = UDim2.new(0, 10, 1, -25)
    Credit.Size = UDim2.new(0, 200, 0, 20)
    Credit.Font = Enum.Font.GothamBold
    Credit.Text = "Created by Fx_2024"
    Credit.TextColor3 = Library.Theme.Accent
    Credit.TextSize = 14
    Credit.TextStrokeTransparency = 0.8
    Credit.TextXAlignment = Enum.TextXAlignment.Left

    local dragging, dragInput, dragStart, startPos
    
    local function updateDrag(input)
        local delta = input.Position - dragStart
        Main.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end
    
    TopBar.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            dragging = true
            dragStart = input.Position
            startPos = Main.Position
        end
    end)
    
    TopBar.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            dragging = false
        end
    end)
    
    UserInputService.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement then
            dragInput = input
        end
    end)
    
    UserInputService.InputChanged:Connect(function(input)
        if input == dragInput and dragging then
            updateDrag(input)
        end
    end)

    function Window:CreateTab(name)
        local Tab = {}
        
        local TabButton = Instance.new("TextButton")
        local TabContent = Instance.new("ScrollingFrame")
        local ContentList = Instance.new("UIListLayout")
        
        TabButton.Name = name
        TabButton.Parent = TabContainer
        TabButton.BackgroundColor3 = Library.Theme.Main
        TabButton.Size = UDim2.new(1, -10, 0, 30)
        TabButton.Font = Enum.Font.GothamBold
        TabButton.Text = name
        TabButton.TextColor3 = Library.Theme.Text
        TabButton.TextSize = 12
        TabButton.AutoButtonColor = false
        
        local UICorner = Instance.new("UICorner")
        UICorner.CornerRadius = UDim.new(0, 4)
        UICorner.Parent = TabButton
        
        TabContent.Name = name.."Content"
        TabContent.Parent = ContentContainer
        TabContent.BackgroundTransparency = 1
        TabContent.BorderSizePixel = 0
        TabContent.Size = UDim2.new(1, 0, 1, 0)
        TabContent.CanvasSize = UDim2.new(0, 0, 0, 0)
        TabContent.ScrollBarThickness = 2
        TabContent.ScrollBarImageColor3 = Library.Theme.Accent
        TabContent.Visible = false
        
        ContentList.Parent = TabContent
        ContentList.SortOrder = Enum.SortOrder.LayoutOrder
        ContentList.Padding = UDim.new(0, 5)
        
        ContentList:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
            TabContent.CanvasSize = UDim2.new(0, 0, 0, ContentList.AbsoluteContentSize.Y)
        end)
        
        if #Window.Tabs == 0 then
            TabContent.Visible = true
            TabButton.BackgroundColor3 = Library.Theme.Accent
        end
        
        TabButton.MouseButton1Click:Connect(function()
            for _, tab in pairs(ContentContainer:GetChildren()) do
                tab.Visible = false
            end
            TabContent.Visible = true
            
            for _, button in pairs(TabContainer:GetChildren()) do
                if button:IsA("TextButton") then
                    TweenService:Create(button, TweenInfo.new(0.2), {BackgroundColor3 = Library.Theme.Main}):Play()
                end
            end
            TweenService:Create(TabButton, TweenInfo.new(0.2), {BackgroundColor3 = Library.Theme.Accent}):Play()
        end)
        
        table.insert(Window.Tabs, Tab)
        
        function Tab:CreateButton(name, callback)
            local Button = Instance.new("TextButton")
            Button.Name = name
            Button.Parent = TabContent
            Button.BackgroundColor3 = Library.Theme.Main
            Button.Size = UDim2.new(1, -10, 0, 30)
            Button.Font = Enum.Font.Gotham
            Button.Text = name
            Button.TextColor3 = Library.Theme.Text
            Button.TextSize = 12
            Button.AutoButtonColor = false
            
            local UICorner = Instance.new("UICorner")
            UICorner.CornerRadius = UDim.new(0, 4)
            UICorner.Parent = Button
            
            Button.MouseButton1Click:Connect(function()
                TweenService:Create(Button, TweenInfo.new(0.2), {BackgroundColor3 = Library.Theme.Accent}):Play()
                if callback then callback() end
                wait(0.2)
                TweenService:Create(Button, TweenInfo.new(0.2), {BackgroundColor3 = Library.Theme.Main}):Play()
            end)
        end
        
        function Tab:CreateToggle(name, default, flag, callback)
            local Toggle = Instance.new("TextButton")
            local ToggleIndicator = Instance.new("Frame")
            local enabled = default or false
            Library.Flags[flag] = enabled
            
            Toggle.Name = name
            Toggle.Parent = TabContent
            Toggle.BackgroundColor3 = Library.Theme.Main
            Toggle.Size = UDim2.new(1, -10, 0, 30)
            Toggle.Font = Enum.Font.Gotham
            Toggle.Text = "  "..name
            Toggle.TextColor3 = Library.Theme.Text
            Toggle.TextSize = 12
            Toggle.TextXAlignment = Enum.TextXAlignment.Left
            Toggle.AutoButtonColor = false
            
            local UICorner = Instance.new("UICorner")
            UICorner.CornerRadius = UDim.new(0, 4)
            UICorner.Parent = Toggle
            
            ToggleIndicator.Parent = Toggle
            ToggleIndicator.BackgroundColor3 = enabled and Library.Theme.Accent or Library.Theme.Stroke
            ToggleIndicator.Position = UDim2.new(1, -40, 0.5, -8)
            ToggleIndicator.Size = UDim2.new(0, 30, 0, 16)
            
            local UICorner = Instance.new("UICorner")
            UICorner.CornerRadius = UDim.new(1, 0)
            UICorner.Parent = ToggleIndicator
            
            local Circle = Instance.new("Frame")
            Circle.Parent = ToggleIndicator
            Circle.BackgroundColor3 = Library.Theme.Text
            Circle.Position = enabled and UDim2.new(1, -16, 0.5, -6) or UDim2.new(0, 2, 0.5, -6)
            Circle.Size = UDim2.new(0, 12, 0, 12)
            
            local UICorner = Instance.new("UICorner")
            UICorner.CornerRadius = UDim.new(1, 0)
            UICorner.Parent = Circle
            
            Toggle.MouseButton1Click:Connect(function()
                enabled = not enabled
                Library.Flags[flag] = enabled
                
                TweenService:Create(ToggleIndicator, TweenInfo.new(0.2), {
                    BackgroundColor3 = enabled and Library.Theme.Accent or Library.Theme.Stroke
                }):Play()
                
                TweenService:Create(Circle, TweenInfo.new(0.2), {
                    Position = enabled and UDim2.new(1, -16, 0.5, -6) or UDim2.new(0, 2, 0.5, -6)
                }):Play()
                
                if callback then callback(enabled) end
            end)
        end
        
        return Tab
    end
    
    return Window
end

return Library
