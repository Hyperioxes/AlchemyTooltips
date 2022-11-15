
_G["AlchemyTooltips"] = {}


local function overrideDebug()
    --local old = _G["ItemTransferDialog_Keyboard"]["Refresh"]
    --_G[ATT_Variables.name]["ItemTransferDialog_Keyboard"]["Refresh"] = old
	local ItemTransferDialog_Keyboard = ZO_ItemTransferDialog_Base:Subclass()
    ItemTransferDialog_Keyboard["Initialize"] = function(control)
		return true

	end



end


do
	local function OnAddOnLoaded(event, addonName)
		if addonName == "AlchemyTooltips" then
			savedVars = ZO_SavedVars:NewAccountWide("AlchemyTooltipsSV", 1, nil, ATT_defaultSettings)
			ATT_HookBagTips()
			ATT_Functions:InitializePrices()
			if savedVars.useCustomNames or savedVars.useCustomIcons or savedVars.useCustomQualities then
				ATT_HookItems()
			end

			ATT_LoadSettings() 
            --overrideDebug()
		end
	end
	EVENT_MANAGER:RegisterForEvent("AlchemyTooltips", EVENT_ADD_ON_LOADED, OnAddOnLoaded)
end



