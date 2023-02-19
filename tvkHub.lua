repeat task.wait() until game:IsLoaded()
if not game:IsLoaded() then game:IsLoaded():Wait(5) end

-- (If you want to custom script config, put it in the code below)
-- Replace you custom script config here / วางคอนฟิกสคริปต์ที่ต้องการตรงนี้

task.spawn(function()
    local errorProtect = tick()
    repeat task.wait() until _G.isTablehubLoaded == true or tick() - errorProtect > 60
    if tick() - errorProtect > 60 then
        game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer, game.JobId)
    end
    -- (If you want to run your script after tablehub, put it in the code above)
    -- Replace your external script here / วางสคริปต์ที่ต้องการให้รันหลัง tablehub ตรงนี้ 
end);

(function()
    local old
    old = hookfunction(syn.request,function(...) 
        print(...)
        return old(...)
    end)
    _G.isTablehubLoaded = false
    _G.Key = "Table-AQHF-H6MK-1ILA-C9A7"
    _G.DiscordId = "860345795738992641"

    local request = (syn) and syn.request or (pebc_execute or XPROTECT) and http_request or (SENTINEL_V2 or KRNL_LOADED) and request
    local err, script;
    repeat
        task.wait()
        err, script = pcall(request, { Url = "https://www.tablehub.net/api/v3/script/" .. game.gameId})
    until err == true and script ~= nil
    loadstring(script.Body)()
end)();
