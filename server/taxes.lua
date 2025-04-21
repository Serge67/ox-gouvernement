local function collectTaxes()
    -- Récupérer toutes les sociétés
    exports.oxmysql:execute('SELECT * FROM addon_account WHERE name LIKE "society_%"', {}, function(accounts)
        if accounts then
            for _, account in ipairs(accounts) do
                if account and account.name and account.name ~= 'society_gouvernement' then
                    -- Récupérer le montant actuel du compte
                    exports.oxmysql:execute('SELECT money FROM addon_account_data WHERE account_name = ?', {account.name}, function(result)
                        if result and result[1] and result[1].money then
                            local amount = result[1].money
                            local tax = math.floor(amount * 0.001) -- 0,10% de taxe
                            
                            if tax > 0 then
                                -- Prélever l'argent de la société
                                exports.oxmysql:execute('UPDATE addon_account_data SET money = money - ? WHERE account_name = ?', {tax, account.name})
                                
                                -- Ajouter l'argent au compte du gouvernement
                                exports.oxmysql:execute('UPDATE addon_account_data SET money = money + ? WHERE account_name = ?', {tax, 'society_gouvernement'})
                                
                                -- Notifier tous les joueurs de la société
                                exports.oxmysql:execute('SELECT identifier FROM users WHERE job = ?', {account.name}, function(players)
                                    if players then
                                        for _, player in ipairs(players) do
                                            if player and player.identifier then
                                                local xPlayer = ESX.GetPlayerFromIdentifier(player.identifier)
                                                if xPlayer then
                                                    TriggerEvent('gouvernement:notifyTaxCollection', xPlayer.source, tax)
                                                end
                                            end
                                        end
                                    end
                                end)
                            end
                        end
                    end)
                end
            end
        end
    end)

    -- Prélever les taxes sur les joueurs connectés
    local players = GetPlayers()
    for _, playerId in ipairs(players) do
        local xPlayer = ESX.GetPlayerFromId(playerId)
        if xPlayer then
            -- Vérifier si le joueur a un emploi
            if xPlayer.job.name and xPlayer.job.name ~= 'unemployed' then
                -- Récupérer le montant en banque
                local bankAmount = xPlayer.getAccount('bank').money
                if bankAmount > 0 then
                    local tax = math.floor(bankAmount * 0.10) -- 10% de taxe
                    
                    if tax > 0 then
                        -- Prélever l'argent
                        xPlayer.removeAccountMoney('bank', tax)
                        
                        -- Ajouter l'argent au compte du gouvernement
                        exports.oxmysql:execute('UPDATE addon_account_data SET money = money + ? WHERE account_name = ?', {tax, 'society_gouvernement'})
                        
                        -- Notifier le joueur
                        TriggerEvent('gouvernement:notifyTaxCollection', playerId, tax)
                    end
                end
            end
        end
    end
end

-- Créer un timer pour collecter les taxes toutes les 24 heures
CreateThread(function()
    while true do
        collectTaxes()
        Wait(3600000) -- 1 heure (3600000 millisecondes)
    end
end)

-- Événement pour gérer les notifications de prélèvement des taxes
RegisterNetEvent('gouvernement:notifyTaxCollection', function(source, amount)
    TriggerClientEvent('gouvernement:showTaxNotification', source, amount)
end)
