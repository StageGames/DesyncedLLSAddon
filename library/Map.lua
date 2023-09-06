---@meta Map
---The map module contains global functions affecting the game state
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#map)
Map = {}

---Modify simulation speed
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#map-setgamespeed)
---@param p1 integer Game speed
function Map.SetGameSpeed(p1) end

---Get simulation speed
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#map-getgamespeed)
---@returns integer # Game speed
function Map.GetGameSpeed() return 0 end

---Check if LUA is currently running in simulation context
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#map-issimulation)
---@returns boolean # True if in simulation context, false if in UI context
function Map.IsSimulation() return false end

---Check if the active map is the front-end menu
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#map-isfrontend)
---@returns boolean # True if front-end
function Map.IsFrontEnd() return false end

---Get current map settings (read only)
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#map-getsettings)
---@returns table # Current map settings
function Map.GetSettings() return {} end

---Modify game settings during the simulation
---
---Only a few settings can be modified after init, during the simulation (e.g. cheat_free_ingredients, cheat_free_research)
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#map-modifysettings)
---@param p1 string Settings key
---@param p2 any New value
function Map.ModifySettings(p1, p2) end

---Get map seed (same as GetSettings().seed)
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#map-getseed)
---@returns integer # Current map seed
function Map.GetSeed() return 0 end

---Get save table (can only be modified in simulation context)
---
---If called without argument from a mod that doesn't contain the currently active scenario, will return a mod specific child table parent.mods[mod_id]
---
---If called with an empty string or nil, will always return entire parent table
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#map-getsave)
---@param p1 string|nil Mod id (OPTIONAL)
---@returns table # Save table
function Map.GetSave(p1) return {} end

---Call bound MapMsg functions
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#map-run)
---@param p1 string Message name registered in MapMsg
---@param p2 any|nil Passed values (OPTIONAL, can pass multiple values)
function Map.Run(p1, p2) end

---Get the current simulation tick number
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#map-gettick)
---@returns integer # Tick number
function Map.GetTick() return 0 end

---Get the number of player actions that have been executed
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#map-getexecutedactioncount)
---@returns integer # Action count
function Map.GetExecutedActionCount() return 0 end

---Create a new entity from a frame definition
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#map-createentity)
---@param p1 Faction|string Faction or faction id
---@param p2 string Frame id
---@param p3 string|nil Specific visual id or another frame id from which to use the visual (OPTIONAL, defaults to frame visual)
---@param p4 boolean|nil Pass true for entities spawned as part of map generation (OPTIONAL)
---@returns Entity|nil # Entity object (or nil on error)
function Map.CreateEntity(p1, p2, p3, p4) return Entity end

---Drop an item at a specific location.
---
---Will combine with existing dropped items if one exists and has space.
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#map-dropitemat)
---@param p1 Area|Point|Entity Location
---@param p2 string Item id
---@param p3 integer|nil Amount (OPTIONAL, default 1)
---@param p4 table|nil Extra data table (OPTIONAL, default nil)
---@param p5 string|nil Frame id (OPTIONAL, otherwise use default dropped item frame)
---@param p6 string|nil Visual id (OPTIONAL, otherwise use default)
function Map.DropItemAt(p1, p2, p3, p4, p5, p6) end

---Get a faction
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#map-getfaction)
---@param p1 string Faction id
---@return Faction|string|nil # Faction object (or nil on error)
function Map.GetFaction(p1) return Faction|string end

---Create a new faction (or get it if it already exists)
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#map-createfaction)
---@param p1 string Faction id
---@returns boolean # True if this faction was newly created, false if it already existed
function Map.CreateFaction(p1) return false end

---Get all factions
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#map-getfactions)
---@returns table # List of faction objects
function Map.GetFactions() return {} end

---Get the number of spawned player faction
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#map-getplayerfactioncount)
---@returns integer # Number of player controlled factions
function Map.GetPlayerFactionCount() return 0 end

---Get the number of days progressed
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#map-gettotaldays)
---@returns integer # Number of days (floating point value, fractional part indicates time of day)
function Map.GetTotalDays() return 0 end

---Get the current sunlight intensity
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#map-getsunlightintensity)
---@returns integer # Sunlight intensity
function Map.GetSunlightIntensity() return 0 end

---Get the current amount of sunlight (square root of sunlight intensity)
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#map-getsunlightamount)
---@returns integer # Amount of sunlight (between 0.0 and 1.0 inclusive)
function Map.GetSunlightAmount() return 0 end

---Get the direction of the sunlight as a normalized vector
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#map-getsunlightdirection)
---@returns integer # Sunlight Y direction
function Map.GetSunlightDirection() return 0 end

---Get the day time of sunrise and sunset
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#map-getsunriseandsunset)
---@param p1 integer|nil Return time when the sun crosses a given amount of sunlight intensity (OPTIONAL, default 0.0)
---@returns integer # Sunset time (between 0.0 and 1.0)
function Map.GetSunriseAndSunset(p1) return 0 end

---Get the location of the Nth next unspawned chunk
---
---The returned tile position is at the center of the unspawned 60x60 chunk
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#map-getundiscoveredlocation)
---@param p1 integer|nil Request the Nth undiscovered chunk (OPTIONAL, default first)
---@returns integer # Y position
function Map.GetUndiscoveredLocation(p1) return 0 end

---Make sure chunks exist at the given location
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#map-spawnchunks)
---@param p1 Area|Point|Entity Location or area to spawn chunks for
---@returns integer # Returns how many new chunks were created
function Map.SpawnChunks(p1) return 0 end

---Get blightness for a tile or area
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#map-getblightness)
---@param p1 Area|Point|Entity Location to check
---@param p2 boolean|nil If checking more than a single tile, return the smallest value instead of the biggest (OPTIONAL, default false)
---@returns integer # blightness
function Map.GetBlightness(p1, p2) return 0 end

---Get elevation for a tile or area
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#map-getelevation)
---@param p1 Area|Point|Entity Location to check
---@param p2 boolean|nil If checking more than a single tile, return the smallest value instead of the biggest (OPTIONAL, default false)
---@returns integer # elevation
function Map.GetElevation(p1, p2) return 0 end

---Get richness for a tile or area
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#map-getrichness)
---@param p1 Area|Point|Entity Location to check
---@param p2 boolean|nil If checking more than a single tile, return the smallest value instead of the biggest (OPTIONAL, default false)
---@returns integer # richness
function Map.GetRichness(p1, p2) return 0 end

---Get variation for a tile or area
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#map-getvariation)
---@param p1 Area|Point|Entity Location to check
---@param p2 boolean|nil If checking more than a single tile, return the smallest value instead of the biggest (OPTIONAL, default false)
---@returns table # cell, distance
function Map.GetVariation(p1, p2) return {} end

---Get height for a tile or area
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#map-getheight)
---@param p1 Area|Point|Entity Location to check
---@param p2 boolean|nil If checking more than a single tile, return the smallest value instead of the biggest (OPTIONAL, default false)
---@returns integer # height
function Map.GetHeight(p1, p2) return 0 end

---Get plateau height
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#map-getplateauheight)
---@returns integer # plateau height
function Map.GetPlateauHeight() return 0 end

---Get water height
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#map-getwaterheight)
---@returns integer # water height
function Map.GetWaterHeight() return 0 end

---Get table with full tile data for a given location
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#map-gettiledata)
---@param p1 integer X coordinate
---@param p2 integer Y coordinate
---@returns table # blightness, elevation, richness, variation
function Map.GetTileData(p1, p2) return {} end

---Defer function until after components have been processed
---
---For example, it is not possible to create new entities during processing, creation needs to be deferred.
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#map-defer)
---@param p1 function LUA function to execute after components have been processed
function Map.Defer(p1) end

---Delay function for a given number of ticks
---
---A delay function can be registered with
---
---function Delay.FUNCTIONNAME(arg)
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#map-delay)
---@param p1 string Function name
---@param p2 integer Number of ticks to wait until called (0 is like using Defer function)
---@param p3 table|nil Argument table to pass (OPTIONAL)
function Map.Delay(p1, p2, p3) end

---Start terraforming
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#map-startterraforming)
---@param p1 Entity Entity
---@param p2 integer Range
---@param p3 integer Rate (change per tick)
---@returns integer # Terraforming instance index
function Map.StartTerraforming(p1, p2, p3) return 0 end

---End terraforming
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#map-stopterraforming)
---@param p1 integer Terraforming instance index
function Map.StopTerraforming(p1) end

---Get an entity at a specific location
---
---If there are multiple entities, it will return the first entity in the following order: blocking, non-blocking, foundation
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#map-getentityat)
---@param p1 integer X coordinate
---@param p2 integer Y coordinate
---@returns Entity|nil # Entity (or nil if none)
function Map.GetEntityAt(p1, p2) return Entity end

---Get a foundation entity at a specific location
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#map-getfoundationentityat)
---@param p1 integer X coordinate
---@param p2 integer Y coordinate
---@returns Entity|nil # Entity (or nil if none)
function Map.GetFoundationEntityAt(p1, p2) return Entity end

---Get all entities at a specific location
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#map-getentitiesat)
---@param p1 integer X coordinate
---@param p2 integer Y coordinate
---@returns table # Array of entities
function Map.GetEntitiesAt(p1, p2) return {} end

---Search for the closest entity in a range
---
---If an entity is used to specify the area, the callback will not be called for this entity
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#map-findclosestentity)
---@param p1 Area|Point|Entity Area to start the check from
---@param p2 integer Search radius in tiles
---@param p3 string|nil Filter by frame type (DroppedItem, Construction, Resource, Operating) (OPTIONAL, default all)
---@param p4 function Callback called for each entity in range in order of distance, return true from this to stop the search
---@returns Entity|nil # The entity for which the callback returned true (or nil if none)
function Map.FindClosestEntity(p1, p2, p3, p4) return Entity end

---Show a item throw effect
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#map-throwitemeffect)
---@param p1 Entity Source entity
---@param p2 Entity Target entity
---@param p3 string Item id
---@param p4 integer|nil Entity instance number (OPTIONAL)
function Map.ThrowItemEffect(p1, p2, p3, p4) end

