local ZoneInfoTW = getglobal("ZoneInfoTWFrameMain") or {}

ZoneInfoTW.PointOfInterests = {
    -- Eastern Kingdoms
    -- Elwynn Forest
    ["Northshire Valley"] = {
        flag = "1010",
        low = 1,
        high = 5
    },
    ["Northshire Abbey"] = {
        flag = "0000",
        low = 1,
        high = 3
    },
    ["Northshire Vineyards"] = {
        flag = "1001",
        low = 3,
        high = 5
    },
    ["Echo Ridge Mine"] = {
        flag = "1010",
        low = 3,
        high = 5
    },
    ["Goldshire"] = {
        flag = "0000",
        low = 1,
        high = 6
    },
    ["Crystal Lake"] = {
        flag = "1001",
        low = 5,
        high = 9
    },
    ["Jasperlode Mine"] = {
        flag = "1001",
        low = 6,
        high = 9
    },
    ["Tower of Azora"] = {
        flag = "0000",
        low = 7,
        high = 9
    },
    ["Brackwell Pumpkin Patch"] = {
        flag = "1001",
        low = 7,
        high = 10
    },
    ["Ridgepoint Tower"] = {
        flag = "0000",
        low = 8,
        high = 11
    },
    ["Eastvale Logging Camp"] = {
        flag = "0000",
        low = 8,
        high = 10
    },
    ["Stone Cairn Lake"] = {
        flag = "1001",
        low = 9,
        high = 10
    },
    ["Jerod's Landing"] = {
        flag = "1001",
        low = 7,
        high = 10
    },
    ["Maclure Vineyards"] = {
        flag = "0000",
        low = 5,
        high = 9
    },
    ["Fargodeep Mine"] = {
        flag = "1001",
        low = 5,
        high = 8
    },
    ["Stonefield Farm"] = {
        flag = "0000",
        low = 5,
        high = 8
    },
    ["Westbrook Garrison"] = {
        flag = "0000",
        low = 5,
        high = 8
    },
    ["Mirror Lake"] = {
        flag = "1001",
        low = 5,
        high = 9
    },
    ["Forest's Edge"] = {
        flag = "1001",
        low = 8,
        high = 11
    },

    -- Westfall,
    ["The Jansen Stead"] = {
        flag = "1001",
        low = 9,
        high = 13
    },
    ["Furlbrow's Pumpkin Farm"] = {
        flag = "1001",
        low = 9,
        high = 15
    },
    ["Jangolode Mine"] = {
        flag = "1001",
        low = 11,
        high = 14
    },
    ["The Molsen Farm"] = {
        flag = "1001",
        low = 10,
        high = 15
    },
    ["Saldean's Farm"] = {
        flag = "1001",
        low = 10,
        high = 15
    },
    -- Kalimdor,
    -- Durotar,
    ["Skull Rock"] = {
        flag = "1001",
        low = 8,
        high = 14
    },
    ["SparkwaterPort"] = {
        flag = "0100",
        low = 6,
        high = 9
    },
    ["Drygulch Ravine"] = {
        flag = "1001",
        low = 7,
        high = 12
    },
    ["Razorwind Canyon"] = {
        flag = "1001",
        low = 7,
        high = 8
    },
    ["Tor'Kren Farm"] = {
        flag = "0100",
        low = 6,
        high = 11
    },
    ["Thunder Ridge"] = {
        flag = "1001",
        low = 6,
        high = 12
    },
    ["Razormane Grounds"] = {
        flag = "1001",
        low = 6,
        high = 11
    },
    ["Razor Hill"] = {
        flag = "0100",
        low = 5,
        high = 8
    }

}

-- 4-bit flags, Alliance will be flipped for Horde, contested remains unchanged for both:
ZoneInfoTW.reactionColors = {
    ["0000"] = "|cff00ff00", -- Alliance friendly
    ["0001"] = "|cffff0000", -- Alliance hostile
    ["0010"] = "|cffffff00", -- Alliance neutral
    ["0100"] = "|cff00ff00", -- Horde friendly
    ["0101"] = "|cffff0000", -- Horde hostile
    ["0110"] = "|cffffff00", -- Horde neutral
    ["1000"] = "|cff00ff00", -- Contested friendly
    ["1001"] = "|cffff0000", -- Contested hostile
    ["1010"] = "|cffffff00" -- Contested neutral
}

ZoneInfoTW.reactionRemap = {
    ["0000"] = "0101", -- Alliance friendly -> Horde hostile
    ["0001"] = "0100", -- Alliance hostile -> Horde friendly
    ["0010"] = "0110", -- Alliance neutral -> Horde neutral
    ["0100"] = "0001", -- Horde friendly -> Alliance hostile
    ["0101"] = "0000", -- Horde hostile -> Alliance friendly
    ["0110"] = "0110", -- Horde neutral -> Alliance neutral
    ["1000"] = "1000", -- Contested friendly -> Contested friendly
    ["1001"] = "1001", -- Contested hostile -> Contested hostile
    ["1010"] = "1010" -- Contested neutral -> Contested neutral
}

function ZoneInfoTW:AdjustFlagForPlayerFaction(flag)
    local isHorde = (UnitFactionGroup("player") == "Horde" and "1") or "0"
    local reactiondata = (string.sub(flag, 2, 2) ~= isHorde and ZoneInfoTW.reactionRemap[flag]) or flag
    return reactiondata
end
