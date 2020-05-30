
local strings = {





	AT_CheapestCombination = "Cheapest Combination: ",
	AT_CraftingCost = "Crafting Cost: ",
	AT_CantCraft = "This potion/poison cannot be crafted, it can only be looted",
	AT_SendHelp = "It appears I haven't added that potion/poison to addon's database yet. If you want to help, please mail one sample of this potion/poison to @Hyperioxes on PC EU. Attachment will be sent back after I write down potion/poison's ID",
}

for stringId, stringValue in pairs (strings) do
	ZO_CreateStringId (stringId, stringValue)
	SafeAddVersion (stringId, 1)
end

