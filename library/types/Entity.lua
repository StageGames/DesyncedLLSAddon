---@class Entity
---@field key integer key
---@field id string frame id
---@field def table frame definition table
---@field visual_id string visual id
---@field visual_def table visual definition table
---@field components table Component array table
---@field slots table Item slot array table
---@field has_extra_data boolean Result
---@field extra_data table Extra data table
---@field faction Faction|string Faction object
---@field visibility_range integer Visibility range
---@field component_boost integer Component efficiency percent
---@field move_boost integer Move speed boost percent
---@field max_health integer Maximum health
---@field health integer Health
---@field is_damaged boolean Damaged state
---@field exists boolean Exist state
---@field efficiency integer Efficiency from 0 to 100 (or nil if entity has no power data)
---@field power_grid_index integer Grid index (or nil if entity is not connected to a power grid)
---@field has_power boolean Power availability
---@field extra_power integer Amount of power supplied (positive value) or consumed (negative value)
---@field extra_transfer_range integer Extra power range in tiles
---@field power_range integer power range
---@field power_details table Details table (or nil if entity has no power data)
---@field battery_percent integer Percentage 0 to 100
---@field animation_speed integer animation speed
---@field light_color table RGBA light color value
---@field location Point Location
---@field placed_location Point Placed Location
---@field location_hash integer Location hash
---@field size Point Size
---@field rotation integer Rotation (0 to 3)
---@field move_goal Point Goal coordinate (or nil if not moving)
---@field is_moving boolean Movement state
---@field has_movement boolean True if the entity has movement
---@field is_placed boolean Placed on the map state (when true, is_docked is always false)
---@field is_docked boolean Docked state (when true, is_placed is always false)
---@field docked_garage Entity Garage entity (nil if not docked)
---@field disconnected boolean Disconnected state
---@field powered_down boolean Power down state
---@field stealth boolean Stealth state
---@field lootable boolean Lootable flag
---@field has_blight_shield boolean Flag value
---@field has_landing_pad boolean Flag value
---@field want_goto_callback boolean Flag value
---@field logistics_channel_1 boolean Flag value
---@field logistics_channel_2 boolean Flag value
---@field logistics_channel_3 boolean Flag value
---@field logistics_channel_4 boolean Flag value
---@field logistics_supplier boolean Flag value
---@field logistics_requester boolean Flag value
---@field logistics_carrier boolean Flag value
---@field logistics_crane_only boolean Flag value
---@field logistics_transport_route boolean Flag value
---@field logistics_high_priority boolean Flag value
---@field has_crane boolean Flag value
---@field crane_range integer Crane range (0 = disabled, 255 = maximum)
---@field is_construction boolean Construction site
---@field state_idle boolean State value
---@field state_path_blocked boolean State value
---@field state_unpowered boolean State value
---@field state_emergency boolean State value
---@field state_broken boolean State value
---@field state_custom_1 boolean State value
---@field state_custom_2 boolean State value
---@field state_custom_3 boolean State value
---@field state_custom_4 boolean State value
---@field idle_mode string Mode (IDLE/STORE/MOVE/ORDER/COMPONENT/INTERACT/RETURN)
---@field controlling_component Component Component in control
---@field active_order table Order info (or nil)
---@field has_component_list boolean Result
---@field component_count integer number of components (0 if the entity has no component list)
---@field slot_count integer number item slots (0 if the entity has no inventory)
---@field register_count integer number of registers (0 if the entity has no registry)
---@field frame_register_count integer Number of frame registers (or nil if the entity has no registry)
---@field most_relevant_state string most relevant state name
---@field all_states table an array of all state names affecting the unit
---@field render_instances integer Count
---@field has_active_effects boolean Result
---@field idle_ticks integer Idle tick count
---@field interpolated_location Point Interpolated 3D location (x, y and z as floating point numbers)
---@field interpolated_center Point Interpolated 3D position (x, y and z as floating point numbers)
---@field interpolated_rotation integer Interpolated rotation in degrees
---@field interpolated_direction Point Interpolated 3D direction (x, y and z as floating point numbers)
---An entity object represents a single entity that can be placed in the world.
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#entity)
Entity = {}

---Place this entity on the map (or teleport it if it is already placed)
---
---Unless the last parameter is false, automatically selects a close location if the passed coordinates are occupied
---
---If rotation argument is not passed, it will keep the previous rotation
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#entity-place)
---@param p1 integer Location X
---@param p2 integer Location Y
---@param p3 integer|nil Rotation (0 to 3) (OPTIONAL)
---@param p4 boolean|nil Place nearby if blocking (OPTIONAL, default true)
---@returns boolean|nil # Returns boolean false if failed to place, otherwise nil
function Entity:Place(p1, p2, p3, p4) return false end

---Place this entity on the map (or teleport it if it is already placed)
---
---Unless the last parameter is false, automatically selects a close location if the passed coordinates are occupied
---
---If rotation argument is not passed, it will keep the previous rotation
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#entity-place)
---@param p1 Point Location
---@param p2 integer|nil Rotation (0 to 3) (OPTIONAL)
---@param p3 boolean|nil Place nearby if blocking (OPTIONAL, default true)
---@returns boolean|nil # Returns boolean false if failed to place, otherwise nil
function Entity:Place(p1, p2, p3) return false end

---Remove this entity from the map
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#entity-unplace)
function Entity:Unplace() end

---Destroy this entity
---
---Can automatically drop all components and inventory items held by it, as well as additional items
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#entity-destroy)
---@param p1 boolean|nil Flag if items and components held by this entity should be dropped (OPTIONAL, default true)
---@param p2 table|nil Table of additional items that drop (item_id keys and count values) (OPTIONAL)
---@param p3 Entity|nil If set, try to store items in this entities inventory instead of dropping them to the ground (OPTIONAL)
function Entity:Destroy(p1, p2, p3) end

---Create and add a new component
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#entity-addcomponent)
---@param p1 string Component id
---@param p2 string|nil Add mode ("auto" will find a suitable socket, "hidden" will add the component hidden) (OPTIONAL, default "auto")
---@param p3 table|nil Extra data table (OPTIONAL, default nil)
---@returns Component|nil # Component object (or nil on error)
function Entity:AddComponent(p1, p2, p3) return Component end

---Create and add a new component
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#entity-addcomponent)
---@param p1 string Component id
---@param p2 integer Socket index to place the component (starts at 1)
---@param p3 table|nil Extra data table (OPTIONAL, default nil)
---@returns Component|nil # Component object (or nil on error)
function Entity:AddComponent(p1, p2, p3) return Component end

---Get an existing component at a specific socket index
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#entity-getcomponent)
---@param p1 integer Socket index (starts at 1)
---@returns Component|nil # Component object or nil if not exist
function Entity:GetComponent(p1) return Component end

---Swap the content of two sockets
---
---One or both sockets must contain a component which must fit into the other socket
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#entity-swapsockets)
---@param p1 integer First socket index
---@param p2 integer Second socket index
---@returns boolean # If it was successful
function Entity:SwapSockets(p1, p2) return false end

---Get an existing hidden component
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#entity-gethiddencomponent)
---@param p1 integer|nil Hidden component number (starts at 1) (OPTIONAL, default 1)
---@returns Component|nil # Component object or nil if not exist
function Entity:GetHiddenComponent(p1) return Component end

---Count the components of the same type on an entity
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#entity-countcomponents)
---@param p1 string Component id
---@returns integer # number of the components
function Entity:CountComponents(p1) return 0 end

---Find an existing component
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#entity-findcomponent)
---@param p1 string Component id
---@param p2 boolean|nil Set to true to query the base_id value of component definitions if it exists (OPTIONAL, default false)
---@param p3 integer|nil Component number (if there are multiples of the same component) (OPTIONAL, default 1)
---@returns Component|nil # Component object or nil if not found
function Entity:FindComponent(p1, p2, p3) return Component end

---Check if a free socket of large enough size is available to equip a component
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#entity-getfreesocket)
---@param p1 string Component id
---@returns integer|nil # Socket index it can be equipped into or nil if not possible (or if passed id is not a component)
function Entity:GetFreeSocket(p1) return 0 end

---Test if a component fits into a socket (regardless if there is already something equipped in the socket)
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#entity-checksocketsize)
---@param p1 string Component id
---@param p2 integer Socket index to test the component against (starts at 1)
---@returns boolean # True if the socket is large enough to hold the component
function Entity:CheckSocketSize(p1, p2) return false end

---Get a register of this entity
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#entity-getregister)
---@param p1 Register|integer Register reference
---@returns Register # Register object
function Entity:GetRegister(p1) return Register end

---Get a list of links on the entity
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#entity-getregisterlinks)
---@param p1 boolean|nil Also return cross-entity links (OPTIONAL, default false)
---@returns table # Array of links
function Entity:GetRegisterLinks(p1) return {} end

---Get the number part of a register of this entity
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#entity-getregisternum)
---@param p1 Register|integer Register reference
---@returns integer # Number value
function Entity:GetRegisterNum(p1) return 0 end

---Get the id part of a register of this entity
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#entity-getregisterid)
---@param p1 Register|integer Register reference
---@returns string # Id value
function Entity:GetRegisterId(p1) return "" end

---Get the definition table of the id stored in a register of this entity
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#entity-getregisterdef)
---@param p1 Register|integer Register reference
---@returns table # Definition table
function Entity:GetRegisterDef(p1) return {} end

---Get the entity part of a register of this entity
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#entity-getregisterentity)
---@param p1 Register|integer Register reference
---@returns Entity # Entity value
function Entity:GetRegisterEntity(p1) return Entity end

---Get the coordinate part of a register of this entity
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#entity-getregistercoord)
---@param p1 Register|integer Register reference
---@returns Point # Coordinate value
function Entity:GetRegisterCoord(p1) return Point end

---Compare two registers of this entity
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#entity-registersequal)
---@param p1 Register|integer First register reference
---@param p2 Register|integer Second register reference
---@returns boolean # Comparison result
function Entity:RegistersEqual(p1, p2) return false end

---Set a register of this entity
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#entity-setregister)
---@param p1 Register|integer Register reference
---@param p2 Register Register object value
---@param p3 boolean|nil Force update the register and activate components (OPTIONAL, default false)
function Entity:SetRegister(p1, p2, p3) end

---Set the number part of a register of this entity
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#entity-setregisternum)
---@param p1 Register|integer Register reference
---@param p2 integer Number value
function Entity:SetRegisterNum(p1, p2) end

---Set the id part of a register of this entity (will overwrites the entity/coordinate part)
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#entity-setregisterid)
---@param p1 Register|integer Register reference
---@param p2 string Id value
---@param p3 integer|nil Number value (OPTIONAL)
function Entity:SetRegisterId(p1, p2, p3) end

---Set the entity part of a register of this entity (will overwrite the id/coordinate part)
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#entity-setregisterentity)
---@param p1 Register|integer Register reference
---@param p2 Entity Entity value
---@param p3 integer|nil Number value (OPTIONAL)
function Entity:SetRegisterEntity(p1, p2, p3) end

---Set the coordinate part of a register of this entity (will overwrite the id/entity part)
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#entity-setregistercoord)
---@param p1 Register|integer Register reference
---@param p2 Point Coordinate value
---@param p3 integer|nil Number value (OPTIONAL)
function Entity:SetRegisterCoord(p1, p2, p3) end

---Flag the error state on a register of this entity
---
---Will stay flagged until the register value changes.
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#entity-flagregistererror)
---@param p1 Register|integer Register reference
---@param p2 boolean|nil Whether to set the error state (OPTIONAL)
function Entity:FlagRegisterError(p1, p2) end

---Check if a register of this entity is linked from another register
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#entity-registerislink)
---@param p1 Register|integer Register reference
---@returns boolean # link state
function Entity:RegisterIsLink(p1) return false end

---Check if a register of this entity is empty
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#entity-registerisempty)
---@param p1 Register|integer Register reference
---@returns boolean # Empty
function Entity:RegisterIsEmpty(p1) return false end

---Check if a register of this entity is in error state
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#entity-registeriserror)
---@param p1 Register|integer Register reference
---@returns boolean # Error
function Entity:RegisterIsError(p1) return false end

---Check if two registers have a connection via link(s)
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#entity-registerhasconnection)
---@param p1 Register|integer Register one
---@param p2 Register|integer Register two
---@param p3 Entity|nil Different entity that holds the second register (OPTIONAL)
---@returns boolean # Check result
function Entity:RegisterHasConnection(p1, p2, p3) return false end

---Check if two registers have a connection via link(s)
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#entity-registerhasconnection)
---@param p1 Register|integer Register one
---@param p2 Register|integer Register two
---@param p3 Component A component that holds the second register
---@returns boolean # Check result
function Entity:RegisterHasConnection(p1, p2, p3) return false end

---Link a register from another register
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#entity-linkregisterfromregister)
---@param p1 Register|integer Target register reference
---@param p2 Register|integer Source register reference
---@param p3 Entity|nil Different entity that holds the source register (OPTIONAL)
function Entity:LinkRegisterFromRegister(p1, p2, p3) end

---Link a register from another register
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#entity-linkregisterfromregister)
---@param p1 Register|integer Target register reference
---@param p2 Register|integer Source register reference
---@param p3 Component A component that holds the source register
function Entity:LinkRegisterFromRegister(p1, p2, p3) end

---Unlink a register from another register
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#entity-unlinkregisterfromregister)
---@param p1 Register|integer Target register reference
---@param p2 Register|integer Source register reference
---@param p3 Entity|nil Different entity that holds the source register (OPTIONAL)
function Entity:UnlinkRegisterFromRegister(p1, p2, p3) end

---Unlink a register from another register
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#entity-unlinkregisterfromregister)
---@param p1 Register|integer Target register reference
---@param p2 Register|integer Source register reference
---@param p3 Component A component that holds the source register
function Entity:UnlinkRegisterFromRegister(p1, p2, p3) end

---Get the source index of the first relevant register link
---
---If no entity or component is specified, information of the first link containing any value will be returned.
---
---Otherwise it will look up a specific link and return only the register index.
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#entity-getregisterlinksource)
---@param p1 Register|integer Target register reference
---@returns Component|nil # Component that holds the source register or nil if frame register (unless entity/component specified)
function Entity:GetRegisterLinkSource(p1) return Component end

---Get the source index of the first relevant register link
---
---If no entity or component is specified, information of the first link containing any value will be returned.
---
---Otherwise it will look up a specific link and return only the register index.
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#entity-getregisterlinksource)
---@param p1 Register|integer Target register reference
---@param p2 Entity Entity that holds the source register
---@returns Component|nil # Component that holds the source register or nil if frame register (unless entity/component specified)
function Entity:GetRegisterLinkSource(p1, p2) return Component end

---Get the source index of the first relevant register link
---
---If no entity or component is specified, information of the first link containing any value will be returned.
---
---Otherwise it will look up a specific link and return only the register index.
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#entity-getregisterlinksource)
---@param p1 Register|integer Target register reference
---@param p2 Component component that holds the source register
---@returns Component|nil # Component that holds the source register or nil if frame register (unless entity/component specified)
function Entity:GetRegisterLinkSource(p1, p2) return Component end

---Get the target index of the first relevant register link
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#entity-getregisterlinktarget)
---@param p1 Register|integer Source register reference
---@param p2 Entity|nil Different entity that holds the source register (OPTIONAL)
---@returns integer|nil # Target register index, absolute entity index (or nil if not exist)
function Entity:GetRegisterLinkTarget(p1, p2) return 0 end

---Get the target index of the first relevant register link
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#entity-getregisterlinktarget)
---@param p1 Register|integer Source register reference
---@param p2 Component A component that holds the source register
---@returns integer|nil # Target register index, absolute entity index (or nil if not exist)
function Entity:GetRegisterLinkTarget(p1, p2) return 0 end

---Add an item to the inventory
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#entity-additem)
---@param p1 string Item id
---@param p2 integer|nil Amount (OPTIONAL, default 1)
---@param p3 table|nil Extra data table (OPTIONAL, default nil)
---@returns ItemSlot|nil # Item slot object into which the item has been added (or nil on error)
function Entity:AddItem(p1, p2, p3) return ItemSlot end

---Count (unreserved) stacks of an item across all item slots
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#entity-countitem)
---@param p1 string Item id
---@param p2 boolean|nil Count unreserved, if true it will only count unreserved stack amounts (OPTIONAL, default false)
---@returns integer # Item count
function Entity:CountItem(p1, p2) return 0 end

---Check if there is any free space to add the item in any item slots
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#entity-havefreespace)
---@param p1 string Item id
---@param p2 integer|nil Count of item (OPTIONAL, default 1)
---@returns boolean # Can items be added
function Entity:HaveFreeSpace(p1, p2) return false end

---Count how much free space for an item in any item slots
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#entity-countfreespace)
---@param p1 string Item id
---@returns integer|nil # Number of availabe Space (or nil if item id is nil)
function Entity:CountFreeSpace(p1) return 0 end

---Find an item slot with enough free space to store a given amount
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#entity-getfreeslot)
---@param p1 string Item id
---@param p2 integer|nil Amount to search (OPTIONAL, default max stack size)
---@returns ItemSlot|nil # Item slot object with the space available (or nil on error)
function Entity:GetFreeSlot(p1, p2) return ItemSlot end

---Get a single item slot at a specific slot index
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#entity-getslot)
---@param p1 integer Slot index (starts at 1)
---@returns ItemSlot|nil # Item slot object or nil if not exist
function Entity:GetSlot(p1) return ItemSlot end

---Find an item slot with a specific item
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#entity-findslot)
---@param p1 string Item id
---@param p2 integer|nil Limit search to slot with at least this amount of unreserved stack in it (OPTIONAL)
---@returns ItemSlot|nil # Item slot object or nil if not found
function Entity:FindSlot(p1, p2) return ItemSlot end

---Add inventory slots
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#entity-addslots)
---@param p1 string Slot type
---@param p2 integer|nil Number of slots to add (OPTIONAL, default 1)
---@returns ItemSlot|nil # Component object (or nil on error)
function Entity:AddSlots(p1, p2) return ItemSlot end

---Automatically merge stacks of the same item across the inventory
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#entity-automergeslots)
---@param p1 string|nil Limit merging to just one this one item id (OPTIONAL)
---@returns integer # Number of inventory slots that became empty due to the merge
function Entity:AutoMergeSlots(p1) return 0 end

---Check if the entity is waiting for an order of a specific item
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#entity-iswaitingfororder)
---@param p1 string Item id
---@returns boolean # Has item on order
function Entity:IsWaitingForOrder(p1) return false end

---Transfer an item from the inventory of another entity
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#entity-transferfrom)
---@param p1 Entity Item source entity
---@param p2 string Item id
---@param p3 integer Amount
---@param p4 boolean|nil Show the visual item throw effect (OPTIONAL, default false)
---@returns integer|nil # Amount actually transferred (can be 0 if there is no free space) (or nil on error)
function Entity:TransferFrom(p1, p2, p3, p4) return 0 end

---Drop an item to the ground
---
---If a drop target coordinate is given, it will only used as a direction where to drop. It is not possible to drop away further than 1 tile.
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#entity-dropitem)
---@param p1 string Item id
---@param p2 integer|nil Amount (OPTIONAL, default to everything available of that item id)
---@param p3 integer X coordinate of drop target
---@param p4 integer Y coordinate of drop target
function Entity:DropItem(p1, p2, p3, p4) end

---Drop an item to the ground
---
---If a drop target coordinate is given, it will only used as a direction where to drop. It is not possible to drop away further than 1 tile.
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#entity-dropitem)
---@param p1 ItemSlot Item slot
---@param p2 integer|nil Amount (OPTIONAL, default to everything available in given item slot)
---@param p3 integer X coordinate of drop target
---@param p4 integer Y coordinate of drop target
function Entity:DropItem(p1, p2, p3, p4) end

---Drop an equipped component to the ground
---
---If a drop target coordinate is given, it will only used as a direction where to drop. It is not possible to drop away further than 1 tile.
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#entity-dropcomponent)
---@param p1 Component Component to drop
---@param p2 integer X coordinate of drop target
---@param p3 integer Y coordinate of drop target
function Entity:DropComponent(p1, p2, p3) end

---Order an item
---
---The order will stay active until fulfilled, CancelOrder gets called or the entity is destroyed.
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
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#entity-orderitem)
---@param p1 ItemSlot|nil Order items into this slot (OPTIONAL)
---@param p2 string Item id to be ordered
---@param p3 integer Amount to be ordered
---@returns integer # Order ID created or modified
function Entity:OrderItem(p1, p2, p3) return 0 end

---Start moving the entity to a given location
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#entity-moveto)
---@param p1 Entity Target entity to move next to
function Entity:MoveTo(p1) end

---Start moving the entity to a given location
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#entity-moveto)
---@param p1 integer Move location X
---@param p2 integer Move location Y
function Entity:MoveTo(p1, p2) end

---Start moving the entity to a given location
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#entity-moveto)
---@param p1 Point Move location
function Entity:MoveTo(p1) end

---Start moving the entity somewhere outside of a given area.
---
---This will do nothing if the entity is already outside the area.
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#entity-moveaway)
---@param p1 Area|Point|Entity Location or area to move away from
function Entity:MoveAway(p1) end

---Stop movement and abort what is currently controlling the entities movement.
---
---Movement can be controlled via manual movement, or automated by order/component/context/home.
---
---Components that don't request movement control will continue working autonomously.
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#entity-cancel)
function Entity:Cancel() end

---Rotate the entity to look towards a given location
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#entity-lookat)
---@param p1 Area|Point|Entity Location
function Entity:LookAt(p1) end

---Check if the entity is touching another entity or a location
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#entity-istouching)
---@param p1 Area|Point|Entity Location
---@returns boolean # True if located next to other entity/location
function Entity:IsTouching(p1) return false end

---Check if the entity is in range of another entity or a location
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#entity-isinrangeof)
---@param p1 Area|Point|Entity Location
---@param p2 integer Range to test (if 1 will act like IsTouching)
---@returns boolean # True if in range of other entity/location
function Entity:IsInRangeOf(p1, p2) return false end

---Measure the range in tiles to another entity or a location
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#entity-getrangeto)
---@param p1 Area|Point|Entity Location
---@returns integer # Distance in number of tiles
function Entity:GetRangeTo(p1) return 0 end

---Get the squared distance to another entity or a location
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#entity-getrangesquaredto)
---@param p1 Area|Point|Entity Location
---@returns integer # Squared distance
function Entity:GetRangeSquaredTo(p1) return 0 end

---Dock this entity into an item slot of another entity
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#entity-dockinto)
---@param p1 Entity Garage entity to dock into
---@returns boolean|nil # True if docking succeeded, false if garage was full (or nil on error)
function Entity:DockInto(p1) return false end

---Undock this entity
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#entity-undock)
---@param p1 boolean|nil If true, reserve the item slot for this entity to come back later (OPTIONAL, default true)
---@returns boolean|nil # True if undocking succeeded (or nil on error)
function Entity:Undock(p1) return false end

---removes an instance from the entity
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#entity-removeentityinstance)
function Entity:RemoveEntityInstance() end

---Spawn particle/sound effect on this entity
---
---Only possible on entities which are placed on the map
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#entity-playeffect)
---@param p1 string Effect ID
---@param p2 string|nil Socket name (OPTIONAL)
---@param p3 Entity|nil Target entity (OPTIONAL)
---@param p4 integer|nil Entity instance number (OPTIONAL)
---@returns integer # Effect instance (only for looping effects, can be used with `entity:StopEffect`)
function Entity:PlayEffect(p1, p2, p3, p4) return 0 end

---Stop all looping particle/sound effects
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#entity-stopeffects)
function Entity:StopEffects() end

---Stop a specific looping particle/sound effect
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#entity-stopeffect)
---@param p1 integer Effect Instance
function Entity:StopEffect(p1) end

---Activate event of the visuals frame blueprint
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#entity-activate)
function Entity:Activate() end

---Deactivate event of the visuals frame blueprint
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#entity-deactivate)
function Entity:Deactivate() end

---Get the size this entity would have at a given rotation
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#entity-getsizeatrotation)
---@param p1 string Visual id
---@param p2 integer Rotation (0 to 3)
function Entity:GetSizeAtRotation(p1, p2) end

---Sets a new visual and rotation for an entity
---
---This will fail and return false if the new visual in the new rotation occupies different tiles or has different component sockets.
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#entity-setvisual)
---@param p1 string Visual id
---@param p2 integer|nil Rotation (0 to 3) (OPTIONAL)
---@returns boolean # Result
function Entity:SetVisual(p1, p2) return false end

---Add health (cannot exceed max_health)
---
---This does nothing if the entity is at 0 health (because it is in the process of being destroyed)
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#entity-addhealth)
---@param p1 integer Add amount
---@returns integer # New health amount on entity
function Entity:AddHealth(p1) return 0 end

---Remove health while handling any damage reduction by shield components
---
---This does nothing if the entity is at 0 health (because it is in the process of being destroyed)
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#entity-removehealth)
---@param p1 integer Remove amount
---@param p2 Entity|nil Which entity caused the damage (OPTIONAL)
---@returns integer # New health amount on entity (0 if destroyed)
function Entity:RemoveHealth(p1, p2) return 0 end

