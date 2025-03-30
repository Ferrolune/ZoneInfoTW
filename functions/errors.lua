local ZoneInfoTW = getglobal("ZoneInfoTWFrameMain") or {}

function ZoneInfoTW:GetErrorString(lookup)
    local color = ZoneInfoTW.Colors["Levels"]["Gray"]
    local out = lookup or ""

    if type(out) == "table" then
            print("Error occurred, send this info to Ferrolune:")
            for k,v in out do print(k) end
            return string.format(" |cff%02x%02x%02x[%s]|r", 128,128,128,"NO DATA")
    end
    return string.format(" |cff%02x%02x%02x%s\n[%s]|r", color[1], color[2], color[3], out, "NO DATA")
end
