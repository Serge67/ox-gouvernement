exports.ox_target:addBoxZone({
    coords = Config.Boss,
    size = vec3(2, 2, 2),
    rotation = 45,
    options = {
        {
            name = 'boss_gouv',
            event = 'ox_target:debug',
            icon = 'fa-solid fa-user-tie',
            label = 'Gestion Gouvernement',
            onSelect = function(data)
                if ESX.PlayerData.job and ESX.PlayerData.job.name == Config.Job.JobName and ESX.PlayerData.job.grade_name == 'boss' then
                    local menu = nil
                    TriggerEvent('esx_society:openBossMenu', Config.Job.JobName, function(data, menu)
                        if menu then
                            menu.close()
                        end
                    end)
                end
            end
        }
    }
})
