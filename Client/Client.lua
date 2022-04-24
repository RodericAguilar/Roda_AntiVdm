
CreateThread(function()
	local DeathReason, Killer, DeathCauseHash, Weapon
	while true do
		Wait(250)
		if IsEntityDead(PlayerPedId()) then
            local PedKiller = GetPedSourceOfDeath(PlayerPedId())
			local killername = GetPlayerName(PedKiller)
		    DeathCauseHash = GetPedCauseOfDeath(PlayerPedId())
            if IsEntityAVehicle(PedKiller) and IsEntityAPed(GetPedInVehicleSeat(PedKiller, -1)) and IsPedAPlayer(GetPedInVehicleSeat(PedKiller, -1)) then
				Killer = NetworkGetPlayerIndexFromPed(GetPedInVehicleSeat(PedKiller, -1))
			end

            if CarKill(DeathCauseHash) then
                Wait(1000)
                RevivePlayer()
                if Config.KickUser then 
                    TriggerServerEvent('Roda_NoVdm:kick', GetPlayerServerId(Killer))
                end
            end
		end
		while IsEntityDead(PlayerPedId()) do
			Wait(1000)
		end
	end
end)
