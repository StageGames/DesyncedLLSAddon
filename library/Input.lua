---@meta Input
---The Input module contains Input functions
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#input)
Input = {}

---Check if the shift key is pressed (either left or right shift key)
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#input-isshiftdown)
---@returns boolean # Key state
function Input.IsShiftDown() return false end

---Check if the control key is pressed (either left or right control key)
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#input-iscontroldown)
---@returns boolean # Key state
function Input.IsControlDown() return false end

---Check if the alt key is pressed (either left or right alt key)
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#input-isaltdown)
---@returns boolean # Key state
function Input.IsAltDown() return false end

---Check if a specific key is pressed
---
---This does not work while a modal UI view is open
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#input-iskeydown)
---@param p1 string Key name
---@returns boolean # Key pressed state
function Input.IsKeyDown(p1) return false end

---Bind a callback function to a named input action
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#input-bindaction)
---@param p1 string Action name
---@param p2 string Key event (one of 'Pressed', 'Released', 'Repeat', 'DoubleClick', 'Axis')
---@param p3 function Lua Function
---@returns integer # Binding handle (for use with RemoveActionBinding)
function Input.BindAction(p1, p2, p3) return 0 end

---Bind a callback function to a named input action
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#input-bindaction)
---@param p1 string Action name
---@param p2 string Key event (one of 'Pressed', 'Released', 'Repeat', 'DoubleClick', 'Axis')
---@param p3 string Built in game function name
---@returns integer # Binding handle (for use with RemoveActionBinding)
function Input.BindAction(p1, p2, p3) return 0 end

---Bind a callback function to a named input axis
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#input-bindaxis)
---@param p1 string Axis name
---@param p2 function Lua Function
function Input.BindAxis(p1, p2) end

---Bind a callback function to a named input axis
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#input-bindaxis)
---@param p1 string Axis name
---@param p2 string Built in game function name
function Input.BindAxis(p1, p2) end

---Remove bound callback functions from a named input action
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#input-removeactionbinding)
---@param p1 string Action name
---@param p2 integer|nil Action handle (OPTIONAL, return value of BindAction, clear all if not passed)
function Input.RemoveActionBinding(p1, p2) end

---Remove all bound callback functions from a named input axis
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#input-removeaxisbinding)
---@param p1 string Axis name
function Input.RemoveAxisBinding(p1) end

---Map a physical input key to a named input action
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#input-addactionmapping)
---@param p1 string Action name
---@param p2 string Key name
---@param p3 table|nil Options (OPTIONAL, default none)
function Input.AddActionMapping(p1, p2, p3) end

---Map a physical input key to a named input axis
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#input-addaxismapping)
---@param p1 string Axis name
---@param p2 string Key name
---@param p3 integer|nil Scale (OPTIONAL, default 1.0)
function Input.AddAxisMapping(p1, p2, p3) end

---Remove previously mapped physical inputs from a named input action
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#input-removeactionmapping)
---@param p1 string Action name
---@param p2 string|nil Key name (OPTIONAL, remove all if not given)
function Input.RemoveActionMapping(p1, p2) end

---Remove previously mapped physical inputs from a named input axis
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#input-removeaxismapping)
---@param p1 string Axis name
---@param p2 string|nil Key name (OPTIONAL, remove all if not given)
function Input.RemoveAxisMapping(p1, p2) end

---Get a table with all key names
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#input-getbindingnames)
---@returns table # Table with key ids and localized key names
function Input.GetBindingNames() return {} end

---Set custom input processor which can pre-process all input events
---
---If the passed lua function returns boolean true the event will be forwarded to the games regular input handling
---
---is_down is relevant for button events (keyboard, mouse buttons, gamepad buttons)
---
---axis is a numerical value for analog inputs (gamepad analog inputs, mouse screen position)
---
---mouse_delta is a numerical value of the change for mouse inputs (mouse position, mouse wheel)
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#input-setinputprocessor)
---@param callback fun(key_name: string, is_down: boolean, axis, mouse_delta): boolean Lua function called with arguments (key_name, is_down, axis, mouse_delta)
---@param unscaled_deadzone boolean|nil Pass true to not apply dead zone scaling to analog gampead inputs (OPTIONAL, default false)
---@param unfiltered_presses boolean|nil Pass true to not filter out periodical repeat button press events (OPTIONAL, default false)
function Input.SetInputProcessor(callback, unscaled_deadzone, unfiltered_presses) end

---Clear the active custom input processor
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#input-clearinputprocessor)
function Input.ClearInputProcessor() end

