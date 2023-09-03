---@meta Notification
---@class Notification
Notification = {}

---@class NotificationOptions
---@field tooltip string|nil
---@field duration integer|nil seconds
---@field on_click function|nil
---@field on_secondary function|nil
NotificationOptions = {}

---@param id string
---@param icon string
---@param title string
---@param text string
---@param opts NotificationOptions
function Notification.Add(id, icon, title, text, opts) end

---@param id string
function Notification.Clear(id) end
