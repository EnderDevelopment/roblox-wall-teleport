-- TeleportButton.lua

local TeleportButton = Instance.new("TextButton")
TeleportButton.Name = "TeleportButton"
TeleportButton.Size = UDim2.new(0, 200, 0, 50)
TeleportButton.Position = UDim2.new(0.5, -100, 0.5, -25)
TeleportButton.Text = "Teleport"
TeleportButton.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

TeleportButton.MouseButton1Click:Connect(function()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
    
    local direction = humanoidRootPart.CFrame.LookVector
    local distance = 10
    
    humanoidRootPart.CFrame = humanoidRootPart.CFrame + direction * distance
end)

return TeleportButton