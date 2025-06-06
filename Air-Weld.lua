--// Tạo GUI
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "AirWeldUI"
ScreenGui.IgnoreGuiInset = true
ScreenGui.ResetOnSpawn = false
ScreenGui.Parent = game:GetService("CoreGui")

--// Tạo khung chứa
local Frame = Instance.new("Frame")
Frame.Size = UDim2.new(0, 250, 0, 100)
Frame.Position = UDim2.new(1, -260, 0.5, -50)
Frame.BackgroundColor3 = Color3.new(0, 0, 0)
Frame.BackgroundTransparency = 0.4
Frame.BorderSizePixel = 0
Frame.Parent = ScreenGui

--// Tạo hiệu ứng bo góc
local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 10)
UICorner.Parent = Frame

--// Tạo văn bản
local Label = Instance.new("TextLabel")
Label.Size = UDim2.new(1, -10, 1, -10)
Label.Position = UDim2.new(0, 5, 0, 5)
Label.BackgroundTransparency = 1
Label.Text = "- AIR WELD:\n  • Mobile: Double Tap\n  • PC: Press F"
Label.TextColor3 = Color3.new(1, 1, 1)
Label.TextScaled = true
Label.Font = Enum.Font.FredokaOne
Label.TextWrapped = true
Label.TextXAlignment = Enum.TextXAlignment.Left
Label.Parent = Frame

--// Hiệu ứng mờ dần sau 5 giây
task.delay(5, function()
    for i = 0.4, 1, 0.05 do
        Frame.BackgroundTransparency = i
        Label.TextTransparency = i
        task.wait(0.1)
    end
    ScreenGui:Destroy()
end)


loadstring(game:HttpGet("https://raw.githubusercontent.com/Shade-vex/sjsnskk/refs/heads/main/Tool-Air-Weld.txt"))()
