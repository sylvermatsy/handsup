local handsup = false
Citizen.CreateThread(function()
    RequestAnimDict("missminuteman_1ig_2")
    while not HasAnimDictLoaded("missminuteman_1ig_2") do
        Wait(100)
    end
end)


RegisterKeyMapping('main', Config.Desc, 'keyboard', Config.Touche)
RegisterCommand('main', function()
    if not handsup then
        TaskPlayAnim(PlayerPedId(-1), dict, "handsup_enter", 8.0, 8.0, -1, 50, 0, false, false, false)
        handsup = true
    else
        handsup = false
        ClearPedTasks(PlayerPedId(-1))
    end
end)
