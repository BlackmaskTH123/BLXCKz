local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/naypramx/Ui__Project/Script/XeNonUi", true))()
local main = library:CreateWindow("EXTRA HUB | TEST",Enum.KeyCode.F4)
local Tab = main:CreateTab("Misc")
local Sector1 = Tab:CreateSector("function","left")
Sector1:AddSeperator("Test Tab")
Sector1:AddToggle("Fast Attack", _G.FastAttack, function(value)
   _G.FastAttack = value
end)

spawn(function()
    game:GetService("RunService").RenderStepped:Connect(function()
     pcall(function()
         if _G.FastAttack then
             local Combat = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework)
             local Cemara = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework.CameraShaker)
             Cemara.CameraShakeInstance.CameraShakeState = {FadingIn = 3, FadingOut = 2, Sustained = 0, Inactive = 1}
             Combat.activeController.timeToNextAttack = -0.5
             Combat.activeController.hitboxMagnitude = 120
             Combat.activeController.increment = 3
         end
     end)
 end) 
 end)
  
  
 spawn(function()
    game:GetService("RunService").RenderStepped:Connect(function()
     pcall(function()
         if _G.FastAttack then
             game:GetService'VirtualUser':CaptureController()
             game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
         end
     end)
 end) 
 end)
