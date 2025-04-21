fx_version 'adamant'
game 'gta5'

name 'ox-gouvernement'

lua54 'yes'

author '53RG3' 
description 'ox-gouvernement' -- modification by 53RG3 avec l'aide de IA, r'ajout d'un impôt prélever sur les joueurs connectés et sociétées.

client_scripts {
    '@es_extended/locale.lua',
    "locales/*.lua",
    'client/*.lua',
    'client/cl_tax_notifications.lua'
}

dependency 'es_extended'
dependency 'ox_lib'

shared_scripts {
    'config/config.lua',
    '@ox_lib/init.lua',
    '@es_extended/imports.lua'
}

server_scripts {
    '@es_extended/locale.lua',
    '@mysql-async/lib/MySQL.lua',
    "locales/*.lua",
    'server/server.lua',
    'server/taxes.lua'
}

escrow_ignore {
    'locales/*.lua',
    "config/config.lua",
    "client/cl_Boss.lua"
}

dependency '/assetpacks'
dependency '/assetpacks'