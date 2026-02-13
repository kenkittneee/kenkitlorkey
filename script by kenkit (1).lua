local ScreenGui = Instance.new("ScreenGui")
local ImageButton = Instance.new("ImageButton")
local UICorner = Instance.new("UICorner")

ScreenGui.Parent = game:GetService("CoreGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

ImageButton.Parent = ScreenGui
ImageButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ImageButton.BorderSizePixel = 0
ImageButton.Position = UDim2.new(0.1, 0, 0.15, 0)
ImageButton.Size = UDim2.new(0, 45, 0, 45)
ImageButton.Image = "http://www.roblox.com/asset/?id=112847886551666"
ImageButton.Active = true
ImageButton.Draggable = true

UICorner.CornerRadius = UDim.new(1, 0) 
UICorner.Parent = ImageButton

local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()

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
        Main0=Window:AddTab({ Title="Thông Tin" }),
        Main1=Window:AddTab({ Title="Script Farm" }),
        Main2=Window:AddTab({ Title="Script Kaitun" }),
        Main3=Window:AddTab({ Title="Script Pvp" }),
        Main4=Window:AddTab({ Title="script escape tsunami" }),
		Main5=Window:AddTab({ Title="Script Meme sea" }),
	
}
    
    Tabs.Main0:AddButton({
    Title = "Youtuber",
    Description = "Kenkit nèe",
    Callback = function()
        setclipboard("https://www.youtube.com/@kenkitdepzai692")
    end
})

	
    Tabs.Main1:AddButton({
    Title="Trau v9",
    Description="",
    Callback=function()
	  loadstring(game:HttpGet("https://raw.githubusercontent.com/trungdao2k4/buffalo/refs/heads/main/traurobloxv9.lua"))()
  end
})

Tabs.Main1:AddButton({
    Title="Andepzai hub",
    Description="",
    Callback=function()
	  loadstring(game:HttpGet("https://raw.githubusercontent.com/AnDepZaiHub/AnDepZaiHubBeta/refs/heads/main/AnDepZaiHubBeta.lua"))()
  end
})

Tabs.Main1:AddButton({
    Title="Quantum hub",
    Description="",
    Callback=function()
	  loadstring(game:HttpGet("https://raw.githubusercontent.com/flazhy/QuantumOnyx/refs/heads/main/QuantumOnyx.lua"))()
  end
})

Tabs.Main2:AddButton({
    Title="Kaitun (lever)",
    Description="",
    Callback=function()
	  getgenv().NAH = {
    DeleteMap = true,
    BlackScreen = false,
    LockFragment = 10,
    AwakenFruit = false,
    UpRace = true,
    LockFps = true,
    FPSCAP = 15,
    FarmItems = {
        Pole = false,
        Saber = false,
        GetMirrorFactorWhenHaveCup = true,
    },
    TableFruit = {
        ListFruit = {"Kitsune-Kitsune"},
        SnipeFruit = false,
        EatFruit = true
    },
}
loadstring(game:HttpGet("https://api.luarmor.net/files/v4/loaders/4365e6ab3c80828a24ba946f4d8ff946.lua"))()
  end
})

Tabs.Main3:AddButton({
    Title="Hermanos hub",
    Description="",
    Callback=function()
	  local script_mode = "PVP" -- PVP, FARM
loadstring(game:HttpGet("https://raw.githubusercontent.com/hermanos-dev/hermanos-hub/refs/heads/main/Loader.lua"))()
  end
})

Tabs.Main4:AddButton({
    Title="Cyrus hub",
    Description="",
    Callback=function()
	  loadstring(game:HttpGet("https://raw.githubusercontent.com/CyrusOffc/scriptcyrus/refs/heads/main/roblox/loader.lua"))()
  end
})

Tabs.Main5:AddButton({
    Title="Redz hub",
    Description="",
    Callback=function()
	  local Settings = {
  JoinTeam = "Pirates"; -- Pirates/Marines
  Translator = true; -- true/false
}
getgenv().BETA_VERSION = true
loadstring(game:HttpGet("https://raw.githubusercontent.com/tlredz/Scripts/refs/heads/main/main.luau"))(Settings)
  end
})
