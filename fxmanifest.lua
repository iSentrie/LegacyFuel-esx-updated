fx_version 'bodacious'
game 'gta5'

author 'InZidiuZ FRP'
description 'Legacy Fuel Updated'
version '1.31'

shared_scripts {
	'@es_extended/imports.lua',
	'config.lua'
}

-- What to run
client_scripts {
	'functions_client.lua',
	'fuel_client.lua'
}

server_script 'fuel_server.lua'

exports {
	'GetFuel',
	'SetFuel'
}


shared_script '@ox_lib/init.lua'


lua54 'yes'
