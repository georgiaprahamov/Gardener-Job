local QBCore = exports['qb-core']:GetCoreObject()


CreateThread(function()
    exports['qb-target']:AddBoxZone("gardener1", vector3(-1753.3, -724.07, 9.41), 1 , 1, {
        name = "gardener1",
        heading = 0,
        debugPoly = false,
    }, {
        options = {
            {
                type = "client",
                event = "gardener:client:VehPick",
                icon = "fas fa-car",
                label = "Започни работа",
            },
            {
                type = "client",
                event = "gardener:SpriRabota",
                icon = "fas fa-car",
                label = "Спри работа",
            },
        },
        distance = 2.5
    })
end)