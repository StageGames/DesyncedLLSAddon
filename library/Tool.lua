---@meta Tool
---The tool module contains utility functions
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#tool)
Tool = {}

---Create a checksum of a value
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#tool-hash)
---@param p1 any Value (can be a table or of any other type)
---@returns integer # Checksum
function Tool.Hash(p1) return 0 end

---Convert a lua table to a string
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#tool-tabletostring)
---@param p1 table Table
---@param p2 string A one character identifier to be included in the prefix of the encoded string
---@returns string # Encoded string
function Tool.TableToString(p1, p2) return "" end

---Convert a string back to a lua table
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#tool-stringtotable)
---@param p1 string Encoded string
---@param p2 string A one character identifier to check in the prefix of the encoded string
---@returns table # Table
function Tool.StringToTable(p1, p2) return {} end

---Store a LUA table into the OS clipboard
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#tool-setclipboard)
---@param p1 table Table to set the clipboard to
---@param p2 string A one character identifier to be included in the prefix of the encoded string
function Tool.SetClipboard(p1, p2) end

---Retrieve a LUA table from the OS clipboard
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#tool-getclipboard)
---@param p1 string A one character identifier to check in the prefix of the encoded string
---@returns table # Clipboard table content
function Tool.GetClipboard(p1) return {} end

---Format a date and time value as a string
---
---Will use current time if no timestamp gets passed.
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#tool-getdatestr)
---@param p1 string|nil Date format (OPTIONAL, defaults to "%Y.%m.%d-%H.%M.%S")
---@returns string # Formatted date/time string
function Tool.GetDateStr(p1) return "" end

---Format a date and time value as a string
---
---Will use current time if no timestamp gets passed.
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#tool-getdatestr)
---@param p1 integer Unix timestamp
---@param p2 string|nil Date format (OPTIONAL, defaults to "%Y.%m.%d-%H.%M.%S")
---@returns string # Formatted date/time string
function Tool.GetDateStr(p1, p2) return "" end

---Format a time duration to a string (HH:MM:SS)
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#tool-gettimedurationstr)
---@param p1 integer Seconds
---@returns string # Formatted time duration string
function Tool.GetTimeDurationStr(p1) return "" end

---Create an empty register object
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#tool-newregisterobject)
---@param p1 table|nil Copy contents from a table (OPTIONAL)
---@returns Register # New register object
function Tool.NewRegisterObject(p1) return Register end

---Create an empty register object
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#tool-newregisterobject)
---@param p1 Register|nil Copy contents from another register (OPTIONAL)
---@returns Register # New register object
function Tool.NewRegisterObject(p1) return Register end

