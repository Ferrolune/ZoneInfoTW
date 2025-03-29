local ZoneInfoTW = getglobal("ZoneInfoTWFrameMain") or {}

function ZoneInfoTW:GetErrorString(lookup)
    local color = ZoneInfoTW.Colors["Levels"]["Gray"]
    local out = lookup or ""
    return string.format(" |cff%02x%02x%02x%s\n[%s]|r", color[1], color[2], color[3], out, "NO DATA")
end