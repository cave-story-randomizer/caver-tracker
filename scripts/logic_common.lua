function canFightMaPignon()
    return Tracker:ProviderCountForCode("polarStar") > 0 or Tracker:ProviderCountForCode("fireball") > 0 or
           Tracker:ProviderCountForCode("bubbler") > 0 or Tracker:ProviderCountForCode("machineGun") > 0 or
           Tracker:ProviderCountForCode("snake") > 0 or Tracker:ProviderCountForCode("nemesis") > 0
end

function canEnterArthurs()
    if Tracker:ProviderCountForCode("weaponSN") > 0 and Tracker:ProviderCountForCode("arthursKey") > 0 then
       return 1 else return 0 
    end
end

function canAccessPlantation()
    if Tracker:ProviderCountForCode("eventKazuma") > 0 then
        return 1
    end
    if Tracker:ProviderCountForCode("teleportKey") > 0 and canEnterArthurs() then
        return 1
    end
    return 0
end
