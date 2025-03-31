local ZoneInfoTW = getglobal("ZoneInfoTWFrameMain") or {}

function ZoneInfoTW:SetupText()
    ZoneInfoTW.text = WorldMapFrameAreaFrame:CreateFontString(nil, "OVERLAY", "GameFontHighlightLarge")
    local font, size = GameFontHighlightLarge:GetFont()
    ZoneInfoTW.text:SetFont(font, size, "OUTLINE")
    ZoneInfoTW.text:SetPoint("TOP", WorldMapFrameAreaDescription, "BOTTOM", 0, 5)
    ZoneInfoTW.text:SetWidth(1024)
end



function ZoneInfoTW:UpdateZoneDisplayText()
    local zone = WorldMapFrameAreaLabel:GetText() or ""
    local poi = ""


    if (GetMouseFocus()) then
        poi = GetMouseFocus().name or ""
    end

    if (zone == "" and poi == "") then
        ZoneInfoTW.text:SetText("")
        return
    end


    local ZoneInfo = {}
    WorldMapFrameAreaLabel:SetText()

    local lookup = poi ~= "" and poi or zone
    local entry = ""

    lookup = ZoneInfoTW:trim(lookup)

    ZoneInfoTW.lastZoneID = ZoneInfoTW.lastZoneID or GetCurrentMapZone()
    ZoneInfoTW.lastZone = ZoneInfoTW.lastZone or {GetMapInfo(), GetCurrentMapZone()}
    local mapFileName, textureHeight, textureWidth, isMicrodungeon, microDungeonMapName = GetMapInfo();

    local currentZoneID = GetCurrentMapZone()
    if currentZoneID ~= ZoneInfoTW.lastZoneID then
        ZoneInfoTW.lastZone = {mapFileName, currentZoneID}
        ZoneInfoTW.lastZoneID = currentZoneID
    end



    for _, rule in ipairs(ZoneInfoTW.DisplayRules) do
        if rule.check(lookup) then
            entry = rule.get(lookup)
            break
        end
    end

    table.insert(ZoneInfo, entry)

    ZoneInfoTW.text:SetText(table.concat(ZoneInfo, "\n"))
end

function ZoneInfoTW:trim(s)
    return (string.gsub(s, "^%s*(.-)%s*$", "%1"))
end

