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

local players

Citizen.CreateThread(function()
  while true do
    TriggerServerEvent("esx_counter:GetAllPlayer")
    Citizen.Wait(Config.RefreshSecond * 1000)
  end
end)

RegisterNetEvent("esx_counter:Callback")
AddEventHandler("esx_counter:Callback", function(player_table)
    players = #player_table
end)
    
Citizen.CreateThread(function()
  while true do
    while players == nil do -- Wait unti the client get the player count
      Citizen.Wait(0)
    end

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

    AddTextComponentString(color .. _U('server') .. "~w~: " .. players .. "/" .. Config.MaxPlayers )
    DrawText(0.02, 0.01)
  end
end)