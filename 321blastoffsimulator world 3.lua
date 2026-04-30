for i, v in pairs(game.Workspace:GetChildren()) do
    if v.Name == "Launchpad" then
        for i, v in pairs(v:GetChildren()) do
            if v.Name == "Claim" then
                firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v, 0)
                firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v, 1)
            end
        end
    end
end
wait(0.3)
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/jensonhirst/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = tostring(game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name), HidePremium = false, SaveConfig = false, ConfigFolder = "OrionTest", IntroEnable = true, IntroText = tostring(game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name)})
function owner()
    for i, v in pairs(game.Workspace:GetChildren()) do
        if v.Name == "Launchpad" then
            for i, v in pairs(v:GetDescendants()) do
                if v.Name == "Owner" then
                    if v.Value == game.Players.LocalPlayer then
                        return v.Parent.Parent
                    end
                end
            end
        end
    end
end
local hum = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
local fp = fireproximityprompt
local fuel = owner().Values.Fuel
local rocketfuel = owner().Values.RocketFuel
local rocketlaunch = owner().Values.RocketLaunched
local ranknum = game:GetService("Players").LocalPlayer.Values.Rank
local pro = game:GetService("ReplicatedStorage").Promote
local buyscoop = game:GetService("ReplicatedStorage").BuyFuelScoop
local buybag = game:GetService("ReplicatedStorage").BuyItem
local buyrocket = game:GetService("ReplicatedStorage").BuyRocket
function farming()
    for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if v.Name == "FuelScoop" then
            game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):EquipTool(v)
        end
    end
    firesignal(game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.CollectFuel.Activated)
    hum.CFrame = CFrame.new(-23.743845, 7.0575304, -37.100914, -0.0431705788, -5.16046512e-08, -0.999067724, 2.65422617e-08, 1, -5.27997202e-08, 0.999067724, -2.87969115e-08, -0.0431705788)
    wait()
    hum.CFrame = CFrame.new(-20.0898571, 6.89753008, -36.3865623, -0.000450263702, -6.15112938e-08, 0.999999881, -8.97246277e-09, 1, 6.1507258e-08, -0.999999881, -8.94476671e-09, -0.000450263702)
    wait()
    hum.CFrame = CFrame.new(-19.6438046, 6.9575305, -32.3912582, 0.00827644672, 8.20947434e-08, 0.999965727, -1.3286801e-08, 1, -8.19875865e-08, -0.999965727, -1.26077797e-08, 0.00827644672)
    wait()
    hum.CFrame = CFrame.new(-24.4273434, 7.0575304, -32.7362709, 0.0266266875, 1.11997442e-08, -0.999645472, -1.15267227e-07, 1, 8.13344414e-09, 0.999645472, 1.15009797e-07, 0.0266266875)
end
function farming2()
    for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if v.Name == "FuelScoop" then
            game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):EquipTool(v)
        end
    end
    firesignal(game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.CollectFuel.Activated)
    hum.CFrame = CFrame.new(-23.743845, 7.0575304, -37.100914, -0.0431705788, -5.16046512e-08, -0.999067724, 2.65422617e-08, 1, -5.27997202e-08, 0.999067724, -2.87969115e-08, -0.0431705788)
    wait()
    hum.CFrame = CFrame.new(-20.0898571, 6.89753008, -36.3865623, -0.000450263702, -6.15112938e-08, 0.999999881, -8.97246277e-09, 1, 6.1507258e-08, -0.999999881, -8.94476671e-09, -0.000450263702)
    wait()
    hum.CFrame = CFrame.new(-19.6438046, 6.9575305, -32.3912582, 0.00827644672, 8.20947434e-08, 0.999965727, -1.3286801e-08, 1, -8.19875865e-08, -0.999965727, -1.26077797e-08, 0.00827644672)
    wait()
    hum.CFrame = CFrame.new(-24.4273434, 7.0575304, -32.7362709, 0.0266266875, 1.11997442e-08, -0.999645472, -1.15267227e-07, 1, 8.13344414e-09, 0.999645472, 1.15009797e-07, 0.0266266875)
    wait()
    firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, owner().FuelCollector.CollectorPad, 0)
    wait()
    firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, owner().FuelCollector.CollectorPad, 1)
end
function addall()
    hum.CFrame = owner().FuelCollector.TransferToRocket.AddAll.CFrame * CFrame.new(0, 0, -5)
    wait()
    fp(owner().FuelCollector.TransferToRocket.AddAll.Attachment.ProximityPrompt)
end
function launch()
    hum.CFrame = owner().LaunchStation.LaunchButton.CFrame * CFrame.new(0, 0, 5)
    wait()
    fp(owner().LaunchStation.LaunchButton.Attachment.ProximityPrompt)
end
function farmrocket()
    if fuel.Value >= selectfuel and not owner().LaunchStation.LoudSpeaker.SoundBlock["Alarm_03"].Playing == true and not rocketlaunch.Value == true then
        repeat wait()
            addall()
        until fuel.Value <= selectfuel or not getgenv().farmrocket
    else
        farming2()
    end
    if rocketfuel.Value >= tonumber(selectfuel) and not owner().LaunchStation.LoudSpeaker.SoundBlock["Alarm_03"].Playing == true and not rocketlaunch.Value == true and owner().Values.RocketSpeed.Value == 0 then
        repeat wait()
            launch()
        until rocketlaunch.Value == true or owner().LaunchStation.LoudSpeaker.SoundBlock["Alarm_03"].Playing == true or not getgenv().farmrocket
    end
end
----------------------------------------------------------------------------------------------------------
function mission()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Islands.EnergyCrystal.GemSpawner.CFrame
wait()
for i,v in pairs(game:GetService("Workspace").Islands.EnergyCrystal.Gems:GetDescendants()) do
    if v:FindFirstChild("Owner") and v.Owner.Value ~= game.Players.LocalPlayer then
        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,v.Item,0)
    end
end
wait(3)
for i,v in pairs(game:GetService("Workspace").Islands.EnergyCrystal.Gems:GetDescendants()) do
    if v:FindFirstChild("Owner") and v.Owner.Value == game.Players.LocalPlayer then
        v.Item.CFrame = game:GetService("Workspace").Islands.EnergyCrystal.ItemDetector.CFrame
    end
end
wait(10)
if game:GetService("Players").LocalPlayer.Misc.PeasCollected.Value < 4 then
    repeat wait()
    for i,v in pairs(game:GetService("Workspace").Islands.SpacePeas.PeaObby.Peas:GetDescendants()) do
        if v:FindFirstChild("ProximityPrompt") then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame * CFrame.new(0,5,-4)
            wait(0.2)
            fireproximityprompt(v.ProximityPrompt)
        end
    end
    until game:GetService("Players").LocalPlayer.Misc.PeasCollected.Value > 20
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Islands.SpacePeas.PeaObby.FarmerMoonling.Moonling.Body.CFrame
    wait(0.2)
    fireproximityprompt(game:GetService("Workspace").Islands.SpacePeas.PeaObby.FarmerMoonling.Moonling.Body.Attachment.ProximityPrompt)
end
wait(10)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Islands.CodeBreaker.Prize.Click.CFrame
wait(0.2)
fireproximityprompt(game:GetService("Workspace").Islands.CodeBreaker.Prize.Click.Attachment.ProximityPrompt)
wait(11)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Islands.CodeBreaker.Prize2.Click.CFrame
wait(0.2)
fireproximityprompt(game:GetService("Workspace").Islands.CodeBreaker.Prize2.Click.Attachment.ProximityPrompt)
wait(10)
game:GetService("Workspace").Islands.HelpOrHinder.Obby.Part4.Door.CanCollide = false
wait(0.3)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Islands.HelpOrHinder.Obby.Part4.Prize.Click.CFrame
wait(0.2)
fireproximityprompt(game:GetService("Workspace").Islands.HelpOrHinder.Obby.Part4.Prize.Click.Attachment.ProximityPrompt)
wait(10)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Islands.RapscallionsMaze.Prize.Click.CFrame
wait(0.2)
fireproximityprompt(game:GetService("Workspace").Islands.RapscallionsMaze.Prize.Click.Attachment.ProximityPrompt)
wait(10)
game:GetService("Workspace").Islands.TheGrobs.Prize.Barrier.CanCollide = false
wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Islands.TheGrobs.Prize.Click.CFrame
wait(0.2)
fireproximityprompt(game:GetService("Workspace").Islands.TheGrobs.Prize.Click.Attachment.ProximityPrompt)
wait(10)
game:GetService("Workspace").Islands.CopyCat.Prize.Barrier.CanCollide = false
wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Islands.CopyCat.Prize.Click.CFrame
wait(0.2)
fireproximityprompt(game:GetService("Workspace").Islands.CopyCat.Prize.Click.Attachment.ProximityPrompt)
wait(10)
game:GetService("Workspace").Islands.StarlightArray.Prize.PrizeChest.Barrier.CanCollide = false
wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Islands.StarlightArray.Prize.PrizeChest.Click.CFrame
wait(0.2)
fireproximityprompt(game:GetService("Workspace").Islands.StarlightArray.Prize.PrizeChest.Click.Attachment.ProximityPrompt)
wait(10)
game:GetService("Workspace").Islands.TheSingularity.Singularity.CanCollide = false
wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Islands.TheSingularity.Prize.Click.CFrame
wait(0.2)
fireproximityprompt(game:GetService("Workspace").Islands.TheSingularity.Prize.Click.Attachment.ProximityPrompt)
wait(10)
game:GetService("ReplicatedStorage").Teleport:FireServer()
end
local Tab = Window:MakeTab({
    Name = "Main",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
local fuellabel = Tab:AddLabel("")
local rocketlabel = Tab:AddLabel("")
Tab:AddToggle({
    Name = "Toggle Collect Fuel",
    Default = false,
    Callback = function(v)
        getgenv().farm = v
        while getgenv().farm do
            wait()
            farming()
        end
    end
})
Tab:AddDropdown({
    Name = "Select Fuel Rocket Only!",
    Default = 10,
    Options = {10, 50, 100, 500, 1000, 3000, 5000, 8000, 10000, 15000, 20000, 30000, 50000, 100000, 500000, 1000000, 3000000, 5000000, 10000000},
    Callback = function(v)
        selectfuel = tonumber(v)
    end
})
Tab:AddToggle({
    Name = "Toggle Farm Rocket",
    Default = false,
    Callback = function(v)
        getgenv().farmrocket = v
        while getgenv().farmrocket do
            wait()
            farmrocket()
        end
    end
})
Tab:AddToggle({
    Name = "Toggle Store Fuel",
    Default = false,
    Callback = function(v)
        getgenv().store = v
        while getgenv().store do
            wait()
            firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, owner().FuelCollector.CollectorPad, 0)
            wait()
            firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, owner().FuelCollector.CollectorPad, 1)
        end
    end
})
Tab:AddToggle({
    Name = "Toggle Store Full Fuel",
    Default = false,
    Callback = function(v)
        getgenv().fs = v
        while getgenv().fs do
            wait()
            if game.Players.LocalPlayer.PlayerGui.ScreenGui:WaitForChild("PMClone").Text == "Backpack Full!" then
                firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, owner().FuelCollector.CollectorPad, 0)
                wait()
                firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, owner().FuelCollector.CollectorPad, 1)
            end
        end
    end
})
Tab:AddButton({
    Name = "Complete Mission",
    Callback = function()
        mission()
    end
})
Tab:AddToggle({
    Name = "Toggle Rank Up",
    Default = false,
    Callback = function(v)
        getgenv().rank = v
        while getgenv().rank do
            wait()
            if ranknum.Value == 0 then
                pro:FireServer(1)
            elseif ranknum.Value == 1 then
                pro:FireServer(2)
            elseif ranknum.Value == 2 then
                pro:FireServer(3)
            elseif ranknum.Value == 3 then
                pro:FireServer(4)
            elseif ranknum.Value == 4 then
                pro:FireServer(5)
            elseif ranknum.Value == 5 then
                pro:FireServer(6)
            elseif ranknum.Value == 6 then
                pro:FireServer(7)
            elseif ranknum.Value == 7 then
                pro:FireServer(8)
            elseif ranknum.Value == 8 then
                pro:FireServer(9)
            elseif ranknum.Value == 9 then
                pro:FireServer(10)
            elseif ranknum.Value == 10 then
                pro:FireServer(11)
            elseif ranknum.Value == 11 then
                pro:FireServer(12)
            elseif ranknum.Value == 12 then
                pro:FireServer(13)
            end
        end
    end
})
local Tab = Window:MakeTab({
    Name = "Stats",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddToggle({
    Name = "Toggle Upgrade Cash Earned",
    Default = false,
    Callback = function(v)
        getgenv().cashearn = v
        while getgenv().cashearn do
            wait()
            local A_1 = "Cash"
            local Event = game:GetService("ReplicatedStorage").AddRankPoint
            Event:FireServer(A_1)
        end
    end
})
Tab:AddToggle({
    Name = "Toggle Upgrade Rocket Speed",
    Default = false,
    Callback = function(v)
        getgenv().uprocket = v
        while getgenv().uprocket do
            wait()
            local A_1 = "RocketSpeed"
            local Event = game:GetService("ReplicatedStorage").AddRankPoint
            Event:FireServer(A_1)
        end
    end
})
Tab:AddToggle({
    Name = "Toggle Upgrade Fuelscoop Collection",
    Default = false,
    Callback = function(v)
        getgenv().fuelco = v
        while getgenv().fuelco do
            wait()
            local A_1 = "FuelScoop"
            local Event = game:GetService("ReplicatedStorage").AddRankPoint
            Event:FireServer(A_1)
        end
    end
})
Tab:AddToggle({
    Name = "Toggle Upgrade FuelBot Collection",
    Default = false,
    Callback = function(v)
        getgenv().fuelbot = v
        while getgenv().fuelbot do
            wait()
            local A_1 = "FuelBotCollection"
            local Event = game:GetService("ReplicatedStorage").AddRankPoint
            Event:FireServer(A_1)
        end
    end
})
local Tab = Window:MakeTab({
    Name = "Shop",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddToggle({
    Name = "Toggle Buy Scoop",
    Default = false,
    Callback = function(v)
        getgenv().buyscoop = v
        while getgenv().buyscoop do
            wait()
            if game:GetService("Players").LocalPlayer.FuelScoops.HasFuelScoop1.Value == false then
                buyscoop:InvokeServer("FuelScoop", 1)
            elseif game:GetService("Players").LocalPlayer.FuelScoops.HasFuelScoop2.Value == false then
                buyscoop:InvokeServer("FuelScoop", 2)
            elseif game:GetService("Players").LocalPlayer.FuelScoops.HasFuelScoop3.Value == false then
                buyscoop:InvokeServer("FuelScoop", 3)
            elseif game:GetService("Players").LocalPlayer.FuelScoops.HasFuelScoop4.Value == false then
                buyscoop:InvokeServer("FuelScoop", 4)
            elseif game:GetService("Players").LocalPlayer.FuelScoops.HasFuelScoop5.Value == false then
                buyscoop:InvokeServer("FuelScoop", 5)
            elseif game:GetService("Players").LocalPlayer.FuelScoops.HasFuelScoop6.Value == false then
                buyscoop:InvokeServer("FuelScoop", 6)
            elseif game:GetService("Players").LocalPlayer.FuelScoops.HasFuelScoop7.Value == false then
                buyscoop:InvokeServer("FuelScoop", 7)
            end
        end
    end
})
Tab:AddToggle({
    Name = "Toggle Buy Backpack",
    Default = false,
    Callback = function(v)
        getgenv().buybag = v
        while getgenv().buybag do
            wait()
            if game:GetService("Players").LocalPlayer.Backpacks.HasBackpack1.Value == false then
                buybag:InvokeServer("Backpack", 1)
            elseif game:GetService("Players").LocalPlayer.Backpacks.HasBackpack2.Value == false then
                buybag:InvokeServer("Backpack", 2)
            elseif game:GetService("Players").LocalPlayer.Backpacks.HasBackpack3.Value == false then
                buybag:InvokeServer("Backpack", 3)
            elseif game:GetService("Players").LocalPlayer.Backpacks.HasBackpack4.Value == false then
                buybag:InvokeServer("Backpack", 4)
            elseif game:GetService("Players").LocalPlayer.Backpacks.HasBackpack5.Value == false then
                buybag:InvokeServer("Backpack", 5)
            elseif game:GetService("Players").LocalPlayer.Backpacks.HasBackpack6.Value == false then
                buybag:InvokeServer("Backpack", 6)
            elseif game:GetService("Players").LocalPlayer.Backpacks.HasBackpack7.Value == false then
                buybag:InvokeServer("Backpack", 7)
            elseif game:GetService("Players").LocalPlayer.Backpacks.HasBackpack8.Value == false then
                buybag:InvokeServer("Backpack", 8)
            end
        end
    end
})
Tab:AddToggle({
    Name = "Toggle Buy Rocket",
    Default = false,
    Callback = function(v)
        getgenv().buyrocket = v
        while getgenv().buyrocket do
            wait()
            if game:GetService("Players").LocalPlayer.Rockets.HasRocket1.Value == false then
                buyrocket:InvokeServer("Rocket", 1)
            elseif game:GetService("Players").LocalPlayer.Rockets.HasRocket2.Value == false then
                buyrocket:InvokeServer("Rocket", 2)
            elseif game:GetService("Players").LocalPlayer.Rockets.HasRocket3.Value == false then
                buyrocket:InvokeServer("Rocket", 3)
            elseif game:GetService("Players").LocalPlayer.Rockets.HasRocket4.Value == false then
                buyrocket:InvokeServer("Rocket", 4)
            elseif game:GetService("Players").LocalPlayer.Rockets.HasRocket5.Value == false then
                buyrocket:InvokeServer("Rocket", 5)
            elseif game:GetService("Players").LocalPlayer.Rockets.HasRocket6.Value == false then
                buyrocket:InvokeServer("Rocket", 6)
            elseif game:GetService("Players").LocalPlayer.Rockets.HasRocket7.Value == false then
                buyrocket:InvokeServer("Rocket", 7)
            elseif game:GetService("Players").LocalPlayer.Rockets.HasRocket8.Value == false then
                buyrocket:InvokeServer("Rocket", 8)
            elseif game:GetService("Players").LocalPlayer.Rockets.HasRocket9.Value == false then
                buyrocket:InvokeServer("Rocket", 9)
            end
        end
    end
})
Tab:AddDropdown({
    Name = "Gem Shop Item",
    Default = "Cash Booster",
    Options = {"Cash Booster", "Speed Booster", "Fuel Booster", "Dark Matter Core"},
    Callback = function(v)
        selectgemitem = v
    end
})
Tab:AddButton({
    Name = "Buy Gem Shop Item",
    Callback = function()
        game:GetService("ReplicatedStorage").BuyAccelerant:InvokeServer(selectgemitem)
    end
})
Tab:AddDropdown({
    Name = "Select FuelBot",
    Default = "D3 FuelBot",
    Options = {"D3 FuelBot", "D3 Gold FuelBot", "Stealth FuelBot", "Singularity FuelBot"},
    Callback = function(v)
        selectbot = v
    end
})
Tab:AddButton({
    Name = "Buy Selected FuelBot",
    Callback = function()
        if selectbot == "D3 FuelBot" then
            hum.CFrame = game:GetService("Workspace").MainIsland.BotSellers.FuelBot1Seller.Buy.CFrame
            wait(0.2)
            fp(game:GetService("Workspace").MainIsland.BotSellers.FuelBot1Seller.Buy.Attachment.ProximityPrompt)
        elseif selectbot == "D3 Gold FuelBot" then
            hum.CFrame = game:GetService("Workspace").MainIsland.BotSellers.FuelBot2Seller.Buy.CFrame
            wait(0.2)
            fp(game:GetService("Workspace").MainIsland.BotSellers.FuelBot2Seller.Buy.Attachment.ProximityPrompt)
        elseif selectbot == "Stealth FuelBot" then
            hum.CFrame = game:GetService("Workspace").MainIsland.BotSellers.FuelBot3Seller.Buy.CFrame
            wait(0.2)
            fp(game:GetService("Workspace").MainIsland.BotSellers.FuelBot3Seller.Buy.Attachment.ProximityPrompt)
        elseif selectbot == "Singularity FuelBot" then
            hum.CFrame = game:GetService("Workspace").MainIsland.BotSellers.FuelBot4Seller.Buy.CFrame
            wait(0.2)
            fp(game:GetService("Workspace").MainIsland.BotSellers.FuelBot4Seller.Buy.Attachment.ProximityPrompt)
        end
    end
})
local Tab = Window:MakeTab({
    Name = "Pad",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
    Name = "Tp Pad",
    Callback = function()
        game:GetService("ReplicatedStorage").Teleport:FireServer()
    end
})
Tab:AddButton({
    Name = "Tp Rocket",
    Callback = function()
        game:GetService("ReplicatedStorage").BoardRocket:FireServer()
    end
})
Tab:AddButton({
    Name = "Remove Player From Rocket",
    Callback = function()
        game:GetService("ReplicatedStorage").RemovePlayer:FireServer()
    end
})
Tab:AddButton({
    Name = "Use Fuel Booster",
    Callback = function()
        for i, v in pairs(owner():GetDescendants()) do
            if v:IsA("Folder") and v.Name == "Sign1" then
                for i, v in pairs(v:GetChildren()) do
                    if v:IsA("Part") and v.Name == "PlusBtn" then
                        fireclickdetector(v.ClickDetector)
                    end
                end
            end
        end
    end
})
Tab:AddButton({
    Name = "Use Speed Booster",
    Callback = function()
        for i, v in pairs(owner():GetDescendants()) do
            if v:IsA("Folder") and v.Name == "Sign2" then
                for i, v in pairs(v:GetChildren()) do
                    if v:IsA("Part") and v.Name == "PlusBtn" then
                        fireclickdetector(v.ClickDetector)
                    end
                end
            end
        end
    end
})
Tab:AddButton({
    Name = "Use Cash Booster",
    Callback = function()
        for i, v in pairs(owner():GetDescendants()) do
            if v:IsA("Folder") and v.Name == "Sign3" then
                for i, v in pairs(v:GetChildren()) do
                    if v:IsA("Part") and v.Name == "PlusBtn" then
                        fireclickdetector(v.ClickDetector)
                    end
                end
            end
        end
    end
})
Tab:AddButton({
    Name = "Lockdown Pad",
    Callback = function()
        if owner().Lockdown.Active.Value == false then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = owner().Lockdown.Stand.LockdownButton.CFrame * CFrame.new(0, 0, 5)
            wait(0.7)
            fp(owner().Lockdown.Stand.LockdownButton.Attachment.ProximityPrompt)
        end
    end
})
local Tab = Window:MakeTab({
    Name = "Misc",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddSlider({
    Name = "WalkSpeed",
    Min = 16,
    Max = 500,
    Default = 16,
    Color = Color3.fromRGB(255, 255, 255),
    Increment = 1,
    ValueName = "",
    Callback = function(v)
        setws = v
    end
})
Tab:AddToggle({
    Name = "Toggle WalkSpeed",
    Default = false,
    Callback = function(v)
        getgenv().ws = v
        while getgenv().ws do
            wait()
            game.Players.LocalPlayer.Character:WaitForChild("Humanoid").WalkSpeed = setws
        end
        if not getgenv().ws then
            game.Players.LocalPlayer.Character:WaitForChild("Humanoid").WalkSpeed = 16
        end
    end
})
Tab:AddSlider({
    Name = "JumpPower",
    Min = 50,
    Max = 1000,
    Default = 50,
    Color = Color3.fromRGB(255, 255, 255),
    Increment = 1,
    ValueName = "",
    Callback = function(v)
        setjp = v
    end
})
Tab:AddToggle({
    Name = "Toggle JumpPower",
    Default = false,
    Callback = function(v)
        getgenv().jp = v
        while getgenv().jp do
            wait()
            game.Players.LocalPlayer.Character:WaitForChild("Humanoid").JumpPower = setjp
        end
        if not getgenv().jp then
            game.Players.LocalPlayer.Character:WaitForChild("Humanoid").JumpPower = 50
        end
    end
})
Tab:AddButton({
    Name = "Claim Free Gem",
    Callback = function()
        game.ReplicatedStorage.FreeGems1:FireServer()
    end
})
getgenv().label = true
repeat wait()
    fuellabel:Set("FuelStorage: " .. tostring(fuel.Value))
    rocketlabel:Set("Rocket Fuel: " .. tostring(rocketfuel.Value))
until not getgenv().label
OrionLib:Init()
