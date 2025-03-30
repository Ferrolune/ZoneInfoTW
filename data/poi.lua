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
        flag = "0000",
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
        flag = "0000",
        low = 10,
        high = 15
    },
    ["The Dead Acre"] = {
        flag = "1001",
        low = 16,
        high = 21
    },
    ["The Dust Plains"] = {
        flag = "1001",
        low = 16,
        high = 24
    },
    ["The Dagger Hills"] = {
        flag = "1001",
        low = 15,
        high = 18
    },
    ["Demont's Place"] = {
        flag = "1001",
        low = 13,
        high = 18
    },
    ["Westfall Lighthouse"] = {
        flag = "0000",
        low = 16,
        high = 20
    },
    ["Gold Coast Quarry"] = {
        flag = "1001",
        low = 11,
        high = 17
    },
    ["Alexston Farmstead"] = {
        flag = "1001",
        low = 12,
        high = 15
    },
    ["Moonbrook"] = {
        flag = "1001",
        low = 11,
        high = 16
    },

    --Duskwood
    ["Addle's Stead"] = {
        flag = "1001",
        low = 18,
        high = 25
    },
    ["Raven Hill"] = {
        flag = "0000",
        low = 24,
        high = 25
    },
    ["Raven Hill Cemetery"] = {
        flag = "1001",
        low = 23,
        high = 35
    },
    ["The Hushed Bank"] = {
        flag = "1001",
        low = 18,
        high = 21
    },
    ["The Darkened Bank"] = {
        flag = "1001",
        low = 18,
        high = 22
    },
    ["Brightwood Grove"] = {
        flag = "1001",
        low = 23,
        high = 29
    },
    ["Manor Mistmantle"] = {
        flag = "1001",
        low = 29,
        high = 32
    },
    ["Tranquil Gardens Cemetery"] = {
        flag = "1001",
        low = 21,
        high = 26
    },
    ["Roland's Doom"] = {
        flag = "1001",
        low = 29,
        high = 32
    },
    ["The Rotting Orchard"] = {
        flag = "1001",
        low = 27,
        high = 29
    },
    ["The Yorgen Farmstead"] = {
        flag = "1001",
        low = 23,
        high = 27
    },
    ["Vul'Gol Ogre Mound"] = {
        flag = "1001",
        low = 23,
        high = 31
    },

    -- Redridge Mountains
    ["Three Corners"] = {
        flag = "1001",
        low = 14,
        high = 17
    },
    ["Lakeridge Highway"] = {
        flag = "1001",
        low = 15,
        high = 19
    },
    ["Render's Valley"] = {
        flag = "1001",
        low = 17,
        high = 22
    },
    ["Stonewatch Keep"] = {
        flag = "1001",
        low = 20,
        high = 26
    },
    ["Stonewatch"] = {
        flag = "1001",
        low = 20,
        high = 22
    },
    ["Tower of Ilgalar"] = {
        flag = "1001",
        low = 21,
        high = 27
    },
    ["Galardell Valley"] = {
        flag = "1001",
        low = 21,
        high = 27
    },
    ["Alther's Mill"] = {
        flag = "1001",
        low = 18,
        high = 20
    },
    ["Redridge Canyons"] = {
        flag = "1001",
        low = 17,
        high = 22
    },
    ["Rethban Caverns"] = {
        flag = "1001",
        low = 19,
        high = 24
    },
    ["Lake Everstill"] = {
        flag = "1001",
        low = 16,
        high = 25
    },
    ["Render's Camp"] = {
        flag = "1001",
        low = 16,
        high = 25
    },
    ["Render's Rock"] = {
        flag = "1001",
        low = 22,
        high = 25
    },
    --Dun Morough
    ["Anvilmar"] = {
        flag = "0000",
        low = 1,
        high = 3
    },
    ["Coldridge Valley"] = {
        flag = "1010",
        low = 1,
        high = 5
    },
    ["The Grizzled Den"] = {
        flag = "1001",
        low = 5,
        high = 7
    },
    --Stranglethorn Vale


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
    },
    ["Tiragarde Keep"] = {
        flag = "1001",
        low = 5,
        high = 8
    },
    ["Valley of Trials"] = {
        flag = "0100",
        low = 1,
        high = 5
    },
    ["Sen'jin Village"] = {
        flag = "0100",
        low = 5,
        high = 7
    },
    ["Kolkar Grag"] = {
        flag = "1001",
        low = 6,
        high = 8
    },
    ["Echo Isles"] = {
        flag = "1001",
        low = 6,
        high = 11
    },

    --Thalassian Highlands
    ["Felstrider Retreat"] = {
        flag = "1001",
        low = 8,
        high = 11
    },
    ["Silver Sun Mine"] = {
        flag = "1001",
        low = 4,
        high = 5
    },

    ["The Last Runestone"] = {
        flag = "0000",
        low = 5,
        high = 7
    },

    ["Thaumarium"] = {
        flag = "0000",
        low = 2,
        high = 7
    },

    ["Brinthilien"] = {
        flag = "0000",
        low = 1,
        high = 5
    },

    ["Silver Covenant Park"] = {
        flag = "0000",
        low = 5,
        high = 7
    },

    ["Anasterian Park"] = {
        flag = "0000",
        low = 5,
        high = 8
    },

    ["Ballador's Chapel"] = {
        flag = "0000",
        low = 5,
        high = 7
    },

    ["Ruins of Nashal'aran"] = {
        flag = "1001",
        low = 9,
        high = 11
    },

    ["Deepmurk Cave"] = {
        flag = "1001",
        low = 9,
        high = 9
    },

    ["The Farstride"] = {
        flag = "1001",
        low = 6,
        high = 10
    },

    ["Isle of Eternal Autumn"] = {
        flag = "0000",
        low = 6,
        high = 10
    },

















}

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
