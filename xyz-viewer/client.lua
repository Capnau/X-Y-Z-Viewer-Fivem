--Config




debug = false -- Disables xyz Command

----------------------------------------------------------------------------------------------------------------------------------------------------------------------
--                               Made By gary the fish [1k-28][373]#1099 -- for Wombat Roleplay -- https://discord.gg/TkB2eBujc8                                    --
----------------------------------------------------------------------------------------------------------------------------------------------------------------------

--Do Not Touch

--[[
TOS:

Do Not Re-upload As Your Own
Do Not Claim That This Script is Your's

-----------------------------------------------------------

You Can Use The Code As A Reference
You Can Re-Upload With Edited Code But You Must Credit Me

-----------------------------------------------------------

Check Out My Server based in NSW Australia 

Wombat Roleplay
https://discord.gg/TkB2eBujc8

-----------------------------------------------------------

Have a Good Day!!!!
]]--

--Toggleable Command E.g. /xyz = on then to turn off do /xyz again
RegisterCommand("xyz", function()
    --Is The Script Enabled?
    if xyz == true then

        --Turns Off If Already On
        xyz = false
    else

        --Turns On If Already Off
        xyz = true
    end
end)

CreateThread(function()
    while true do
        --Will Crash Game If Removed
        Wait(1)

        --Do Not Touch
        local ped = PlayerPedId()
        local pedcoords = GetEntityCoords(ped)

        --Do Not Touch, Unless You Know What Your Doing!!!
        if debug then
            print("Debug Mode is On")
            print("Ped Player ID = " .. ped)
            print("Player Coords = " .. pedcoords)

            print("Made By gary the fish [1k-28][373]#1099 --- Check Out Wombat Roleplay --- https://discord.gg/TkB2eBujc8")
            Wait(60000)
        end
        if xyz then

            --Main Script, Draws The Lines and Ped Box --- Red = X --- Green = Y --- Blue = Z ---

            --Red/X
            DrawLine(pedcoords.x - 1.5, pedcoords.y, pedcoords.z, pedcoords.x + 1.5, pedcoords.y, pedcoords.z, 255, 0, 0, 255)

            --Green/Y
            DrawLine(pedcoords.x, pedcoords.y - 1.5, pedcoords.z, pedcoords.x, pedcoords.y + 1.5, pedcoords.z, 0, 255, 0, 255)

            --Blue/Z
            DrawLine(pedcoords.x, pedcoords.y, pedcoords.z - 1.5, pedcoords.x, pedcoords.y, pedcoords.z + 1.5, 0, 0, 255, 255)

            --Ped Box
            DrawBox(pedcoords.x - 0.4, pedcoords.y - 0.4, pedcoords.z - 1, pedcoords.x + 0.4, pedcoords.y + 0.4, pedcoords.z + 0.9, 200, 255, 50, 100)

            --More to come
        end
    end
end)