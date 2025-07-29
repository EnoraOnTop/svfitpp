local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Aimlock | By Logitech",
   LoadingTitle = "",
   LoadingSubtitle = "",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = ""
   },
    Discord = {
        Enabled = false,
        Invite = "fmtuTC3rGE",
        RememberJoins = false
    },
   KeySystem = false, -- Enable key system
    KeySettings = {
        Title = "Key System",
        Subtitle = "",
        Note = "Get Key at https://discord.gg/GcjmSrtmnk Free",
        FileName = "FHXX CRACKED KEY",
        SaveKey = false, -- Key won't be saved permanently
        GrabKeyFromSite = true,
        Key = {"r"} -- List of accepted keys or key URLs
    }
})







local AimlockTab = Window:CreateTab("Aimlock", nil) -- Title, Image
local AimlockSection = AimlockTab:CreateSection("Aimbot")



-- Player Tab - Infinite Jump

-- Textbox to input aim lock key
local KeyInput = AimlockTab:CreateInput({
    Name = "AimLock Key",
    PlaceholderText = "Enter Key (Any Key)",
    RemoveTextAfterFocusLost = false,
    Callback = function(inputKey)
        AimLockKey = inputKey:lower()
        Rayfield:Notify({
            Title = "Key Updated",
            Content = "Aimlock key updated to: " .. AimLockKey,
            Duration = 3
        })
    end
})

-- Textbox to input prediction factor
local PredictionInput = AimlockTab:CreateInput({
    Name = "AimLock Prediction",
    PlaceholderText = "Enter Prediction (0.1 - 1)",
    RemoveTextAfterFocusLost = false,
    Callback = function(inputPrediction)
        local newPrediction = tonumber(inputPrediction)
        if newPrediction then
            PredictionFactor = newPrediction
            Rayfield:Notify({
                Title = "Prediction Updated",
                Content = "Prediction factor set to: " .. tostring(PredictionFactor),
                Duration = 3
            })
        else
            Rayfield:Notify({
                Title = "Invalid Input",
                Content = "Please enter a valid number for prediction.",
                Duration = 3
            })
        end
    end
})

-- Aim Lock Button with user-defined key and prediction factor
local Button = AimlockTab:CreateButton({
    Name = "Activate AimLock",
    Callback = function()
        local Players = game:GetService("Players")
        local RunService = game:GetService("RunService")
        local LocalPlayer = Players.LocalPlayer
        local CamlockState = false
        local enemy = nil

        -- Function to find nearest enemy and lock onto their head
        local function FindNearestEnemy()
            local ClosestDistance, ClosestPlayer = math.huge, nil
            local CenterPosition = Vector2.new(
                game:GetService("GuiService"):GetScreenResolution().X / 2,
                game:GetService("GuiService"):GetScreenResolution().Y / 2
            )
            for _, Player in ipairs(Players:GetPlayers()) do
                if Player ~= LocalPlayer then
                    local Character = Player.Character
                    if Character and Character:FindFirstChild("Head") and Character.Humanoid.Health > 0 then
                        local Position, OnScreen = workspace.CurrentCamera:WorldToViewportPoint(Character.Head.Position)
                        if OnScreen then
                            local Distance = (CenterPosition - Vector2.new(Position.X, Position.Y)).Magnitude
                            if Distance < ClosestDistance then
                                ClosestPlayer = Character.Head -- Target the Head
                                ClosestDistance = Distance
                            end
                        end
                    end
                end
            end
            return ClosestPlayer
        end

        -- Function to apply prediction to the enemy position
        local function GetPredictedPosition(enemyHead)
            if enemyHead and enemyHead.Velocity then
                return enemyHead.Position + (enemyHead.Velocity * PredictionFactor)
            end
            return enemyHead.Position
        end

        -- Camera lock loop
        RunService.Heartbeat:Connect(function()
            if CamlockState and enemy then
                local targetPosition = GetPredictedPosition(enemy)
                workspace.CurrentCamera.CFrame = CFrame.new(workspace.CurrentCamera.CFrame.p, targetPosition)
            end
        end)

        -- Keybind to toggle aim lock with the user-defined key
        LocalPlayer:GetMouse().KeyDown:Connect(function(key)
            if key == AimLockKey then
                CamlockState = not CamlockState
                if CamlockState then
                    enemy = FindNearestEnemy()
                else
                    enemy = nil
                end
            end
        end)
    end
})

