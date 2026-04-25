local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/jensonhirst/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "My Solar Farm", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})
function getplot()
    for i,v in pairs(game:GetService("Workspace").Plots:GetDescendants()) do
        if v.Name == "PlotSign" then
            if v.Board.SurfaceGui.TextLabel.Text == game.Players.LocalPlayer.Name .. "'s plot" then
                return v.Parent
            end
        end
    end    
end
function humanoidrootpart()
    if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") or game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
        return game.Players.LocalPlayer.Character.HumanoidRootPart
    end
end
local Tab = Window:MakeTab({
	Name = "Tab 1",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddToggle({
	Name = "Auto Collect Battery",
	Default = false,
	Callback = function(v)
		getgenv().collectoil = v
        while getgenv().collectoil do
            wait()
            for i,v in pairs(getplot():GetDescendants()) do
                if v.Name == "Union" then
                    firetouchinterest(humanoidrootpart(),v,0)
                    wait()
		            firetouchinterest(humanoidrootpart(),v,1)
                end
            end
        end
	end    
})

Tab:AddToggle({
	Name = "Auto Steal Battery",
	Default = false,
	Callback = function(v)
		getgenv().steal = v
		while getgenv().steal do
		wait()
		for i,v in pairs(game:GetService("Workspace").Plots:GetDescendants()) do
                if v:FindFirstChild("Hitbox") then
                    for i,b in pairs(v:GetChildren()) do
                        if b:FindFirstChild("ProximityPrompt") then
                            if b.ProximityPrompt.Enabled == true and b.Parent.Parent.PlotSign.Board.SurfaceGui.TextLabel.Text ~= game.Players.LocalPlayer.Name .. "'s plot" then
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = b.CFrame
                                wait(0.3)
                                fireproximityprompt(b.ProximityPrompt)
                                wait()
                                for i,s in pairs(getplot():GetDescendants()) do
	            			        if s.Name == "TouchInterest" and s.Parent.Name == "Floor" then
		            		            firetouchinterest(humanoidrootpart(),s.Parent,0)
                   			            wait()
		            		            firetouchinterest(humanoidrootpart(),s.Parent,1)
							            wait(1)
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
})
