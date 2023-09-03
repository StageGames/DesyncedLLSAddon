---@meta Component
---@class Component
---@field owner Entity Owner entity
---@field faction Faction Faction object
---@field exists boolean Exist state
---@field key integer key
---@field id string Component id
---@field base_id string Component base id (base_id if set otherwise regular id)
---@field def table Component definition
---@field visual_id string visual id
---@field visual_def table visual definition table
---@field socket_index integer Socket index (or 0 if hidden)
---@field slot_index integer Register index
---@field slot_count integer Number of slots
---@field slots table Item slot array table
---@field register_index integer Register index
---@field register_count integer Number of registers
---@field is_empty boolean Empty state
---@field is_hidden boolean Hidden state
---@field is_active boolean Active state
---@field is_working boolean Working state
---@field is_sleeping boolean Sleeping state
---@field is_updating boolean Updating state
---@field has_move_control boolean Movement control state
---@field has_prepared_process boolean Has started process state
---@field progress_percent integer Work progress (between 0 and 100, or -1 if not working)
---@field interpolated_progress integer Work progress (between 0.0 and 1.0, or -1 if not working)
---@field ticker integer Work ticker (how many ticks elapsed since work or sleep start, or 0 if inactive)
---@field ticker_target integer Total work ticks (total ticks until work or sleep finishes, or 0 if inactive)
---@field has_extra_data boolean Result
---@field extra_data table Extra data table
---@field stored_power integer Currently stored power amount
---@field extra_power integer Amount of power supplied (positive value) or consumed (negative value)
---@field extra_transfer_range integer Extra power range in tiles
---@field power_relay_target Entity Relay target entity
---@field power_details table Details table (or nil if component has no power data)
---@field animation_speed integer Speed
---@field light_color table RGBA light color value
---@field has_active_effects boolean Result
---@field triggering_entities table Entity array
---A component object represents a component equipped by an entity.
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#component)
Component = {}

---destroys a component
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#component-destroy)
---@returns table # The final state of the extra_data value after on_remove has been called
function Component:Destroy() return {} end

---Prepare a component for removal by clearing out all item slots and reserves related to this component
---
---If the component is hidden or is marked with non_removable, the function will return false.
---
---Contained items will be moved to other inventory slots or (if the entity is movable or has a crane) dropped.
---
---The function returns true if all items could be moved away or dropped (or there are no items contained).
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#component-prepareremoval)
---@param p1 ItemSlot|nil An item slot that should be kept empty (OPTIONAL)
---@returns boolean # Result
function Component:PrepareRemoval(p1) return false end

---Get a register of this component
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#component-getregister)
---@param p1 Register|integer Register reference
---@returns Register # Register object
function Component:GetRegister(p1) return Register end

---Get the number part of a register of this component
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#component-getregisternum)
---@param p1 Register|integer Register reference
---@returns integer # Number value
function Component:GetRegisterNum(p1) return 0 end

---Get the id part of a register of this component
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#component-getregisterid)
---@param p1 Register|integer Register reference
---@returns string # Id value
function Component:GetRegisterId(p1) return "" end

---Get the definition table of the id stored in a register of this component
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#component-getregisterdef)
---@param p1 Register|integer Register reference
---@returns table # Definition table
function Component:GetRegisterDef(p1) return {} end

---Get the entity part of a register of this component
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#component-getregisterentity)
---@param p1 Register|integer Register reference
---@returns Entity # Entity value
function Component:GetRegisterEntity(p1) return Entity end

---Get the coordinate part of a register of this component
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#component-getregistercoord)
---@param p1 Register|integer Register reference
---@returns Point # Coordinate value
function Component:GetRegisterCoord(p1) return Point end

---Compare two registers of this component
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#component-registersequal)
---@param p1 Register|integer First register reference
---@param p2 Register|integer Second register reference
---@returns boolean # Comparison result
function Component:RegistersEqual(p1, p2) return false end

---Set a register of this component
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#component-setregister)
---@param p1 Register|integer Register reference
---@param p2 Register|nil Register object value
---@param p3 boolean|nil Force update the register and activate the component (OPTIONAL, default false)
function Component:SetRegister(p1, p2, p3) end

---Set the number part of a register of this component
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#component-setregisternum)
---@param p1 Register|integer Register reference
---@param p2 integer Number value
function Component:SetRegisterNum(p1, p2) end

---Set the id part of a register of this component (will overwrites the entity/coordinate part)
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#component-setregisterid)
---@param p1 Register|integer Register reference
---@param p2 string Id value
---@param p3 integer|nil Number value (OPTIONAL)
function Component:SetRegisterId(p1, p2, p3) end

---Set the entity part of a register of this component (will overwrite the id/coordinate part)
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#component-setregisterentity)
---@param p1 Register|integer Register reference
---@param p2 Entity Entity value
---@param p3 integer|nil Number value (OPTIONAL)
function Component:SetRegisterEntity(p1, p2, p3) end

---Set the coordinate part of a register of this component (will overwrite the id/entity part)
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#component-setregistercoord)
---@param p1 Register|integer Register reference
---@param p2 Point Coordinate value
---@param p3 integer|nil Number value (OPTIONAL)
function Component:SetRegisterCoord(p1, p2, p3) end

---Flag the error state on a register of this component
---
---Will stay flagged until the register value changes.
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#component-flagregistererror)
---@param p1 Register|integer Register reference
---@param p2 boolean|nil Whether to set the error state (OPTIONAL)
function Component:FlagRegisterError(p1, p2) end

---Check if a register of this component is linked from another register
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#component-registerislink)
---@param p1 Register|integer Register reference
---@returns boolean # link state
function Component:RegisterIsLink(p1) return false end

---Check if a register of this component is empty
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#component-registerisempty)
---@param p1 Register|integer Register reference
---@returns boolean # Empty
function Component:RegisterIsEmpty(p1) return false end

---Check if a register of this component is in error state
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#component-registeriserror)
---@param p1 Register|integer Register reference
---@returns boolean # Error
function Component:RegisterIsError(p1) return false end

---Check if two registers have a connection via link(s)
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#component-registerhasconnection)
---@param p1 Register|integer Register one
---@param p2 Register|integer Register two
---@param p3 Entity|nil Different entity that holds the second register (OPTIONAL)
---@returns boolean # Check result
function Component:RegisterHasConnection(p1, p2, p3) return false end

---Check if two registers have a connection via link(s)
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#component-registerhasconnection)
---@param p1 Register|integer Register one
---@param p2 Register|integer Register two
---@param p3 Component A component that holds the second register
---@returns boolean # Check result
function Component:RegisterHasConnection(p1, p2, p3) return false end

---Link a register from another register
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#component-linkregisterfromregister)
---@param p1 Register|integer Target register reference
---@param p2 Register|integer Source register reference
---@param p3 Entity|nil Different entity that holds the source register (OPTIONAL)
function Component:LinkRegisterFromRegister(p1, p2, p3) end

---Link a register from another register
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#component-linkregisterfromregister)
---@param p1 Register|integer Target register reference
---@param p2 Register|integer Source register reference
---@param p3 Component A component that holds the source register
function Component:LinkRegisterFromRegister(p1, p2, p3) end

---Unlink a register from another register
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#component-unlinkregisterfromregister)
---@param p1 Register|integer Target register reference
---@param p2 Register|integer Source register reference
---@param p3 Entity|nil Different entity that holds the source register (OPTIONAL)
function Component:UnlinkRegisterFromRegister(p1, p2, p3) end

---Unlink a register from another register
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#component-unlinkregisterfromregister)
---@param p1 Register|integer Target register reference
---@param p2 Register|integer Source register reference
---@param p3 Component A component that holds the source register
function Component:UnlinkRegisterFromRegister(p1, p2, p3) end

---Get the source index of the first relevant register link
---
---If no entity or component is specified, information of the first link containing any value will be returned.
---
---Otherwise it will look up a specific link and return only the register index.
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#component-getregisterlinksource)
---@param p1 Register|integer Target register reference
---@returns Component|nil # Component that holds the source register or nil if frame register (unless entity/component specified)
function Component:GetRegisterLinkSource(p1) return Component end

---Get the source index of the first relevant register link
---
---If no entity or component is specified, information of the first link containing any value will be returned.
---
---Otherwise it will look up a specific link and return only the register index.
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#component-getregisterlinksource)
---@param p1 Register|integer Target register reference
---@param p2 Entity Entity that holds the source register
---@returns Component|nil # Component that holds the source register or nil if frame register (unless entity/component specified)
function Component:GetRegisterLinkSource(p1, p2) return Component end

---Get the source index of the first relevant register link
---
---If no entity or component is specified, information of the first link containing any value will be returned.
---
---Otherwise it will look up a specific link and return only the register index.
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#component-getregisterlinksource)
---@param p1 Register|integer Target register reference
---@param p2 Component Component that holds the source register
---@returns Component|nil # Component that holds the source register or nil if frame register (unless entity/component specified)
function Component:GetRegisterLinkSource(p1, p2) return Component end

---Get the target index of the first relevant register link
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#component-getregisterlinktarget)
---@param p1 Register|integer Source register reference
---@param p2 Entity|nil Different entity that holds the source register (OPTIONAL)
---@returns integer|nil # Target register index relative to this component (or nil if not exist)
function Component:GetRegisterLinkTarget(p1, p2) return 0 end

---Get the target index of the first relevant register link
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#component-getregisterlinktarget)
---@param p1 Register|integer Source register reference
---@param p2 Component Component that holds the source register
---@returns integer|nil # Target register index relative to this component (or nil if not exist)
function Component:GetRegisterLinkTarget(p1, p2) return 0 end

---Get an item slot of this component
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#component-getslot)
---@param p1 integer Slot number (starts at 1)
---@returns ItemSlot # Item slot object
function Component:GetSlot(p1) return ItemSlot end

---Clear activation change flags that would trigger the on_update callback in the next tick.
---
---If the on_update callback causes modification to the same item slots that triggers its activation,
---
---unless this function is called, it will be activated again in the next tick due to its own change.
---
---Changes to registers made with the component:SetRegister function during on_update are automatically cleared.
---
---Be aware this does not work for the activation modes 'OnAnyItemSlotChange'.
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#component-clearactivationchangeflags)
function Component:ClearActivationChangeFlags() end

---Set up a process that consumes ingredients and generates output items
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#component-prepareproduceprocess)
---@param p1 table Ingredients table (item_id keys and count values)
---@param p2 table|nil Outputs table (item_id keys and count values) (when nil, act like PrepareConsumeProcess)
---@param p3 integer|nil Order count (if multiple processes are queued up) (OPTIONAL, default 1)
---@returns Register|nil # A register value describing the first missing ingredient (or nil if all ingredients are available)
function Component:PrepareProduceProcess(p1, p2, p3) return Register end

---Set up a process that generates output items
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#component-preparegenerateprocess)
---@param p1 table Outputs table (item_id keys and count values)
---@returns boolean # Returns true if inventory space for outputs are available now and process can start
function Component:PrepareGenerateProcess(p1) return false end

---Set up a process that consumes ingredients
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#component-prepareconsumeprocess)
---@param p1 table Ingredients table (item_id keys and count values)
---@param p2 integer|nil Order count (if multiple processes are queued up) (OPTIONAL, default 1)
---@returns Register|nil # A register value describing the first missing ingredient (or nil if all ingredients are available)
function Component:PrepareConsumeProcess(p1, p2) return Register end

---Set up a process that consumes ingredients
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#component-prepareconsumeprocess)
---@param p1 table Ingredients table (item_id keys and count values)
---@param p2 ItemSlot Consume from specific item slot
---@returns Register|nil # A register value describing the first missing ingredient (or nil if all ingredients are available)
function Component:PrepareConsumeProcess(p1, p2) return Register end

---Finish a prepared process (add generated items and remove consumed ingredients)
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#component-fulfillprocess)
function Component:FulfillProcess() end

---Cancel ongoing process and related orders from this component
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#component-cancelprocess)
function Component:CancelProcess() end

---If there is a prepared process, get an item slot from which items are consumed from.
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#component-getprocessconsumeslot)
---@param p1 integer|nil This selects the slot when there are multiple consume slots (OPTIONAL, default 1)
---@returns ItemSlot|nil # Consuming item slot (nil if no active consume process or invalid argument)
function Component:GetProcessConsumeSlot(p1) return ItemSlot end

---If there is a prepared process, get an item slot from which items are output to.
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#component-getprocessoutputslot)
---@param p1 integer|nil This selects the slot when there are multiple output slots (OPTIONAL, default 1)
---@returns ItemSlot|nil # Output item slot (nil if no active generate process or invalid argument)
function Component:GetProcessOutputSlot(p1) return ItemSlot end

---Order an item through this component
---
---The order will stay active while this component works or sleeps but gets canceled
---
---when the component becomes inactive or when CancelProcess is called.
---
---If an order already exists on the same item slot it will be modified to the new amount requested.
---
---Will return nil on invalid item or amount or if not enough free space available in the slot.
---
---If the item slot is omitted, multiple orders can be created covering the entire inventory.
---
---Without a specific item slot, no new orders will be created if the inventory already contains
---
---the requested amount (and nil will be returned). If Amount is less than already ordered or 0
---
---existing order(s) will get adjusted to the new amount.
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#component-orderitem)
---@param p1 ItemSlot|nil Order items into this slot (OPTIONAL)
---@param p2 string Item id to be ordered
---@param p3 integer Amount to be ordered
---@returns integer # Order ID created or modified
function Component:OrderItem(p1, p2, p3) return 0 end

---Turns component to look at a target entity or location
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#component-rotatecomponent)
---@param p1 Entity Target entity to look at
---@param p2 boolean|nil If the entity has movement rotate it instead (OPTIONAL, default false)
function Component:RotateComponent(p1, p2) end

---Turns component to look at a target entity or location
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#component-rotatecomponent)
---@param p1 Component Target component whose owning entity to look at
---@param p2 boolean|nil If the entity has movement rotate it instead (OPTIONAL, default false)
function Component:RotateComponent(p1, p2) end

---Turns component to look at a target entity or location
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#component-rotatecomponent)
---@param p1 integer Look-at target location X
---@param p2 integer Look-at target location Y
---@param p3 boolean|nil If the entity has movement rotate it instead (OPTIONAL, default false)
function Component:RotateComponent(p1, p2, p3) end

---Turns component to look at a target entity or location
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#component-rotatecomponent)
---@param p1 Point Look-at target location
---@param p2 boolean|nil If the entity has movement rotate it instead (OPTIONAL, default false)
function Component:RotateComponent(p1, p2) end

---Turns component to look at a target entity or location
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#component-rotatecomponent)
---@param p1 integer Offset degree amount to rotate (negative or positive)
function Component:RotateComponent(p1) end

---Request the entity to move on behalf of this component (if movement is needed)
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#component-requeststatemove)
---@param p1 Entity Target entity to move next to
---@param p2 integer|nil Range of how close by to stop (OPTIONAL, default 1)
---@param p3 boolean|nil Keep moving when component sleeps or starts working (OPTIONAL, default false)
---@returns boolean # Returns true if movement is needed, otherwise the entity is already in place
function Component:RequestStateMove(p1, p2, p3) return false end

---Request the entity to move on behalf of this component (if movement is needed)
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#component-requeststatemove)
---@param p1 Component Target component whose owning entity to move next to
---@param p2 integer|nil Range of how close by to stop (OPTIONAL, default 1)
---@param p3 boolean|nil Keep moving when component sleeps or starts working (OPTIONAL, default false)
---@returns boolean # Returns true if movement is needed, otherwise the entity is already in place
function Component:RequestStateMove(p1, p2, p3) return false end

---Request the entity to move on behalf of this component (if movement is needed)
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#component-requeststatemove)
---@param p1 integer Move location X
---@param p2 integer Move location Y
---@param p3 integer|nil Range of how close by to stop (OPTIONAL, default 0)
---@param p4 boolean|nil Keep moving when component sleeps or starts working (OPTIONAL, default false)
---@returns boolean # Returns true if movement is needed, otherwise the entity is already in place
function Component:RequestStateMove(p1, p2, p3, p4) return false end

---Request the entity to move on behalf of this component (if movement is needed)
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#component-requeststatemove)
---@param p1 Point Move location
---@param p2 integer|nil Range of how close by to stop (OPTIONAL, default 0)
---@param p3 boolean|nil Keep moving when component sleeps or starts working (OPTIONAL, default false)
---@returns boolean # Returns true if movement is needed, otherwise the entity is already in place
function Component:RequestStateMove(p1, p2, p3) return false end

---Request the component to sleep
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#component-setstatesleep)
---@param p1 integer|nil Number of ticks to sleep (OPTIONAL, default 5)
---@param p2 boolean|nil Keep movement control (OPTIONAL, default false)
function Component:SetStateSleep(p1, p2) end

---Request the component to work for a duration
---
---If the component is required to prevent the entity from moving while working, `RequestStateMove` needs to be called first.
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#component-setstatestartwork)
---@param p1 integer|nil Number of ticks to work (OPTIONAL, default 5)
---@param p2 boolean|nil Refresh flag, if true, the component will be updated every 5 ticks during work (OPTIONAL, default false)
function Component:SetStateStartWork(p1, p2) end

---Request the component to work for a duration
---
---If the component is required to prevent the entity from moving while working, `RequestStateMove` needs to be called first.
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#component-setstatestartwork)
---@param p1 integer Total number of ticks to work
---@param p2 integer Refresh tick count, will update the component periodically during work (max 255)
function Component:SetStateStartWork(p1, p2) end

---Notify other components waiting for this with CC_OTHER_COMP_FAIL_WORK
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#component-notifyworkfailed)
function Component:NotifyWorkFailed() end

---Continue work that was started with SetStateStartWork
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#component-setstatecontinuework)
function Component:SetStateContinueWork() end

---Get called back the next time the first register of this component changes
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#component-waitforfirstregisterchange)
function Component:WaitForFirstRegisterChange() end

---Get called back the next time any register of this component changes
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#component-waitforcomponentregisterchange)
function Component:WaitForComponentRegisterChange() end

---Get called back the next time the first item slot of this component changes
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#component-waitforfirstitemslotchange)
function Component:WaitForFirstItemSlotChange() end

---Get called back the next time any item slot of this component changes
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#component-waitforcomponentitemslotchange)
function Component:WaitForComponentItemSlotChange() end

---Get called back the next time the entity has low power
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#component-waitforlowpower)
function Component:WaitForLowPower() end

---Get called back the next time the battery charge is empty
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#component-waitforpowerstoredempty)
function Component:WaitForPowerStoredEmpty() end

---Get called back when another component finishes work
---
---It is not possible to wait on multiple components simultaneously
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#component-waitforothercompfinish)
---@param p1 Component Another component to get called back the next time it finishes work
function Component:WaitForOtherCompFinish(p1) end

---Activate a component (trigger on_update)
---
---This is most useful for components that have the activation mode set to 'Manual', but it can also be used for other components.
---
---Usage of Activate cannot be mixed with the WaitFor* functions.
---
---Cannot be called from inside the on_update function (check with `is_updating`).
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#component-activate)
function Component:Activate() end

---Deactivate a component (stop triggering on_update)
---
---This will abort what has been started with a SetState, RequestState or WaitFor call.
---
---Cannot be called from inside the on_update function (check with `is_updating`).
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#component-shutdown)
function Component:Shutdown() end

---Convert a numerical cause variable received in on_update to a string (for debugging purpose)
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#component-causetostring)
---@param p1 integer Cause
function Component:CauseToString(p1) end

---Search for the closest entity of all matching entities inside this components trigger_radius
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#component-findclosesttriggeringentity)
---@param p1 function Callback called for each entity in range in order of distance, return true from this to stop the search
---@returns Entity|nil # The entity for which the callback returned true (or nil if none)
function Component:FindClosestTriggeringEntity(p1) return Entity end

---Spawn particle/sound effect on this component
---
---Only possible on entities which are placed on the map (avoid calling it in on_add, use effect property on definition instead for automatically spawning effects)
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#component-playeffect)
---@param p1 string Effect ID
---@param p2 string|nil Socket name (OPTIONAL)
---@param p3 Entity|nil Target entity (OPTIONAL)
---@param p4 integer|nil Target render instance (OPTIONAL)
---@returns integer # Effect instance index (only for looping effects, can be used with `entity:StopEffect`)
function Component:PlayEffect(p1, p2, p3, p4) return 0 end

---Play effect for working component
---
---Similar to PlayEffect but only starts the effect if not already playing an effect and if power is available. Will also stop playing effects if power is not available.
---
---This is best used together with SetStateStartWork and passing true to its refresh flag argument.
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#component-playworkeffect)
---@param p1 string Effect ID
---@param p2 string|nil Socket name (OPTIONAL)
---@param p3 Entity|nil Target entity (OPTIONAL)
---@param p4 integer|nil Target render instance (OPTIONAL)
function Component:PlayWorkEffect(p1, p2, p3, p4) end

---Stop all looping effects playing on this component
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#component-stopeffects)
function Component:StopEffects() end

