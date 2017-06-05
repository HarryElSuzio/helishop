require "resources/essentialmode/lib/MySQL"
MySQL:open(database.host, database.name, database.username, database.password)

-- Remettre les hélicoptère dans le garage quand le serveur se lance
AddEventHandler('onResourceStarting', function(garages)
TriggerEvent('es:getPlayerFromId', source, function(user)
    local state = "Rentré"
    local executed_query = MySQL:executeQuery("UPDATE user_heli set vehicle_state = '@state'",
      {['@state'] = state})
  end)
end)