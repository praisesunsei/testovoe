-- CraftOS fastfetch.lua

local w,h = term.getSize()
local peri = peripheral.getNames()
local id = os.getComputerID()

if not http then 
    print("HTTP API отключен в настройках сервера!")
    return 
end

term.clear()
term.setCursorPos(1,1)

-- irl or ascii 35-167 does work if fit in 51x18
local success, response = http.get("https://pastebin.com/raw/pz3kS6nH")
local logo = success and response.readAll() or [[
 ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
]]

print(logo)
print(" ░░ CRAFTOS " .. _VERSION .. " ░░@" .. id .. " ░░")
print(" ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓")
print("")
print(" OS:       CraftOS " .. _VERSION)
print(" Host:     computer-" .. id)
print(" Size:     " .. w .. "x" .. h)
print(" GPU:      " .. (_G.gpu and "✓" or "✗"))
print(" Devices:  " .. #peri)
print(" Disks:    " .. #fs.find("/disk"))
print(" Uptime:   " .. math.floor(os.epoch("ingame")/1000) .. "s")

if success then response.close() end
