#!/usr/bin/env lua
-- Простой fetch на чистом Lua

local version = _VERSION or "5.x"
local osname = os.getenv("OS") or "Unknown"
local user = os.getenv("USER") or "luauser"

print(" ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓")
print(" ░░ Lua " .. version .. " on " .. osname .. " ░░@" .. user .. " ░░")
print(" ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓")
print("")
print(" OS:       " .. osname)
print(" Lua:      " .. version)
print(" User:     " .. user)
print(" Time:     " .. os.date("%H:%M:%S"))
print(" PID:      " .. (os.getpid and os.getpid() or "N/A"))
print("")
print(" ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓")
