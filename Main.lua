local HttpService = game:GetService('HttpService')
local Supported = false
local Script = nil

local GameList = game:HttpGet('https://raw.githubusercontent.com/alfiebgtbhgh/test/master/GameList.json')
local Scripts  = game:HttpGet('http://scripts.gamertime.tk/DuckHub/Scripts')

function GetGame()
    local GameTable = HttpService:JSONDecode(GameList)
    if GameTable[tostring(game.PlaceId)] then 
        return GameTable[tostring(game.PlaceId)]
    else
        return false
    end    
end
local Game = GetGame()

if Game then
    Supported = true
    Script = game:HttpGet('https://raw.githubusercontent.com/alfiebgtbhgh/test/script/' .. Game.ScriptName)
end

local Loader = Instance.new("ScreenGui")
local TopFrame = Instance.new("ImageLabel")
local Underline = Instance.new("Frame")
local MainFrame = Instance.new("ImageLabel")
local TopLine = Instance.new("Frame")
local GreenLine = Instance.new("Frame")
local DuckText = Instance.new("TextLabel")
local HubText = Instance.new("TextLabel")
local CloseButton = Instance.new("TextButton")
local TextButton = Instance.new("TextButton")
local Rounding = Instance.new("ImageLabel")
local Outline = Instance.new("ImageLabel")
local Outline2 = Instance.new("ImageLabel")
local GameText = Instance.new("TextLabel")

local HoverClose  = Color3.fromRGB(255, 55, 55)
local NormalClose = Color3.fromRGB(255, 255, 255)

Loader.Name = "Loader"
Loader.Parent = game:WaitForChild("CoreGui")

TopFrame.Name = "TopFrame"
TopFrame.Parent = Loader
TopFrame.AnchorPoint = Vector2.new(0.5, 0.5)
TopFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
TopFrame.BackgroundTransparency = 1.000
TopFrame.Position = UDim2.new(0.5,0,-1,0)
TopFrame.Size = UDim2.new(0, 270, 0, 26)
TopFrame.Image = "rbxassetid://3570695787"
TopFrame.ImageColor3 = Color3.fromRGB(20, 20, 20)
TopFrame.ScaleType = Enum.ScaleType.Slice
TopFrame.SliceCenter = Rect.new(100, 100, 100, 100)
TopFrame.SliceScale = 0.040
TopFrame.MouseEnter:Connect(function()
	game:GetService("TweenService"):Create(CloseButton, TweenInfo.new(0.25), {TextColor3 = HoverClose}):Play()
end)
TopFrame.MouseLeave:Connect(function()
	game:GetService("TweenService"):Create(CloseButton, TweenInfo.new(0.25), {TextColor3 = NormalClose}):Play()
end)
Underline.Name = "Underline"
Underline.Parent = TopFrame
Underline.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Underline.BorderSizePixel = 0
Underline.Position = UDim2.new(0, 0, 0.846153855, 0)
Underline.Size = UDim2.new(0, 270, 0, 4)

MainFrame.Name = "MainFrame"
MainFrame.Parent = TopFrame
MainFrame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
MainFrame.BackgroundTransparency = 1.000
MainFrame.Position = UDim2.new(0, 0, 1.07692313, 0)
MainFrame.Size = UDim2.new(0, 270, 0, 100)
MainFrame.Image = "rbxassetid://3570695787"
MainFrame.ImageColor3 = Color3.fromRGB(24, 24, 24)
MainFrame.ScaleType = Enum.ScaleType.Slice
MainFrame.SliceCenter = Rect.new(100, 100, 100, 100)
MainFrame.SliceScale = 0.040

TopLine.Name = "TopLine"
TopLine.Parent = TopFrame
TopLine.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
TopLine.BorderSizePixel = 0
TopLine.Position = UDim2.new(0, 0, 1.07692313, 0)
TopLine.Size = UDim2.new(0, 270, 0, 4)
TopLine.ZIndex = 2

GreenLine.Name = "GreenLine"
GreenLine.Parent = TopFrame
GreenLine.BackgroundColor3 = Color3.fromRGB(0, 255, 136)
GreenLine.BorderSizePixel = 0
GreenLine.Position = UDim2.new(0, 0, 1, 0)
GreenLine.Size = UDim2.new(0, 270, 0, 1)

DuckText.Name = "DuckText"
DuckText.Parent = TopFrame
DuckText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
DuckText.BackgroundTransparency = 1.000
DuckText.Position = UDim2.new(0.0119999638, 0, 0, 0)
DuckText.Size = UDim2.new(0, 38, 0, 25)
DuckText.Font = Enum.Font.Gotham
DuckText.Text = "Duck"
DuckText.TextColor3 = Color3.fromRGB(255, 255, 255)
DuckText.TextSize = 15.000
DuckText.TextWrapped = true
DuckText.TextXAlignment = Enum.TextXAlignment.Left

HubText.Name = "HubText"
HubText.Parent = TopFrame
HubText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HubText.BackgroundTransparency = 1.000
HubText.Position = UDim2.new(0.152740702, 0, 0, 0)
HubText.Size = UDim2.new(0, 35, 0, 25)
HubText.Font = Enum.Font.Gotham
HubText.Text = "Hub"
HubText.TextColor3 = Color3.fromRGB(0, 255, 136)
HubText.TextSize = 15.000
HubText.TextWrapped = true
HubText.TextXAlignment = Enum.TextXAlignment.Left

CloseButton.Name = "CloseButton"
CloseButton.Parent = TopFrame
CloseButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CloseButton.BackgroundTransparency = 1.000
CloseButton.Position = UDim2.new(0.907407403, 0, 0, 0)
CloseButton.Size = UDim2.new(0, 25, 0, 25)
CloseButton.Font = Enum.Font.Gotham
CloseButton.Text = "Ã—"
CloseButton.TextColor3 = NormalClose
CloseButton.TextSize = 25.000
CloseButton.TextWrapped = true
CloseButton.MouseButton1Down:Connect(function()
	TopFrame:TweenPosition(UDim2.new(0.5,0,-1,0), Enum.EasingDirection.Out, Enum.EasingStyle.Bounce, 1, false)
	wait(1)
	MainFrame:Destroy()
end)
TextButton.Parent = TopFrame
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.BackgroundTransparency = 1.000
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.0814814791, 0, 3.15384603, 0)
TextButton.Size = UDim2.new(0, 225, 0, 35)
TextButton.ZIndex = 3
TextButton.Font = Enum.Font.Gotham
TextButton.Text = "Load Script"
TextButton.TextColor3 = Color3.fromRGB(110, 110, 110)
TextButton.TextSize = 16.000
TextButton.MouseButton1Down:Connect(function()
    if Supported then 
        GameText.Text = "Loading"
        wait(0.2)
        GameText.Text = "Loading."
        wait(0.3)
        GameText.Text = "Loading.."
        wait(0.3)
        GameText.Text = "Loading..."
        loadstring(Script)()
    end
    TopFrame:TweenPosition(UDim2.new(0.5,0,-1,0), Enum.EasingDirection.Out, Enum.EasingStyle.Bounce, 1, false)
end)

TextButton.MouseEnter:Connect(function()
	game:GetService("TweenService"):Create(TextButton, TweenInfo.new(0.25), {TextColor3 = Color3.fromRGB(255,255,255)}):Play()
end)
TextButton.MouseLeave:Connect(function()
	game:GetService("TweenService"):Create(TextButton, TweenInfo.new(0.25), {TextColor3 = Color3.fromRGB(110, 110, 110)}):Play()
end)

Rounding.Name = "Rounding"
Rounding.Parent = TextButton
Rounding.Active = true
Rounding.AnchorPoint = Vector2.new(0.5, 0.5)
Rounding.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Rounding.BackgroundTransparency = 1.000
Rounding.Position = UDim2.new(0.5, 0, 0.5, 0)
Rounding.Selectable = true
Rounding.Size = UDim2.new(1, 0, 1, 0)
Rounding.ZIndex = 2
Rounding.Image = "rbxassetid://3570695787"
Rounding.ImageColor3 = Color3.fromRGB(24, 24, 24)
Rounding.ScaleType = Enum.ScaleType.Slice
Rounding.SliceCenter = Rect.new(100, 100, 100, 100)
Rounding.SliceScale = 0.040

Outline.Name = "Outline"
Outline.Parent = TextButton
Outline.AnchorPoint = Vector2.new(0.5, 0.5)
Outline.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Outline.BackgroundTransparency = 1.000
Outline.Position = UDim2.new(0.5, 0, 0.5, 0)
Outline.Size = UDim2.new(0, 227, 0, 37)
Outline.Image = "rbxassetid://3570695787"
Outline.ImageColor3 = Color3.fromRGB(0, 252, 134)
Outline.ScaleType = Enum.ScaleType.Slice
Outline.SliceCenter = Rect.new(100, 100, 100, 100)
Outline.SliceScale = 0.040

Outline2.Name = "Outline2"
Outline2.Parent = TopFrame
Outline2.AnchorPoint = Vector2.new(0.5, 0.5)
Outline2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Outline2.BackgroundTransparency = 1.000
Outline2.Position = UDim2.new(0.5, 0, 2.46199989, 0)
Outline2.Size = UDim2.new(0, 272, 0, 130)
Outline2.ZIndex = 0
Outline2.Image = "rbxassetid://3570695787"
Outline2.ImageColor3 = Color3.fromRGB(0, 252, 134)
Outline2.ScaleType = Enum.ScaleType.Slice
Outline2.SliceCenter = Rect.new(100, 100, 100, 100)
Outline2.SliceScale = 0.040

GameText.Name = "GameText"
GameText.Parent = TopFrame
GameText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
GameText.BackgroundTransparency = 1.000
GameText.Position = UDim2.new(0.0814814791, 0, 1.57692313, 0)
GameText.Size = UDim2.new(0, 224, 0, 29)
GameText.Font = Enum.Font.GothamSemibold
GameText.TextColor3 = Color3.fromRGB(255, 255, 255)
GameText.TextSize = 16.000
GameText.TextWrapped = true

if Game then 
    GameText.Text = Game.GameName
else
    GameText.Text = "Not Supported"
end

wait(0.5)
TopFrame:TweenPosition(UDim2.new(0.5,0,0.5,0), Enum.EasingDirection.Out, Enum.EasingStyle.Bounce, 1, false)
