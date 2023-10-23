local isOx = GetResourceState('ox_inventory') == 'started'

RegisterNetEvent('fuel:pay', function(price)
	local source = source
	local xPlayer = ESX.GetPlayerFromId(source)
	local amount = math.floor(price + 0.5)
	print(amount)

	if price <= 0 then return end

	if xPlayer.getMoney() >= amount then
		xPlayer.removeMoney(amount)
	end
end)

RegisterNetEvent('fuel:addPetrolCan', function()
	local source = source
	local xPlayer = ESX.GetPlayerFromId(source)

	if isOx then
		if xPlayer.canCarryItem('weapon_petrolcan', 1) then

			xPlayer.addInventoryItem('weapon_petrolcan', 1)
		end
	else
		xPlayer.addWeapon('weapon_petrolcan', 4500)
	end
end)
