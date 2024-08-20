-- some variables --
local NameExist = false
-- finding keys --
local function FindingKeys()
	local Keys = 0
	for k, v in pairs(VCBrProfile) do
		Keys = Keys + 1
	end
	VCBrNumber = Keys
end
-- coping the tables --
local function CopyTable(k)
	VCBrPlayer = VCBrProfile[k]["Player"]
	VCBrTarget = VCBrProfile[k]["Target"]
	VCBrFocus = VCBrProfile[k]["Focus"]
end
-- deleting keys --
local function DeletingKeys(self)
	for k, v in pairs(VCBrProfile) do
		if k == self:GetText() then
		VCBrProfile[k] = nil
		end
	end
end
-- functions for loading the profiles --
local function LoadingProfiles()
	if VCBrCounterLoading == 0 and VCBrNumber > 0 then
		for k, v in pairs(VCBrProfile) do
			VCBrCounterLoading = VCBrCounterLoading + 1
			local button = CreateFrame("Button" , "vcbOptions4Box2PopOut1Choice"..VCBrCounterLoading, vcbOptions4Box2PopOut1Choice0, "vcbPopOutButton")
			_G["vcbOptions4Box2PopOut1Choice"..VCBrCounterLoading]:SetPoint("TOP","vcbOptions4Box2PopOut1Choice"..VCBrCounterLoading - 1, "BOTTOM", 0, 0)
			_G["vcbOptions4Box2PopOut1Choice"..VCBrCounterLoading].Text:SetText(k)
			_G["vcbOptions4Box2PopOut1Choice"..VCBrCounterLoading]:SetScript("OnClick", function(self, button, down)
				if button == "LeftButton" and down == false then
					CopyTable(k)
					C_UI.Reload()
				end
			end)
		end
	end
end
-- functions for deleting the profiles --
local function DeletingProfiles()
	if VCBrCounterDeleting == 0 and VCBrNumber > 0 then
		for k, v in pairs(VCBrProfile) do
			VCBrCounterDeleting = VCBrCounterDeleting + 1
			local button = CreateFrame("Button" , "vcbOptions4Box3PopOut1Choice"..VCBrCounterDeleting, vcbOptions4Box3PopOut1Choice0, "vcbPopOutButton")
			_G["vcbOptions4Box3PopOut1Choice"..VCBrCounterDeleting]:SetPoint("TOP","vcbOptions4Box3PopOut1Choice"..VCBrCounterDeleting - 1, "BOTTOM", 0, 0)
			_G["vcbOptions4Box3PopOut1Choice"..VCBrCounterDeleting].Text:SetText(k)
			_G["vcbOptions4Box3PopOut1Choice"..VCBrCounterDeleting]:SetScript("OnClick", function(self, button, down)
				if button == "LeftButton" and down == false then
					DeletingKeys(self)
					C_UI.Reload()
				end
			end)
		end
	end
end
-- taking care of the panel --
vcbOptions4:ClearAllPoints()
vcbOptions4:SetPoint("TOPLEFT", vcbOptions00, "TOPLEFT", 0, 0)
vcbOptions4.BGtexture:SetAlpha(1)
vcbOptions4.TopTxt:SetText("建立和載入設定檔!")
vcbOptions4.CenterTxt:Hide()
vcbOptions4.BottomLeftTxt:Hide()
vcbOptions4Box1.TitleTxt:SetText("建立設定檔!")
vcbOptions4Box2:SetPoint("TOP", vcbOptions4Box1, "BOTTOM", 0, 0)
vcbOptions4Box2.TitleTxt:SetText("載入設定檔!")
vcbOptions4Box3:SetPoint("TOP", vcbOptions4Box2, "BOTTOM", 0, 0)
vcbOptions4Box3.TitleTxt:SetText("刪除設定檔!")
vcbOptions4Box3.CenterTxt:SetText(vcbHighColor:WrapTextInColorCode("注意: ").."當你"..vcbHighColor:WrapTextInColorCode("儲存").."、"..vcbHighColor:WrapTextInColorCode("載入").."和"..vcbHighColor:WrapTextInColorCode("刪除").."設定檔時，\n都會重新載入介面!")
-- taking care of the edit box --
-- width and height --
local fontFile, height, flags = vcbOptions4Box1EditBox1.WritingLine:GetFont()
vcbOptions4Box1EditBox1.WritingLine:SetHeight(height)
vcbOptions4Box1EditBox1:SetWidth(vcbOptions4Box1:GetWidth()*0.65)
vcbOptions4Box1EditBox1:SetHeight(vcbOptions4Box1EditBox1.WritingLine:GetHeight()*1.75)
vcbOptions4Box1EditBox1.WritingLine:SetWidth(vcbOptions4Box1EditBox1:GetWidth()*0.95)
-- color --
vcbOptions4Box1EditBox1GlowTopLeft:SetDesaturation(1)
vcbOptions4Box1EditBox1GlowTopLeft:SetVertexColor(vcbMainColor:GetRGB())
vcbOptions4Box1EditBox1GlowTopRight:SetDesaturation(1)
vcbOptions4Box1EditBox1GlowTopRight:SetVertexColor(vcbMainColor:GetRGB())
vcbOptions4Box1EditBox1GlowBottomLeft:SetDesaturation(1)
vcbOptions4Box1EditBox1GlowBottomLeft:SetVertexColor(vcbMainColor:GetRGB())
vcbOptions4Box1EditBox1GlowBottomRight:SetDesaturation(1)
vcbOptions4Box1EditBox1GlowBottomRight:SetVertexColor(vcbMainColor:GetRGB())
vcbOptions4Box1EditBox1GlowTop:SetDesaturation(1)
vcbOptions4Box1EditBox1GlowTop:SetVertexColor(vcbMainColor:GetRGB())
vcbOptions4Box1EditBox1GlowBottom:SetDesaturation(1)
vcbOptions4Box1EditBox1GlowBottom:SetVertexColor(vcbMainColor:GetRGB())
vcbOptions4Box1EditBox1GlowLeft:SetDesaturation(1)
vcbOptions4Box1EditBox1GlowLeft:SetVertexColor(vcbMainColor:GetRGB())
vcbOptions4Box1EditBox1GlowRight:SetDesaturation(1)
vcbOptions4Box1EditBox1GlowRight:SetVertexColor(vcbMainColor:GetRGB())
-- entering, leaving --
vcbOptions4Box1EditBox1.WritingLine:HookScript("OnEnter", function(self)
	vcbEntering(self)
	GameTooltip:SetText("在文字欄位中輸入設定檔名稱，然後按下 Enter 鍵來儲存設定/選項!") 
end)
vcbOptions4Box1EditBox1.WritingLine:HookScript("OnLeave", vcbLeaving)
-- pressing enter --
vcbOptions4Box1EditBox1.WritingLine:SetScript("OnEnterPressed", function(self)
	if self:HasText() then
		EditBox_HighlightText(self)
		local name = self:GetText()
		for k, v in pairs(VCBrProfile) do
			if k == name then
				NameExist = true
			else
				NameExist = false
			end
			if NameExist then
				local vcbTime = GameTime_GetTime(false)
				DEFAULT_CHAT_FRAME:AddMessage(vcbTime.." ["..vcbMainColor:WrapTextInColorCode("內建施法條增強").."] 設定檔已經存在，請嘗試其他名稱!")
				return
			end
		end
		VCBrNumber = VCBrNumber + 1
		VCBrProfile[name] = {Player = VCBrPlayer, Target = VCBrTarget, Focus = VCBrFocus}
		C_UI.Reload()
	else
		local vcbTime = GameTime_GetTime(false)
		DEFAULT_CHAT_FRAME:AddMessage(vcbTime.." ["..vcbMainColor:WrapTextInColorCode("內建施法條增強").."] 請輸入設定檔名稱!")
	end
end)
-- Popout 1, entering, leaving, click --
vcbOptions4Box2PopOut1:SetWidth(vcbOptions4Box2:GetWidth()*0.65)
vcbOptions4Box2PopOut1:SetScript("OnEnter", function(self)
	vcbEntering(self)
	GameTooltip:SetText("請選擇要"..vcbHighColor:WrapTextInColorCode("載入").."的設定檔!")
end)
vcbOptions4Box2PopOut1:SetScript("OnLeave", vcbLeaving)
vcbClickPopOut(vcbOptions4Box2PopOut1, vcbOptions4Box2PopOut1Choice0)
vcbOptions4Box2PopOut1Choice0:SetScript("OnClick", function(self, button, down)
	if button == "LeftButton" and down == false then
		local vcbTime = GameTime_GetTime(false)
		DEFAULT_CHAT_FRAME:AddMessage(vcbTime.." ["..vcbMainColor:WrapTextInColorCode("內建施法條增強").."] 我什麼都沒做，作為按鈕我什麼也沒做!")
		vcbOptions4Box2PopOut1Choice0:Hide()
	end
end)
-- naming --
vcbOptions4Box2PopOut1Choice0.Text:SetText("沒事")
-- Popout 1, entering, leaving, click --
vcbOptions4Box3PopOut1:SetWidth(vcbOptions4Box3:GetWidth()*0.65)
vcbOptions4Box3PopOut1:SetScript("OnEnter", function(self)
	vcbEntering(self)
	GameTooltip:SetText("請選擇要"..vcbHighColor:WrapTextInColorCode("刪除").."的設定檔!")
end)
vcbOptions4Box3PopOut1:SetScript("OnLeave", vcbLeaving)
vcbClickPopOut(vcbOptions4Box3PopOut1, vcbOptions4Box3PopOut1Choice0)
vcbOptions4Box3PopOut1Choice0:SetScript("OnClick", function(self, button, down)
	if button == "LeftButton" and down == false then
		local vcbTime = GameTime_GetTime(false)
		DEFAULT_CHAT_FRAME:AddMessage(vcbTime.." ["..vcbMainColor:WrapTextInColorCode("內建施法條增強").."] 我什麼都沒做，作為按鈕我什麼也沒做!")
		vcbOptions4Box3PopOut1Choice0:Hide()
	end
end)
-- naming --
vcbOptions4Box3PopOut1Choice0.Text:SetText("沒事")
-- Showing the panel --
vcbOptions4:SetScript("OnShow", function(self)
	FindingKeys()
	LoadingProfiles()
	DeletingProfiles()
	vcbOptions4Box2PopOut1.Text:SetText("點我")
	vcbOptions4Box3PopOut1.Text:SetText("點我")
	if vcbOptions2:IsShown() then vcbOptions2:Hide() end
	if vcbOptions3:IsShown() then vcbOptions3:Hide() end
	if vcbOptions1:IsShown() then vcbOptions1:Hide() end
	vcbOptions00Tab1.Text:SetTextColor(vcbDeafultColor:GetRGB())
	vcbOptions00Tab2.Text:SetTextColor(vcbDeafultColor:GetRGB())
	vcbOptions00Tab3.Text:SetTextColor(vcbDeafultColor:GetRGB())
	vcbOptions00Tab4.Text:SetTextColor(vcbHighColor:GetRGB())
end)