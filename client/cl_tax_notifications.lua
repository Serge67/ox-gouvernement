-- Notification périodique
CreateThread(function()
    while true do
        Wait(3600000) -- Attendre 1 heure (3600000 millisecondes)
        
        -- Afficher la notification périodique
        exports.ox_lib:notify({
            id = 'tax_periodic',
            title = 'Impôt Payé',
            description = 'Les impôts ont été prélevés des sociétés',
            type = 'inform',
            duration = 5000
        })
    end
end)

-- Gérer les notifications de prélèvement
RegisterNetEvent('gouvernement:showTaxNotification', function(amount)
    exports.ox_lib:notify({
        id = 'tax_collection',
        title = 'Prélèvement d\'Impôts',
        description = string.format('Montant prélevé : ~r~-$%s', ESX.Math.GroupDigits(amount)),
        type = 'inform',
        duration = 5000
    })
end)
