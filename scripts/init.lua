Tracker:AddItems("items/common.json")
Tracker:AddItems("items/dungeon_items.json")

if not (string.find(Tracker.ActiveVariantUID, "items_only")) then
    ScriptHost:LoadScript("scripts/logic_common.lua")
    ScriptHost:LoadScript("scripts/logic_custom.lua")
    Tracker:AddMaps("maps/maps.json")
    if not (string.find(Tracker.ActiveVariantUID, "inverted")) then
        Tracker:AddLocations("locations/overworld.json")
    else
        Tracker:AddLocations("inverted_locations/overworld.json")
    end
    Tracker:AddLocations("locations/dungeons.json")    
end

Tracker:AddLayouts("layouts/tracker.json")
Tracker:AddLayouts("layouts/broadcast.json")

ScriptHost:LoadScript("scripts/utility_autotracking.lua")
