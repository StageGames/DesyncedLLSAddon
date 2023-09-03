---@meta Faction
---@class Faction
---@field is_world_faction boolean True if world faction
---@field is_player_controlled boolean True if created for a player
---@field default_trust string Default trust level, one of 'ENEMY', 'NEUTRAL' or 'ALLY'
---@field entities table Table with a list of all entities
---@field num_entities integer number of entities
---@field foundation_entities table Table with a list of foundation entities
---@field all_items table item_id => count
---@field has_extra_data boolean Result
---@field extra_data table Extra data table
---@field has_blight_shield boolean Flag value
---@field id string Faction id
---@field name string Name
---@field seed integer Faction seed
---@field unlocks table List of unlocked ids
---@field unlocked_techs table tech id list
---@field unlocked_items table item id list
---@field unlocked_frames table frame id list
---@field unlocked_components table component id list
---@field unlocked_values table value id list
---@field unlocked_codex table codex id list
---@field researchable_techs table tech id list
---@field items_picked_up table item id list
---@field discovered_tiles integer Discovered tiles count
---@field moods table faction mood table
---@field color Color Extra data table
---@field home_location Point Location
---@field home_entity Entity Home entity
---A faction object represents a player or world owned faction.
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#faction)
Faction = {}

---Unlock something
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#faction-unlock)
---@param p1 string Id to unlock (can be item, frame, component, blueprint, behavior, codex or tech)
---@param p2 boolean|nil Notification (OPTIONAL, default true)
---@returns boolean # Returns false if already unlocked
function Faction:Unlock(p1, p2) return false end

---Check if something was unlocked
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#faction-isunlocked)
---@param p1 string Id to check
function Faction:IsUnlocked(p1) end

---Check if a tech is available for research
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#faction-isresearchable)
---@param p1 string Tech id
function Faction:IsResearchable(p1) end

---Check if an item was picked up
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#faction-havepickedupitem)
---@param p1 string Item id
function Faction:HavePickedUpItem(p1) end

---Get stats on all power grids of this faction
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#faction-getpowergrids)
---@returns table # Power grids
function Faction:GetPowerGrids() return {} end

---Get stats on all power grids of this faction
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#faction-getpowergrid)
---@param p1 integer Grid index (see entity.power_details or faction:GetPowerGridIndexAt)
---@returns table # Power grid details
function Faction:GetPowerGrid(p1) return {} end

---Check if a tile or area is in a power grid of this faction
---
---If the checking area is larger than one tile, will only return the first power grid found.
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#faction-getpowergridindexat)
---@param p1 Area|Point|Entity Location to check
---@returns integer|nil # Index of the power grid (or nil if not inside any power grid)
function Faction:GetPowerGridIndexAt(p1) return 0 end

---Get the history of power
---
---If the requested number of elements is larger than history buffer, the arrays will be filled with zeros
---
---If the requested number of elements is 1, the function will return the numbers directly instead of an array
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#faction-getpowerhistory)
---@param p1 integer Resolution (1 finest, 3 most coarse)
---@param p2 integer Number of elements to read
---@returns table # Power history data { total_produced = .., total_consumed = .. }
function Faction:GetPowerHistory(p1, p2) return {} end

---Get the history of an item held by the faction
---
---If the requested number of elements is larger than history buffer, the arrays will be filled with zeros
---
---If the requested number of elements is 1, the function will return the numbers directly instead of an array
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#faction-getitemhistory)
---@param p1 string item id
---@param p2 integer Resolution (1 finest, 3 most coarse)
---@param p3 integer Number of elements to read
---@returns table # Item history data { added = .., removed = .. }
function Faction:GetItemHistory(p1, p2, p3) return {} end

---Get the total amount currently available of an item
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#faction-getitemamount)
---@param p1 string item id
---@returns integer # Total item availability count
function Faction:GetItemAmount(p1) return 0 end

---Get a table of all entities that hold a specific item
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#faction-getitemavailability)
---@param p1 string item id
---@returns table|nil # Item availability table (key is entity, value is amount held) or nil if not available
function Faction:GetItemAvailability(p1) return {} end

---Get the total amount of generated (mined/produced) and consumed (as ingredients) for an item
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#faction-getitemtotals)
---@param p1 string item id
---@returns integer # Total amount consumed
function Faction:GetItemTotals(p1) return 0 end

---Modify the total amount of generated (mined/produced) and consumed (as ingredients) for an item
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#faction-modifyitemtotals)
---@param p1 string item id
---@param p2 integer Change to total amount generated (positive value to increase, negative value to reduce)
---@param p3 integer Change to total amount consumed (positive value to increase, negative value to reduce)
function Faction:ModifyItemTotals(p1, p2, p3) end

---Get a list of all active orders
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#faction-getactiveorders)
---@returns table # Array of orders
function Faction:GetActiveOrders() return {} end

---Cancel an existing order
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#faction-cancelorder)
---@param p1 integer Order id
function Faction:CancelOrder(p1) end

---Create order to move items from one entity to another
---
---Either source or target entity must be owned by this faction
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#faction-ordertransfer)
---@param p1 Entity Source entity
---@param p2 Entity Target entity
---@param p3 string Item id
---@param p4 integer|nil Amount (OPTIONAL, default to anything available in first slot with item id)
---@param p5 boolean|nil Pass true update an existing order first with a new amount before creating a new order (OPTIONAL)
---@returns boolean # Return true if successful and false if the source doesn't hold the item amount or the target can't receive it
function Faction:OrderTransfer(p1, p2, p3, p4, p5) return false end

---Create order to move items from one entity to another
---
---Either source or target entity must be owned by this faction
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#faction-ordertransfer)
---@param p1 Entity Source entity
---@param p2 Entity Target entity
---@param p3 ItemSlot Source item slot
---@param p4 integer|nil Amount (OPTIONAL, default to anything available in source item slot)
---@param p5 boolean|nil Pass true update an existing order first with a new amount before creating a new order (OPTIONAL)
---@returns boolean # Return true if successful and false if the source doesn't hold the item amount or the target can't receive it
function Faction:OrderTransfer(p1, p2, p3, p4, p5) return false end

---Create order to move items from one entity to another
---
---Either source or target entity must be owned by this faction
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#faction-ordertransfer)
---@param p1 Entity Source entity
---@param p2 Entity Target entity
---@param p3 Component Source component
---@returns boolean # Return true if successful and false if the source doesn't hold the item amount or the target can't receive it
function Faction:OrderTransfer(p1, p2, p3) return false end

---Check if a specific frame/visual combination can be placed by this faction at a given location
---
---If the construction flag is set, the check will return true if checking a location over entities with movement that can move out of the way.
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#faction-canplace)
---@param p1 string Frame id
---@param p2 integer Location X
---@param p3 integer Location Y
---@param p4 integer|nil Rotation (0 to 3) (OPTIONAL, default 0)
---@param p5 string|nil Specific visual id or another frame id from which to use the visual (OPTIONAL, defaults to frame visual)
---@param p6 boolean|nil Construction flag (OPTIONAL, default false)
---@param p7 boolean|nil Treat un-generated map areas as blocking (OPTIONAL, default true)
---@returns boolean # Result of the check
function Faction:CanPlace(p1, p2, p3, p4, p5, p6, p7) return false end

---Reveal visibility of an area
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#faction-revealarea)
---@param p1 Area|Point|Entity Area
---@param p2 integer Visibility range
function Faction:RevealArea(p1, p2) end

---Hide visibility of an area
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#faction-hidearea)
---@param p1 Area|Point|Entity Area
---@param p2 integer Visibility range
function Faction:HideArea(p1, p2) end

---Check if a tile or area is currently visible to this faction
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#faction-isvisible)
---@param p1 Area|Point|Entity Location to check
---@param p2 boolean|nil If true and area specifies multiple tiles, require all tiles to be visible (OPTIONAL, default false)
---@returns boolean # Result of check
function Faction:IsVisible(p1, p2) return false end

---Check if a tile or area has been revealed by this faction
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#faction-isdiscovered)
---@param p1 Area|Point|Entity Location to check
---@param p2 boolean|nil If true and area specifies multiple tiles, require all tiles to be discovered (OPTIONAL, default false)
---@returns boolean # Result of check
function Faction:IsDiscovered(p1, p2) return false end

---Check if an entity is visible to this faction (true for everything in visible are as well as certain entities in discovered tiles)
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#faction-isseen)
---@param p1 Entity Entity to check
---@returns boolean # Result of check
function Faction:IsSeen(p1) return false end

---Finds closest non visible tile
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#faction-findclosesthiddentile)
---@param p1 integer Start X coordinate
---@param p2 integer Start Y coordinate
---@param p3 integer Stop search after checking how many tiles
---@param p4 boolean|nil Skip blight tiles (OPTIONAL, default true)
---@returns integer # Result Y position
function Faction:FindClosestHiddenTile(p1, p2, p3, p4) return 0 end

---Run code in UI context or call bound UIMsg functions
---
---When called from simulation context the function will execute for all players in this faction (to limit to other players use `UI.Run` or `Action.RunUI`)
---
---When called from UI context the function will only execute for the local player if it is in this faction
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#faction-runui)
---@param p1 function LUA function to execute in UI context
---@param p2 any|nil Passed values (OPTIONAL, can pass multiple values)
function Faction:RunUI(p1, p2) end

---Run code in UI context or call bound UIMsg functions
---
---When called from simulation context the function will execute for all players in this faction (to limit to other players use `UI.Run` or `Action.RunUI`)
---
---When called from UI context the function will only execute for the local player if it is in this faction
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#faction-runui)
---@param p1 string Message name registered in UIMsg
---@param p2 any|nil Passed values (OPTIONAL, can pass multiple values)
function Faction:RunUI(p1, p2) end

---Order movable entities to move away from a given area
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#faction-orderentitiestomoveaway)
---@param p1 Area|Point|Entity Location or area
---@param p2 Entity|nil An entity that will be excepted from the order (OPTIONAL)
---@returns integer # The total number of blocking entities currently in the area (of any faction, excludes the excepted entity)
function Faction:OrderEntitiesToMoveAway(p1, p2) return 0 end

---Respawn the faction
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#faction-respawn)
function Faction:Respawn() end

---Add some amount to one of the faction moods
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#faction-addmood)
---@param p1 string Mood name (one of the table keys in moods)
---@param p2 integer Amount to add
function Faction:AddMood(p1, p2) end

---Get all components of a given type equipped by entities of this faction
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#faction-getcomponents)
---@param p1 string|nil Component id (or nil to get all components)
---@param p2 boolean|nil Set to true to query the base_id value of component definitions if it exists (OPTIONAL, default false)
---@returns Component[] # Array of components
function Faction:GetComponents(p1, p2) return {} end

---Get all entities of this faction that have a given component equipped
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#faction-getentitieswithcomponent)
---@param p1 string Component id
---@param p2 boolean|nil Set to true to query the base_id value of component definitions if it exists (OPTIONAL, default false)
---@param p3 boolean|nil Set to not return hidden components (OPTIONAL, default false)
---@returns Entity[] # Array of entities
function Faction:GetEntitiesWithComponent(p1, p2, p3) return {} end

---Get all entities owned by this faction that are on screen (excludes foundation entities)
---
---If true gets passed, the 5th element will be either nil, a register value or an array with 3 elements per register (reg, x, y)
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#faction-getvisibleentities)
---@param p1 boolean|nil Set to true to only get entities with visual register set or a state (OPTIONAL, default false)
---@returns table # One array with 4 or 6 elements for each entity (entity, X, Y, distance as well as visual register and state if true was passed)
function Faction:GetVisibleEntities(p1) return {} end

---Set the trust level towards another faction
---
---The trust level from/to the world faction and self can't be changed
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#faction-settrust)
---@param p1 Faction|string Other faction or faction id
---@param p2 string Trust level, one of 'ENEMY', 'NEUTRAL' or 'ALLY'
function Faction:SetTrust(p1, p2) end

---Set the trust level towards another faction
---
---The trust level from/to the world faction and self can't be changed
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#faction-settrust)
---@param p1 Entity Entity to use the owning faction for the check
---@param p2 string Trust level, one of 'ENEMY', 'NEUTRAL' or 'ALLY'
---@param p3 boolean|nil If set to true, will apply the trust level bidirectional for the other faction towards this as well (OPTIONAL, default false)
function Faction:SetTrust(p1, p2, p3) end

---Get the trust level towards another faction
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#faction-gettrust)
---@param p1 Faction|string Other faction or faction id
---@returns string|nil # Trust level, one of 'ENEMY', 'NEUTRAL' or 'ALLY' (will always be 'ALLY' when checking against self and nil when other faction doesn't exist)
function Faction:GetTrust(p1) return "" end

---Get the trust level towards another faction
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#faction-gettrust)
---@param p1 Entity Entity to use the owning faction for the check
---@returns string|nil # Trust level, one of 'ENEMY', 'NEUTRAL' or 'ALLY' (will always be 'ALLY' when checking against self and nil when other faction doesn't exist)
function Faction:GetTrust(p1) return "" end

