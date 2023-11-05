-- Made by Plasek
-- Put the frecking credits if use >:(
-- Edit as you want

local plr = game.Players.LocalPlayer
local uis = game:GetService("UserInputService")

local device

function platform()
	if uis.TouchEnabled then
		device = "Mobile"
	elseif uis.MouseEnabled then
		device = "PC"
	else
		device = "Console" -- idk if this detect console, i just put it here.
	end
end

function Idk()
	if device == "PC" then
		-- you can load your pc script here
		print(plr.Name .. " uses " .. tostring(device))
	elseif device == "Mobile" then
		-- you can load your mobile script here
		print(plr.Name .. " uh ok you use " .. tostring(device))
	elseif device == "Console" then
		-- idk what you want to do with console :/
		print("Who tf uses " .. tostring(device) .. " ???")
	end
end

while not plr.Character do
	wait()
	if plr.Character then
		break
	end
end

if plr.Character then
	platform()
	Idk()
end
