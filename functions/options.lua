local ZoneInfoTW = getglobal("ZoneInfoTWFrameMain") or {}


--/run g = getglobal("ZoneInfoTWFrameMain") g.options["ShowMonsterLevelRange"] = false, turn this into a slashcommand
ZoneInfoTW.options = {
    ["ShowMonsterLevelRange"] = true
}

SLASH_ZIT1 = "/zit"
SlashCmdList["ZIT"] = function()
        local option = ZoneInfoTW.options["ShowMonsterLevelRange"]
        option = not option
        ZoneInfoTW.options["ShowMonsterLevelRange"] = option
        DEFAULT_CHAT_FRAME:AddMessage(option and "ZI: Now using traditional zone level ranges on world map"
                                             or "ZI: Now using monster level ranges on world map"
                                     )
end

