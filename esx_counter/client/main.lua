local color = Config.Colors[Config.Color] or 'White'

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
    AddTextComponentString(_U('server', color, Config.ServerName, #players, Config.MaxPlayers) )
    DrawText(0.02, 0.01)
  end
end)
