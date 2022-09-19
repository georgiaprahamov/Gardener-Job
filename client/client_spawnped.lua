--spawning a ped
CreateThread(function()
    SpawnNPC()
end)




SpawnNPC = function()
    CreateThread(function()
       
        RequestModel(GetHashKey('s_m_m_gardener_01'))
        while not HasModelLoaded(GetHashKey('s_m_m_gardener_01')) do
            Wait(1)
        end
        CreateNPC()   
    end)
end


CreateNPC = function()
    created_ped = CreatePed(5, GetHashKey('s_m_m_gardener_01') , Config.PedLocation, false, true)
    FreezeEntityPosition(created_ped, true)
    SetEntityInvincible(created_ped, true)
    SetBlockingOfNonTemporaryEvents(created_ped, true)
    TaskStartScenarioInPlace(created_ped, 'WORLD_HUMAN_CLIPBOARD', 0, true)
end