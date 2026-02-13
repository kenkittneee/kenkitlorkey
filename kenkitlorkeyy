local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")

local CorrectKey = "0973453703" 
local KeyInput = ""

local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()

function StartMainScript()
    local ScreenGui = Instance.new("ScreenGui")
    local ImageButton = Instance.new("ImageButton")
    local UICorner = Instance.new("UICorner")

    ScreenGui.Parent = game:GetService("CoreGui")
    ScreenGui.Name = "KenkitGui"
    
    ImageButton.Parent = ScreenGui
    ImageButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    ImageButton.Position = UDim2.new(0.1, 0, 0.15, 0)
    ImageButton.Size = UDim2.new(0, 45, 0, 45)
    ImageButton.Image = "rbxassetid://112847886551666"
    ImageButton.BackgroundTransparency = 1 
    ImageButton.ImageTransparency = 1

    UICorner.CornerRadius = UDim.new(1, 0) 
    UICorner.Parent = ImageButton

    TweenService:Create(ImageButton, TweenInfo.new(1), {BackgroundTransparency = 0, ImageTransparency = 0}):Play()

    ImageButton.MouseEnter:Connect(function()
        TweenService:Create(ImageButton, TweenInfo.new(0.3), {Size = UDim2.new(0, 52, 0, 52), BackgroundColor3 = Color3.fromRGB(30, 30, 30)}):Play()
    end)
    ImageButton.MouseLeave:Connect(function()
        TweenService:Create(ImageButton, TweenInfo.new(0.3), {Size = UDim2.new(0, 45, 0, 45), BackgroundColor3 = Color3.fromRGB(0, 0, 0)}):Play()
    end)
    ImageButton.MouseButton1Down:Connect(function()
        TweenService:Create(ImageButton, TweenInfo.new(0.1), {Size = UDim2.new(0, 38, 0, 38)}):Play()
    end)
    ImageButton.MouseButton1Up:Connect(function()
        TweenService:Create(ImageButton, TweenInfo.new(0.1), {Size = UDim2.new(0, 45, 0, 45)}):Play()
    end)

    local dragging, dragInput, dragStart, startPos
    local function update(input)
        local delta = input.Position - dragStart
        local targetPos = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
        TweenService:Create(ImageButton, TweenInfo.new(0.15, Enum.EasingStyle.Quint), {Position = targetPos}):Play()
    end

    ImageButton.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
            dragStart = input.Position
            startPos = ImageButton.Position
            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then dragging = false end
            end)
        end
    end)
    ImageButton.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            dragInput = input
        end
    end)
    UserInputService.InputChanged:Connect(function(input)
        if input == dragInput and dragging then update(input) end
    end)

    local Window = Fluent:CreateWindow({
        Title = "Kenkit Tổng Hợp",
        SubTitle = "by Gia Bao Dep Trai",
        TabWidth = 157,
        Size = UDim2.fromOffset(555, 320),
        Acrylic = true,
        Theme = "Dark",
        MinimizeKey = Enum.KeyCode.End
    })

    ImageButton.MouseButton1Click:Connect(function()
        Window:Minimize()
    end)

    local Tabs = {
        Main0 = Window:AddTab({ Title = "Thông Tin", Icon = "info" }),
        Main1 = Window:AddTab({ Title = "Script Farm", Icon = "box" }),
        Main2 = Window:AddTab({ Title = "Script Kaitun", Icon = "cpu" }),
        Main3 = Window:AddTab({ Title = "Script Pvp", Icon = "swords" }),
        Main4 = Window:AddTab({ Title = "Tsunami Escape", Icon = "waves" }),
        Main5 = Window:AddTab({ Title = "Script Meme Sea", Icon = "smile" })
    }

    Tabs.Main0:AddParagraph({Title = "Chào mừng!", Content = "Hệ thống đã sẵn sàng cho Gia Bảo!"})

    Tabs.Main1:AddButton({Title = "Trau v9", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/trungdao2k4/buffalo/refs/heads/main/traurobloxv9.lua"))() end})
    Tabs.Main1:AddButton({Title = "Andepzai hub", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/AnDepZaiHub/AnDepZaiHubBeta/refs/heads/main/AnDepZaiHubBeta.lua"))() end})
    Tabs.Main1:AddButton({Title = "Quantum hub" , Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/flazhy/QuantumOnyx/refs/heads/main/QuantumOnyx.lua"))()
    Tabs.Main2:AddButton({Title = "Kaitun (Lever)", Callback = function() loadstring(game:HttpGet("https://api.luarmor.net/files/v4/loaders/4365e6ab3c80828a24ba946f4d8ff946.lua"))() end})
    Tabs.Main3:AddButton({Title = "Hermanos hub", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/hermanos-dev/hermanos-hub/refs/heads/main/Loader.lua"))() end})
    Tabs.Main4:AddButton({Title = "Cyrus hub", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/CyrusOffc/scriptcyrus/refs/heads/main/roblox/loader.lua"))() end})
    Tabs.Main5:AddButton({Title = "Redz hub", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/tlredz/Scripts/refs/heads/main/main.luau"))() end})

    Fluent:Notify({ Title = "Kenkit Hub", Content = "Đã kích hoạt hiệu ứng mượt mà!", Duration = 5 })
end

local KeyWindow = Fluent:CreateWindow({
    Title = "Hệ Thống Xác Thực",
    SubTitle = "Kenkit Hub - Gia Bảo Đẹp Trai",
    TabWidth = 160,
    Size = UDim2.fromOffset(400, 230),
    Acrylic = true,
    Theme = "Dark"
})

local KeyTab = KeyWindow:AddTab({ Title = "Nhập Key", Icon = "key" })

local KeyInputObject = KeyTab:AddInput("InputKey", {
    Title = "Vui lòng nhập mã Key:",
    Default = "",
    Placeholder = "Nhập Key tại đây...",
    Callback = function(Value)
        KeyInput = Value -- Cập nhật KeyInput mỗi khi gõ
    end
})

KeyTab:AddButton({
    Title = "Xác nhận Key",
    Callback = function()
        -- Kiểm tra key có khớp không
        if KeyInput == CorrectKey then
            Fluent:Notify({ Title = "Thành công", Content = "Đang mở menu...", Duration = 3 })
            KeyWindow:Destroy()
            StartMainScript()
        else
            Fluent:Notify({ Title = "Thất bại", Content = "Mã Key không đúng!", Duration = 5 })
        end
    end
})
