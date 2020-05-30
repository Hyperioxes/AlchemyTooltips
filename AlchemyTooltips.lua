local addon = {
	name = "AlchemyTooltips",
	isInitialized = false,
}







local function countPricingAddons()
	counter = 0
	if savedVars.TTCuse and LibPrice.ItemLinkToPriceGold("|H0:item:30148:30:1:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h","ttc") ~= nil then 
		counter = counter + 1
	end
	if savedVars.MMuse and LibPrice.ItemLinkToPriceGold("|H0:item:30148:30:1:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h","mm") ~= nil then 
		counter = counter + 1
	end
	if savedVars.ATTuse and LibPrice.ItemLinkToPriceGold("|H0:item:30148:30:1:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h","att") ~= nil then 
		counter = counter + 1
	end
	return counter
end




local function GeneratePrice(itemLink)
	result = 0
	if savedVars.TTCuse == true and LibPrice.ItemLinkToPriceGold(itemLink,"ttc") ~= nil then 
		result = result + LibPrice.ItemLinkToPriceGold(itemLink,"ttc")*savedVars.TTCMultiplier
	end
	if savedVars.MMuse == true and LibPrice.ItemLinkToPriceGold(itemLink,"mm") ~= nil then 
		result = result + LibPrice.ItemLinkToPriceGold(itemLink,"mm")*savedVars.MMMultiplier
	end
	if savedVars.ATTuse == true and LibPrice.ItemLinkToPriceGold(itemLink,"att") ~= nil then 
		result = result + LibPrice.ItemLinkToPriceGold(itemLink,"att")*savedVars.ATTMultiplier
	end
	return result/countPricingAddons()

end

function InitializePrices()
	--Reagents

	LibAlchemy.reagents[30148][2] = GeneratePrice("|H0:item:30148:30:1:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h")
	LibAlchemy.reagents[30160][2] = GeneratePrice("|H0:item:30160:30:1:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h")
	LibAlchemy.reagents[77585][2] = GeneratePrice("|H0:item:77585:30:1:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h")
	LibAlchemy.reagents[30149][2] = GeneratePrice("|H0:item:30149:30:1:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h")
	LibAlchemy.reagents[30151][2] = GeneratePrice("|H0:item:30151:30:1:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h")
	LibAlchemy.reagents[30152][2] = GeneratePrice("|H0:item:30152:30:1:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h")
	LibAlchemy.reagents[30153][2] = GeneratePrice("|H0:item:30153:30:1:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h")
	LibAlchemy.reagents[30154][2] = GeneratePrice("|H0:item:30154:30:1:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h")
	LibAlchemy.reagents[30155][2] = GeneratePrice("|H0:item:30155:30:1:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h")
	LibAlchemy.reagents[30156][2] = GeneratePrice("|H0:item:30156:30:1:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h")
	LibAlchemy.reagents[30157][2] = GeneratePrice("|H0:item:30157:30:1:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h")
	LibAlchemy.reagents[30158][2] = GeneratePrice("|H0:item:30158:30:1:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h")
	LibAlchemy.reagents[30159][2] = GeneratePrice("|H0:item:30159:30:1:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h")
	LibAlchemy.reagents[30161][2] = GeneratePrice("|H0:item:30161:30:1:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h")
	LibAlchemy.reagents[30162][2] = GeneratePrice("|H0:item:30162:30:1:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h")
	LibAlchemy.reagents[30163][2] = GeneratePrice("|H0:item:30163:30:1:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h")
	LibAlchemy.reagents[30164][2] = GeneratePrice("|H0:item:30164:30:1:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h")
	LibAlchemy.reagents[30165][2] = GeneratePrice("|H0:item:30165:30:1:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h")
	LibAlchemy.reagents[30166][2] = GeneratePrice("|H0:item:30166:30:1:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h")
	LibAlchemy.reagents[77581][2] = GeneratePrice("|H0:item:77581:30:1:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h")
	LibAlchemy.reagents[77583][2] = GeneratePrice("|H0:item:77583:30:1:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h")
	LibAlchemy.reagents[77584][2] = GeneratePrice("|H0:item:77584:30:1:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h")
	LibAlchemy.reagents[77587][2] = GeneratePrice("|H0:item:77587:30:1:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h")
	LibAlchemy.reagents[77589][2] = GeneratePrice("|H0:item:77589:30:1:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h")
	LibAlchemy.reagents[77590][2] = GeneratePrice("|H0:item:77590:30:1:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h")
	LibAlchemy.reagents[77591][2] = GeneratePrice("|H0:item:77591:30:1:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h")
	LibAlchemy.reagents[150789][2] = GeneratePrice("|H0:item:150789:30:1:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h")
	LibAlchemy.reagents[150731][2] = GeneratePrice("|H0:item:150731:30:1:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h")
	LibAlchemy.reagents[150671][2] = GeneratePrice("|H0:item:150671:30:1:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h")
	LibAlchemy.reagents[139019][2] = GeneratePrice("|H0:item:139019:30:1:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h")
	LibAlchemy.reagents[139020][2] = GeneratePrice("|H0:item:139020:30:1:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h")
	LibAlchemy.reagents[150672][2] = GeneratePrice("|H0:item:150671:30:1:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h")
	LibAlchemy.reagents[150670][2] = GeneratePrice("|H0:item:139019:30:1:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h")
	LibAlchemy.reagents[150669][2] = GeneratePrice("|H0:item:139020:30:1:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h")
    
	--solvents
	LibAlchemy.solvents[3][1] = LibPrice.ItemLinkToPriceGold("|H0:item:883:30:1:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h")
	LibAlchemy.solvents[3][2] = LibPrice.ItemLinkToPriceGold("|H0:item:75357:30:1:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h")
	LibAlchemy.solvents[10][1] = LibPrice.ItemLinkToPriceGold("|H0:item:1187:30:1:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h")
	LibAlchemy.solvents[10][2] = LibPrice.ItemLinkToPriceGold("|H0:item:75358:30:1:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h")
	LibAlchemy.solvents[20][1] = LibPrice.ItemLinkToPriceGold("|H0:item:4570:30:1:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h")
	LibAlchemy.solvents[20][2] = LibPrice.ItemLinkToPriceGold("|H0:item:75359:30:1:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h")
	LibAlchemy.solvents[30][1] = LibPrice.ItemLinkToPriceGold("|H0:item:23265:30:1:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h")
	LibAlchemy.solvents[30][2] = LibPrice.ItemLinkToPriceGold("|H0:item:75360:30:1:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h")
	LibAlchemy.solvents[40][1] = LibPrice.ItemLinkToPriceGold("|H0:item:23266:30:1:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h")
	LibAlchemy.solvents[40][2] = LibPrice.ItemLinkToPriceGold("|H0:item:75361:30:1:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h")
	LibAlchemy.solvents["CP"][75][1] = LibPrice.ItemLinkToPriceGold("|H0:item:23267:30:1:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h")
	LibAlchemy.solvents["CP"][75][2] = LibPrice.ItemLinkToPriceGold("|H0:item:75362:30:1:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h")
	LibAlchemy.solvents["CP"][79][1] = LibPrice.ItemLinkToPriceGold("|H0:item:23268:30:1:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h")
	LibAlchemy.solvents["CP"][79][2] = LibPrice.ItemLinkToPriceGold("|H0:item:75363:30:1:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h")
	LibAlchemy.solvents["CP"][84][1] = LibPrice.ItemLinkToPriceGold("|H0:item:64500:30:1:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h")
	LibAlchemy.solvents["CP"][84][2] = LibPrice.ItemLinkToPriceGold("|H0:item:75364:30:1:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h")
	LibAlchemy.solvents["CP"][258][1] = LibPrice.ItemLinkToPriceGold("|H0:item:64501:30:1:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h")
	LibAlchemy.solvents["CP"][258][2] = LibPrice.ItemLinkToPriceGold("|H0:item:75365:30:1:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h")


end
















function PrintCombination(table)

	result =reagents[table[1]][1]
	for key1,value1 in pairs(table) do
		if key1 ~= 1 and value1 ~= 0 then
			result = result ..  "                  +                     "  .. reagents[value1][1]
		end
	end
	result = string.gsub(result,"                  +                     ","")
	return result
end
        

function PrintCombinationText(table)

	result =zo_strformat("<<t:1>>", GetItemLinkName(("|H0:item:%d:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h"):format(table[1])))
	for key1,value1 in pairs(table) do
		if key1 ~= 1 and value1 ~= 0 then
			result = result ..  " + "  .. zo_strformat("<<t:1>>", GetItemLinkName(("|H0:item:%d:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h"):format(value1)))
		end
	end
	result = string.gsub(result," + ","")
	return result
end  

function getNameFromID(id)
	return zo_strformat("<<t:1>>", GetItemLinkName(("|H0:item:%d:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h"):format(id)))
end

function checkLength(table)
	count = 0
	for _ in pairs(table) do
		count = count +1
	end
	return count
end



function getCheapestCombination(table)
	local cheapestRecord = 0
	local result = nil
	local amount = 0
	for key2,value2 in pairs(table) do
		for key1,value1 in pairs(value2) do
			amount = amount + reagents[value1][2]
		end
		if (cheapestRecord > amount or result==nil) and (value2[1] ~= value2[2] and value2[1]~=value2[3] and value2[2]~=value2[3]) then
			result = value2
			cheapestRecord = amount
		end
		amount = 0
	end
	return result
end














function checkPotion(itemLink)
	if not addon.isInitialized then
		InitializePrices()
		addon.isInitialized = true
	end
	if GetItemLinkItemType(itemLink) == ITEMTYPE_MASTER_WRIT then
		local BestCombination = LibAlchemy:getBestCombinationMasterWrit(itemLink)
		if BestCombination ~= nil then
			return {BestCombination,string.format("%.3f",LibAlchemy:getCraftingCost(BestCombination,itemLink)),0}
		else
			return nil
		end
	end
	if GetItemLinkItemType(itemLink) ~= 30 and GetItemLinkItemType(itemLink) ~= 7 then
		return nil
	end
	local id = select(24,ZO_LinkHandler_ParseLink(itemLink)) or 0
	local mainID = select(4,ZO_LinkHandler_ParseLink(itemLink))
	--d(mainID .. "     -- Name ID")
	if LibAlchemy:tableContains(LibAlchemy.trashPotions,tonumber(mainID)) then

		return{[3] = 1}
	end
	id = tonumber(id)
	if id == 0 then
		return nil
	end
	--d(id)

	local effect1,effect2,effect3,effect4
	local calculation = math.floor(id / 65536) % 256
	if calculation > 32 then
		effect1 = LibAlchemy.effectsByWritID[calculation - 128]
		effect4 = effect1
	else
		effect1 = LibAlchemy.effectsByWritID[calculation]
	end
	effect2 = LibAlchemy.effectsByWritID[math.floor(id / 256) % 256]
	effect3 = LibAlchemy.effectsByWritID[id % 256]
	local BestCombination = LibAlchemy:getBestCombination({effect1,effect2,effect3})
	return {BestCombination,string.format("%.3f",LibAlchemy:getCraftingCost(BestCombination,itemLink)),0}
end            












local function AddPotionInfo(tooltip, type)
	if type then
		if type[3] == 0 then
			ZO_Tooltip_AddDivider(tooltip)
			tooltip:AddLine(GetString(AT_CheapestCombination), "", 1, 1, 1, CENTER, MODIFY_TEXT_TYPE_NONE, TEXT_ALIGN_CENTER, true)
			
			if savedVars.useOld then
				tooltip:AddVerticalPadding(8)
				tooltip:AddLine(PrintCombination(type[1]), "", 1, 1, 1, CENTER, MODIFY_TEXT_TYPE_NONE, TEXT_ALIGN_CENTER, true)
				tooltip:AddVerticalPadding(16)
				tooltip:AddLine(PrintCombinationText(type[1]), "", 1, 1, 1, CENTER, MODIFY_TEXT_TYPE_NONE, TEXT_ALIGN_CENTER, true)
				
			else
				for key,value in pairs(type[1]) do
					tooltip:AddLine("                     " .. LibAlchemy:getTextureFromID(value,42) .. "            " .. LibAlchemy:getNameFromID(value), "", 1, 1, 1, CENTER, MODIFY_TEXT_TYPE_NONE, TEXT_ALIGN_LEFT, true)
					tooltip:AddVerticalPadding(8)
				end


			end
			
			
			ZO_Tooltip_AddDivider(tooltip)
			tooltip:AddLine(GetString(AT_CraftingCost)..type[2]..' |t16:16:EsoUI/Art/currency/currency_gold.dds|t', "", 1, 1, 1, CENTER, MODIFY_TEXT_TYPE_NONE, TEXT_ALIGN_CENTER, true)
			

		end
		if type[3] == 1 then
			ZO_Tooltip_AddDivider(tooltip)
			tooltip:AddVerticalPadding(8)
			tooltip:AddLine(GetString(AT_CantCraft), "", 1, 1, 1, CENTER, MODIFY_TEXT_TYPE_NONE, TEXT_ALIGN_CENTER, true)
			

		end
		if type[3] == 2 then
			ZO_Tooltip_AddDivider(tooltip)
			tooltip:AddVerticalPadding(8)
			tooltip:AddLine(GetString(AT_SendHelp), "", 1, 1, 1, CENTER, MODIFY_TEXT_TYPE_NONE, TEXT_ALIGN_CENTER, true)
			

		end
	end

end



local function TooltipHook(tooltipControl, method, linkFunc)
	local origMethod = tooltipControl[method]

	tooltipControl[method] = function(self, ...)
		origMethod(self, ...)
		AddPotionInfo(self, checkPotion(linkFunc(...)))

	end
end

local function TooltipHook_Gamepad(tooltipControl, method, linkFunc)
	local origMethod = tooltipControl[method]

	tooltipControl[method] = function(self, ...)
		local result = origMethod(self, ...)
		AddPotionInfo(self, checkPotion(linkFunc(...)))
		return result
	end
end

local function ReturnItemLink(itemLink)
	return itemLink
end

local function HookBagTips()
	TooltipHook(ItemTooltip, "SetBagItem", GetItemLink)
	TooltipHook(ItemTooltip, "SetTradeItem", GetTradeItemLink)
	TooltipHook(ItemTooltip, "SetBuybackItem", GetBuybackItemLink)
	TooltipHook(ItemTooltip, "SetStoreItem", GetStoreItemLink)
	TooltipHook(ItemTooltip, "SetAttachedMailItem", GetAttachedItemLink)
	TooltipHook(ItemTooltip, "SetLootItem", GetLootItemLink)
	TooltipHook(ItemTooltip, "SetTradingHouseItem", GetTradingHouseSearchResultItemLink)
	TooltipHook(ItemTooltip, "SetTradingHouseListing", GetTradingHouseListingItemLink)
	TooltipHook(ItemTooltip, "SetLink", ReturnItemLink)

	TooltipHook(PopupTooltip, "SetLink", ReturnItemLink)

	TooltipHook_Gamepad(GAMEPAD_TOOLTIPS:GetTooltip(GAMEPAD_LEFT_TOOLTIP), "LayoutItem", ReturnItemLink)
	TooltipHook_Gamepad(GAMEPAD_TOOLTIPS:GetTooltip(GAMEPAD_RIGHT_TOOLTIP), "LayoutItem", ReturnItemLink)
	TooltipHook_Gamepad(GAMEPAD_TOOLTIPS:GetTooltip(GAMEPAD_MOVABLE_TOOLTIP), "LayoutItem", ReturnItemLink)
end



local panelData = {
	type = "panel",
	name = "Alchemy Tooltips",
	displayName = "Alchemy Tooltips",
	author = "Hyperioxes",

	slashCommand = "/alchemytooltips",    
	registerForRefresh = true,    
	registerForDefaults = true,    
}
    


local optionsTable = {
	[1] = {
		type = "header",
		name = "Pricing Settings",
		width = "full",
	},

    

	[2] = {
		type = "checkbox",
		name = "Use Tamriel Trade Centre prices",
		tooltip = "If the checkbox is on, pricing formula will use Tamriel Trade Centre's suggested price to calculate crafting cost",
		getFunc = function() return savedVars.TTCuse end,
		setFunc = function(value) savedVars.TTCuse=value end,
		width = "full",
		warning = "Will need to reinitialize prices",    
        
	},
	[3] = {
		type = "checkbox",
		name = "Use Master Merchant prices",
		tooltip = "If the checkbox is on, pricing formula will use Master Merchant's average price to calculate crafting cost",
		getFunc = function() return savedVars.MMuse end,
		setFunc = function(value) savedVars.MMuse=value end,
		width = "full",    
		warning ="Will need to reinitialize prices",    
        
	},
	[4] = {
		type = "checkbox",
		name = "Use Arkadius' Trade Tools prices",
		tooltip = "If the checkbox is on, pricing formula will use Arkadius Trade Tools' average price to calculate crafting cost",
		getFunc = function() return savedVars.ATTuse end,
		setFunc = function(value) savedVars.ATTuse=value end,
		width = "full",
		warning = "Will need to reinitialize prices",    
        
	},
	[5] = {
		type = "submenu",
		name = "Altering pricing formulas",
		tooltip = "Add multipliers to prices extracted from pricing addons",    
		controls = {
            
			[1] = {
				type = "editbox",
				name = "Tamriel Trade Centre multiplier",
				tooltip = "Multiplies Tamriel Trade Centre's suggested price used in Alchemy Tooltips calculations by number you input",
				getFunc = function() return savedVars.TTCMultiplier end,
				setFunc = function(value) savedVars.TTCMultiplier = value end,
				isMultiline = false,    
				width = "full",    
				warning = "Will need to reinitialize prices",    
				default = "1",    
			},
			[2] = {
				type = "editbox",
				name = "Master Merchant multiplier",
				tooltip = "Multiplies Master Merchant's suggested price used in Alchemy Tooltips calculations by number you input",
				getFunc = function() return savedVars.MMMultiplier end,
				setFunc = function(value) savedVars.MMMultiplier = value end,
				isMultiline = false,    
				width = "full",    
				warning = "Will need to reinitialize prices",    
				default = "1",    
			},
			[3] = {
				type = "editbox",
				name = "Arkadius Trade Tools multiplier",
				tooltip = "Multiplies Arkadius Trade Tools' suggested price used in Alchemy Tooltips calculations by number you input",
				getFunc = function() return savedVars.ATTMultiplier end,
				setFunc = function(value) savedVars.ATTMultiplier = value end,
				isMultiline = false,    
				width = "full",    
				warning = "Will need to reinitialize prices",    
				default = "1",    
			},
		},
	},
	[6] = {
		type = "button",
		name = "Reinitialize prices",
		tooltip = "Reinitializes prices, click it after making changes to pricing settings above to update prices",
		func = function() InitializePrices() end,
		width = "full",     
	},
	[7] = {
		type = "header",
		name = "Example pricing formula for Blue Entoloma",
		width = "full",
	},
	[8] = {
		type = "texture",
		image = "/esoui/art/icons/crafting_mushroom_blue_entoloma_cap_r1.dds",
		imageWidth = 100,    
		imageHeight = 100,    
		width = "half",    
	},
	[9] = {
		type = "description",
		text =  function()
			result = "("
			if savedVars.TTCuse and LibPrice.ItemLinkToPriceGold("|H0:item:30148:30:1:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h","ttc") ~= nil then 
				result = result .. savedVars.TTCMultiplier .. " * TTC + "
			end
			if savedVars.MMuse and LibPrice.ItemLinkToPriceGold("|H0:item:30148:30:1:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h","mm") ~= nil then 
				result = result .. savedVars.MMMultiplier .. " * MM + "
			end
			if savedVars.ATTuse and LibPrice.ItemLinkToPriceGold("|H0:item:30148:30:1:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h","att") ~= nil then 
				result = result .. savedVars.ATTMultiplier .. " * ATT + "
			end
			result = result:sub(1,-3)
			result = result .. ") / " .. countPricingAddons()
			return result
		end,
		width = "full",    
	},
	[10] = {
		type = "description",
		text =  function()
			result = "Price: ("
			if savedVars.TTCuse and LibPrice.ItemLinkToPriceGold("|H0:item:30148:30:1:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h","ttc") ~= nil then 
				result = result .. savedVars.TTCMultiplier .. " * " .. string.format("%.3f",LibPrice.ItemLinkToPriceGold("|H0:item:30148:30:1:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h","ttc")) .. " + "
			end
			if savedVars.MMuse and LibPrice.ItemLinkToPriceGold("|H0:item:30148:30:1:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h","mm") ~= nil then 
				result = result .. savedVars.MMMultiplier .. " * " .. string.format("%.3f",LibPrice.ItemLinkToPriceGold("|H0:item:30148:30:1:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h","mm")) .. " + "
			end
			if savedVars.ATTuse and LibPrice.ItemLinkToPriceGold("|H0:item:30148:30:1:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h","att") ~= nil then 
				result = result .. savedVars.ATTMultiplier .. " * " .. string.format("%.3f",LibPrice.ItemLinkToPriceGold("|H0:item:30148:30:1:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h","att")) .. " + "
			end
			result = result:sub(1,-3)
			result = result .. ") / " .. countPricingAddons() .. " = " .. string.format("%.3f",GeneratePrice("|H0:item:30148:30:1:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h"))
			return result
		end,
		width = "full",
	},
	[11] = {
		type = "header",
		name = "Other Settings",
		width = "full",
	},
	[12] = {
		type = "checkbox",
		name = "Use old tooltip layout",
		tooltip = "If the checkbox is on, tooltip layout will look like before version 1.5",
		getFunc = function() return savedVars.useOld end,
		setFunc = function(value) savedVars.useOld=value end,
		width = "full",
  
        
	},

}




do
	local function OnAddOnLoaded(event, addonName)
		if addonName == addon.name then
			default = {
				TTCuse = true,
				MMuse = true,
				ATTuse = true,
				TTCMultiplier = 1,
				MMMultiplier = 1,
				ATTMultiplier = 1,
				useOld = false,
			}
			savedVars = ZO_SavedVars:NewAccountWide("AlchemyTooltipsSV", 1, nil, default)
			HookBagTips()

			LibAlchemy:InitializePrices()
			LibAddonMenu2:RegisterAddonPanel(addon.name,panelData)
			LibAddonMenu2:RegisterOptionControls(addon.name,optionsTable)
            
		end
	end

	EVENT_MANAGER:RegisterForEvent(addon.name, EVENT_ADD_ON_LOADED, OnAddOnLoaded)
end

