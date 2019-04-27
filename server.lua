ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('esx_empregos:setJobt')
AddEventHandler('esx_empregos:setJobt', function(job)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	xPlayer.setJob(Config.job.Taxi, 0)
	TriggerClientEvent('esx:showNotification', source, 'You were hired ~g~' .. xPlayer.getName())
end)

RegisterServerEvent('esx_empregos:setJobm')
AddEventHandler('esx_empregos:setJobm', function(job)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	xPlayer.setJob(Config.job.Mechanic, 0)
	TriggerClientEvent('esx:showNotification', source, 'You were hired ~g~' .. xPlayer.getName())
end)

RegisterServerEvent('esx_empregos:setJobp')
AddEventHandler('esx_empregos:setJobp', function(job)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	xPlayer.setJob(Config.job.Fisher, 0)
	TriggerClientEvent('esx:showNotification', source, 'You were hired ~g~' .. xPlayer.getName())
end)

RegisterServerEvent('esx_empregos:setJobn')
AddEventHandler('esx_empregos:setJobn', function(job)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	xPlayer.setJob(Config.job.Miner, 0)
	TriggerClientEvent('esx:showNotification', source, 'You were hired ~g~' .. xPlayer.getName())	
end)
