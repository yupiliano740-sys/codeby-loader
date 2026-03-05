-- Loader Lua para Codeby Elite Builder
-- By: TuLoader

-- URL del script en Pastefy
local SCRIPT_URL = "https://pastefy.app/tDPnbSVP/raw"

-- Función para cargar y ejecutar el script remoto
local function loadRemoteScript(url)
    local httpService = game:GetService("HttpService")
    local success, result = pcall(function()
        return game:HttpGet(url)
    end)

    if success and result then
        local func, err = loadstring(result)
        if func then
            func()
        else
            warn("Error al convertir el script a función: " .. tostring(err))
        end
    else
        warn("Error al obtener el script remoto: " .. tostring(result))
    end
end

-- Ejecutar el script remoto
loadRemoteScript(SCRIPT_URL)
