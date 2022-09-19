local QBCore = exports['qb-core']:GetCoreObject()



RegisterServerEvent('elite-gardener:returnVehicle')
AddEventHandler('elite-gardener:returnVehicle', function()
	local xPlayer = QBCore.Functions.GetPlayer(tonumber(playerId))
	local Payout = Config.DepositPrice
	
	xPlayer.Functions.AddMoney("bank", Config.DepositPrice , "deposit")
end)

RegisterServerEvent('elite-gardener:Payout')
AddEventHandler('elite-gardener:Payout', function(salary, arg)	
	local xPlayer = QBCore.Functions.GetPlayer(tonumber(source))
	local Payout = math.random(50,90)
	
	xPlayer.Functions.AddMoney("bank", Payout , "deposit2")
	TriggerClientEvent('okokNotify:Alert', source, 'Известие', 'Получи си заплатата', 3500, 'info')
end)

QBCore.Commands.Add('checkwork', 'За да намериш клиент', {}, false, function(source, args)
	TriggerEvent('qb-gardener:OpenMenu')
end)