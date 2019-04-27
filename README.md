# jk_jobs
# Discord: Ice Heart#1826

# do not rename the folder

NUI JOBS FOR ESX

start esx_jk_jobs in server.cfg


Create new JOB

1 - Into html > ui.html add new code
                                        -- name job         --logo job
--<div class="job"><button class="tittle">Into</button><img src="" height="100" width="100"><button id="5" class="interview">Do interview</button></div>
                              -- id that will be pulled


2 - Into client.lua > LN 46 add new callback

                --Callback
RegisterNUICallback('newjob', function(data, cb)
	TriggerServerEvent('esx_empregos:setJobnewjob')
  	cb('ok')
end) 

3 - Server.lua > Add new Server Event LN 35

EX: 

RegisterServerEvent('esx_empregos:setJobnewjob')
AddEventHandler('esx_empregos:setJobnewjob', function(job)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
                -- Add new job EX
	xPlayer.setJob(Config.job.newjob, 0)
	TriggerClientEvent('esx:showNotification', source, 'You were hired ~g~' .. xPlayer.getName())	
end)

4 - Into Config.lua > LN 4 add new job

EX :                                                                                       -- Config in server -- JOB
Config.job          = { Taxi = "taxi", Mechanic = "mechanic", Fisher = "fisherman", Miner = "miner", newjob = "ambulance" }

5 - into js > index.js add new code LN 41

     --id placed in html
      $("#5").click(function() {    -- Callback client.lua
          $.post('http://esx_jk_jobs/newjob', JSON.stringify({}));
          2
      });

