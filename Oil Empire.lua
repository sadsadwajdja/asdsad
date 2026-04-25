local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/jensonhirst/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Oil Empire", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Knit = ReplicatedStorage:WaitForChild("Packages"):WaitForChild("Knit")
local MmmGasPrices = require(ReplicatedStorage.Modules.GasolinePriceModule)
local BaseService = Knit.Services:WaitForChild("BaseService")
local Sell = BaseService.RE:WaitForChild("SellGas")
function plot()
	for i,v in pairs(workspace.Plots:GetDescendants()) do
		if v:FindFirstChild("Configuration") then
			if v.Configuration.Player.Value == game.Players.LocalPlayer then
			return v
			end
		end
	end
end
function humanoidrootpart()
    if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") or game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
        return game.Players.LocalPlayer.Character.HumanoidRootPart
    end
end
local function ShouldSell()
    local stock, _ = MmmGasPrices:GetStock()
    local sellvalue = math.clamp(math.floor(stock * 10)/10, 1, 15)
    if sellvalue == priceoil then
        Sell:FireServer()
    else
    end
end
local Tab = Window:MakeTab({
	Name = "Tab 1",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddToggle({
	Name = "Auto Collect Oil",
	Default = false,
	Callback = function(v)
		getgenv().collectoil = v
        while getgenv().collectoil do
            wait(waittime)
            for i,v in pairs(plot():GetDescendants()) do
	            if v.Name == "TouchInterest" and v.Parent then
		            firetouchinterest(humanoidrootpart(),v.Parent,0)
                    wait()
		            firetouchinterest(humanoidrootpart(),v.Parent,1)
	            end
            end
        end
	end    
})
Tab:AddSlider({
	Name = "Collect Wait Time",
	Min = 0,
	Max = 60,
	Default = 1,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "",
	Callback = function(v)
		waittime = tonumber(v)
	end    
})
Tab:AddToggle({
	Name = "Auto Sell Oil",
	Default = false,
	Callback = function(v)
		getgenv().selloil = v
        while getgenv().selloil do
            wait(0)
            ShouldSell()
        end
	end    
})
Tab:AddSlider({
	Name = "Price Oil Sell",
	Min = 1,
	Max = 15,
	Default = 10,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "",
	Callback = function(v)
		priceoil = tonumber(v)
	end    
})
Tab:AddToggle({
	Name = "Auto Steal",
	Default = false,
	Callback = function(v)
		getgenv().steal = v
		while getgenv().steal do
		wait(10)
		for i,v in pairs(workspace.Plots:GetDescendants()) do
			if v:FindFirstChild("Configuration") then
				if v.Configuration.Player.Value ~= game.Players.LocalPlayer and v.Configuration.Player.Value ~= nil then
					for i,b in pairs(v:GetChildren()) do
                		if b.Name == "Buildings" then
                    		for i,g in pairs(b:GetDescendants()) do
                        		if g:FindFirstChild("Steal") then
                            		if g.Steal.ActionText == "Steal ("..selectstealoil.." gasoline)" and not game.Players.LocalPlayer.Character:FindFirstChild("Gasoline") then
                            			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = g.Parent.CFrame
                            			wait(0.2)
                            			fireproximityprompt(g.Steal)
                            			wait(0.2)
                            			for i,s in pairs(plot():GetDescendants()) do
	            							if s.Name == "TouchInterest" and s.Parent.Name == "PlaceArea" then
		            							firetouchinterest(humanoidrootpart(),s.Parent,0)
                   								wait()
		            							firetouchinterest(humanoidrootpart(),s.Parent,1)
												wait(0.3)
												humanoidrootpart().CFrame = s.Parent.CFrame * CFrame.new(0,5,0)
												end
	            							end
                            			end
                        			end
                    			end
                			end
            			end
					end
				end
			end
		end
	end    
})

Tab:AddDropdown({
	Name = "Select Oil Steal",
	Default = "20000",
	Options = {"50", "150", "250", "500", "800", "1500", "2000", "5000", "7500", "12500", "20000", "100000", "150000", "275000", "400000", "1000000", "5000000", "15000000", "25000000"},
	Callback = function(v)
		selectstealoil = v
        end    
})
