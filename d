local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "LOL Hub ",
   LoadingTitle = "LOL Hub",
   LoadingSubtitle = "Created by logitech2234 on dc",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "LOL Hub"
   },
    Discord = {
        Enabled = true,
        Invite = "7hUNFsyjKs",
        RememberJoins = false
    },
   KeySystem = false, -- Enable key system
    KeySettings = {
        Title = "Key System",
        Subtitle = "Created by Logitech2234 on dc",
        Note = "To get the key, join https://discord.gg/7hUNFsyjKs",
        FileName = "LOL HUB KEY",
        SaveKey = false, -- Key won't be saved permanently
        GrabKeyFromSite = true,
        Key = {""} -- List of accepted keys or key URLs
    }
})

Rayfield:Notify({
   Title = "Welcome To LOL HUB",
   Content = "Thanks for using our script!",
   Duration = 5,
   Image = nil,
   Actions = { -- Notification Buttons
      Ignore = {
         Name = "...",
         Callback = function()
         print("Join Discord https://discord.gg/7hUNFsyjKs")
         print("Join Discord https://discord.gg/7hUNFsyjKs")
		 print("Join Discord https://discord.gg/7hUNFsyjKs")
         print("Join Discord https://discord.gg/7hUNFsyjKs")
		 print("Join Discord https://discord.gg/7hUNFsyjKs")
         print("Join Discord https://discord.gg/7hUNFsyjKs")
		 print("Join Discord https://discord.gg/7hUNFsyjKs")
         print("Join Discord https://discord.gg/7hUNFsyjKs")
		 print("Join Discord https://discord.gg/7hUNFsyjKs")
         print("Join Discord https://discord.gg/7hUNFsyjKs")
		 print("Join Discord https://discord.gg/7hUNFsyjKs")
         print("Join Discord https://discord.gg/7hUNFsyjKs")
		 print("Join Discord https://discord.gg/7hUNFsyjKs")
         print("Join Discord https://discord.gg/7hUNFsyjKs")
		 print("Join Discord https://discord.gg/7hUNFsyjKs")
         print("Join Discord https://discord.gg/7hUNFsyjKs")
		 
      end
   },
},
})








local WTab = Window:CreateTab("Whitelist", nil) -- Title, Image
local WSection = WTab:CreateSection("")



local LTab = Window:CreateTab("Script", nil) -- Title, Image
local LSection = LTab:CreateSection("")

local Button = LTab:CreateButton({
   Name = "South Bronx: The Trenches❗",
   Callback = function()
   local HWIDTable = loadstring(game:HttpGet("https://pastebin.com/raw/QpZUsj3K"))()
   local HWID = game:GetService("RbxAnalyticsService"):GetClientId()

for i,v in pairs(HWIDTable) do 
    if v == HWID then
		print("Success!!")
-- example script by https://github.com/mstudio45/LinoriaLib/blob/main/Example.lua and modified by deivid
-- You can suggest changes with a pull request or something

local repo = "https://raw.githubusercontent.com/Prostejakubbb/script/main/"
local Library = loadstring(game:HttpGet(repo .. "Library.lua"))()
local ThemeManager = loadstring(game:HttpGet(repo .. "addons/ThemeManager.lua"))()
local SaveManager = loadstring(game:HttpGet(repo .. "addons/SaveManager.lua"))()

local Options = Library.Options
local Toggles = Library.Toggles

Library.ForceCheckbox = false -- Forces AddToggle to AddCheckbox
Library.ShowToggleFrameInKeybinds = true -- Make toggle keybinds work inside the keybinds UI (aka adds a toggle to the UI). Good for mobile users (Default value = true)

local Window = Library:CreateWindow({
	-- Set Center to true if you want the menu to appear in the center
	-- Set AutoShow to true if you want the menu to appear when it is created
	-- Set Resizable to true if you want to have in-game resizable Window
	-- Set MobileButtonsSide to "Left" or "Right" if you want the ui toggle & lock buttons to be on the left or right side of the window
	-- Set ShowCustomCursor to false if you don't want to use the Linoria cursor
	-- NotifySide = Changes the side of the notifications (Left, Right) (Default value = Left)
	-- Position and Size are also valid options here
	-- but you do not need to define them unless you are changing them :)

	Title = "LOL HUB",
	Footer = "version: FREE",
	NotifySide = "Right",
	ShowCustomCursor = true,
})

-- CALLBACK NOTE:
-- Passing in callback functions via the initial element parameters (i.e. Callback = function(Value)...) works
-- HOWEVER, using Toggles/Options.INDEX:OnChanged(function(Value) ... ) is the RECOMMENDED way to do this.
-- I strongly recommend decoupling UI code from logic code. i.e. Create your UI elements FIRST, and THEN setup :OnChanged functions later.

-- You do not have to set your tabs & groups up this way, just a prefrence.
-- You can find more icons in https://lucide.dev/
local Tabs = {
	-- Creates a new tab titled Main
	Main = Window:AddTab("Main", "user"),
    Visuals = Window:AddTab("Visuals", "binoculars"),
    Aimbot = Window:AddTab("Aimbot", "crosshair"),
    Misc = Window:AddTab("Misc", "ellipsis"),
    Farm = Window:AddTab("Farms", "tractor"),
	["UI Settings"] = Window:AddTab("UI Settings", "settings"),
}


--[[
Example of how to add a warning box to a tab; the title AND text support rich text formatting.

local WarningTab = Tabs["UI Settings"]:AddTab("Warning Box", "user")

WarningTab:UpdateWarningBox({
	Visible = true,
	Title = "Warning",
	Text = "This is a warning box!",
})

]]

-- Groupbox and Tabbox inherit the same functions
-- except Tabboxes you have to call the functions on a tab (Tabbox:AddTab(name))


local LeftGroupBox5 = Tabs.Visuals:AddLeftGroupbox("Visuals")


local LeftGroupBox9 = Tabs.Aimbot:AddLeftGroupbox("Aimbot")

local LeftGroupBox81 = Tabs.Misc:AddLeftGroupbox("Misc")

local LeftGroupBox700 = Tabs.Farm:AddLeftGroupbox("Farms")




local Players = game:GetService("Players")


local isToggled = false


local function continuouslyUpdateWeaponStats(player)
    while isToggled do 
        local backpack = player:FindFirstChild("Backpack")
        if backpack then
            -- Loop through all items in the backpack
            for _, item in ipairs(backpack:GetChildren()) do
                if item:IsA("Tool") then 
                    if item:FindFirstChild("Ammo") and item:FindFirstChild("Mag") then
                        item.Ammo.Value = 18
                        item.Mag.Value = 25
                    end
                end
            end
        end
        wait(0.0000000001) 
    end
end








local MyButton = LeftGroupBox700:AddButton({
	Text = "Box AutoFarm",
	Func = function()
        local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local virtualInputManager = game:GetService("VirtualInputManager")
local userInputService = game:GetService("UserInputService")
local backpack = player.Backpack -- Envanterdeki öğeler için

-- Konumlar
local konum1 = Vector3.new(-551.46, 3.54, -86.13)
local konum2 = Vector3.new(-540.16, 3.54, -83.06)
local konum3 = Vector3.new(-401.42, 3.36, -70.90)

-- Durum kontrol değişkeni
local isRunning = true

-- E tuşu basılı tutma fonksiyonu
local function pressE()
    virtualInputManager:SendKeyEvent(true, Enum.KeyCode.E, false, game)
end

-- E tuşu bırakma fonksiyonu
local function releaseE()
    virtualInputManager:SendKeyEvent(false, Enum.KeyCode.E, false, game)
end

-- Karakteri bir konuma gitmesi için hareket ettir
local function moveToPosition(position)
    humanoid:MoveTo(position)
    while isRunning and (character.HumanoidRootPart.Position - position).Magnitude > 1 do
        wait()
        -- Eğer karakter bir nesneye çarparsa, hareketi tekrar başlat
        if humanoid.MoveToFinished then
            humanoid:MoveTo(position)
        end
    end
end

-- Envanterdeki Crate'i al
local function getCrateFromBackpack()
    for _, item in ipairs(backpack:GetChildren()) do
        if item.Name == "Crate" then -- Envanterdeki Crate'i kontrol et
            return item
        end
    end
    return nil
end

-- Crate'i eline al
local function equipCrate(crate)
    if crate then
        -- Eğer Crate bulunduysa, onu karakterin eline tak
        crate.Parent = character
        crate.Handle.CFrame = character:WaitForChild("RightHand").CFrame -- RightHand'e yerleştir
    end
end

-- E basılı tutma ve hareket fonksiyonu
local function performAction()
    -- Konum 1'e git
    if not isRunning then return end
    moveToPosition(konum1)

    -- E tuşuna basılı tut
    if not isRunning then return end
    pressE()
    wait(1.50)  -- 1.5 saniye bekle
    releaseE()

    -- Konum 2'ye git
    if not isRunning then return end
    moveToPosition(konum2)

    -- Konum 3'e git
    if not isRunning then return end
    moveToPosition(konum3)

    -- Envanterdeki Crate'i al
    if not isRunning then return end
    local crate = getCrateFromBackpack()

    -- Crate'i eline al
    if not isRunning then return end
    equipCrate(crate)

    -- E tuşuna basılı tut
    if not isRunning then return end
    pressE()
    wait(1.60)  -- 1.6 saniye bekle
    releaseE()

    -- Konum 2'ye geri git (Konum 3'ün bitmesinden sonra)
    if not isRunning then return end
    moveToPosition(konum2)

    -- Konum 1'e geri git
    if not isRunning then return end
    moveToPosition(konum1)
end

-- Döngüyü başlat
spawn(function()
    while isRunning do
        performAction()
        wait(1)  -- Döngü arasında kısa bir bekleme
    end
end)

-- P tuşuna basılınca döngüyü durdur
userInputService.InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end
    if input.KeyCode == Enum.KeyCode.P then
        isRunning = false
        humanoid:MoveTo(character.HumanoidRootPart.Position) -- Hareketi durdur
    end
end)

        Rayfield:Notify({
            Title = "Loaded Box AutoFarm",
            Content = "to stop press p, and start job before using!",
            Duration = 6.5,
            Image = 4483362458,
         })


    end,
	DoubleClick = false,

	Tooltip = "Box AutoFarm",
	DisabledTooltip = "I am disabled!",

	Disabled = false, -- Will disable the button (true / false)
	Visible = true, -- Will make the button invisible (true / false)
	Risky = false, -- Makes the text red (the color can be changed using Library.Scheme.Red) (Default value = false)
})






local MyButton = LeftGroupBox700:AddButton({
	Text = "Trash AutoFarm",
	Func = function()
        local player = game.Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local humanoid = character:WaitForChild("Humanoid")
        local virtualInputManager = game:GetService("VirtualInputManager")
        local userInputService = game:GetService("UserInputService")
        
        -- Konumlar
        local konum1 = Vector3.new(699.29, 3.55, 166.56)
        local konum2 = Vector3.new(718.74, 3.74, 144.36)
        local konum3 = Vector3.new(747.13, 3.66, 147.96)
        local konum4 = Vector3.new(727.38, 3.93, 212.59)
        
        -- Durum kontrol değişkeni
        local isRunning = true
        
        -- E tuşu basılı tutma fonksiyonu
        local function pressE()
            virtualInputManager:SendKeyEvent(true, Enum.KeyCode.E, false, game)
        end
        
        -- E tuşu bırakma fonksiyonu
        local function releaseE()
            virtualInputManager:SendKeyEvent(false, Enum.KeyCode.E, false, game)
        end
        
        -- Karakteri bir konuma gitmesi için hareket ettir
        local function moveToPosition(position)
            humanoid:MoveTo(position)
            while isRunning and (character.HumanoidRootPart.Position - position).Magnitude > 1 do
                wait()
                -- Eğer karakter bir nesneye çarparsa, hareketi tekrar başlat
                if humanoid.MoveToFinished then
                    humanoid:MoveTo(position)
                end
            end
        end
        
        -- E basılı tutma ve hareket fonksiyonu
        local function performAction()
            -- Konum 1'e git ve E tuşuna basılı tut
            if not isRunning then return end
            moveToPosition(konum1)
            pressE()
            wait(1.60)  -- 1.6 saniye bekle
            releaseE()
        
            -- Konum 2'ye git
            if not isRunning then return end
            moveToPosition(konum2)
        
            -- Konum 3'e git
            if not isRunning then return end
            moveToPosition(konum3)
        
            -- Konum 4'e git ve E tuşuna basılı tut
            if not isRunning then return end
            moveToPosition(konum4)
            pressE()
            wait(1.60)  -- 1.6 saniye bekle
            releaseE()
        
            -- Konum 3'e geri git
            if not isRunning then return end
            moveToPosition(konum3)
        
            -- Konum 2'ye geri git
            if not isRunning then return end
            moveToPosition(konum2)
        
            -- Konum 1'e geri git
            if not isRunning then return end
            moveToPosition(konum1)
        end
        
        -- Döngüyü başlat
        spawn(function()
            while isRunning do
                performAction()
                wait(1)  -- Döngü arasında kısa bir bekleme
            end
        end)
        
        -- P tuşuna basılınca döngüyü durdur
        userInputService.InputBegan:Connect(function(input, gameProcessed)
            if gameProcessed then return end
            if input.KeyCode == Enum.KeyCode.P then
                isRunning = false
                humanoid:MoveTo(character.HumanoidRootPart.Position) -- Hareketi durdur
            end
        end)
        
                Rayfield:Notify({
                    Title = "Trash AutoFarm",
                    Content = "to stop press p",
                    Duration = 6.5,
                    Image = 4483362458,
                 })
        
            end,
	DoubleClick = false,

	Tooltip = "Trash AutoFarm",
	DisabledTooltip = "I am disabled!",

	Disabled = false, -- Will disable the button (true / false)
	Visible = true, -- Will make the button invisible (true / false)
	Risky = false, -- Makes the text red (the color can be changed using Library.Scheme.Red) (Default value = false)
})




local MyButton = LeftGroupBox700:AddButton({
	Text = "Marshmello AutoFarm *NEW*",
	Func = function()
        local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local virtualInputManager = game:GetService("VirtualInputManager")
local camera = workspace.CurrentCamera
local userInputService = game:GetService("UserInputService")

-- Durumu kontrol eden değişken
local isRunning = true

-- Konum bilgileri
local locations = {
    {pos = Vector3.new(1142.23, 10.10, 451.36), tool = "Water", holdE = true, holdTime = 1, waitTime = 30},
    {pos = Vector3.new(1134.52, 10.10, 444.15)},
    {pos = Vector3.new(1142.23, 10.10, 451.36), tool = "Sugar Block Bag", holdE = true, holdTime = 1, waitTime = 3},
    {pos = Vector3.new(1134.52, 10.10, 444.15)},
    {pos = Vector3.new(1142.23, 10.10, 451.36), tool = "Gelatin", holdE = true, holdTime = 1, waitTime = 50},
    {pos = Vector3.new(1134.52, 10.10, 444.15)},
    {pos = Vector3.new(1142.23, 10.10, 451.36), tool = "Empty Bag", holdE = true, holdTime = 1, waitTime = 1},
    {pos = Vector3.new(1134.52, 10.10, 444.15)},
}

-- Kamerayı yukarıdan aşağıya bakacak şekilde ayarla
local function setCameraAbove(position)
    local abovePosition = position + Vector3.new(10, 10, 10) -- Kamerayı 10 birim yukarı taşı
    camera.CFrame = CFrame.new(abovePosition, position) -- Yukarıdan aşağıya bakmasını sağla
end

-- E tuşuna basma işlemi
local function pressE()
    virtualInputManager:SendKeyEvent(true, Enum.KeyCode.E, false, game)
end

local function releaseE()
    virtualInputManager:SendKeyEvent(false, Enum.KeyCode.E, false, game)
end

-- Karakteri bir konuma hareket ettir
local function moveToPosition(position)
    humanoid:MoveTo(position)
    while isRunning and (character.HumanoidRootPart.Position - position).Magnitude > 1 do
        wait(0.1)
        if humanoid.MoveToFinished then
            humanoid:MoveTo(position) -- Eğer hareket durduysa yeniden başlat
        end
    end
end

-- İşlemleri sırayla gerçekleştir
local function performActions()
    while isRunning do -- Döngü sürekli devam eder
        for i, location in ipairs(locations) do
            if not isRunning then return end -- Eğer durdurulmuşsa döngüyü bitir

            -- Konuma git
            moveToPosition(location.pos)

            -- Eğer araç seçimi yapılacaksa
            if location.tool and isRunning then
                local tool = player.Backpack:FindFirstChild(location.tool)
                if tool then
                    tool.Parent = character
                end
            end

            -- Eğer E tuşuna basılacaksa
            if location.holdE and isRunning then
                pressE()
                wait(location.holdTime)
                releaseE()
            end

            -- Bekleme süresi varsa bekle (Son konumdan önceki hariç)
            if location.waitTime and i ~= (#locations - 1) and isRunning then
                wait(location.waitTime)
                setCameraAbove(location.pos) -- Kamerayı ayarla
            end

            -- Eğer E tuşuna yeniden basılacaksa
            if location.reholdE and isRunning then
                pressE()
                wait(location.reholdTime)
                releaseE()
            end
        end
    end
end

-- İşlemleri başlat
spawn(function()
    performActions()
end)

-- P tuşuna basıldığında işlemi durdur
userInputService.InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end
    if input.KeyCode == Enum.KeyCode.P then
        isRunning = false
        humanoid:MoveTo(character.HumanoidRootPart.Position) -- Hareketi durdur
    end
end)

        Rayfield:Notify({
            Title = "Loaded Marshmello AutoFarm",
            Content = "to stop press p",
            Duration = 6.5,
            Image = 4483362458,
         })
    end,
	DoubleClick = false,

	Tooltip = "Marshmello AutoFarm",
	DisabledTooltip = "I am disabled!",

	Disabled = false, -- Will disable the button (true / false)
	Visible = true, -- Will make the button invisible (true / false)
	Risky = false, -- Makes the text red (the color can be changed using Library.Scheme.Red) (Default value = false)
})





local MyButton = LeftGroupBox700:AddButton({
	Text = "Marshmello AutoFarm [For Roomate]",
	Func = function()
        local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local virtualInputManager = game:GetService("VirtualInputManager")
local camera = workspace.CurrentCamera
local userInputService = game:GetService("UserInputService")

-- Durumu kontrol eden değişken
local isRunning = true

-- Konum bilgileri
local locations = {
    {pos = Vector3.new(1142.68, 10.10, 447.77), tool = "Water", holdE = true, holdTime = 1, waitTime = 30},
    {pos = Vector3.new(1134.52, 10.10, 444.15)},
    {pos = Vector3.new(1142.68, 10.10, 447.77), tool = "Sugar Block Bag", holdE = true, holdTime = 1, waitTime = 3},
    {pos = Vector3.new(1134.52, 10.10, 444.15)},
    {pos = Vector3.new(1142.68, 10.10, 447.77), tool = "Gelatin", holdE = true, holdTime = 1, waitTime = 50},
    {pos = Vector3.new(1134.52, 10.10, 444.15)},
    {pos = Vector3.new(1142.68, 10.10, 447.77), tool = "Empty Bag", holdE = true, holdTime = 1, waitTime = 1},
    {pos = Vector3.new(1134.52, 10.10, 444.15)},
}

-- Kamerayı yukarıdan aşağıya bakacak şekilde ayarla
local function setCameraAbove(position)
    local abovePosition = position + Vector3.new(10, 10, 10) -- Kamerayı 10 birim yukarı taşı
    camera.CFrame = CFrame.new(abovePosition, position) -- Yukarıdan aşağıya bakmasını sağla
end

-- E tuşuna basma işlemi
local function pressE()
    virtualInputManager:SendKeyEvent(true, Enum.KeyCode.E, false, game)
end

local function releaseE()
    virtualInputManager:SendKeyEvent(false, Enum.KeyCode.E, false, game)
end

-- Karakteri bir konuma hareket ettir
local function moveToPosition(position)
    humanoid:MoveTo(position)
    while isRunning and (character.HumanoidRootPart.Position - position).Magnitude > 1 do
        wait(0.1)
        if humanoid.MoveToFinished then
            humanoid:MoveTo(position) -- Eğer hareket durduysa yeniden başlat
        end
    end
end

-- İşlemleri sırayla gerçekleştir
local function performActions()
    while isRunning do -- Döngü sürekli devam eder
        for i, location in ipairs(locations) do
            if not isRunning then return end -- Eğer durdurulmuşsa döngüyü bitir

            -- Konuma git
            moveToPosition(location.pos)

            -- Eğer araç seçimi yapılacaksa
            if location.tool and isRunning then
                local tool = player.Backpack:FindFirstChild(location.tool)
                if tool then
                    tool.Parent = character
                end
            end

            -- Eğer E tuşuna basılacaksa
            if location.holdE and isRunning then
                pressE()
                wait(location.holdTime)
                releaseE()
            end

            -- Bekleme süresi varsa bekle (Son konumdan önceki hariç)
            if location.waitTime and i ~= (#locations - 1) and isRunning then
                wait(location.waitTime)
                setCameraAbove(location.pos) -- Kamerayı ayarla
            end

            -- Eğer E tuşuna yeniden basılacaksa
            if location.reholdE and isRunning then
                pressE()
                wait(location.reholdTime)
                releaseE()
            end
        end
    end
end

-- İşlemleri başlat
spawn(function()
    performActions()
end)

-- P tuşuna basıldığında işlemi durdur
userInputService.InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end
    if input.KeyCode == Enum.KeyCode.P then
        isRunning = false
        humanoid:MoveTo(character.HumanoidRootPart.Position) -- Hareketi durdur
    end
end)

        Rayfield:Notify({
            Title = "Loaded Marshmello AutoFarm",
            Content = "to stop press p",
            Duration = 6.5,
            Image = 4483362458,
         })
    end,
	DoubleClick = false,

	Tooltip = "Marshmello AutoFarm",
	DisabledTooltip = "I am disabled!",

	Disabled = false, -- Will disable the button (true / false)
	Visible = true, -- Will make the button invisible (true / false)
	Risky = false, -- Makes the text red (the color can be changed using Library.Scheme.Red) (Default value = false)
})





local MyButton = LeftGroupBox700:AddButton({
	Text = "Card AutoFarm *NEW*",
	Func = function()
        local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local virtualInputManager = game:GetService("VirtualInputManager")
local camera = workspace.CurrentCamera
local userInputService = game:GetService("UserInputService")

-- Durumu kontrol eden değişken
local isRunning = true

-- Konum bilgileri
local locations = {
    {pos = Vector3.new(218.61, 3.73, -336.98), holdE = true, holdTime = 1, waitTime = 2},
    {pos = Vector3.new(-41.67, 3.72, -358.60)},
    {pos = Vector3.new(-47.70, 3.73, -320.62), holdE = false, holdTime = 1, waitTime = 10},
    {pos = Vector3.new(-47.70, 3.73, -320.62), tool = "Fake ID", holdE = true, holdTime = 1, waitTime = 40},
    {pos = Vector3.new(-42.09, 3.73, -332.43)},
    {pos = Vector3.new(-42.09, 3.73, -332.43), holdE = true, holdTime = 1, waitTime = 1},
    {pos = Vector3.new(-41.67, 3.72, -358.60)},
}

-- Kamerayı yukarıdan aşağıya bakacak şekilde ayarla
local function setCameraAbove(position)
    local abovePosition = position + Vector3.new(0, 10, 0) -- Kamerayı 10 birim yukarı taşı
    camera.CFrame = CFrame.new(abovePosition, position) -- Yukarıdan aşağıya bakmasını sağla
end

-- E tuşuna basma işlemi
local function pressE()
    virtualInputManager:SendKeyEvent(true, Enum.KeyCode.E, false, game)
end

local function releaseE()
    virtualInputManager:SendKeyEvent(false, Enum.KeyCode.E, false, game)
end

-- Karakteri bir konuma hareket ettir
local function moveToPosition(position)
    humanoid:MoveTo(position)
    while isRunning and (character.HumanoidRootPart.Position - position).Magnitude > 1 do
        wait(0.1)
        if humanoid.MoveToFinished then
            humanoid:MoveTo(position) -- Eğer hareket durduysa yeniden başlat
        end
    end
end

-- İşlemleri sırayla gerçekleştir
local function performActions()
    while isRunning do -- Döngü sürekli devam eder
        for i, location in ipairs(locations) do
            if not isRunning then return end -- Eğer durdurulmuşsa döngüyü bitir

            -- Konuma git
            moveToPosition(location.pos)

            -- Eğer araç seçimi yapılacaksa
            if location.tool and isRunning then
                local tool = player.Backpack:FindFirstChild(location.tool)
                if tool then
                    tool.Parent = character
                end
            end

            -- Eğer E tuşuna basılacaksa
            if location.holdE and isRunning then
                pressE()
                wait(location.holdTime)
                releaseE()
            end

            -- Bekleme süresi varsa bekle (Son konumdan önceki hariç)
            if location.waitTime and i ~= (#locations - 1) and isRunning then
                wait(location.waitTime)
                setCameraAbove(location.pos) -- Kamerayı ayarla
            end

            -- Eğer E tuşuna yeniden basılacaksa
            if location.reholdE and isRunning then
                pressE()
                wait(location.reholdTime)
                releaseE()
            end
        end
    end
end

-- İşlemleri başlat
spawn(function()
    performActions()
end)

-- P tuşuna basıldığında işlemi durdur
userInputService.InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end
    if input.KeyCode == Enum.KeyCode.P then
        isRunning = false
        humanoid:MoveTo(character.HumanoidRootPart.Position) -- Hareketi durdur
    end
end)

        Rayfield:Notify({
            Title = "Loaded Marshmello AutoFarm",
            Content = "to stop press p",
            Duration = 6.5,
            Image = 4483362458,
         })
    end,
	DoubleClick = false,

	Tooltip = "Card AutoFarm",
	DisabledTooltip = "I am disabled!",

	Disabled = false, -- Will disable the button (true / false)
	Visible = true, -- Will make the button invisible (true / false)
	Risky = false, -- Makes the text red (the color can be changed using Library.Scheme.Red) (Default value = false)
})







local MyButton = LeftGroupBox700:AddButton({
	Text = "Potato AutoFarm",
	Func = function()
        local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local virtualInputManager = game:GetService("VirtualInputManager")
local camera = workspace.CurrentCamera
local userInputService = game:GetService("UserInputService")

-- Durumu kontrol eden değişken
local isRunning = true

-- Konum bilgileri
local locations = {
    {pos = Vector3.new(-461.62, 3.86, -467.55), tool = "Potato", holdE = true, holdTime = 1, waitTime = 2},
    {pos = Vector3.new(-461.62, 3.86, -473.63), holdE = true, holdTime = 1, waitTime = 3},
    {pos = Vector3.new(-466.43, 3.96, -500.60)},
    {pos = Vector3.new(-462.67, 3.86, -522.34), tool = "Flour", holdE = true, holdTime = 1, waitTime = 2},
    {pos = Vector3.new(-468.11, 3.86, -494.76)},
    {pos = Vector3.new(-515.34, 3.86, -482.29), holdE = true, holdTime = 1, waitTime = 65, reholdE = true, reholdTime = 1},
    {pos = Vector3.new(-492, 4, -473)}, -- Burada bekleme olmayacak
    {pos = Vector3.new(-480, 4, -434), holdE = true, holdTime = 1} -- Son konum
}

-- Kamerayı yukarıdan aşağıya bakacak şekilde ayarla
local function setCameraAbove(position)
    local abovePosition = position + Vector3.new(0, 10, 0) -- Kamerayı 10 birim yukarı taşı
    camera.CFrame = CFrame.new(abovePosition, position) -- Yukarıdan aşağıya bakmasını sağla
end

-- E tuşuna basma işlemi
local function pressE()
    virtualInputManager:SendKeyEvent(true, Enum.KeyCode.E, false, game)
end

local function releaseE()
    virtualInputManager:SendKeyEvent(false, Enum.KeyCode.E, false, game)
end

-- Karakteri bir konuma hareket ettir
local function moveToPosition(position)
    humanoid:MoveTo(position)
    while isRunning and (character.HumanoidRootPart.Position - position).Magnitude > 1 do
        wait(0.1)
        if humanoid.MoveToFinished then
            humanoid:MoveTo(position) -- Eğer hareket durduysa yeniden başlat
        end
    end
end

-- İşlemleri sırayla gerçekleştir
local function performActions()
    while isRunning do -- Döngü sürekli devam eder
        for i, location in ipairs(locations) do
            if not isRunning then return end -- Eğer durdurulmuşsa döngüyü bitir

            -- Konuma git
            moveToPosition(location.pos)

            -- Eğer araç seçimi yapılacaksa
            if location.tool and isRunning then
                local tool = player.Backpack:FindFirstChild(location.tool)
                if tool then
                    tool.Parent = character
                end
            end

            -- Eğer E tuşuna basılacaksa
            if location.holdE and isRunning then
                pressE()
                wait(location.holdTime)
                releaseE()
            end

            -- Bekleme süresi varsa bekle (Son konumdan önceki hariç)
            if location.waitTime and i ~= (#locations - 1) and isRunning then
                wait(location.waitTime)
                setCameraAbove(location.pos) -- Kamerayı ayarla
            end

            -- Eğer E tuşuna yeniden basılacaksa
            if location.reholdE and isRunning then
                pressE()
                wait(location.reholdTime)
                releaseE()
            end
        end
    end
end

-- İşlemleri başlat
spawn(function()
    performActions()
end)

-- P tuşuna basıldığında işlemi durdur
userInputService.InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end
    if input.KeyCode == Enum.KeyCode.P then
        isRunning = false
        humanoid:MoveTo(character.HumanoidRootPart.Position) -- Hareketi durdur
    end
end)

        Rayfield:Notify({
            Title = "Loaded Chips AutoFarm",
            Content = "to stop press p",
            Duration = 6.5,
            Image = 4483362458,
         })
    end,
	DoubleClick = false,

	Tooltip = "Potato AutoFarm",
	DisabledTooltip = "I am disabled!",

	Disabled = false, -- Will disable the button (true / false)
	Visible = true, -- Will make the button invisible (true / false)
	Risky = false, -- Makes the text red (the color can be changed using Library.Scheme.Red) (Default value = false)
})




local MyButton = LeftGroupBox81:AddButton({
	Text = "Vehicle Mods GUI",
	Func = function(State)
        loadstring(game:HttpGet("https://pastebin.com/raw/r4QSQu72"))() 
        end,
	DoubleClick = false,

	Tooltip = "Vehicle Mods GUI",
	DisabledTooltip = "I am disabled!",

	Disabled = false, -- Will disable the button (true / false)
	Visible = true, -- Will make the button invisible (true / false)
	Risky = false, -- Makes the text red (the color can be changed using Library.Scheme.Red) (Default value = false)
})



LeftGroupBox81:AddCheckbox("MyCheckbox", {
	Text = "Infinite Ammo",
	Tooltip = "Infinite Ammo", -- Information shown when you hover over the toggle
	DisabledTooltip = "I am disabled!", -- Information shown when you hover over the toggle while it's disabled

	Default = false, -- Default value (true / false)
	Disabled = false, -- Will disable the toggle (true / false)
	Visible = true, -- Will make the toggle invisible (true / false)
	Risky = false, -- Makes the text red (the color can be changed using Library.Scheme.Red) (Default value = false)

	Callback = function(Value)
        isToggled = Value 
        if isToggled then

            for _, player in ipairs(Players:GetPlayers()) do
                task.spawn(function()
                    continuouslyUpdateWeaponStats(player)
                end)
            end
        end
    end,
})

Toggles.MyCheckbox:OnChanged(function()
	
end)






LeftGroupBox81:AddCheckbox("MyCheckbox", {
	Text = "Big Head",
	Tooltip = "Big Head", -- Information shown when you hover over the toggle
	DisabledTooltip = "I am disabled!", -- Information shown when you hover over the toggle while it's disabled

	Default = false, -- Default value (true / false)
	Disabled = false, -- Will disable the toggle (true / false)
	Visible = true, -- Will make the toggle invisible (true / false)
	Risky = false, -- Makes the text red (the color can be changed using Library.Scheme.Red) (Default value = false)

	Callback = function(state)
            while state do
                updateHeads()
                task.wait(0.0000000000000000000000000001)
            end
        end
    })

Toggles.MyCheckbox:OnChanged(function()
	
end)


function updateHeads()
    for k,v in next, game:GetService('Players'):GetChildren() do 
        oghead = v.Character:FindFirstChild('Head')
        if oghead then 
        oghead.Size = Vector3.new(2.5,2.5,2.5,2.5) 
        game.Players.LocalPlayer.Character.Head.Size = Vector3.new(2.5,2.5,2.5,2.5)
        end
    end
end



local aimAtHead = true 

local MyButton = LeftGroupBox9:AddButton({
	Text = "Disable Aimbot",
	Func = function()
        if not aimbotEnabled then
            -- İlk tıklama: Aimbot devre dışı bırak
            aimbotEnabled = false

            -- FOV çemberi ve ok çizimini gizle
            if fovCircle then
                fovCircle.Visible = false
                fovCircle:Remove()  -- FOV çemberini tamamen sil
                fovCircle = nil  -- Referansı temizle
            end
            if arrow then
                arrow.Visible = false
                arrow:Remove()  -- Ok çizimini tamamen sil
                arrow = nil  -- Referansı temizle
            end

            -- RenderStepped bağlantısını temizle
            if RenderSteppedConnection then
                RenderSteppedConnection:Disconnect()
                RenderSteppedConnection = nil
            end

            -- Kitlenme işlemi devre dışı
            Aiming = false
            print("Aimbot devre dışı bırakıldı.")
        else
            -- Eğer aimbotEnabled true ise, durumu tersine çevir ve aktif hale getir
            aimbotEnabled = true

            -- FOV çemberi ve ok çizimini oluştur
            if not fovCircle then
                fovCircle = Drawing.new("Circle")
                fovCircle.Radius = FOVRadius
                fovCircle.Color = Color3.fromRGB(255, 0, 255)
                fovCircle.Thickness = 2
                fovCircle.Transparency = 1
                fovCircle.Filled = false
            end

            if not arrow then
                arrow = Drawing.new("Line")
                arrow.Visible = true
                arrow.Color = Color3.fromRGB(255, 0, 0)
                arrow.Thickness = 2
            end

            -- Aimbot etkinleştirildiğinde, render işlemi başlat
            RenderSteppedConnection = RunService.RenderStepped:Connect(function()
                fovCircle.Position = UserInputService:GetMouseLocation()  -- FOV çemberini fare konumuna yerleştir

                -- Hedefi takip et
                if Aiming then
                    local closestPlayer = getClosestPlayerInFOV()
                    if closestPlayer then
                        aimAt(closestPlayer, AimSmoothing)
                    end
                end

                -- Ok çizimi
                local closestPlayer = getClosestPlayerInFOV()
                if closestPlayer then
                    drawArrowToTarget(closestPlayer)
                else
                    arrow.Visible = false
                end
            end)

            -- Aimbot kitlenmesi aktif
            Aiming = true
            print("Aimbot etkinleştirildi.")
        end
    end,
	DoubleClick = false,

	Tooltip = "Disable Aimbot",
	DisabledTooltip = "I am disabled!",

	Disabled = false, -- Will disable the button (true / false)
	Visible = true, -- Will make the button invisible (true / false)
	Risky = false, -- Makes the text red (the color can be changed using Library.Scheme.Red) (Default value = false)
})


LeftGroupBox9:AddSlider("MySlider", {
	Text = "Aimbot FOV",
	Default = 100,
	Min = 50,
	Max = 600,
    Rounding = 10,
	Compact = false,

	Callback = function(Value)
        -- Mevcut çember rengini koru
        local previousColor = fovCircle and fovCircle.Color or Color3.fromRGB(255, 255, 255) -- Önceki renk veya varsayılan

        -- Önceki tüm nesneleri ve bağlantıları temizle
        if fovCircle then
            fovCircle:Remove()
            fovCircle = nil
        end
        if arrow then
            arrow:Remove()
            arrow = nil
        end
        if RenderSteppedConnection then
            RenderSteppedConnection:Disconnect()
            RenderSteppedConnection = nil
        end
        if InputBeganConnection then
            InputBeganConnection:Disconnect()
            InputBeganConnection = nil
        end
        if InputEndedConnection then
            InputEndedConnection:Disconnect()
            InputEndedConnection = nil
        end

        -- Yeni FOV çemberi ve aimbot ayarları
        local Players = game:GetService("Players")
        local UserInputService = game:GetService("UserInputService")
        local RunService = game:GetService("RunService")
        local LocalPlayer = Players.LocalPlayer
        local Camera = game.Workspace.CurrentCamera
        local AimPartName = "Head"
        local HumanoidRootPartName = "HumanoidRootPart"

        local AimSmoothing = 0.2
        local AimDistance = 300
        local FOVRadius = Value -- Slider'dan gelen değer
        local Aiming = false

        -- Yeni FOV çemberi
        fovCircle = Drawing.new("Circle")
        fovCircle.Radius = FOVRadius
        fovCircle.Color = previousColor -- Önceki renk korunur
        fovCircle.Thickness = 2
        fovCircle.Transparency = 1
        fovCircle.Filled = false

        -- Yeni ok çizimi
        arrow = Drawing.new("Line")
        arrow.Visible = false
        arrow.Color = Color3.fromRGB(255, 0, 0)
        arrow.Thickness = 2

        -- Nişan alma fonksiyonları
        local function aimAt(targetPlayer, smooth)
            local character = targetPlayer.Character
            if character then
                local targetPart
                if aimAtHead then
                    targetPart = character:FindFirstChild("Head")  -- Hedef kafa
                else
                    targetPart = character:FindFirstChild("HumanoidRootPart")  -- Hedef torso (HumanoidRootPart)
                end

                if targetPart then
                    local velocity = character.HumanoidRootPart.Velocity
                    local LookAt
                    if velocity.Magnitude < 0.07 then
                        LookAt = targetPart.Position
                    else
                        local leadTime = math.min(velocity.Magnitude * 0.14, 140)
                        LookAt = targetPart.Position + (velocity.Unit * leadTime)
                    end

                    -- Seçilen parça (Kafa veya Torso) ile nişan al
                    Camera.CFrame = CFrame.new(Camera.CFrame.Position, LookAt:Lerp(targetPart.Position, smooth))
                end
            end
        end

        local function isInFOV(targetPlayer)
            local character = targetPlayer.Character
            if character and character:FindFirstChild(AimPartName) then
                local aimPart = character[AimPartName]
                local humanoid = character:FindFirstChildOfClass("Humanoid")
                if humanoid and humanoid.Health > 1 then
                    local screenPosition, onScreen = Camera:WorldToViewportPoint(aimPart.Position)
                    local distanceFromMouse = (Vector2.new(screenPosition.X, screenPosition.Y) - UserInputService:GetMouseLocation()).Magnitude
                    return onScreen and distanceFromMouse <= FOVRadius
                end
            end
            return false
        end

        local function getClosestPlayerInFOV()
            local closestPlayer = nil
            local shortestDistance = AimDistance

            for _, player in pairs(Players:GetPlayers()) do
                if player ~= LocalPlayer and player.Character then
                    local character = player.Character
                    local humanoid = character:FindFirstChildOfClass("Humanoid")
                    if humanoid and humanoid.Health > 1 and character:FindFirstChild("HumanoidRootPart") and isInFOV(player) then
                        local distance = (LocalPlayer.Character.HumanoidRootPart.Position - character.HumanoidRootPart.Position).Magnitude
                        if distance < shortestDistance then
                            closestPlayer = player
                            shortestDistance = distance
                        end
                    end
                end
            end
            return closestPlayer
        end

        local function drawArrowToTarget(targetPlayer)
            local character = targetPlayer.Character
            local humanoid = character and character:FindFirstChildOfClass("Humanoid")
            if humanoid and humanoid.Health > 1 and character:FindFirstChild(HumanoidRootPartName) then
                local aimPart = character[HumanoidRootPartName]
                local screenPosition, onScreen = Camera:WorldToViewportPoint(aimPart.Position)

                if onScreen then
                    local mouseLocation = UserInputService:GetMouseLocation()
                    arrow.From = mouseLocation
                    arrow.To = Vector2.new(screenPosition.X, screenPosition.Y)
                    arrow.Color = isInFOV(targetPlayer) and Color3.fromRGB(255, 165, 0) or Color3.fromRGB(255, 0, 0)
                    arrow.Visible = true
                else
                    arrow.Visible = false
                end
            else
                arrow.Visible = false
            end
        end

        -- Giriş kontrolleri
        InputBeganConnection = UserInputService.InputBegan:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton2 then
                Aiming = true
            end
            if input.KeyCode == Enum.KeyCode.P then
                Aiming = false
            end
        end)

        InputEndedConnection = UserInputService.InputEnded:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton2 then
                Aiming = false
            end
        end)

        -- Render döngüsü
        RenderSteppedConnection = RunService.RenderStepped:Connect(function()
            fovCircle.Position = UserInputService:GetMouseLocation()

            if Aiming then
                local closestPlayer = getClosestPlayerInFOV()
                if closestPlayer then
                    aimAt(closestPlayer, AimSmoothing)
                end
            end

            local closestPlayer = getClosestPlayerInFOV()
            if closestPlayer then
                drawArrowToTarget(closestPlayer)
            else
                arrow.Visible = false
            end
        end)
    end,

	Tooltip = "Aimbot FOV", -- Information shown when you hover over the slider
	DisabledTooltip = "I am disabled!", -- Information shown when you hover over the slider while it's disabled

	Disabled = false, -- Will disable the slider (true / false)
	Visible = true, -- Will make the slider invisible (true / false)
})

-- Options is a table added to getgenv() by the library
-- You index Options with the specified index, in this case it is 'MySlider'
-- To get the value of the slider you do slider.Value

local Number = Options.MySlider.Value
Options.MySlider:OnChanged(function()
	print("MySlider was changed! New value:", Options.MySlider.Value)
end)


LeftGroupBox9:AddLabel("FOV Circle Color"):AddColorPicker("ColorPicker", {
	Default = Color3.new(255, 255, 255), -- Bright green
	Title = "Some color", -- Optional. Allows you to have a custom color picker title (when you open it)
	Transparency = 0, -- Optional. Enables transparency changing for this color picker (leave as nil to disable)

	Callback = function(Value)
        if fovCircle then
            fovCircle.Color = Value
        end
    end
})

Options.ColorPicker:OnChanged(function()
	print("Color changed!", Options.ColorPicker.Value)
	print("Transparency changed!", Options.ColorPicker.Transparency)
end)


LeftGroupBox9:AddDropdown("MySearchableDropdown", {
	Values = { "Head", "Body" },
	Default = 1, -- number index of the value / string
	Multi = false, -- true / false, allows multiple choices to be selected

	Text = "Aimbot Target",
	Tooltip = "Aimbot Target", -- Information shown when you hover over the dropdown
	DisabledTooltip = "I am disabled!", -- Information shown when you hover over the dropdown while it's disabled

	Searchable = true, -- true / false, makes the dropdown searchable (great for a long list of values)

	Callback = function(Options)
        if Options[1] == "Head" then
            aimAtHead = true
        else
            aimAtHead = false
        end
    end
 })


 LeftGroupBox9:AddSlider("MySlider", {
	Text = "Fov Transparent",
	Default = 5,
	Min = 0,
	Max = 10,
    Rounding = 2,
	Compact = false,

	Callback = function(Value)
        if fovCircle then
            local transparency = Value / 10
            fovCircle.Transparency = transparency
        end
    end,

	Tooltip = "Fov Transparent", -- Information shown when you hover over the slider
	DisabledTooltip = "I am disabled!", -- Information shown when you hover over the slider while it's disabled

	Disabled = false, -- Will disable the slider (true / false)
	Visible = true, -- Will make the slider invisible (true / false)
})

-- Options is a table added to getgenv() by the library
-- You index Options with the specified index, in this case it is 'MySlider'
-- To get the value of the slider you do slider.Value

local Number = Options.MySlider.Value
Options.MySlider:OnChanged(function()
	print("MySlider was changed! New value:", Options.MySlider.Value)
end)


LeftGroupBox5:AddCheckbox("MyCheckbox", {
	Text = "Box",
	Tooltip = "Box ESP", -- Information shown when you hover over the toggle
	DisabledTooltip = "I am disabled!", -- Information shown when you hover over the toggle while it's disabled

	Default = false, -- Default value (true / false)
	Disabled = false, -- Will disable the toggle (true / false)
	Visible = true, -- Will make the toggle invisible (true / false)
	Risky = false, -- Makes the text red (the color can be changed using Library.Scheme.Red) (Default value = false)

	Callback = function(state)
        local Settings = {
            Box_Color = Color3.fromRGB(255, 165, 0), -- Orange color for the ESP box
            Box_Thickness = 2,
            Team_Check = false,
            Team_Color = false,
            Autothickness = true
        }
        
        -- Locals
        local Space = game:GetService("Workspace")
        local Player = game:GetService("Players").LocalPlayer
        local Camera = Space.CurrentCamera
        
        -- Create a new line
        local function NewLine(color, thickness)
            local line = Drawing.new("Line")
            line.Visible = false
            line.From = Vector2.new(0, 0)
            line.To = Vector2.new(0, 0)
            line.Color = color
            line.Thickness = thickness
            line.Transparency = 1
            return line
        end
        
        -- Set the visibility of all elements in the library
        local function Vis(lib, state)
            for i, v in pairs(lib) do
                v.Visible = state
            end
        end
        
        -- Colorize function for the library (we can skip the rainbow effect now)
        local function Colorize(lib, color)
            for i, v in pairs(lib) do
                v.Color = color
            end
        end
        
        -- Main Draw Function
        local function Main(plr)
            repeat wait() until plr.Character ~= nil and plr.Character:FindFirstChild("Humanoid") ~= nil
            local R15
            if plr.Character.Humanoid.RigType == Enum.HumanoidRigType.R15 then
                R15 = true
            else 
                R15 = false
            end
            local Library = {
                TL1 = NewLine(Settings.Box_Color, Settings.Box_Thickness),
                TL2 = NewLine(Settings.Box_Color, Settings.Box_Thickness),
        
                TR1 = NewLine(Settings.Box_Color, Settings.Box_Thickness),
                TR2 = NewLine(Settings.Box_Color, Settings.Box_Thickness),
        
                BL1 = NewLine(Settings.Box_Color, Settings.Box_Thickness),
                BL2 = NewLine(Settings.Box_Color, Settings.Box_Thickness),
        
                BR1 = NewLine(Settings.Box_Color, Settings.Box_Thickness),
                BR2 = NewLine(Settings.Box_Color, Settings.Box_Thickness)
            }
        
            -- Removed Rainbow function, as we no longer need it for fixed color
            -- Local part for positioning and updating the box
            local oripart = Instance.new("Part")
            oripart.Parent = Space
            oripart.Transparency = 1
            oripart.CanCollide = false
            oripart.Size = Vector3.new(1, 1, 1)
            oripart.Position = Vector3.new(0, 0, 0)
        
            -- Updater Loop
            local function Updater()
                local c 
                c = game:GetService("RunService").RenderStepped:Connect(function()
                    if plr.Character ~= nil and plr.Character:FindFirstChild("Humanoid") ~= nil and plr.Character:FindFirstChild("HumanoidRootPart") ~= nil and plr.Character.Humanoid.Health > 0 and plr.Character:FindFirstChild("Head") ~= nil then
                        local Hum = plr.Character
                        local HumPos, vis = Camera:WorldToViewportPoint(Hum.HumanoidRootPart.Position)
                        if vis then
                            oripart.Size = Vector3.new(Hum.HumanoidRootPart.Size.X, Hum.HumanoidRootPart.Size.Y*1.5, Hum.HumanoidRootPart.Size.Z)
                            oripart.CFrame = CFrame.new(Hum.HumanoidRootPart.CFrame.Position, Camera.CFrame.Position)
                            local SizeX = oripart.Size.X
                            local SizeY = oripart.Size.Y
                            local TL = Camera:WorldToViewportPoint((oripart.CFrame * CFrame.new(SizeX, SizeY, 0)).p)
                            local TR = Camera:WorldToViewportPoint((oripart.CFrame * CFrame.new(-SizeX, SizeY, 0)).p)
                            local BL = Camera:WorldToViewportPoint((oripart.CFrame * CFrame.new(SizeX, -SizeY, 0)).p)
                            local BR = Camera:WorldToViewportPoint((oripart.CFrame * CFrame.new(-SizeX, -SizeY, 0)).p)
        
                            if Settings.Team_Check then
                                if plr.TeamColor == Player.TeamColor then
                                    Colorize(Library, Color3.fromRGB(0, 255, 0)) -- Green for teammates
                                else 
                                    Colorize(Library, Color3.fromRGB(255, 0, 0)) -- Red for enemies
                                end
                            end
        
                            if Settings.Team_Color then
                                Colorize(Library, plr.TeamColor.Color)
                            end
        
                            local ratio = (Camera.CFrame.p - Hum.HumanoidRootPart.Position).magnitude
                            local offset = math.clamp(1/ratio*750, 2, 300)
        
                            Library.TL1.From = Vector2.new(TL.X, TL.Y)
                            Library.TL1.To = Vector2.new(TL.X + offset, TL.Y)
                            Library.TL2.From = Vector2.new(TL.X, TL.Y)
                            Library.TL2.To = Vector2.new(TL.X, TL.Y + offset)
        
                            Library.TR1.From = Vector2.new(TR.X, TR.Y)
                            Library.TR1.To = Vector2.new(TR.X - offset, TR.Y)
                            Library.TR2.From = Vector2.new(TR.X, TR.Y)
                            Library.TR2.To = Vector2.new(TR.X, TR.Y + offset)
        
                            Library.BL1.From = Vector2.new(BL.X, BL.Y)
                            Library.BL1.To = Vector2.new(BL.X + offset, BL.Y)
                            Library.BL2.From = Vector2.new(BL.X, BL.Y)
                            Library.BL2.To = Vector2.new(BL.X, BL.Y - offset)
        
                            Library.BR1.From = Vector2.new(BR.X, BR.Y)
                            Library.BR1.To = Vector2.new(BR.X - offset, BR.Y)
                            Library.BR2.From = Vector2.new(BR.X, BR.Y)
                            Library.BR2.To = Vector2.new(BR.X, BR.Y - offset)
        
                            Vis(Library, true)
        
                            if Settings.Autothickness then
                                local distance = (Player.Character.HumanoidRootPart.Position - oripart.Position).magnitude
                                local value = math.clamp(1/distance*100, 1, 4) --0.1 is min thickness, 6 is max
                                for u, x in pairs(Library) do
                                    x.Thickness = value
                                end
                            else 
                                for u, x in pairs(Library) do
                                    x.Thickness = Settings.Box_Thickness
                                end
                            end
                        else 
                            Vis(Library, false)
                        end
                    else 
                        Vis(Library, false)
                        if game:GetService("Players"):FindFirstChild(plr.Name) == nil then
                            for i, v in pairs(Library) do
                                v:Remove()
                                oripart:Destroy()
                            end
                            c:Disconnect()
                        end
                    end
                end)
            end
            coroutine.wrap(Updater)()
        end
        
        -- Draw Boxes for all players
        for i, v in pairs(game:GetService("Players"):GetPlayers()) do
            if v.Name ~= Player.Name then
              coroutine.wrap(Main)(v)
            end
        end
        
        game:GetService("Players").PlayerAdded:Connect(function(newplr)
            coroutine.wrap(Main)(newplr)
        end)

        Rayfield:Notify({
            Title = "Loaded Box ESP",
            Content = " ",
            Duration = 6.5,
            Image = 4483362458,
         })

    end
})

Toggles.MyCheckbox:OnChanged(function()
	
end)



LeftGroupBox5:AddCheckbox("MyCheckbox", {
	Text = "Name",
	Tooltip = "Name ESP", -- Information shown when you hover over the toggle
	DisabledTooltip = "I am disabled!", -- Information shown when you hover over the toggle while it's disabled

	Default = false, -- Default value (true / false)
	Disabled = false, -- Will disable the toggle (true / false)
	Visible = true, -- Will make the toggle invisible (true / false)
	Risky = false, -- Makes the text red (the color can be changed using Library.Scheme.Red) (Default value = false)

	Callback = function(state)
        loadstring(game:HttpGet('https://pastebin.com/raw/SDSsfiVN'))()
    end
})

Toggles.MyCheckbox:OnChanged(function()
	
end)



LeftGroupBox5:AddCheckbox("MyCheckbox", {
	Text = "Inventory",
	Tooltip = "Inventory ESP", -- Information shown when you hover over the toggle
	DisabledTooltip = "I am disabled!", -- Information shown when you hover over the toggle while it's disabled

	Default = false, -- Default value (true / false)
	Disabled = false, -- Will disable the toggle (true / false)
	Visible = true, -- Will make the toggle invisible (true / false)
	Risky = false, -- Makes the text red (the color can be changed using Library.Scheme.Red) (Default value = false)

	Callback = function(state)
        -- Gösterilmeyecek öğeler listesi
        local excludedItems = {"Phone", "Fist"}

        -- Gösterilmeyecek öğe kontrolü
        local function isExcluded(itemName)
            for _, excluded in ipairs(excludedItems) do
                if itemName == excluded then
                    return true
                end
            end
            return false
        end
        
        -- Mesafeye bağlı boyut ve kalınlık güncelleme
        local function updateSizeAndBoldness(billboardGui, player)
            local localPlayer = game.Players.LocalPlayer
            local character = localPlayer.Character
            if not character then return end
            local head = character:FindFirstChild("Head")
            if not head then return end
        
            local targetHead = player.Character and player.Character:FindFirstChild("Head")
            if not targetHead then return end
        
            -- Mesafe hesaplama
            local distance = (head.Position - targetHead.Position).Magnitude
        
            -- Mesafeye göre yazı boyutunu dinamik olarak küçültme veya büyütme
            local minSize = 6  -- Minimum TextSize
            local maxSize = 16  -- Maksimum TextSize
            local sizeFactor = math.clamp((150 / distance), 0.2, 2)  -- Mesafe arttıkça küçülme oranı, 0.2 - 2 arası
        
            local scaledTextSize = maxSize * sizeFactor
            -- TextSize ayarı (yazının boyutu mesafeye bağlı olarak değişecek)
            if billboardGui:FindFirstChild("TextLabel") then
                local textLabel = billboardGui:FindFirstChild("TextLabel")
                textLabel.TextSize = math.clamp(scaledTextSize, minSize, maxSize) -- TextSize büyüklüğünü mesafeye göre ayarlıyoruz
                
                -- Yazının kalınlığını değiştirme (yakınlaştıkça kalınlaşacak)
                local boldFactor = math.clamp((150 / distance), 1, 3)  -- Mesafeye göre kalınlık artacak
                textLabel.Font = (boldFactor > 2) and Enum.Font.SourceSansBold or Enum.Font.SourceSans  -- Kalın font seçimi
            end
        end
        
        -- Envanter görüntüleme fonksiyonu
        local function displayInventory(player)
            local character = player.Character or player.CharacterAdded:Wait()
            local head = character:WaitForChild("Head")
        
            -- BillboardGui'yi oluşturuyoruz
            local billboardGui = Instance.new("BillboardGui")
            billboardGui.Name = "InventoryESP"
            billboardGui.Adornee = head
            billboardGui.Size = UDim2.new(0, 150, 0, 100) -- Sabit boyut
            billboardGui.StudsOffset = Vector3.new(0, 6, 0) -- Kafanın hemen üzerine daha az yukarı kaydırma
            billboardGui.AlwaysOnTop = true
        
            -- TextLabel oluşturuyoruz
            local textLabel = Instance.new("TextLabel", billboardGui)
            textLabel.Size = UDim2.new(1, 0, 1, 0)
            textLabel.TextColor3 = Color3.fromRGB(255, 165, 0) -- Turuncu renk
            textLabel.BackgroundTransparency = 1
            textLabel.TextSize = 16 -- Başlangıç metin boyutu
            textLabel.Font = Enum.Font.SourceSansBold -- Kalın yazı tipi başlangıç
            textLabel.TextWrapped = true
        
            local function updateInventory()
                local inventoryText = ""
                local displayedItems = {}
        
                -- Sırt çantasındaki öğeleri listele
                for _, item in pairs(player.Backpack:GetChildren()) do
                    if not isExcluded(item.Name) and not displayedItems[item.Name] then
                        inventoryText = item.Name .. "\n" .. inventoryText -- Yeni öğeyi en üste ekle
                        displayedItems[item.Name] = true
                    end
                end
        
                -- Elde tutulan öğeyi göster ve sonuna "-Hand" ekle
                local tool = character:FindFirstChildOfClass("Tool")
                if tool and not isExcluded(tool.Name) then
                    inventoryText = tool.Name .. " -Hand\n" .. inventoryText
                end
        
                textLabel.Text = inventoryText
            end
        
            -- Backpack veya character'daki değişikliklere tepki
            player.Backpack.ChildAdded:Connect(updateInventory)
            player.Backpack.ChildRemoved:Connect(updateInventory)
            character.ChildAdded:Connect(updateInventory)
            character.ChildRemoved:Connect(updateInventory)
        
            -- Mesafeye bağlı boyut ve kalınlık güncelleme döngüsü
            game:GetService("RunService").RenderStepped:Connect(function()
                if billboardGui and billboardGui.Parent then
                    updateSizeAndBoldness(billboardGui, player)
                end
            end)
        
            -- İlk envanter güncellemesi
            updateInventory()
        
            -- BillboardGui'yi karakterin başına yerleştiriyoruz
            billboardGui.Parent = head
        end
        
        -- ESP açma/kapama fonksiyonu
        local espEnabled = false
        
        local function toggleESP()
            espEnabled = not espEnabled
        
            if espEnabled then
                -- Tüm oyuncular için ESP'yi başlatıyoruz
                for _, player in pairs(game:GetService("Players"):GetPlayers()) do
                    if player ~= game:GetService("Players").LocalPlayer then
                        -- Her oyuncu için karakterin varlığını kontrol et ve ESP'yi başlat
                        player.CharacterAdded:Connect(function(character)
                            displayInventory(player) -- Karakter eklenince ESP göster
                        end)
        
                        -- Eğer oyuncu zaten oyunda, karakteri varsa hemen ESP göster
                        if player.Character then
                            displayInventory(player)
                        end
                    end
                end
            else
                -- ESP kapatıldığında, tüm oyuncuların ESP'lerini temizliyoruz
                for _, player in pairs(game:GetService("Players"):GetPlayers()) do
                    if player.Character then
                        local head = player.Character:FindFirstChild("Head")
                        if head then
                            local existingGui = head:FindFirstChild("InventoryESP")
                            if existingGui then
                                existingGui:Destroy() -- Eski ESP göstergelerini sil
                            end
                        end
                    end
                end
            end
        end
        
        -- Yeni oyuncu katıldığında veya ölen oyuncunun karakteri yeniden doğduğunda ESP'yi güncelle
        game:GetService("Players").PlayerAdded:Connect(function(player)
            player.CharacterAdded:Connect(function()
                if espEnabled then
                    displayInventory(player) -- Karakter eklendiğinde ESP'yi başlat
                end
            end)
        end)
        
        -- Başlangıçta ESP'yi etkinleştirme (başlangıçta açık başlatıyoruz)
        toggleESP()
        
                Rayfield:Notify({
                    Title = "Loaded Inventory ESP",
                    Content = " ",
                    Duration = 6.5,
                    Image = 4483362458,
                 })
        
            end
        })

Toggles.MyCheckbox:OnChanged(function()
	
end)



LeftGroupBox5:AddCheckbox("MyCheckbox", {
	Text = "Health",
	Tooltip = "Health ESP", -- Information shown when you hover over the toggle
	DisabledTooltip = "I am disabled!", -- Information shown when you hover over the toggle while it's disabled

	Default = false, -- Default value (true / false)
	Disabled = false, -- Will disable the toggle (true / false)
	Visible = true, -- Will make the toggle invisible (true / false)
	Risky = false, -- Makes the text red (the color can be changed using Library.Scheme.Red) (Default value = false)

	Callback = function(state)
        loadstring(game:HttpGet('https://pastebin.com/raw/mxLC8P1L'))()
    end
})

Toggles.MyCheckbox:OnChanged(function()
	
end)



LeftGroupBox5:AddCheckbox("MyCheckbox", {
	Text = "Skeleton",
	Tooltip = "Skeleton ESP", -- Information shown when you hover over the toggle
	DisabledTooltip = "I am disabled!", -- Information shown when you hover over the toggle while it's disabled

	Default = false, -- Default value (true / false)
	Disabled = false, -- Will disable the toggle (true / false)
	Visible = true, -- Will make the toggle invisible (true / false)
	Risky = false, -- Makes the text red (the color can be changed using Library.Scheme.Red) (Default value = false)

	Callback = function(state)
        loadstring(game:HttpGet("https://raw.githubusercontent.com/melvin123gp/shit/refs/heads/main/skeleto"))()()
    end
})

Toggles.MyCheckbox:OnChanged(function()
	
end)



LeftGroupBox5:AddCheckbox("MyCheckbox", {
	Text = "Cham",
	Tooltip = "Cham ESP", -- Information shown when you hover over the toggle
	DisabledTooltip = "I am disabled!", -- Information shown when you hover over the toggle while it's disabled

	Default = false, -- Default value (true / false)
	Disabled = false, -- Will disable the toggle (true / false)
	Visible = true, -- Will make the toggle invisible (true / false)
	Risky = false, -- Makes the text red (the color can be changed using Library.Scheme.Red) (Default value = false)

	Callback = function(state)
        loadstring(game:HttpGet("https://raw.githubusercontent.com/melvin123gp/e21/refs/heads/main/111"))()()
    end
})

Toggles.MyCheckbox:OnChanged(function()
	
end)

local LeftGroupBox = Tabs.Main:AddLeftGroupbox("Player")


LeftGroupBox:AddCheckbox("MyCheckbox", {
	Text = "Faster Walkspeed",
	Tooltip = "Faster Walkspeed", -- Information shown when you hover over the toggle
	DisabledTooltip = "I am disabled!", -- Information shown when you hover over the toggle while it's disabled

	Default = false, -- Default value (true / false)
	Disabled = false, -- Will disable the toggle (true / false)
	Visible = true, -- Will make the toggle invisible (true / false)
	Risky = false, -- Makes the text red (the color can be changed using Library.Scheme.Red) (Default value = false)

	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
	end,
})

Toggles.MyCheckbox:OnChanged(function()
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 21
end)





LeftGroupBox:AddCheckbox("MyCheckbox", {
	Text = "Spoof name",
	Tooltip = "Spoof name", -- Information shown when you hover over the toggle
	DisabledTooltip = "I am disabled!", -- Information shown when you hover over the toggle while it's disabled

	Default = false, -- Default value (true / false)
	Disabled = false, -- Will disable the toggle (true / false)
	Visible = true, -- Will make the toggle invisible (true / false)
	Risky = false, -- Makes the text red (the color can be changed using Library.Scheme.Red) (Default value = false)

	Callback = function(Value)
        --🔧 CONFIG
local Config = {
	ProtectedName = "Player", -- Čo sa zobrazí miesto tvojho mena
	RenameOthers = false, -- Zapne aj premenovanie iných hráčov
	OthersPrefix = "Player", -- Prefix pre ostatných hráčov (napr. Player1, Player2...)
}

--📦 SERVICES
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local PlayerName = LocalPlayer.Name

local nameMap = {} -- Mapovanie mien na ich náhrady
local filterEnabled = false

-- Metatable hook variables (aby sme mohli hook zrušiť)
local mt = getrawmetatable(game)
local oldIndex = mt.__index
local hookSet = false

-- Vytvor mapovanie mien
local function setupNameMap()
	nameMap[PlayerName] = Config.ProtectedName
	if Config.RenameOthers then
		local counter = 1
		for _, plr in pairs(Players:GetPlayers()) do
			if plr ~= LocalPlayer then
				nameMap[plr.Name] = Config.OthersPrefix .. tostring(counter)
				counter += 1
			end
		end
	end
end

setupNameMap()

-- Filter funkcia na string
local function filterText(str)
	for original, replacement in pairs(nameMap) do
		str = string.gsub(str, original, replacement)
	end
	return str
end

-- Obnov pôvodný text (ak je filtrovaný)
local function restoreText(obj)
	if obj:IsA("TextLabel") or obj:IsA("TextButton") or obj:IsA("TextBox") then
		if obj.Text and type(obj.Text) == "string" then
			-- Návrat k originálu podľa mapy - ak tam je náhrada
			for original, replacement in pairs(nameMap) do
				if string.find(obj.Text, replacement) then
					obj.Text = string.gsub(obj.Text, replacement, original)
				end
			end
		end
	end
end

-- Update GUI text podľa aktuálneho stavu filtra
local function updateGuiText(obj)
	if obj:IsA("TextLabel") or obj:IsA("TextButton") or obj:IsA("TextBox") then
		if obj.Text and type(obj.Text) == "string" then
			if filterEnabled then
				local filtered = filterText(obj.Text)
				if filtered ~= obj.Text then
					obj.Text = filtered
				end
			else
				restoreText(obj)
			end
		end
	end
end

-- Prejdi všetky GUI objekty a aktualizuj ich text
local function refreshAllGui()
	for _, obj in pairs(game:GetDescendants()) do
		updateGuiText(obj)
	end
end

-- Metatable hook - aktivácia
local function enableHook()
	if hookSet then return end
	setreadonly(mt, false)

	mt.__index = newcclosure(function(self, key)
		if filterEnabled and self == LocalPlayer then
			if key == "Name" or key == "DisplayName" then
				return Config.ProtectedName
			end
		end
		return oldIndex(self, key)
	end)

	setreadonly(mt, true)
	hookSet = true
end

-- Metatable hook - deaktivácia (obnovenie starej funkcie)
local function disableHook()
	if not hookSet then return end
	setreadonly(mt, false)
	mt.__index = oldIndex
	setreadonly(mt, true)
	hookSet = false
end

-- Hlavná funkcia na prepínanie filtra
local function toggleFilter()
	filterEnabled = not filterEnabled

	if filterEnabled then
		enableHook()
	else
		disableHook()
	end

	refreshAllGui()
	print("Filter je teraz", filterEnabled and "ZAPNUTÝ" or "VYPNUTÝ")
end

-- Príklad: prepni filter pri stlačení klávesy N (ak chceš)
-- UserInputService.InputBegan:Connect(function(input, gameProcessed)
--     if gameProcessed then return end
--     if input.KeyCode == Enum.KeyCode.N then
--         toggleFilter()
--     end
-- end)

-- Export funkcie, aby si mohol volať z menu tlačidla
return {
	toggleFilter = toggleFilter,
	isEnabled = function() return filterEnabled end,
}




LeftGroupBox:AddCheckbox("MyCheckbox", {
	Text = "Full bright",
	Tooltip = "Full bright", -- Information shown when you hover over the toggle
	DisabledTooltip = "I am disabled!", -- Information shown when you hover over the toggle while it's disabled

	Default = false, -- Default value (true / false)
	Disabled = false, -- Will disable the toggle (true / false)
	Visible = true, -- Will make the toggle invisible (true / false)
	Risky = false, -- Makes the text red (the color can be changed using Library.Scheme.Red) (Default value = false)

	Callback = function(Value)
pcall(function()
        local lighting = game:GetService("Lighting");
        lighting.Ambient = Color3.fromRGB(255, 255, 255);
        lighting.Brightness = 1;
        lighting.FogEnd = 1e10;
        for i, v in pairs(lighting:GetDescendants()) do
            if v:IsA("BloomEffect") or v:IsA("BlurEffect") or v:IsA("ColorCorrectionEffect") or v:IsA("SunRaysEffect") then
                v.Enabled = false;
            end;
        end;
        lighting.Changed:Connect(function()
            lighting.Ambient = Color3.fromRGB(255, 255, 255);
            lighting.Brightness = 1;
            lighting.FogEnd = 1e10;
        end);
        spawn(function()
            local character = game:GetService("Players").LocalPlayer.Character;
            while wait() do
                repeat wait() until character ~= nil;
                if not character.HumanoidRootPart:FindFirstChildWhichIsA("PointLight") then
                    local headlight = Instance.new("PointLight", character.HumanoidRootPart);
                    headlight.Brightness = 1;
                    headlight.Range = 60;
                end;
            end;
        end);
    end)
        end
})

Toggles.MyCheckbox:OnChanged(function()
	
end)


local function onToggleChangedInstantProximity(state)
    local function setProximityPromptHoldDuration()
        
        for _, descendant in pairs(workspace:GetDescendants()) do
            
            if descendant:IsA("ProximityPrompt") then
                
                descendant.HoldDuration = 0
            end
        end
    end

    if state then
        setProximityPromptHoldDuration()

        workspace.DescendantAdded:Connect(function(descendant)
            if descendant:IsA("ProximityPrompt") then
                descendant.HoldDuration = 0
            end
        end)
    end
end




LeftGroupBox:AddCheckbox("MyCheckbox", {
	Text = "Instant Interact",
	Tooltip = "Instant Interact", -- Information shown when you hover over the toggle
	DisabledTooltip = "I am disabled!", -- Information shown when you hover over the toggle while it's disabled

	Default = false, -- Default value (true / false)
	Disabled = false, -- Will disable the toggle (true / false)
	Visible = true, -- Will make the toggle invisible (true / false)
	Risky = false, -- Makes the text red (the color can be changed using Library.Scheme.Red) (Default value = false)

	Callback = function(state)
            onToggleChangedInstantProximity(state)
        end
})

Toggles.MyCheckbox:OnChanged(function()
	
end)


LeftGroupBox:AddCheckbox("MyCheckbox", {
	Text = "CTRL + Click = Delete",
	Tooltip = "CTRL + Click = Delete", -- Information shown when you hover over the toggle
	DisabledTooltip = "I am disabled!", -- Information shown when you hover over the toggle while it's disabled

	Default = false, -- Default value (true / false)
	Disabled = false, -- Will disable the toggle (true / false)
	Visible = true, -- Will make the toggle invisible (true / false)
	Risky = true, -- Makes the text red (the color can be changed using Library.Scheme.Red) (Default value = false)

	Callback = function()
local Plr = game:GetService("Players").LocalPlayer
    local Mouse = Plr:GetMouse()

    Mouse.Button1Down:connect(function()
    if not game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.LeftControl) then return end
    if not Mouse.Target then return end
    Mouse.Target:Destroy()
    end)
        end
})

Toggles.MyCheckbox:OnChanged(function()
	
end)

-- Label:AddColorPicker
-- Arguments: Idx, Info

-- You can also ColorPicker & KeyPicker to a Toggle as well


local function dashForward(distance)
    local character = game.Players.LocalPlayer.Character
    if character then
        local hrp = character:FindFirstChild("HumanoidRootPart")
        if hrp then
            hrp.CFrame = hrp.CFrame + hrp.CFrame.LookVector * distance
        end
    end
end







LeftGroupBox:AddLabel("Dash"):AddKeyPicker("KeyPicker", {
	-- SyncToggleState only works with toggles.
	-- It allows you to make a keybind which has its state synced with its parent toggle

	-- Example: Keybind which you use to toggle flyhack, etc.
	-- Changing the toggle disables the keybind state and toggling the keybind switches the toggle state

	Default = "MB2", -- String as the name of the keybind (MB1, MB2 for mouse buttons)
	SyncToggleState = false,

	-- You can define custom Modes but I have never had a use for it.
	Mode = "Toggle", -- Modes: Always, Toggle, Hold

	Text = "Auto lockpick safes", -- Text to display in the keybind menu
	NoUI = false, -- Set to true if you want to hide from the Keybind menu,

	-- Occurs when the keybind is clicked, Value is `true`/`false`
	Callback = function(state)
        if state then
            dashForward(5)  
        end
	end,

	-- Occurs when the keybind itself is changed, `New` is a KeyCode Enum OR a UserInputType Enum
	ChangedCallback = function(New)
		print("Keybind changed!", New)
	end,
})

-- OnClick is only fired when you press the keybind and the mode is Toggle
-- Otherwise, you will have to use Keybind:GetState()
Options.KeyPicker:OnClick(function()
	print("Keybind clicked!", Options.KeyPicker:GetState())
end)

Options.KeyPicker:OnChanged(function()
	print("Keybind changed!", Options.KeyPicker.Value)
end)

task.spawn(function()
	while true do
		wait(1)

		-- example for checking if a keybind is being pressed
		local state = Options.KeyPicker:GetState()
		if state then
			print("KeyPicker is being held down")
		end

		if Library.Unloaded then
			break
		end
	end
end)

Options.KeyPicker:SetValue({ "MB2", "Hold" }) -- Sets keybind to MB2, mode to Hold




local function applyCustomization(character)
    local player = game.Players.LocalPlayer
    local bodyColors = player:FindFirstChild("BodyColors")
    if character:FindFirstChild("BodyColors") and bodyColors then
        character.BodyColors.HeadColor = bodyColors.HeadColor
        character.BodyColors.TorsoColor = bodyColors.TorsoColor
        character.BodyColors.LeftArmColor = bodyColors.LeftArmColor
        character.BodyColors.RightArmColor = bodyColors.RightArmColor
        character.BodyColors.LeftLegColor = bodyColors.LeftLegColor
        character.BodyColors.RightLegColor = bodyColors.RightLegColor
    end
end

local function teleportToSpawnPoint()
    local player = game.Players.LocalPlayer
    if selectedSpawnPoint then
        local character = player.Character
        if character and character:FindFirstChild("HumanoidRootPart") then
            character:SetPrimaryPartCFrame(selectedSpawnPoint)
        end
    end
end

local function onCharacterAdded(character)
    character:WaitForChild("HumanoidRootPart")
    applyCustomization(character)
    if spawnActivated then
        wait(1.0)
        teleportToSpawnPoint()
    end
end

local function clearCharacterAddedConnection()
    if characterAddedConnection then
        characterAddedConnection:Disconnect()
        characterAddedConnection = nil
    end
end

-- Disconnect the old connection before setting a new one
clearCharacterAddedConnection()
characterAddedConnection = game.Players.LocalPlayer.CharacterAdded:Connect(onCharacterAdded)




    ---\\SPAWN LOCATION (MAIN TAB)//---
local selectedSpawnPoint = nil
local spawnActivated = false
local Tweening = false
local currentTween = nil
local characterAddedConnection = nil

local spawnLocations = {
    ["Fake ID"] = CFrame.new(214.915741, 4.03285742, -332.346008, 0, 0, -1, 0, 1, 0, 1, 0, 0),
    ["Gun Store 2"] = CFrame.new(-493.9350280761719, 3.8621325492858887, 360.4673156738281),
    ["Boxing Gym"] = CFrame.new(-563.9724731445312, 3.5371451377868652, -66.1060562133789),
    ["Garbage Job"] = CFrame.new(717.6341552734375, 3.537200450897217, 161.44554138183594),
    ["Bank"] = CFrame.new(-56.422027587890625, 3.7371387481689453, -329.57785034179688),
    ["Studio"] = CFrame.new(468.3650207519531, 4.112238883972168, 159.92874145507812),
    ["Police Station"] = CFrame.new(748.6831665039062, 4.912145614624023, -255.74874877929688),
    ["Car Shop"] = CFrame.new(730.1787109375, 3.709824562072754, 449.9476013183594),
    ["Cosmic Cuts"] = CFrame.new(57.606021881103516, 3.7371392250061035, -64.30176544189453),
    ["Pluto's Headwear"] = CFrame.new(-269.45611572265625, 3.8895010948181152, -333.55609130859375),
    ["B&b (Glasses Store)"] = CFrame.new(-696.83935546875, 3.6121320724487305, -335.316162109375),
    ["Bronx Sneaker Club"] = CFrame.new(525.310791015625, 3.487133026123047, -197.16981506347656),
    ["Kevins Drip"] = CFrame.new(-202.83302307128906, 3.487137794494629, -59.08943557739258),
    ["Apartments 1"] = CFrame.new(-518.384765625, 3.7872252464294434, 210.3058624267578),
    ["Apartments 2"] = CFrame.new(-276.6080627441406, 4.362135887145996, -475.66217041015625),
    ["Apartments 3"] = CFrame.new(215.5399627685547, 5.237135887145996, 26.223546981811523)
}



-- Long text label to demonstrate UI scrolling behaviour.
local LeftGroupBox2 = Tabs.Main:AddLeftGroupbox("Spawn | Locations")

LeftGroupBox2:AddDropdown("MySearchableDropdown", {
	Values = { "Boxing Gym", "Fake ID", "Garbage Job", "Bank", "Studio", "Police Station", "Car Shop", "Cosmic Cuts", "Plutos Headwear", "B&b (Glasses Store)", "Bronx Stneaker Club", "Kevins Drip", "Apartments 1", "Apartments 2", "Apartments 3" },
	Default = 1, -- number index of the value / string
	Multi = false, -- true / false, allows multiple choices to be selected

	Text = "Spawn/Tween Locations",
	Tooltip = "Spawn/Tween Locations", -- Information shown when you hover over the dropdown
	DisabledTooltip = "I am disabled!", -- Information shown when you hover over the dropdown while it's disabled

	Searchable = true, -- true / false, makes the dropdown searchable (great for a long list of values)

	Callback = function(item)
		selectedSpawnPoint = spawnLocations[item]
    end,
})


LeftGroupBox2:AddCheckbox("MyCheckbox", {
	Text = "Set Spawn Point",
	Tooltip = "Set Spawn Point", -- Information shown when you hover over the toggle
	DisabledTooltip = "I am disabled!", -- Information shown when you hover over the toggle while it's disabled

	Default = false, -- Default value (true / false)
	Disabled = false, -- Will disable the toggle (true / false)
	Visible = true, -- Will make the toggle invisible (true / false)
	Risky = false, -- Makes the text red (the color can be changed using Library.Scheme.Red) (Default value = false)

	Callback = function(state)
        spawnActivated = state
        if state then
            clearCharacterAddedConnection()
            characterAddedConnection = game.Players.LocalPlayer.CharacterAdded:Connect(onCharacterAdded)
        else
            clearCharacterAddedConnection()
        end
    end
})

Toggles.MyCheckbox:OnChanged(function()

end)


local function applyCustomization(character)
    local player = game.Players.LocalPlayer
    local bodyColors = player:FindFirstChild("BodyColors")
    if character:FindFirstChild("BodyColors") and bodyColors then
        character.BodyColors.HeadColor = bodyColors.HeadColor
        character.BodyColors.TorsoColor = bodyColors.TorsoColor
        character.BodyColors.LeftArmColor = bodyColors.LeftArmColor
        character.BodyColors.RightArmColor = bodyColors.RightArmColor
        character.BodyColors.LeftLegColor = bodyColors.LeftLegColor
        character.BodyColors.RightLegColor = bodyColors.RightLegColor
    end
end

local function teleportToSpawnPoint()
    local player = game.Players.LocalPlayer
    if selectedSpawnPoint then
        local character = player.Character
        if character and character:FindFirstChild("HumanoidRootPart") then
            character:SetPrimaryPartCFrame(selectedSpawnPoint)
        end
    end
end

local function onCharacterAdded(character)
    character:WaitForChild("HumanoidRootPart")
    applyCustomization(character)
    if spawnActivated then
        wait(1.0)
        teleportToSpawnPoint()
    end
end

local function clearCharacterAddedConnection()
    if characterAddedConnection then
        characterAddedConnection:Disconnect()
        characterAddedConnection = nil
    end
end

-- Disconnect the old connection before setting a new one
clearCharacterAddedConnection()
characterAddedConnection = game.Players.LocalPlayer.CharacterAdded:Connect(onCharacterAdded)




local function TweenToLocation(targetPosition)
    if not Tweening then return end
    local player = game.Players.LocalPlayer
    local character = player.Character

    if character and character:FindFirstChild("HumanoidRootPart") then
        local humanoidRootPart = character.HumanoidRootPart
        local startPosition = humanoidRootPart.Position
        local distance = (startPosition - targetPosition).Magnitude
        local fixedSpeed = 18
        local duration = distance / fixedSpeed
        local startTime = tick()

        character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping, false)
        character.Humanoid:ChangeState(Enum.HumanoidStateType.None)

        currentTween = coroutine.create(function()
            while tick() - startTime < duration and Tweening do
                local elapsedTime = tick() - startTime
                local alpha = elapsedTime / duration
                local newPosition = startPosition:Lerp(targetPosition, alpha)
                humanoidRootPart.CFrame = CFrame.new(newPosition)
                task.wait()
            end

            if Tweening then
                humanoidRootPart.CFrame = CFrame.new(targetPosition)
            end

            character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping, true)
        end)

        coroutine.resume(currentTween)
    else
        warn("HumanoidRootPart not found!")
    end
end


LeftGroupBox2:AddCheckbox("MyCheckbox", {
	Text = "Tween Now",
	Tooltip = "Tween Now", -- Information shown when you hover over the toggle
	DisabledTooltip = "I am disabled!", -- Information shown when you hover over the toggle while it's disabled

	Default = false, -- Default value (true / false)
	Disabled = false, -- Will disable the toggle (true / false)
	Visible = true, -- Will make the toggle invisible (true / false)
	Risky = false, -- Makes the text red (the color can be changed using Library.Scheme.Red) (Default value = false)

	Callback = function(state)
        Tweening = state

        if Tweening and selectedSpawnPoint then
            TweenToLocation(selectedSpawnPoint.Position)
        elseif not Tweening and currentTween then
            coroutine.yield(currentTween)
            currentTween = nil
        end
    end
})

Toggles.MyCheckbox:OnChanged(function()
	
end)



local LeftGroupBox3 = Tabs.Main:AddLeftGroupbox("Server Settings")


local MyButton = LeftGroupBox3:AddButton({
	Text = "Rejoin Server",
	Func = function()
		local ts = game:GetService("TeleportService")
            local p = game:GetService("Players").LocalPlayer
            ts:Teleport(game.PlaceId, p) 
        end,
	DoubleClick = false,

	Tooltip = "Rejoin Server",
	DisabledTooltip = "I am disabled!",

	Disabled = false, -- Will disable the button (true / false)
	Visible = true, -- Will make the button invisible (true / false)
	Risky = false, -- Makes the text red (the color can be changed using Library.Scheme.Red) (Default value = false)
})


local MyButton = LeftGroupBox3:AddButton({
	Text = "Join Lowest Server",
	Func = function()
            local Http = game:GetService("HttpService")
            local TPS = game:GetService("TeleportService")
            local Api = "https://games.roblox.com/v1/games/"
            
            local _place = game.PlaceId
            local _servers = Api.._place.."/servers/Public?sortOrder=Asc&limit=100"
            function ListServers(cursor)
                local Raw = game:HttpGet(_servers .. ((cursor and "&cursor="..cursor) or ""))
                return Http:JSONDecode(Raw)
            end
            
            local Server, Next; repeat
                local Servers = ListServers(Next)
                Server = Servers.data[1]
                Next = Servers.nextPageCursor
            until Server
            
            TPS:TeleportToPlaceInstance(_place,Server.id,game.Players.LocalPlayer)
        end,
	DoubleClick = false,

	Tooltip = "Join Lowest Server",
	DisabledTooltip = "I am disabled!",

	Disabled = false, -- Will disable the button (true / false)
	Visible = true, -- Will make the button invisible (true / false)
	Risky = false, -- Makes the text red (the color can be changed using Library.Scheme.Red) (Default value = false)
})



local MyButton = LeftGroupBox3:AddButton({
	Text = "Anti Afk",
	Func = function()
		local Players = game:GetService('Players')
            local VirtualUser = game:GetService('VirtualUser')
            local StarterGui = game:GetService('StarterGui')
            
            local player = Players.LocalPlayer
            
            player.Idled:connect(function()
                
                VirtualUser:CaptureController()
                VirtualUser:ClickButton2(Vector2.new())
            end)
        end,
	DoubleClick = false,

	Tooltip = "Anti Afk",
	DisabledTooltip = "I am disabled!",

	Disabled = false, -- Will disable the button (true / false)
	Visible = true, -- Will make the button invisible (true / false)
	Risky = false, -- Makes the text red (the color can be changed using Library.Scheme.Red) (Default value = false)
})



local MyButton = LeftGroupBox3:AddButton({
	Text = "Server Hop",
	Func = function()
		
    local PlaceID = game.PlaceId
    local AllIDs = {}
    local foundAnything = ""
    local actualHour = os.date("!*t").hour
    local Deleted = false
    local File = pcall(function()
        AllIDs = game:GetService('HttpService'):JSONDecode(readfile("NotSameServers.json"))
    end)
    if not File then
        table.insert(AllIDs, actualHour)
        writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
    end

    function TPReturner()
        local Site
        if foundAnything == "" then
            Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
        else
            Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
        end
        local ID = ""
        if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
            foundAnything = Site.nextPageCursor
        end
        local num = 0
        for i,v in pairs(Site.data) do
            local Possible = true
            ID = tostring(v.id)
            if tonumber(v.maxPlayers) > tonumber(v.playing) then
                for _,Existing in pairs(AllIDs) do
                    if num ~= 0 then
                        if ID == tostring(Existing) then
                            Possible = false
                        end
                    else
                        if tonumber(actualHour) ~= tonumber(Existing) then
                            local delFile = pcall(function()
                                delfile("NotSameServers.json")
                                AllIDs = {}
                                table.insert(AllIDs, actualHour)
                            end)
                        end
                    end
                    num = num + 1
                end
                if Possible == true then
                    table.insert(AllIDs, ID)
                    wait()
                    pcall(function()
                        writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
                        wait()
                        game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
                    end)
                    wait(4)
                end
            end
        end
    end

    function Teleport()
        while wait() do
            pcall(function()
                TPReturner()
                if foundAnything ~= "" then
                    TPReturner()
                end
            end)
        end
    end

    Teleport()
        end,
	DoubleClick = false,

	Tooltip = "Server Hop",
	DisabledTooltip = "I am disabled!",

	Disabled = false, -- Will disable the button (true / false)
	Visible = true, -- Will make the button invisible (true / false)
	Risky = false, -- Makes the text red (the color can be changed using Library.Scheme.Red) (Default value = false)
})



local RightGroupbox1 = Tabs.Main:AddRightGroupbox("|Target Options|") -- Add Tabbox on right side


---\\TARGET SECTION (MAIN TAB)//---
    local TargetName = ""
    local originalCameraSubject
    local ScreenGui

    local function findPlayerByName(name)
        name = string.lower(name)
        for _, player in pairs(game.Players:GetPlayers()) do
            local playerName = string.lower(player.Name)
            local displayName = player.DisplayName and string.lower(player.DisplayName) or nil
            
            if string.sub(playerName, 1, #name) == name or (displayName and string.sub(displayName, 1, #name) == name) then
                return player
            end
        end
        return nil
    end



RightGroupbox1:AddInput("MyTextbox", {
	Default = "",
	Numeric = false, -- true / false, only allows numbers
	Finished = false, -- true / false, only calls callback when you press enter
	ClearTextOnFocus = true, -- true / false, if false the text will not clear when textbox focused

	Text = "        <-Target Name->",
	Tooltip = "Target Name", -- Information shown when you hover over the textbox

	Placeholder = "", -- placeholder text when the box is empty
	-- MaxLength is also an option which is the max length of the text

	Callback = function(input)
	local player = findPlayerByName(input)
            TargetName = player and player.Name or ""
    end
})

Options.MyTextbox:OnChanged(function()
	print("Text updated. New text:", Options.MyTextbox.Value)
end)


    local function createInventoryGUI(playerName)
        if ScreenGui then
            ScreenGui:Destroy() 
        end

        ScreenGui = Instance.new("ScreenGui")
        local Background = Instance.new("Frame")
        local ScrollFrame = Instance.new("ScrollingFrame")
        local TitleLabel = Instance.new("TextLabel")
        local UIListLayout = Instance.new("UIListLayout")
        local UIListPadding = Instance.new("UIPadding")
        local InvLabels = {}

        ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
        ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

        Background.Name = "Background"
        Background.Parent = ScreenGui
        Background.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
        Background.BorderSizePixel = 2
        Background.BorderColor3 = Color3.fromRGB(0, 0, 0)
        Background.Position = UDim2.new(1, -260, 0, 20)
        Background.Size = UDim2.new(0.12, 0, 0.3, 0)
        Background.ClipsDescendants = true

        local gradient = Instance.new("UIGradient")
        gradient.Parent = Background
        gradient.Color = ColorSequence.new{
            ColorSequenceKeypoint.new(0, Color3.fromRGB(42, 42, 42)),
            ColorSequenceKeypoint.new(1, Color3.fromRGB(42, 42, 42))
        }
        gradient.Rotation = 45

        local stroke = Instance.new("UIStroke")
        stroke.Parent = Background
        stroke.Color = Color3.fromRGB(0, 0, 0)
        stroke.Thickness = 2
        stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

        TitleLabel.Name = "TitleLabel"
        TitleLabel.Parent = Background
        TitleLabel.BackgroundTransparency = 1
        TitleLabel.Size = UDim2.new(1, 0, 0, 30)
        TitleLabel.Font = Enum.Font.SourceSansBold
        TitleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
        TitleLabel.TextSize = 18
        TitleLabel.TextScaled = true
        TitleLabel.TextWrapped = true
        TitleLabel.TextStrokeTransparency = 0.3
        TitleLabel.Text = "Inventory"

        ScrollFrame.Parent = Background
        ScrollFrame.Size = UDim2.new(1, -10, 0, 250)
        ScrollFrame.Position = UDim2.new(0, 5, 0, 35)
        ScrollFrame.ScrollBarThickness = 10
        ScrollFrame.BackgroundTransparency = 1
        ScrollFrame.ClipsDescendants = true

        UIListLayout.Parent = ScrollFrame
        UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
        UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
        UIListLayout.Padding = UDim.new(0, 5)

        UIListPadding.Parent = ScrollFrame
        UIListPadding.PaddingTop = UDim.new(0, 5)

        local function createLabel(name)
            local label = Instance.new("TextLabel")
            label.Name = name
            label.BackgroundTransparency = 0.5
            label.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
            label.BorderSizePixel = 1
            label.BorderColor3 = Color3.fromRGB(30, 30, 30)
            label.Size = UDim2.new(1, -10, 0, 22)
            label.Font = Enum.Font.SourceSans
            label.TextColor3 = Color3.fromRGB(255, 255, 255)
            label.TextScaled = true
            label.TextSize = 14
            label.TextWrapped = true
            return label
        end

        for i = 1, 40 do
            local label = createLabel("Inv" .. i)
            label.Parent = ScrollFrame
            table.insert(InvLabels, label)
        end

        local function getPlayerInventory(targetPlayer)
            local backpack = targetPlayer:FindFirstChildOfClass("Backpack")
            if backpack then
                local items = backpack:GetChildren()
                for i, label in ipairs(InvLabels) do
                    label.Text = items[i] and items[i].Name or ""
                end
                ScrollFrame.CanvasSize = UDim2.new(0, 0, 0, math.max(#items, #InvLabels) * 27)
            else
                for _, label in ipairs(InvLabels) do
                    label.Text = "No Items"
                end
                ScrollFrame.CanvasSize = UDim2.new(0, 0, 0, 27)
            end
        end

        local targetPlayer = findPlayerByName(playerName)

        if targetPlayer then
            TitleLabel.Text = playerName .. "'s Inventory"
            getPlayerInventory(targetPlayer)
        else
            TitleLabel.Text = "Player Not Found"
        end
    end


RightGroupbox1:AddCheckbox("MyCheckbox", {
	Text = "| View [Inventory]",
	Tooltip = "| View [Inventory]", -- Information shown when you hover over the toggle
	DisabledTooltip = "I am disabled!", -- Information shown when you hover over the toggle while it's disabled

	Default = false, -- Default value (true / false)
	Disabled = false, -- Will disable the toggle (true / false)
	Visible = true, -- Will make the toggle invisible (true / false)
	Risky = false, -- Makes the text red (the color can be changed using Library.Scheme.Red) (Default value = false)

	Callback = function(State)
            if State then
                createInventoryGUI(TargetName)
            else
                if ScreenGui then
                    ScreenGui:Destroy()
                    ScreenGui = nil
                end
            end
        end
})

Toggles.MyCheckbox:OnChanged(function()
	
end)


RightGroupbox1:AddCheckbox("MyCheckbox", {
	Text = "Spectate",
	Tooltip = "Spectate", -- Information shown when you hover over the toggle
	DisabledTooltip = "I am disabled!", -- Information shown when you hover over the toggle while it's disabled

	Default = false, -- Default value (true / false)
	Disabled = false, -- Will disable the toggle (true / false)
	Visible = true, -- Will make the toggle invisible (true / false)
	Risky = false, -- Makes the text red (the color can be changed using Library.Scheme.Red) (Default value = false)

	Callback = function(Value)
            local Players = game:GetService("Players")
            local LocalPlayer = Players.LocalPlayer

            if Value then
                if IsSpectating then
                    return
                end

                local TargetPlayer = Players:FindFirstChild(TargetName)

                if TargetPlayer and TargetPlayer.Character then
                    originalCameraSubject = workspace.CurrentCamera.CameraSubject
                    workspace.CurrentCamera.CameraSubject = TargetPlayer.Character:FindFirstChild("Humanoid")
                    IsSpectating = true
                else
                    CreateNotification({
                        Title = "Error",
                        Text = "Invalid Name",
                        ButtonText = "Okay",
                        Duration = 99999
                    })
                end
            else
                if IsSpectating then
                    workspace.CurrentCamera.CameraSubject = originalCameraSubject
                    IsSpectating = false
                end
            end
        end,
})

Toggles.MyCheckbox:OnChanged(function()
	
end)


local RightGroupbox2 = Tabs.Main:AddRightGroupbox("|Atm Mods|") -- Add Tabbox on right side



RightGroupbox2:AddCheckbox("MyCheckbox", {
	Text = "| Enable all Atms",
	Tooltip = "| Enable all Atms", -- Information shown when you hover over the toggle
	DisabledTooltip = "I am disabled!", -- Information shown when you hover over the toggle while it's disabled

	Default = false, -- Default value (true / false)
	Disabled = false, -- Will disable the toggle (true / false)
	Visible = true, -- Will make the toggle invisible (true / false)
	Risky = false, -- Makes the text red (the color can be changed using Library.Scheme.Red) (Default value = false)

	Callback = function(State)
            local function enableProximityPrompt(prompt)
                if prompt then
                    prompt.Enabled = state
                end
            end

            local atmNames = {
                "ATM1", "ATM2", "ATM3", "ATM4", "ATM5",
                "ATM6", "ATM7", "ATM8", "ATM9", "ATM10",
                "ATM11", "ATM12", "ATM13", "ATM14", "ATM15"
            }

            for _, atmName in ipairs(atmNames) do
                local atm = workspace.Map.ATMS:FindFirstChild(atmName)
                if atm then
                    local proximityPrompt = atm:FindFirstChild("Attachment"):FindFirstChild("ProximityPrompt")
                    enableProximityPrompt(proximityPrompt)
                end
            end
        end    
})

Toggles.MyCheckbox:OnChanged(function()
	
end)



RightGroupbox2:AddCheckbox("MyCheckbox", {
	Text = "| View ATM List",
	Tooltip = "| View ATM List", -- Information shown when you hover over the toggle
	DisabledTooltip = "I am disabled!", -- Information shown when you hover over the toggle while it's disabled

	Default = false, -- Default value (true / false)
	Disabled = false, -- Will disable the toggle (true / false)
	Visible = true, -- Will make the toggle invisible (true / false)
	Risky = false, -- Makes the text red (the color can be changed using Library.Scheme.Red) (Default value = false)

	Callback = function(state)
            local player = game.Players.LocalPlayer
            local screenGui = player:FindFirstChild("PlayerGui"):FindFirstChild("ATMStatusGUI")

            if state then
                if not screenGui then
                    screenGui = Instance.new("ScreenGui")
                    screenGui.Name = "ATMStatusGUI"
                    screenGui.Parent = player:WaitForChild("PlayerGui")

                    local frame = Instance.new("Frame")
                    frame.Size = UDim2.new(0, 300, 0, 400)
                    frame.Position = UDim2.new(1, -320, 0.5, -200)
                    frame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
                    frame.BackgroundTransparency = 0.2
                    frame.BorderSizePixel = 0
                    frame.Parent = screenGui

                    local corner = Instance.new("UICorner")
                    corner.CornerRadius = UDim.new(0, 10)
                    corner.Parent = frame

                    local shadow = Instance.new("ImageLabel")
                    shadow.AnchorPoint = Vector2.new(0.5, 0.5)
                    shadow.Position = UDim2.new(0.5, 0, 0.5, 5)
                    shadow.Size = UDim2.new(1, 40, 1, 40)
                    shadow.BackgroundTransparency = 1
                    shadow.Image = "rbxassetid://1316045217"  
                    shadow.ImageTransparency = 0.7
                    shadow.ZIndex = -1
                    shadow.Parent = frame

                    local title = Instance.new("TextLabel")
                    title.Size = UDim2.new(1, 0, 0, 40)
                    title.BackgroundTransparency = 1
                    title.Text = "ATM Status"
                    title.TextColor3 = Color3.fromRGB(255, 255, 255)
                    title.TextScaled = true
                    title.Font = Enum.Font.GothamBold
                    title.TextStrokeTransparency = 0.75
                    title.Parent = frame

                    local titleGradient = Instance.new("UIGradient")
                    titleGradient.Color = ColorSequence.new{
                        ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)),
                        ColorSequenceKeypoint.new(1, Color3.fromRGB(200, 200, 200))
                    }
                    titleGradient.Rotation = 90
                    titleGradient.Parent = title

                    local scrollingFrame = Instance.new("ScrollingFrame")
                    scrollingFrame.Size = UDim2.new(1, -10, 1, -50)
                    scrollingFrame.Position = UDim2.new(0, 5, 0, 45)
                    scrollingFrame.BackgroundTransparency = 1
                    scrollingFrame.ScrollBarThickness = 8
                    scrollingFrame.ScrollBarImageColor3 = Color3.fromRGB(120, 120, 120)
                    scrollingFrame.Parent = frame

                    local uiListLayout = Instance.new("UIListLayout")
                    uiListLayout.Parent = scrollingFrame
                    uiListLayout.SortOrder = Enum.SortOrder.LayoutOrder
                    uiListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
                    uiListLayout.VerticalAlignment = Enum.VerticalAlignment.Top
                    uiListLayout.Padding = UDim.new(0, 5)

                    local function updateATMStatus()
                        for _, child in ipairs(scrollingFrame:GetChildren()) do
                            if child:IsA("TextLabel") then
                                child:Destroy()
                            end
                        end

                        local ATMS = game:GetService("Workspace").Map:WaitForChild("ATMS")
                        local labels = {}

                        for i = 1, 15 do
                            local atmName = "ATM: " .. i
                            local atm = ATMS:FindFirstChild("ATM" .. i)

                            if atm then
                                local attachment = atm:FindFirstChild("Attachment")
                                if attachment then
                                    local proximityPrompt = attachment:FindFirstChild("ProximityPrompt")
                                    local textColor = Color3.fromRGB(255, 0, 0) 
                                    if proximityPrompt and proximityPrompt.Enabled then
                                        textColor = Color3.fromRGB(0, 255, 0)  
                                    end

                                    local textLabel = Instance.new("TextLabel")
                                    textLabel.Size = UDim2.new(1, -20, 0, 25)
                                    textLabel.BackgroundTransparency = 0.1
                                    textLabel.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
                                    textLabel.Text = atmName
                                    textLabel.TextColor3 = textColor 
                                    textLabel.TextScaled = true
                                    textLabel.Font = Enum.Font.Gotham
                                    textLabel.TextXAlignment = Enum.TextXAlignment.Left
                                    textLabel.TextYAlignment = Enum.TextYAlignment.Center
                                    textLabel.Parent = scrollingFrame

                                    local labelCorner = Instance.new("UICorner")
                                    labelCorner.CornerRadius = UDim.new(0, 6)
                                    labelCorner.Parent = textLabel

                                    local labelGradient = Instance.new("UIGradient")
                                    labelGradient.Color = ColorSequence.new{
                                        ColorSequenceKeypoint.new(0, Color3.fromRGB(60, 60, 60)),
                                        ColorSequenceKeypoint.new(1, Color3.fromRGB(80, 80, 80))
                                    }
                                    labelGradient.Rotation = 90
                                    labelGradient.Parent = textLabel
                                    
                                    table.insert(labels, textLabel)
                                end
                            end
                        end

                        local contentHeight = #labels * 30  
                        scrollingFrame.CanvasSize = UDim2.new(0, 0, 0, contentHeight)
                    end

                    updateATMStatus()

                    local connection
                    connection = game:GetService("RunService").Heartbeat:Connect(function()
                        if state then
                            updateATMStatus()
                        else
                            if connection then connection:Disconnect() end
                        end
                    end)
                end
            else
                if screenGui then
                    screenGui:Destroy()
                end
            end
        end
})

Toggles.MyCheckbox:OnChanged(function()
	
end)




    local function fireproximityprompt(ProximityPrompt, Amount, Skip)
        assert(ProximityPrompt, "Argument #1 Missing or nil")
        assert(typeof(ProximityPrompt) == "Instance" and ProximityPrompt:IsA("ProximityPrompt"), "Attempted to fire a Value that is not a ProximityPrompt")

        local HoldDuration = ProximityPrompt.HoldDuration
        if Skip then
            ProximityPrompt.HoldDuration = 0
        end

        for i = 1, Amount or 1 do
            ProximityPrompt:InputHoldBegin()
            if Skip then
                local RunService = game:GetService("RunService")
                local Start = os.time()
                repeat
                    RunService.Heartbeat:Wait(0.1)
                until os.time() - Start > HoldDuration
            end
            ProximityPrompt:InputHoldEnd()
        end
        ProximityPrompt.HoldDuration = HoldDuration
    end
-- Anything we can do in a Groupbox, we can do in a Tabbox tab (AddToggle, AddSlider, AddLabel, etc etc...)



local MyButton = RightGroupbox2:AddButton({
	Text = "Interact with a active ATM",
	Func = function()
            local player = game.Players.LocalPlayer
            local character = player.Character or player.CharacterAdded:Wait()
            local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
            local camera = workspace.CurrentCamera

            local ATMS = {
                {name = "ATM1", cframe = CFrame.new(-33.1487, 3.7370, -299.5453), path = "ATM1"},
                {name = "ATM2", cframe = CFrame.new(538.4818, 3.7371, -349.0415), path = "ATM2"},
                {name = "ATM3", cframe = CFrame.new(497.8156, 3.7839, 405.5681), path = "ATM3"},
                {name = "ATM4", cframe = CFrame.new(236.1748, 3.1180, -165.3973), path = "ATM4"},
                {name = "ATM5", cframe = CFrame.new(-652.0219, 4.2857, 155.1690), path = "ATM5"},
                {name = "ATM6", cframe = CFrame.new(-455.1304, 4.3107, 370.8311), path = "ATM6"},
                {name = "ATM7", cframe = CFrame.new(-266.3022, 4.4058, -212.2364), path = "ATM7"},
                {name = "ATM8", cframe = CFrame.new(-10.4940, 3.7371, 233.9844), path = "ATM8"},
                {name = "ATM9", cframe = CFrame.new(717.0417, 3.8176, 413.7101), path = "ATM9"},
                {name = "ATM10", cframe = CFrame.new(-536.8209, 4.2857, -20.3541), path = "ATM10"},
                {name = "ATM11", cframe = CFrame.new(-652.021, 4.285, 155.169), path = "ATM11"},
                {name = "ATM12", cframe = CFrame.new(714.4320, 4.2857, -240.3657), path = "ATM12"},
                {name = "ATM13", cframe = CFrame.new(-314.9244, 3.8715, 145.9376), path = "ATM13"},
                {name = "ATM14", cframe = CFrame.new(-377.9388, 4.3107, -359.7116), path = "ATM14"},
                {name = "ATM15", cframe = CFrame.new(360.0960, 3.7371, -359.4165), path = "ATM15"},
            }

            for _, atm in ipairs(ATMS) do
                local atmPath = workspace:FindFirstChild("Map"):FindFirstChild("ATMS"):FindFirstChild(atm.path)
                if atmPath and atmPath:FindFirstChild("Attachment") then
                    local proximityPrompt = atmPath.Attachment:FindFirstChild("ProximityPrompt")
                    if proximityPrompt and proximityPrompt.Enabled then
                        
                        humanoidRootPart.CFrame = atm.cframe
                        
                        local cameraOffset = Vector3.new(0, 5, -10) 
                        camera.CFrame = CFrame.new(humanoidRootPart.Position + cameraOffset, atm.cframe.Position)

                        wait(0.2)
                        
                        fireproximityprompt(proximityPrompt, 1, true)
                        
                        return
                    end
                end
            end
        end,
	DoubleClick = false,

	Tooltip = "Interact with a active ATM",
	DisabledTooltip = "I am disabled!",

	Disabled = false, -- Will disable the button (true / false)
	Visible = true, -- Will make the button invisible (true / false)
	Risky = false, -- Makes the text red (the color can be changed using Library.Scheme.Red) (Default value = false)
})




Library:OnUnload(function()
	print("Unloaded!")
end)

-- Anything we can do in a Groupbox, we can do in a Key tab (AddToggle, AddSlider, AddLabel, etc etc...)


-- UI Settings
local MenuGroup = Tabs["UI Settings"]:AddLeftGroupbox("Menu")

MenuGroup:AddToggle("KeybindMenuOpen", {
	Default = Library.KeybindFrame.Visible,
	Text = "Open Keybind Menu",
	Callback = function(value)
		Library.KeybindFrame.Visible = value
	end,
})
MenuGroup:AddToggle("ShowCustomCursor", {
	Text = "Custom Cursor",
	Default = true,
	Callback = function(Value)
		Library.ShowCustomCursor = Value
	end,
})
MenuGroup:AddDropdown("NotificationSide", {
	Values = { "Left", "Right" },
	Default = "Right",

	Text = "Notification Side",

	Callback = function(Value)
		Library:SetNotifySide(Value)
	end,
})
MenuGroup:AddDropdown("DPIDropdown", {
	Values = { "50%", "75%", "100%", "125%", "150%", "175%", "200%" },
	Default = "100%",

	Text = "DPI Scale",

	Callback = function(Value)
		Value = Value:gsub("%%", "")
		local DPI = tonumber(Value)

		Library:SetDPIScale(DPI)
	end,
})
MenuGroup:AddDivider()
MenuGroup:AddLabel("Menu bind")
	:AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })

MenuGroup:AddButton("Unload", function()
	Library:Unload()
end)

Library.ToggleKeybind = Options.MenuKeybind -- Allows you to have a custom keybind for the menu

-- Addons:
-- SaveManager (Allows you to have a configuration system)
-- ThemeManager (Allows you to have a menu theme system)

-- Hand the library over to our managers
ThemeManager:SetLibrary(Library)
SaveManager:SetLibrary(Library)

-- Ignore keys that are used by ThemeManager.
-- (we dont want configs to save themes, do we?)
SaveManager:IgnoreThemeSettings()

-- Adds our MenuKeybind to the ignore list
-- (do you want each config to have a different menu key? probably not.)
SaveManager:SetIgnoreIndexes({ "MenuKeybind" })

-- use case for doing it this way:
-- a script hub could have themes in a global folder
-- and game configs in a separate folder per game
ThemeManager:SetFolder("MyScriptHub")
SaveManager:SetFolder("MyScriptHub/specific-game")
SaveManager:SetSubFolder("specific-place") -- if the game has multiple places inside of it (for example: DOORS)
-- you can use this to save configs for those places separately
-- The path in this script would be: MyScriptHub/specific-game/settings/specific-place
-- [ This is optional ]

-- Builds our config menu on the right side of our tab
SaveManager:BuildConfigSection(Tabs["UI Settings"])

-- Builds our theme menu (with plenty of built in themes) on the left side
-- NOTE: you can also call ThemeManager:ApplyToGroupbox to add it to a specific groupbox
ThemeManager:ApplyToTab(Tabs["UI Settings"])

-- You can use the SaveManager:LoadAutoloadConfig() to load a config
-- which has been marked to be one that auto loads!
SaveManager:LoadAutoloadConfig()
	end
end 
   end,
})

local Button = WTab:CreateButton({
   Name = "Copy ClientId",
   Callback = function()
   local clientId = game:GetService("RbxAnalyticsService"):GetClientId()

if setclipboard then
    setclipboard(clientId)
    print("Client ID was copied to clipboard: " .. clientId)
else
    print("Error")
end
   end,
})
