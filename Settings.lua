



function ATT_LoadSettings()
	local panelData = {
		type = "panel",
		name = "Alchemy Tooltips",
		displayName = "Alchemy Tooltips",
		author = "Hyperioxes",
		version = "1.15b",
		website = "https://www.esoui.com/downloads/info2531-AlchemyTooltips.html",
		feedback = "https://www.esoui.com/downloads/info2531-AlchemyTooltips.html#comments",
		donation = "https://www.esoui.com/downloads/info2531-AlchemyTooltips.html#donate",
		slashCommand = "/alchemytooltips",    
		registerForRefresh = true,    
		registerForDefaults = true,    
	}
	LibAddonMenu2:RegisterAddonPanel("AlchemyTooltips",panelData)

	local optionsTable = {
	[1] = {
		type = "header",
		name = "General Settings",
		width = "full",
	},
	[2] = {
		type = "checkbox",
		name = "Use Custom Potion Tooltips",
		tooltip = "If the checkbox is on, cheapest way to craft a potion will be shown in its tooltip, along with crafting cost",
		getFunc = function() return savedVars.useTooltips end,
		setFunc = function(value) savedVars.useTooltips=value end,
		width = "full",
		--warning = "Will need to reinitialize prices",    
        
	},
	[3] = {
		type = "checkbox",
		name = "Use Custom Potion Names",
		tooltip = "If the checkbox is on, potion names and icons will be altered to reflect their actual effects",
		getFunc = function() return savedVars.useCustomNames end,
		setFunc = function(value) savedVars.useCustomNames=value end,
		width = "full",
		warning = "Will need to reload UI",    
        
	},

	[4] = {
		type = "submenu",
		name = "Advanced Custom Potion Names Settings",
		tooltip = "Change the way potion names are displayed in your inventory",    
		controls = {},
	},
    [5] = {
		type = "submenu",
		name = "Custom Potion Quality Settings",
		tooltip = "Change the way potion names are displayed in your inventory",    
		controls = {
		},
	},     




	[6] = {
		type = "header",
		name = "Pricing Settings",
		width = "full",
	},

    

	[7] = {
		type = "checkbox",
		name = "Use Tamriel Trade Centre prices",
		tooltip = "If the checkbox is on, pricing formula will use Tamriel Trade Centre's suggested price to calculate crafting cost",
		getFunc = function() return savedVars.TTCuse end,
		setFunc = function(value) savedVars.TTCuse=value end,
		width = "full",
		warning = "Will need to reinitialize prices",    
        
	},
	[8] = {
		type = "checkbox",
		name = "Use Master Merchant prices",
		tooltip = "If the checkbox is on, pricing formula will use Master Merchant's average price to calculate crafting cost",
		getFunc = function() return savedVars.MMuse end,
		setFunc = function(value) savedVars.MMuse=value end,
		width = "full",    
		warning ="Will need to reinitialize prices",    
        
	},
	[9] = {
		type = "checkbox",
		name = "Use Arkadius' Trade Tools prices",
		tooltip = "If the checkbox is on, pricing formula will use Arkadius Trade Tools' average price to calculate crafting cost",
		getFunc = function() return savedVars.ATTuse end,
		setFunc = function(value) savedVars.ATTuse=value end,
		width = "full",
		warning = "Will need to reinitialize prices",    
        
	},
	[10] = {
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
	[11] = {
		type = "button",
		name = "Reinitialize prices",
		tooltip = "Reinitializes prices, click it after making changes to pricing settings above to update prices",
		func = function() ATT_Functions:InitializePrices() end,
		width = "full",     
	},
	[12] = {
		type = "header",
		name = "Example pricing formula for Blue Entoloma",
		width = "full",
	},
	[13] = {
		type = "texture",
		image = "/esoui/art/icons/crafting_mushroom_blue_entoloma_cap_r1.dds",
		imageWidth = 100,    
		imageHeight = 100,    
		width = "half",    
	},
	[14] = {
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
			result = result .. ") / " .. ATT_Functions:countPricingAddons()
			return result
		end,
		width = "full",    
	},
	[15] = {
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
			result = result .. ") / " .. ATT_Functions:countPricingAddons() .. " = " .. string.format("%.3f",ATT_Functions:GeneratePrice("|H0:item:30148:30:1:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h"))
			return result
		end,
		width = "full",
	},
	[16] = {
		type = "header",
		name = "Other Settings",
		width = "full",
	},
	[17] = {
		type = "checkbox",
		name = "Use old tooltip layout",
		tooltip = "If the checkbox is on, tooltip layout will look like before version 1.5",
		getFunc = function() return savedVars.useOld end,
		setFunc = function(value) savedVars.useOld=value end,
		width = "full",
  
        
	},

}


	table.insert(optionsTable[4].controls,{
			type = "description",
			text = "For any changes made here to take effect you will need to reload ui",
			width = "full",

		})


	table.insert(optionsTable[4].controls,{
			type = "description",
			text = "Full name of an effect  --->  Name displayed in inventory",
			width = "full",

		})


	for key,name in pairs(ATT_Variables.properEffectNames) do

		table.insert(optionsTable[4].controls,{
			type = "description",
			text = name.."  --->  "..savedVars.effectsByWritIDShort[key],
			width = "half",
			reference = "description"..key
		})

		 table.insert(optionsTable[4].controls, {
                type = "editbox",
                name = "Change displayed name to:",
                getFunc = function() return savedVars.effectsByWritIDShort[key] end,
                setFunc = function(text) savedVars.effectsByWritIDShort[key] = text 
				_G["description"..key].data.text = name.."  --->  "..savedVars.effectsByWritIDShort[key]
				_G["description"..key]:UpdateValue()
				end,
                isMultiline = false,	--boolean
                width = "half",	--or "half" (optional)

                default = "",	--(optional)
            })

	end
	table.insert(optionsTable[5].controls,{
			type = "description",
			text = "For any changes made here to take effect you will need to reload ui",
			width = "full",

	})
	for i=1,5 do
		table.insert(optionsTable[5].controls, {
				type = "description",
				text = ATT_Variables.qualityColors[i].." quality:  "..savedVars.craftingCostQualityBrackets[i-1].."|t16:16:EsoUI/Art/currency/currency_gold.dds|t - "..savedVars.craftingCostQualityBrackets[i].."|t16:16:EsoUI/Art/currency/currency_gold.dds|t",
				width = "half",
				reference = "qualityDescription"..i,
		})
		table.insert(optionsTable[5].controls, {
                type = "editbox",
                name = "Change top bracket to:",
                getFunc = function() return savedVars.craftingCostQualityBrackets[i] end,
                setFunc = function(text) savedVars.craftingCostQualityBrackets[i] = tonumber(text)
				_G["qualityDescription"..i].data.text = ATT_Variables.qualityColors[i].." quality:  "..savedVars.craftingCostQualityBrackets[i-1].."|t16:16:EsoUI/Art/currency/currency_gold.dds|t - "..savedVars.craftingCostQualityBrackets[i].."|t16:16:EsoUI/Art/currency/currency_gold.dds|t"
				if i == 5 then
					_G["qualityDescription"..6].data.text = ATT_Variables.qualityColors[6].." quality:  "..savedVars.craftingCostQualityBrackets[5].."|t16:16:EsoUI/Art/currency/currency_gold.dds|t and more"
				else
					_G["qualityDescription"..i+1].data.text = ATT_Variables.qualityColors[i+1].." quality:  "..savedVars.craftingCostQualityBrackets[i].."|t16:16:EsoUI/Art/currency/currency_gold.dds|t - "..savedVars.craftingCostQualityBrackets[i+1].."|t16:16:EsoUI/Art/currency/currency_gold.dds|t"
				end
				_G["qualityDescription"..i]:UpdateValue()
				_G["qualityDescription"..i+1]:UpdateValue()
				end,
                isMultiline = false,	--boolean
                width = "half",	--or "half" (optional)

                default = "",	--(optional)
        })
	end
	table.insert(optionsTable[5].controls, {
			type = "description",
			text = ATT_Variables.qualityColors[6].." quality:  "..savedVars.craftingCostQualityBrackets[5].."|t16:16:EsoUI/Art/currency/currency_gold.dds|t and more",
			width = "full",
			reference = "qualityDescription6"
	})
	LibAddonMenu2:RegisterOptionControls("AlchemyTooltips",optionsTable)











end
