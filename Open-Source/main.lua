      --//// Open Source Ro-Beats Beta \\\\--
          Feel Use Go Have Fun Skid, Learn 

-- Detect device type (PC, laptop, or mobile)
local isPC = game:GetService("GuiService"):IsTenFootInterface() == false
local isMobile = game:GetService("UserInputService").TouchEnabled

-- Load OrionLib
local success, OrionLib = pcall(loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source'))))
if not success then
    error("Failed to load OrionLib. Please check your internet connection.")
end

-- Kick player if they join the wrong game
if game.PlaceId == 698448212 then
    if game.PlaceId ~= 698448212 then
        game:GetService("Players").LocalPlayer:Kick("You joined the wrong game. Game name: Ro-Beats")
    end
end

-- Create the main window
local Window = OrionLib:MakeWindow({Name = "Ro-Beats V.1.1 | Maxwell Hub", HidePremium = false, SaveConfig = true, ConfigFolder = "Ro-Beats"})

-- Add a notification
local success, _ = pcall(function()
    OrionLib:MakeNotification({
        Name = "Hello!",
        Content = "Hello, thank you for using our script Version V.1.1",
        Image = "rbxassetid://4483345998",
        Time = 5
    })
end)

-- Create the Main tab
local MainTab = Window:MakeTab({
    Name = "Main",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

-- Create the Main section
local MainSection = MainTab:AddSection({
    Name = "Main"
})

-- Create the Credits tab
local CreditsTab = Window:MakeTab({
    Name = "Credits",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

-- Create the Credits section
local CreditsSection = CreditsTab:AddSection({
    Name = "Credits"
})

-- Create the Update tab (for all users)
local UpdateTab = Window:MakeTab({
    Name = "Update",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

-- Create the Update section
local UpdateSection = UpdateTab:AddSection({
    Name = "Update"
})

-- Add paragraphs to the Update section
UpdateSection:AddLabel("- Fixed Toggle Not Turn Off and showing up")
UpdateSection:AddLabel("- Fixed Credits Not Showing Up")
UpdateSection:AddLabel("- Fixed Auto Load Script")
UpdateSection:AddLabel("+ Fixing issues With Auto Player")
UpdateSection:AddLabel("+ This only for beta")

-- Add a label to the Main section
MainSection:AddLabel("Auto Player")

-- Define auto player functionality
local autoPlayerEnabled = false

-- Define auto player toggle callback function
local function AutoPlayerToggleCallback(autoplayerToggle)
    autoPlayerEnabled = autoplayerToggle
    
    if autoPlayerEnabled then
        OrionLib:MakeNotification({
            Name = "Auto Player",
            Content = "Auto Player Started",
            Image = "rbxassetid://4483345998",
            Time = 3
        })
    else
        OrionLib:MakeNotification({
            Name = "Auto Player",
            Content = "Auto Player Stopped",
            Image = "rbxassetid://4483345998",
            Time = 3
        })
    end
end

-- Add the auto player toggle to the UI with Default set to false
local autoPlayerToggle = MainSection:AddToggle({
    Name = "Auto Player",
    Default = false,
    Callback = AutoPlayerToggleCallback
})

-- Add paragraphs to the Credits section
CreditsSection:AddParagraph("Auto Player - Unknown", "Credits to the creator of the auto player")
CreditsSection:AddParagraph("Ui - Orion Hub", "Ngl, dont bully me pls ;–;")
CreditsSection:AddParagraph("Edited Script - Maxwell", "REEEEEEEE-")
