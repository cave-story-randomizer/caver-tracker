Tracker:AddItems("items/items.json")

if not (string.find(Tracker.ActiveVariantUID, "items_only")) then
    ScriptHost:LoadScript("scripts/logic_common.lua")
    Tracker:AddLocations("locations/locations.json")    
end

Tracker:AddLayouts("layouts/tracker.json")
Tracker:AddLayouts("layouts/broadcast.json")
