---@class ItemSlot
---@field id string Item id (or nil if no item in slot)
---@field def table Item definition (or nil if no item in slot)
---@field stack integer Amount (is 0 if no item in slot)
---@field max_stack integer Amount (is 0 if no item in slot)
---@field reserved_stack integer Reserved amount
---@field unreserved_stack integer Unreserved amount
---@field reserved_space integer Reserved free space count
---@field unreserved_space integer Unreserved free space count
---@field has_order boolean Check result
---@field owner Entity Entity
---@field exists boolean Exist state
---@field entity Entity Entity (is nil if no entity in slot)
---@field reserved_entity Entity Entity (is nil if no entity is reserved to come back to this slot)
---@field component Component Component object or nil if none
---@field type string Slot type
---@field has_extra_data boolean Result
---@field extra_data table Extra data table
---@field locked boolean Locked
---An item slot object represents one slot of the inventory of an entity.
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#itemslot)
ItemSlot = {}

---Sets the content of an empty slot
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#itemslot-setitemandstack)
---@param p1 string Item id
---@param p2 integer Amount
---@param p3 table|nil Extra data table (OPTIONAL, default nil)
function ItemSlot.SetItemAndStack(p1, p2, p3) end

---Add amounts in this slot (must have an item in it).
---
---If the new amount is higher than `stack + unreserved_space` it will fail with an error.
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#itemslot-addstack)
---@param p1 integer Amount to be added
function ItemSlot.AddStack(p1) end

---Add or remove amounts in this slot (must have an item in it).
---
---If the new amount is lower than `reserved_stack` it will fail with an error.
---
---If the new amount is zero, the item will be cleared from the slot
---
---and the stack can't be modified again until the item is put in again.
---
---This cannot be used to remove stack of something with extra_data (use Clear)
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#itemslot-removestack)
---@param p1 integer Amount to be removed
function ItemSlot.RemoveStack(p1) end

---Clear the content in this slot
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#itemslot-clear)
---@returns table # The extra_data table before the slot was cleared
function ItemSlot.Clear() end

---Sets the item and locks an otherwise empty slot
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#itemslot-setlockeditem)
---@param p1 string|nil Item id (or nil to change a locked slot to empty)
function ItemSlot.SetLockedItem(p1) end

---Swap the entire contents (including reservations) of two slots of the same slot type on the same inventory
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#itemslot-swap)
---@param p1 ItemSlot Other item slot (must be of the same slot type and on the same inventory)
function ItemSlot.Swap(p1) end

---Move as much as possible (including reservations) into another slot on the same inventory
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#itemslot-move)
---@param p1 ItemSlot Target item slot (must be on the same inventory and be empty or have the same item)
---@param p2 integer|nil Limit amount to be moved (OPTIONAL, default everything)
---@returns boolean # True if any items or reservations have been moved
function ItemSlot.Move(p1, p2) end

---Gets all the reserve information relative to this slot
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#itemslot-getreserveinfo)
---@returns table # a set of tables of each reserve info related to this slot
function ItemSlot.GetReserveInfo() end

---Cancel all orders related to this item slot
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#itemslot-cancelorders)
function ItemSlot.CancelOrders() end

---The amount of free space actually available to be filled with a specific item (slot can be empty)
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#itemslot-getunreservedspacefor)
---@param p1 string Item id
---@returns integer # Unreserved free space count
function ItemSlot.GetUnreservedSpaceFor(p1) end

