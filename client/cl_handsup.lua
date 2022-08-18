ESX = nil

Citizen.CreateThread(function()
local dict = "missminuteman_1ig_2"
	RequestAnimDict(dict)
	while not HasAnimDictLoaded(dict) do
		Citizen.Wait(0)
	end
    local handsup = false
	while true do
		Citizen.Wait(0)
		if IsControlJustPressed(1, Config.Touche) then
            if not handsup then
                TaskPlayAnim(PlayerPedId(-1), dict, "handsup_enter", 8.0, 8.0, -1, 50, 0, false, false, false)
                handsup = true
            else
                handsup = false
                ClearPedTasks(PlayerPedId(-1))
            end
        end
    end
end)
