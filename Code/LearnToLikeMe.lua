local mercs = GetAvailableMercsByName()

local function GetGroupedIMPs()
	local mercs = GetAvailableMercsByName()
	
	if not next(mercs) then return end
	
	local mercsList = {}
	for i, m in ipairs(mercs) do
		if Presets.UnitDataCompositeDef.IMP[m[2].id] then
			table.insert(mercsList, m[2].id)
		end
	end
	return mercsList

end

--CurrentModOptions.Merc1



--local function AddToLearnToLike(unit)
--	
--	local mercList = GetGroupedMercsForCheats(nil, nil, 1)
--	local IMPList = GetGroupedIMPs()
--    
--	for _, merc in pairs(mercList) do
--		local mercToBeChanged = g_Units[merc] or gv_UnitData[merc]
--		print(merc)
--		print(mercToBeChanged.LearnToLike)
--		--local mercToBeChanged = g_Units[merc] or gv_UnitData[merc]
--		local unit_LearnToLike = table.copy(mercToBeChanged.LearnToLike) or {}
--		for _, imp in pairs(IMPList) do
--			table.insert_unique(unit_LearnToLike, imp)
--			mercToBeChanged.LearnToLike = unit_LearnToLike
--		end
--		print(mercToBeChanged.LearnToLike)
--		print(unit.LearnToLike)
--					
--		--return 
--		--break
--	end
--end

local function AddToLearnToLike(unit)
	
	--local mercList = GetGroupedMercsForCheats(nil, nil, 1)
	local IMPList = GetGroupedIMPs()
    
	local mercToBeChanged = unit
		--print(merc)
		--print(unit.LearnToLike)
		--local mercToBeChanged = g_Units[merc] or gv_UnitData[merc]
		local unit_LearnToLike = table.copy(mercToBeChanged.LearnToLike) or {}
		for _, imp in pairs(IMPList) do
			table.insert_unique(unit_LearnToLike, imp)
			mercToBeChanged.LearnToLike = unit_LearnToLike
		end

		if CurrentModOptions["LearnToLikeMercs"] == true and unit.Affiliation == "Other" then

			local mercList = GetGroupedMercsForCheats(nil, nil, 1)

			local mercToBeChanged = unit
				--print(merc)
				--print(unit.LearnToLike)
				--local mercToBeChanged = g_Units[merc] or gv_UnitData[merc]
				local unit_LearnToLike = table.copy(mercToBeChanged.LearnToLike) or {}
				for _, merc in pairs(mercList) do
					table.insert_unique(unit_LearnToLike, merc)
					mercToBeChanged.LearnToLike = unit_LearnToLike
				end


		end
		--print(mercToBeChanged.LearnToLike)
		--print(unit.LearnToLike)
					
		--return 
		--break
end


-- LearnToLike
function OnMsg.UnitCreated(unit)

	if not IsMerc(unit) then 
		return
	end
	
	AddToLearnToLike(unit)

	
end