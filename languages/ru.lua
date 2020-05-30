
local strings = {





	AT_CheapestCombination = "Самая Дешевая Комбинация: ",
	AT_CraftingCost = "Стоимость Крафта: ",
	AT_CantCraft = "Это зелье / яд нельзя изготовить, его можно только получить/найти/украсть",
	AT_SendHelp = "Похоже, я еще не добавил это зелье/яд в базу данных аддона. Если вы хотите помочь, пожалуйста, отправьте один образец этого зелья/яда в @Hyperioxes на PC EU. Приложение будет отправлено обратно после того, как я запишу ID зелья/яда",
}

for stringId, stringValue in pairs (strings) do
	ZO_CreateStringId (stringId, stringValue)
	SafeAddVersion (stringId, 1)
end

