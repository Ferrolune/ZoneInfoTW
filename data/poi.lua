local ZoneInfoTW = getglobal("ZoneInfoTWFrameMain") or {}

ZoneInfoTW.PointOfInterests = {
    -- Eastern Kingdoms
    -- Elwynn Forest
    ["Northshire Valley"] = {flag = "1010",low = 1,high = 5},
    ["Northshire Abbey"] = {flag = "0000",low = 1,high = 3},
    ["Northshire Vineyards"] = {flag = "1001",low = 3,high = 5},
    ["Echo Ridge Mine"] = {flag = "1010",low = 3,high = 5},
    ["Goldshire"] = {flag = "0000",low = 1,high = 6},
    ["Crystal Lake"] = {flag = "1001",low = 5,high = 9},
    ["Jasperlode Mine"] = {flag = "1001",low = 6,high = 9},
    ["Tower of Azora"] = {flag = "0000",low = 7,high = 9},
    ["Brackwell Pumpkin Patch"] = {flag = "1001",low = 7,high = 10},
    ["Ridgepoint Tower"] = {flag = "0000",low = 8,high = 11},
    ["Eastvale Logging Camp"] = {flag = "0000",low = 8,high = 10},
    ["Stone Cairn Lake"] = {flag = "1001",low = 9,high = 10},
    ["Jerod's Landing"] = {flag = "1001",low = 7,high = 10},
    ["Maclure Vineyards"] = {flag = "0000",low = 5,high = 9},
    ["Fargodeep Mine"] = {flag = "1001",low = 5,high = 8},
    ["Stonefield Farm"] = {flag = "0000",low = 5,high = 8},
    ["Westbrook Garrison"] = {flag = "0000",low = 5,high = 8},
    ["Mirror Lake"] = {flag = "1001",low = 5,high = 9},
    ["Forest's Edge"] = {flag = "1001",low = 8,high = 11},

    -- Westfall,
    ["The Jansen Stead"] = {flag = "0000",low = 9,high = 13},
    ["Furlbrow's Pumpkin Farm"] = {flag = "1001",low = 9,high = 15},
    ["Jangolode Mine"] = {flag = "1001",low = 11,high = 14},
    ["The Molsen Farm"] = {flag = "1001",low = 10,high = 15},
    ["Saldean's Farm"] = {flag = "0000",low = 10,high = 15},
    ["The Dead Acre"] = {flag = "1001",low = 16,high = 21},
    ["The Dust Plains"] = {flag = "1001",low = 16,high = 24},
    ["The Dagger Hills"] = {flag = "1001",low = 15,high = 18},
    ["Demont's Place"] = {flag = "1001",low = 13,high = 18},
    ["Westfall Lighthouse"] = {flag = "0000",low = 16,high = 20},
    ["Gold Coast Quarry"] = {flag = "1001",low = 11,high = 17},
    ["Alexston Farmstead"] = {flag = "1001",low = 12,high = 15},
    ["Moonbrook"] = {flag = "1001",low = 11,high = 16},

    -- Duskwood
    ["Addle's Stead"] = {flag = "1001",low = 18,high = 25},
    ["Raven Hill"] = {flag = "0000",low = 24,high = 51},
    ["Raven Hill Cemetery"] = {flag = "1001",low = 23,high = 35},
    ["The Hushed Bank"] = {flag = "1001",low = 18,high = 21},
    ["The Darkened Bank"] = {flag = "1001",low = 18,high = 22},
    ["Brightwood Grove"] = {flag = "1001",low = 23,high = 29},
    ["Manor Mistmantle"] = {flag = "1001",low = 29,high = 32},
    ["Tranquil Gardens Cemetery"] = {flag = "1001",low = 21, high = 26},
    ["Roland's Doom"] = {flag = "1001",low = 29,high = 32},
    ["The Rotting Orchard"] = {flag = "1001",low = 27,high = 29},
    ["The Yorgen Farmstead"] = {flag = "1001",low = 23,high = 27},
    ["Vul'Gol Ogre Mound"] = {flag = "1001",low = 23,high = 31},

    -- Redridge Mountains

    ["Three Corners"] = {flag = "1001",low = 14,high = 17},
    ["Lakeridge Highway"] = {flag = "1001",low = 15,high = 19},
    ["Render's Valley"] = {flag = "1001",low = 17,high = 22},
    ["Stonewatch Keep"] = {flag = "1001",low = 20,high = 26},
    ["Stonewatch"] = {flag = "1001",low = 20,high = 22},
    ["Tower of Ilgalar"] = {flag = "1001",low = 21,high = 27},
    ["Galardell Valley"] = {flag = "1001",low = 21,high = 27},
    ["Alther's Mill"] = {flag = "1001",low = 18,high = 20},
    ["Redridge Canyons"] = {flag = "1001",low = 17,high = 22},
    ["Rethban Caverns"] = {flag = "1001",low = 19,high = 24},
    ["Lake Everstill"] = {flag = "1001",low = 16,high = 25},
    ["Render's Camp"] = {flag = "1001",low = 16,high = 25},
    ["Render's Rock"] = {flag = "1001",low = 22,high = 25},

    -- Dun Morough
    ["Anvilmar"] = {flag = "0000",low = 1,high = 3},
    ["Coldridge Valley"] = {flag = "1010",low = 1,high = 5},
    ["Coldridge Pass"] = {flag = "1001",low = 4,high = 5},
    ["The Grizzled Den"] = {flag = "1001",low = 5,high = 7},
    ["Chill Breeze Valley"] = {flag = "1001",low = 5,high = 11},
    ["Frostmane Hold"] = {flag = "1001",low = 7,high = 10},
    ["Iceflow Lake"] = {flag = "1010",low = 7,high = 10},
    ["Brewnall Village"] = {flag = "0000",low = 7,high = 8},
    ["Gnomeregan"] = {flag = "1001",low = 8,high = 26},
    ["Gnomeregan Reclamation Facility"] = {flag = "0000",low = 10,high = 14},
    ["Gates of Ironforge"] = {flag = "0000",low = 6,high = 8},
    ["Steelgrill's Depot"] = {flag = "0000",low = 5,high = 8},
    ["Kharanos"] = {flag = "0000",low = 5,high = 8},
    ["Shimmer Ridge"] = {flag = "1001",low = 8,high = 9},
    ["The Tundrid Hills"] = {flag = "1001",low = 6,high = 8},
    ["Amberstill Ranch"] = {flag = "0000",low = 6,high = 11},
    ["Gol'Bolar Quarry"] = {flag = "0000",low = 8,high = 12},
    ["Ironband's Compound"] = {flag = "1001",low = 9,high = 12},
    ["Helm's Bed Lake"] = {flag = "1001",low = 7,high = 13},
    ["South Gate Outpost"] = {flag = "0000",low = 9,high = 10},
    ["North Gate Outpost"] = {flag = "0000",low = 8,high = 11},
    ["Misty Pine Refuge"] = {flag = "1010",low = 8,high = 11},
    ["Ironforge Airfields"] = {flag = "0000",low = 3,high = 10},

    -- Thalassian Highlands
    ["Felstrider Retreat"] = {flag = "1001",low = 8,high = 11},
    ["Silver Sun Mine"] = {flag = "1001",low = 4,high = 5},
    ["The Last Runestone"] = {flag = "0000",low = 5,high = 7},
    ["Thaumarium"] = {flag = "0000",low = 2,high = 7},
    ["Brinthilien"] = {flag = "0000",low = 1,high = 5},
    ["Silver Covenant Park"] = {flag = "0000",low = 5,high = 7},
    ["Anasterian Park"] = {flag = "0000",low = 5,high = 8},
    ["Ballador's Chapel"] = {flag = "0000",low = 5,high = 7},
    ["Ruins of Nashal'aran"] = {flag = "1001",low = 9,high = 11},
    ["Deepmurk Cave"] = {flag = "1001",low = 9,high = 9},
    ["The Farstride"] = {flag = "1001",low = 6,high = 10},
    ["Isle of Eternal Autumn"] = {flag = "0000",low = 6,high = 10},

    -- Stranglethorn Vale
    ["Kurzen's Compound"] = {flag = "1001",low = 32,high = 40},
    ["Zul'Gurub"] = {flag = "1001",low = 54,high = 56},
    ["Venture Co. Base Camp"] = {flag = "1001",low = 34,high = 37},
    ["Lake Nazferiti"] = {flag = "1001",low = 31,high = 36},
    ["Mizjah Ruins"] = {flag = "1001",low = 35,high = 37},
    ["Grom'gol Base Camp"] = {flag = "0100",low = 33,high = 38},
    ["Kal'ai Ruins"] = {flag = "1001",low = 35,high = 37},
    ["Nesingwary's Expedition"] = {flag = "1000",low = 30,high = 37},
    ["Ruins of Zul'Kunda"] = {flag = "1001",low = 32,high = 41},
    ["Zuuldaia Ruins"] = {flag = "1001",low = 35,high = 37},
    ["YoJamba Isle"] = {flag = "1000",low = 36,high = 37},
    ["The Vile Reef"] = {flag = "1001",low = 35,high = 37},
    ["Mosh'ogg Ogre Mound"] = {flag = "1001",low = 37,high = 47},
    ["Balia'mah Ruins"] = {flag = "1001",low = 37,high = 40},
    ["Ziata'jai Ruins"] = {flag = "1001",low = 37,high = 40},
    ["Ruins of Zui'Mamwe"] = {flag = "1001",low = 39,high = 45},
    ["Gurubashi Arena"] = {flag = "1001",low = 36,high = 43},
    ["Ruins of Jubuwal"] = {flag = "1001",low = 43,high = 44},
    ["Ruins of Aboraz"] = {flag = "1001",low = 43,high = 46},
    ["Crystalvein Mine"] = {flag = "1001",low = 41,high = 44},
    ["Bloodsail Compound"] = {flag = "1001",low = 41,high = 45},
    ["Nek'mani Wellspring"] = {flag = "1001",low = 43,high = 44},
    ["Mistvale Valley"] = {flag = "1001",low = 40,high = 43},
    ["Spirit Den"] = {flag = "1000",low = 6,high = 10},
    ["Wild Shore"] = {flag = "1001",low = 40,high = 48},
    ["Jaguero Isle"] = {flag = "1001",low = 25,high = 60},
    ["Jeneiro's Point"] = {flag = "1001",low = 50,high = 50},
    ["Rebel Camp"] = {flag = "0000",low = 30,high = 32},
    ["Bal'lal Ruins"] = {flag = "1001",low = 33,high = 38},


    -- Kalimdor,
    -- Durotar,
    ["Skull Rock"] = {flag = "1001",low = 8,high = 14},
    ["SparkwaterPort"] = {flag = "0100",low = 6,high = 9},
    ["Drygulch Ravine"] = {flag = "1001",low = 7,high = 12},
    ["Razorwind Canyon"] = {flag = "1001",low = 7,high = 8},
    ["Tor'Kren Farm"] = {flag = "0100",low = 6,high = 11},
    ["Thunder Ridge"] = {flag = "1001",low = 6,high = 12},
    ["Razormane Grounds"] = {flag = "1001",low = 6,high = 11},
    ["Razor Hill"] = {flag = "0100",low = 5,high = 8},
    ["Tiragarde Keep"] = {flag = "1001",low = 5,high = 8},
    ["Valley of Trials"] = {flag = "0100",low = 1,high = 5},
    ["Sen'jin Village"] = {flag = "0100",low = 5,high = 7},
    ["Kolkar Grag"] = {flag = "1001",low = 6,high = 8},
    ["Echo Isles"] = {flag = "1001",low = 6,high = 11},


    --Gilneas
    ["Brol'ok Mound"]={flag="1001",low=41,high=47},
    ["The Overgrown Acre"]={flag="1001",low=41,high=43},
    ["Southmire Orchard"]={flag="1001",low=39,high=44},
    ["Hollow Web Woods"]={flag="1001",low=42,high=45},
    ["Hollow Web Cemetery"]={flag="0000",low=42,high=44},
    ["Dryrock Valley"]={flag="1000",low=43,high=45},
    ["The Dryrock Pit"]={flag="1001",low=40,high=45},
    ["Blackthorn's Camp"]={flag="0100",low=42,high=60},
    ["The Dryrock Mine"]={flag="1001",low=39,high=45},
    ["Shademore Tavern"]={flag="0000",low=42,high=44},
    ["Ruins of Greyshire"]={flag="1001",low=39,high=48},
    ["Westgate Tower"]={flag="1001",low=39,high=42},
    ["Mossgrove Farm"]={flag="0000",low=39,high=40},
    ["Stillward Church"]={flag="0100",low=39,high=41},
    ["Northgate Tower"]={flag="1001",low=39,high=43},
    ["Ebonmere Farm"]={flag="1001",low=35,high=43},
    ["Glaymore Stead"]={flag="1000",low=39,high=41},
    ["Rosewick Plantation"]={flag="1001",low=41,high=43},
    ["Vagrant Encampment"]={flag="0000",low=39,high=41},
    ["The Greymane Wall"]={flag="0000",low=18,high=40},
    ["Oldrock Pass"]={flag="1001",low=41,high=45},
    ["Dawnstone Mine"]={flag="1001",low=39,high=43},
    ["Gilneas City"]={flag="1001",low=39,high=40},
    ["Greymane's Watch"]={flag="0000",low=43,high=44},
    ["Freyshear Keep"]={flag="1001",low=42,high=45},
    ["Ravenwood Keep"]={flag="1001",low=44,high=46},

    --Deadwind Pass
    ["Deadman's Crossing"]={flag="1001",low=55,high=56},
    ["Ariden's Camp"]={flag="0000",low=50,high=51},
    ["The Vice"]={flag="1001",low=55,high=58},
    ["Karazhan"]={flag="1001",low=50,high=61},

    --Eastern Eastern Plaguelands
    ["The Scourged Pass"]={flag="1001",low=53,high=54},
    ["Forlorn Summit"]={flag="1001",low=54,high=58},
    ["Terrordale"]={flag="1001",low=53,high=60},
    ["Terrorweb Tunnel"]={flag="1001",low=53,high=59},
    ["Plaguewood"]={flag="1001",low=51,high=58},
    ["Stratholme"]={flag="1001",low=51,high=60},
    ["Plaguewood Tower"]={flag="1001",low=53,high=58},
    ["Northpass Tower"]={flag="1001",low=56,high=58},
    ["Quel'Lithien Lodge"]={flag="0000",low=56,high=60},
    ["Northdale"]={flag="1001",low=56,high=59},
    ["Zul'Mashar"]={flag="1001",low=57,high=60},
    ["Eastwall Tower"]={flag="1001",low=57,high=58},
    ["Blackwood Lake"]={flag="1001",low=54,high=58},
    ["Browman Mill"]={flag="1001",low=57,high=60},
    ["The Noxious Glade"]={flag="1001",low=57,high=60},
    ["Light's Hope Chapel"]={flag="1010",low=58,high=59},
    ["Pestilent Scar"]={flag="1001",low=54,high=56},
    ["Tyr's Hand"]={flag="1001",low=53,high=60},
    ["Lake Mereldar"]={flag="1001",low=53,high=56},
    ["Corin's Crossing"]={flag="1001",low=55,high=58},
    ["The Infectis Scar"]={flag="1001",low=54,high=56},
    ["Crown Guard Tower"]={flag="1001",low=53,high=54},
    ["Darrowshire"]={flag="1001",low=55,high=55},
    ["The Undercroft"]={flag="1001",low=53,high=55},
    ["The Marris Stead"]={flag="0100",low=53,high=54},
    ["The Fungal Vale"]={flag="1001",low=57,high=60},
    ["Thondroril River"]={flag="1001",low=53,high=55},

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
