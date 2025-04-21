local ESX = nil

CreateThread(function()
    while ESX == nil do
        Wait(0)
    end
end)

RegisterNetEvent('gouvernement:taxNotification', function(society, amount)
    local xPlayer = ESX.GetPlayerData()
    if xPlayer then
        local job = xPlayer.job.name
        local job2 = xPlayer.job2 and xPlayer.job2.name or nil
        
        -- Vérifier si le joueur est dans la société concernée
        if job == society or (job2 and job2 == society) then
            -- Créer le message de notification
            local message = string.format("Prélèvement d'impôts : ~r~-$%s~s~\nNouveau solde : ~g~$%s", 
                ESX.Math.GroupDigits(amount),
                ESX.Math.GroupDigits(xPlayer.accounts.bank - amount))
            
            -- Afficher la notification
            ESX.ShowNotification(message)
        end
    end
end)
