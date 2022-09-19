RegisterNetEvent("qb-gardener:OpenMenu")
AddEventHandler('qb-gardener:OpenMenu',function()
    local sendMenu = {}
    table.insert(sendMenu,{
        id = #sendMenu+1,
        header = "Потърси работа",
        txt = "Потърси клиент и отиди при него",
        params = { 
            event = "qb-gardener:checkrabota",
        }
    })
    table.insert(sendMenu,{
        id = #sendMenu+1,
        header = "Откажи работа",
        txt = "Откажи срещата с клиент",
        params = { 
            event = "qb-gardener:cancelWork",
        }
    })
    
    TriggerEvent('nh-context:sendMenu', sendMenu)
end)