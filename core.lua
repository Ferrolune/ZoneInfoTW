if not getglobal("ZoneInfoTWFrameMain") then
    CreateFrame("Frame", "ZoneInfoTWFrameMain", WorldMapFrame)
end

local ZoneInfoTW = getglobal("ZoneInfoTWFrameMain")

ZoneInfoTW:RegisterEvent("PLAYER_ENTERING_WORLD")
ZoneInfoTW:SetScript("OnEvent", function()
    ZoneInfoTW:SetupText()
    ZoneInfoTW:UnregisterEvent("PLAYER_ENTERING_WORLD")
    ZoneInfoTW:SetScript("OnUpdate", function()
        ZoneInfoTW:UpdateZoneDisplayText()
    end)
end)

