require "resources/essentialmode/lib/MySQL"
MySQL:open("127.0.0.1", "gta5_gamemode_essential", "root", "pass")

-- Remettre les hélicoptère dans le garage quand le serveur se lance
AddEventHandler('onResourceStarting', function(garages)
TriggerEvent('es:getPlayerFromId', source, function(user)
    local state = "Rentré"
    local executed_query = MySQL:executeQuery("UPDATE user_heli set vehicle_state = '@state'",
      {['@state'] = state})
  end)
end)