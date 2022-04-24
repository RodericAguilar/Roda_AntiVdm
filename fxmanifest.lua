fx_version 'cerulean'

game 'gta5'

author 'Roderic#0614'
description 'Example'

--Client Scripts-- 
client_scripts {
 'Client/*.lua'
}

--Server Scripts-- 
server_scripts {
     'Server/*.lua'
}

shared_scripts {
    'Config.lua'
}

function ShowNotification(msg)
	BeginTextCommandThefeedPost('STRING')
	AddTextComponentSubstringPlayerName(msg)
	EndTextCommandThefeedPostTicker(0,1)
end