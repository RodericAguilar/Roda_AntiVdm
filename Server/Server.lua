RegisterServerEvent('Roda_NoVdm:kick')
AddEventHandler('Roda_NoVdm:kick', function (user)
    DropPlayer(user, Config.MessageKick)
end)