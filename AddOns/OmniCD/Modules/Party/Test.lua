local E, L = select(2, ...):unpack()
local P = E.Party

local TM = CreateFrame("Frame")

local addOnTestMode = {}
local config = {}

addOnTestMode.Grid2 = function(isTestEnabled)
	if not Grid2Options or not Grid2Options.editedTheme or not Grid2Options.editedTheme.layout
	or not Grid2Options.editedTheme.layout.layouts or not Grid2Options.editedTheme.layout.layouts["solo"] then
		return
	end
	if isTestEnabled then
		if not C_AddOns.IsAddOnLoaded("Grid2Options") then
			C_AddOns.LoadAddOn("Grid2Options")
		end

		config.Grid2 = Grid2Options.editedTheme.layout.layouts["solo"]
		if config.Grid2 == "None" then
			Grid2Options.editedTheme.layout.layouts["solo"] = "By Group"
		end
	else
		Grid2Options.editedTheme.layout.layouts["solo"] = config.Grid2
	end
	Grid2Layout:ReloadLayout()
end

addOnTestMode.VuhDo = function(isTestEnabled)
	if not VUHDO_CONFIG or not VUHDO_CONFIG["HIDE_PANELS_SOLO"] then
		return
	end
	if isTestEnabled then
		config.VuhDo = VUHDO_CONFIG["HIDE_PANELS_SOLO"]
		VUHDO_CONFIG["HIDE_PANELS_SOLO"] = false
	else
		VUHDO_CONFIG["HIDE_PANELS_SOLO"] = config.VuhDo
	end
	VUHDO_getAutoProfile()
end

addOnTestMode.ElvUI = function(isTestEnabled)
	ElvUI[1]:GetModule("UnitFrames"):HeaderConfig(ElvUF_Party, isTestEnabled)
end

addOnTestMode.Aptechka = function(isTestEnabled)
	if not Aptechka or not Aptechka.db or not Aptechka.db.profile or not Aptechka.db.profile.showSolo then
		return
	end
	if isTestEnabled then
		config.Aptechka = Aptechka.db.profile.showSolo
		Aptechka.db.profile.showSolo = true
	else
		Aptechka.db.profile.showSolo = config.Aptechka
	end
	Aptechka:ReconfigureProtected()
end

--[[ solo uses CellSoloFramePlayer
addOnTestMode.Cell = function(isTestEnabled)
	if not CellDB or not CellDB["general"] then
		return
	end
	if isTestEnabled then
		config.Cell = CellDB["general"]["showSolo"]
		CellDB["general"]["showSolo"] = true
	else
		CellDB["general"]["showSolo"] = config.Cell
		if P.inLockdown then
			TM:EndTestOOC()
			return
		end
	end
	Cell:Fire("UpdateVisibility", "solo")
end
]]

function TM:Test(key)
	local activeCustomUF = E.customUF.active
	local groupSize = GetNumGroupMembers()

	P.isInTestMode = not P.isInTestMode

	if P.isInTestMode then
		if not E.db.position.detached and groupSize < 1 and activeCustomUF and activeCustomUF ~= "auto" and not addOnTestMode[activeCustomUF] then
			E.write(format(E.STR.UNSUPPORTED_ADDON, activeCustomUF))
		end

		if P.inLockdown then
			P.isInTestMode = false
			return E.write(ERR_NOT_IN_COMBAT)
		end

		if not E.db.position.detached then
			if not activeCustomUF then
				if E.isDF then
					if (groupSize == 0 or not P:CompactFrameIsActive()) and not P.isInEditMode then
						ShowUIPanel(EditModeManagerFrame)
					end

					if P.isInEditMode and not EditModeManagerFrame:AreRaidFramesForcedShown() and not EditModeManagerFrame:ArePartyFramesForcedShown() then
						E.Libs.OmniCDC.StaticPopup_Show("OMNICD_DF_TEST_MSG", E.STR.ENABLE_HUDEDITMODE_FRAME)
						P.isInTestMode = false
						return
					end
				else
					if C_AddOns.IsAddOnLoaded("Blizzard_CompactRaidFrames") and C_AddOns.IsAddOnLoaded("Blizzard_CUFProfiles") then
						CompactRaidFrameManager:Show()
						CompactRaidFrameContainer:Show()
					else
						E.Libs.OmniCDC.StaticPopup_Show("OMNICD_RELOADUI", E.STR.ENABLE_BLIZZARD_CRF)
						P.isInTestMode = false
						return
					end
				end
			elseif addOnTestMode[activeCustomUF] then
				addOnTestMode[activeCustomUF](P.isInTestMode)
			end
		end

		if not self.indicator then
			self.indicator = CreateFrame("Frame", nil, UIParent, "OmniCDTemplate")
			self.indicator.anchor.background:SetColorTexture(0, 0, 0, 1)

			self.indicator.anchor.background:SetGradient("HORIZONTAL", CreateColor(1, 1, 1, 1), CreateColor(1, 1, 1, 0))
			self.indicator.anchor:SetHeight(15)
			self.indicator.anchor:EnableMouse(false)
			self.indicator:SetScript("OnHide", nil)
			self.indicator:SetScript("OnShow", nil)

			self:SetScript("OnEvent", function(self, event, ...)
				self[event](self, ...)
			end)
			self.indicator.anchor.text:SetFontObject(E.AnchorFont)
		end
		self.indicator.anchor.text:SetFormattedText("%s - %s", L["Test"], E.L_ALL_ZONE[key])
		self.indicator.anchor:SetWidth(self.indicator.anchor.text:GetWidth() + 20)


		self:RegisterEvent('PLAYER_LEAVING_WORLD')

		P.isInShadowlands = E.isSL or (E.postBFA and not P.isInPvPInstance and P:IsInShadowlands())
		P:Refresh()

		if not P.groupInfo[E.userGUID] then return end -- 暫時修正
		
		local frame = P.groupInfo[E.userGUID].bar
		self.indicator.anchor:ClearAllPoints()
		self.indicator.anchor:SetPoint("BOTTOMLEFT", frame.anchor, "BOTTOMRIGHT")
		self.indicator.anchor:SetPoint("TOPLEFT", frame.anchor, "TOPRIGHT")
		self.indicator:Show()

		for i = 1, frame.numIcons do
			local icon = frame.icons[i]
			if not icon.AnimFrame:IsVisible() then
				icon.AnimFrame:Show()
				icon.AnimFrame.animIn:Play()
			end
		end
	else
		if not activeCustomUF then
			if E.isDF then

				if P.isInEditMode then
					if P.inLockdown then
						self:EndTestOOC()
					else
						HideUIPanel(EditModeManagerFrame)
					end
				end
			else
				if CompactRaidFrameContainer and CompactRaidFrameContainer:IsVisible() and (groupSize == 0 or not P:CompactFrameIsActive()) then
					if P.inLockdown then
						self:EndTestOOC()
					else
						CompactRaidFrameManager:Hide()
						CompactRaidFrameContainer:Hide()
					end
				end
			end
		elseif not E.db.position.detached and addOnTestMode[activeCustomUF] then
			addOnTestMode[activeCustomUF](P.isInTestMode)
		end

		wipe(config)
		if self.indicator then self.indicator:Hide() end -- 暫時修正
		self:UnregisterEvent('PLAYER_LEAVING_WORLD')

		P:Refresh()
	end
end

function TM:EndTestOOC()
	if not E.isDF then
		E.write(L["Test frames will be hidden once player is out of combat"])
	end
	self:RegisterEvent('PLAYER_REGEN_ENABLED')
end

function TM:PLAYER_REGEN_ENABLED()
	if not E.customUF.active then
		if E.isDF then
			if P.isInEditMode then
				HideUIPanel(EditModeManagerFrame)
			end
		elseif C_AddOns.IsAddOnLoaded("Blizzard_CompactRaidFrames") and C_AddOns.IsAddOnLoaded("Blizzard_CUFProfiles") and (P:GetEffectiveNumGroupMembers() == 0 or not P:CompactFrameIsActive()) then
			CompactRaidFrameManager:Hide()
			CompactRaidFrameContainer:Hide()
		end
	--[[
	elseif E.customUF.active == "Cell" then
		Cell:Fire("UpdateVisibility", "solo")
	]]
	end
	self:UnregisterEvent('PLAYER_REGEN_ENABLED')
end

function TM:PLAYER_LEAVING_WORLD()
	if P.isInTestMode then
		self:Test()
	end
end

function P:Test(key)
	key = type(key) == "table" and key[2] or key
	self.testZone = key
	key = key or self.zone
	E.db = E:GetCurrentZoneSettings(key)
	E:SetActiveUnitFrameData()

	TM:Test(key)
end

P["TestMode"] = TM
E["addOnTestMode"] = addOnTestMode
