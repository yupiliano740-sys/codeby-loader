-- Codeby Remote Loader
-- Version: Loader_v1
-- Author: Codeby

local SCRIPT_URL = "https://pastefy.app/WVFeEftk"

local success, response = pcall(function()
    return game:HttpGet(SCRIPT_URL)
end)

if not success or not response or #response < 10 then
    warn("❌ Codeby Loader: Error al descargar el script")
    return
end

local run, err = loadstring(response)
if not run then
    warn("❌ Codeby Loader: Error al ejecutar ->", err)
    return
end

run()
