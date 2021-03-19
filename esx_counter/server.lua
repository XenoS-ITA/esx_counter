RegisterServerEvent("esx_counter:GetAllPlayer")
AddEventHandler("esx_counter:GetAllPlayer", function()
    TriggerClientEvent("esx_counter:Callback", source, GetPlayers())
end)