local color = ''

    if Config.Color == 'Yellow' then
      color = '~y~'
    elseif Config.Color == 'Red' then
      color = '~r~'
    elseif Config.Color == 'Green' then
      color = '~g~'
    elseif Config.Color == 'Purple' then
      color = '~q~'
    elseif Config.Color == 'Blue' then
      color = '~b~'
    elseif Config.Color == 'Orange' then
      color = '~o~'
    elseif Config.Color == 'White' then
      color = '~w~'
    end
Citizen.CreateThread(function()
  while true do
    Citizen.Wait(0)
  
    SetTextFont(7)
    SetTextProportional(1)
    SetTextDropShadow(0, 0, 0, 0,255)
    SetTextEdge(0, 0, 0, 0, 255)
    SetTextScale(0.6, 0.6)
    SetTextColour(255, 255, 255, 255)
    SetTextDropShadow()
    SetTextOutline()
    SetTextEntry("STRING")

    players = GetActivePlayers()
    AddTextComponentString(color .. _U('server') .. "~w~: " .. #players .. "/" .. Config.MaxPlayers )
    DrawText(0.02, 0.01)
  end
end)