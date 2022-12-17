local handsup = false
local anim_dict = "missminuteman_1ig_2"
local anim_desc = "handsup_enter"

Citizen.CreateThread(function()
    RequestAnimDict(anim_dict)
    while not HasAnimDictLoaded(anim_dict) do
        Wait(100)
    end
end)


RegisterCommand('handsup', function()
    if not handsup then
        TaskPlayAnim(PlayerPedId(-1), anim_dict, anim_desc, 8.0, 8.0, -1, 50, 0, false, false, false)
        handsup = true
    else
        handsup = false
        ClearPedTasks(PlayerPedId(-1))
    end
end)

RegisterKeyMapping('handsup', "Lever Les Mains", "keyboard", "X")
