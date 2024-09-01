function run_script(name) -- start script thread
    script.run_in_fiber(function(runscript)
        SCRIPT.REQUEST_SCRIPT(name)
        repeat
            runscript:yield()
        until SCRIPT.HAS_SCRIPT_LOADED(name)
        SYSTEM.START_NEW_SCRIPT(name, 5000)
        SCRIPT.SET_SCRIPT_AS_NO_LONGER_NEEDED(name)
    end)
end

function change_session(session)
    globals.set_int(CSg1, session)
    if session == -1 then
        globals.set_int(CSg3, -1)
    end
    globals.set_int(CSg2, 1)
    sleep(0.5)
    globals.set_int(CSg2, 0)
end

function MPX()
    local PI = stats.get_int("MPPLY_LAST_MP_CHAR")
    if PI == 0 then
        return "MP0_"
    else
        return "MP1_"
    end
end

function helpmarker(colorFlag, text, color)
    if not disableTooltips then
        ImGui.SameLine()
        ImGui.TextDisabled("(?)")
        if ImGui.IsItemHovered() then
            ImGui.SetNextWindowBgAlpha(0.85)
            ImGui.BeginTooltip()
            if colorFlag == true then
                coloredText(text, color)
            else
                ImGui.PushTextWrapPos(ImGui.GetFontSize() * 20)
                ImGui.TextWrapped(text)
                ImGui.PopTextWrapPos()
            end
            ImGui.EndTooltip()
        end
    end
end

function widgetToolTip(colorFlag, text, color)
    if not disableTooltips then
        if ImGui.IsItemHovered() then
            ImGui.SetNextWindowBgAlpha(0.85)
            ImGui.BeginTooltip()
            if colorFlag == true then
                coloredText(text, color)
            else
                ImGui.PushTextWrapPos(ImGui.GetFontSize() * 20)
                ImGui.TextWrapped(text)
                ImGui.PopTextWrapPos()
            end
            ImGui.EndTooltip()
        end
    end
end

function findIndex(value, table) 
    for i, valor in ipairs(table) do
        if valor == value then
            return i
        end
    end
end

function unlock_packed_bools(from, to)
    for i = from, to do
        stats.set_packed_stat_bool(i, true)
    end
end

function trigger_transaction(hash, amount)
    globals.set_int(4537311 + 1, 2147483646)
    globals.set_int(4537311 + 7, 2147483647)
    globals.set_int(4537311 + 6, 0)
    globals.set_int(4537311 + 5, 0)
    globals.set_int(4537311 + 3, hash)
    globals.set_int(4537311 + 2, amount)
    globals.set_int(4537311, 2)
end

function findClosestNumberIndex(table, value)
    local indiceMasCercano = nil
    local menorDiferencia = math.huge

    for i, numero in ipairs(table) do
        local diferencia = math.abs(numero - value)

        -- Si la diferencia actual es menor que la menor diferencia registrada
        if diferencia < menorDiferencia then
            menorDiferencia = diferencia
            indiceMasCercano = i
        end
    end

    return indiceMasCercano
end
