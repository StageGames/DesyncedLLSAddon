---@class Register
---@field num integer Number
---@field id string Id
---@field def table Definition table (or nil if none or unknown id)
---@field value_id string Value id
---@field item_id string Item id
---@field frame_id string Frame id
---@field component_id string Component id
---@field tech_id string Tech id
---@field entity Entity Entity
---@field coord Point Coordinate
---@field raw_entity Entity Entity
---@field is_link boolean link state
---@field is_empty boolean Result
---@field raw_is_empty boolean Result
---@field is_error boolean Error
---A register object represents the content of a register of an entity.
---
---Unlike many other objects, it is not a reference to a game object but a copy.
---
---Therefore after modification, the value needs to be written back with SetRegister.
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#register)
Register = {}

---Clear contents
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#register-clear)
function Register:Clear() end

---Copy contents from another register or table
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#register-init)
---@param p1 Register New register object value
function Register:Init(p1) end

