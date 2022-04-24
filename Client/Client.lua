
CreateThread(function()
	local DeathReason, Killer, DeathCauseHash, Weapon
	while true do
            local playerPed = PlayerPedId()
		Wait(250)
		if IsEntityDead(playerPed) then
                  DeathCauseHash = GetPedCauseOfDeath(playerPed)
                  if CarKill(DeathCauseHash) then
                    Wait(1000)
                    RevivePlayer()
                  end
		end
		while IsEntityDead(playerPed) do
			Wait(1000)
		end
	end
end)
