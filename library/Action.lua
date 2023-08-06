---@meta Action
---The action module contains functions that send (player input) actions
---[Official Documentation](https://modding.desyncedgame.com/#action)
Action = {}

---Send an action from the local player faction
---
---A faction action can be registered with
---
---function FactionAction.ACTIONID(faction, arg)
---
---[Official Documentation](https://modding.desyncedgame.com/#action-sendforlocalfaction)
---@param p1 string Action id
---@param p2 table|nil Additional action data (can be nil)
function Action.SendForLocalFaction(p1, p2) end

---Send an action for an entity owned by the local player faction
---
---An entity action can be registered with
---
---function EntityAction.ACTIONID(entity, arg)
---
---[Official Documentation](https://modding.desyncedgame.com/#action-sendforentity)
---@param p1 string Action id
---@param p2 entity Entity the action is for (must be owned by the local player)
---@param p3 table|nil Additional action data (can be nil)
function Action.SendForEntity(p1, p2, p3) end

---Send a grouped entity action for all selected entities
---
---Will automatically filter out construction sites and entities not owned by the local player faction
---
---[Official Documentation](https://modding.desyncedgame.com/#action-sendforselectedentities)
---@param p1 string Action id
---@param p2 table|nil Additional action data (can be nil)
function Action.SendForSelectedEntities(p1, p2) end

---Send a grouped entity action for a list of entities
---
---Will automatically filter out construction sites and entities not owned by the local player faction
---
---[Official Documentation](https://modding.desyncedgame.com/#action-sendforentities)
---@param p1 string Action id
---@param p2 table Array of entities the action is for
---@param p3 table|nil Additional action data (can be nil)
function Action.SendForEntities(p1, p2, p3) end

---Send an action for a construction entity owned by the local player faction
---
---A construction action can be registered with
---
---function ConstructionAction.ACTIONID(entity, arg)
---
---[Official Documentation](https://modding.desyncedgame.com/#action-sendforconstruction)
---@param p1 string Action id
---@param p2 entity Entity the action is for (must be under construction and owned by the local player)
---@param p3 table|nil Additional action data (can be nil)
function Action.SendForConstruction(p1, p2, p3) end

---Send an action from the player
---
---A player action can be registered with
---
---function PlayerAction.ACTIONID(player_id, faction, arg)
---
---[Official Documentation](https://modding.desyncedgame.com/#action-sendfromplayer)
---@param p1 string Action id
---@param p2 table|nil Additional action data (can be nil)
function Action.SendFromPlayer(p1, p2) end

---Run code in UI context for the player that initiated the currently executing action 
---
---Must be called while executing an action and will execute for the one player that sent the action (to limit to other players use `faction:RunUI` or `UI.Run`)
---
---[Official Documentation](https://modding.desyncedgame.com/#action-runui)
---@param p1 function LUA function to execute in UI context
---@param p2 any|nil Passed values (OPTIONAL, can pass multiple values)
function Action.RunUI(p1, p2) end

---Run code in UI context for the player that initiated the currently executing action 
---
---Must be called while executing an action and will execute for the one player that sent the action (to limit to other players use `faction:RunUI` or `UI.Run`)
---
---[Official Documentation](https://modding.desyncedgame.com/#action-runui)
---@param p1 string Message name registered in UIMsg
---@param p2 any|nil Passed values (OPTIONAL, can pass multiple values)
function Action.RunUI(p1, p2) end

---Change the players faction
---
---[Official Documentation](https://modding.desyncedgame.com/#action-switchfaction)
---@param p1 string New faction id
function Action.SwitchFaction(p1) end

---Set player ready during the startup of a scenario using DelayedPlayerFactionSpawn mode
---
---[Official Documentation](https://modding.desyncedgame.com/#action-setplayerready)
---@param p1 boolean|nil Ready state (OPTIONAL, default true)
function Action.SetPlayerReady(p1) end

---Returns if a replay is being played back
---
---[Official Documentation](https://modding.desyncedgame.com/#action-isreplayplayback)
---@returns boolean # Replay state
function Action.IsReplayPlayback() end

---Returns the playback progress of the replay
---
---[Official Documentation](https://modding.desyncedgame.com/#action-getreplayprogress)
---@param p1 boolean|nil Return the time in in-game days instead of ticks (OPTIONAL, default false)
---@returns integer # Ticks or days since replay start
function Action.GetReplayProgress(p1) end

---Returns the total duration of the replay
---
---[Official Documentation](https://modding.desyncedgame.com/#action-getreplayduration)
---@param p1 boolean|nil Return the time in in-game days instead of ticks (OPTIONAL, default false)
---@returns integer # Duration in ticks or days
function Action.GetReplayDuration(p1) end

---Set replay playback speed
---
---[Official Documentation](https://modding.desyncedgame.com/#action-setreplayspeed)
---@param p1 integer Replay speed
function Action.SetReplaySpeed(p1) end

---Restart replay
---
---[Official Documentation](https://modding.desyncedgame.com/#action-restartreplay)
function Action.RestartReplay() end

---While playing a replay, stop the replay and continue playing from here
---
---[Official Documentation](https://modding.desyncedgame.com/#action-replayplayfromhere)
function Action.ReplayPlayFromHere() end

