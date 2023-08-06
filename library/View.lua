---@meta View
---The view module contains global functions that don't affect the state of the simulation but aren't directly related to UI
---[Official Documentation](https://modding.desyncedgame.com/#view)
View = {}

---Get the location of the currently hovered tile
---
---[Official Documentation](https://modding.desyncedgame.com/#view-gethoveredtileposition)
---@returns integer # Y factor of the virtual cursor
function View.GetHoveredTilePosition() end

---Get the entity currently hovered
---
---[Official Documentation](https://modding.desyncedgame.com/#view-gethoveredentity)
---@returns entity|nil # Hovered entity (or nil if none)
function View.GetHoveredEntity() end

---Reset the camera to the faction home location
---
---[Official Documentation](https://modding.desyncedgame.com/#view-resetcamera)
---@param p1 boolean|nil Whether to reset zoom level (OPTIONAL, default true)
function View.ResetCamera(p1) end

---Move the camera to a given location
---
---[Official Documentation](https://modding.desyncedgame.com/#view-movecamera)
---@param p1 integer X position
---@param p2 integer Y position
---@param p3 boolean|nil Whether to reset zoom level (OPTIONAL, default true)
function View.MoveCamera(p1, p2, p3) end

---Focus the camera on one or more entities
---
---[Official Documentation](https://modding.desyncedgame.com/#view-jumpcameratoentities)
---@param p1 table List of entities to focus on
function View.JumpCameraToEntities(p1) end

---Focus the camera on one or more entities
---
---[Official Documentation](https://modding.desyncedgame.com/#view-jumpcameratoentities)
---@param p1 entity Entities to focus on (argument can be repeated)
function View.JumpCameraToEntities(p1) end

---Get Local camera zoom distance
---
---[Official Documentation](https://modding.desyncedgame.com/#view-getcamerazoom)
---@returns integer # Camera zoom distance
function View.GetCameraZoom() end

---Sets the entity for the camera to follow
---
---[Official Documentation](https://modding.desyncedgame.com/#view-followentity)
---@param p1 entity Entity to follow
function View.FollowEntity(p1) end

---Get the entity currently followed by the camera
---
---[Official Documentation](https://modding.desyncedgame.com/#view-getfollowentity)
---@returns entity|nil # Followed entity (or nil if there is none)
function View.GetFollowEntity() end

---Show movement paths of selected entities
---
---[Official Documentation](https://modding.desyncedgame.com/#view-showentitypaths)
---@param p1 boolean Set to show or hide
function View.ShowEntityPaths(p1) end

---Show lines to store entities of all entities on screen
---
---[Official Documentation](https://modding.desyncedgame.com/#view-showentitystores)
---@param p1 boolean Set to show or hide
function View.ShowEntityStores(p1) end

---Get the currently selected entities
---
---[Official Documentation](https://modding.desyncedgame.com/#view-getselectedentities)
---@returns table|nil # List of selected entities (or nil if empty)
function View.GetSelectedEntities() end

---Get the currently selected entity (will be just the first if multiple are selected)
---
---[Official Documentation](https://modding.desyncedgame.com/#view-getselectedentity)
---@returns entity|nil # Selected entity (or nil if empty)
function View.GetSelectedEntity() end

---Check if an entity is selected
---
---[Official Documentation](https://modding.desyncedgame.com/#view-isselectedentity)
---@returns entity # Entity to check
function View.IsSelectedEntity() end

---Set the selected entity(s)
---
---[Official Documentation](https://modding.desyncedgame.com/#view-selectentities)
---@param p1 table List of entities to select
function View.SelectEntities(p1) end

---Set the selected entity(s)
---
---[Official Documentation](https://modding.desyncedgame.com/#view-selectentities)
---@param p1 entity Entities to select (argument can be repeated)
function View.SelectEntities(p1) end

---Highlight an entity
---
---[Official Documentation](https://modding.desyncedgame.com/#view-highlightentity)
---@param p1 entity|nil Entity to highlight (or nil to remove highlight)
function View.HighlightEntity(p1) end

---Switch to a cursor mode to select a location on the map
---
---[Official Documentation](https://modding.desyncedgame.com/#view-startcursorchooselocation)
---@param p1 function LUA function called when confirming a location with the location as the argument
---@param p2 function|nil LUA function called when placing aborting the cursor mode (OPTIONAL)
function View.StartCursorChooseLocation(p1, p2) end

---Switch to a cursor mode to select an entity on the map
---
---[Official Documentation](https://modding.desyncedgame.com/#view-startcursorchooseentity)
---@param p1 function LUA function called when confirming an entity with the entity as the argument
---@param p2 function|nil LUA function called when aborting the cursor mode (OPTIONAL)
function View.StartCursorChooseEntity(p1, p2) end

---Show entity construction location selection on map
---
---[Official Documentation](https://modding.desyncedgame.com/#view-startcursorconstruction)
---@param p1 string Frame id
---@param p2 string|nil Specific visual id or another frame id from which to use the visual (OPTIONAL, defaults to frame visual)
---@param p3 integer|nil Rotation (0 to 3) (OPTIONAL, otherwise remembers last used rotation)
---@param p4 function|nil LUA function called when confirming placement with arguments (location, rotation, is_valid) location will be an array if multiple constructions are enabled (OPTIONAL)
---@param p5 function|nil LUA function called when aborting the cursor mode (OPTIONAL)
---@param p6 function|nil LUA function called to check placement with arguments (x, y, rotation, is_visible, can_place, is_powered, size_x, size_y) (OPTIONAL)
---@param p7 boolean|nil Set to true to allow placing multiple constructions via dragging (OPTIONAL, default false)
function View.StartCursorConstruction(p1, p2, p3, p4, p5, p6, p7) end

---Cancel cursor mode started with the functions above
---
---[Official Documentation](https://modding.desyncedgame.com/#view-stopcursor)
function View.StopCursor() end

---RotateConstructionSite
---
---[Official Documentation](https://modding.desyncedgame.com/#view-rotateconstructionsite)
---@param p1 boolean|nil Clockwise (OPTIONAL, default false)
function View.RotateConstructionSite(p1) end

---Set a fullscreen effect parameter
---
---[Official Documentation](https://modding.desyncedgame.com/#view-setpostprocess)
---@param p1 string Effect name
---@param p2 any Effect value (numerical or color value)
function View.SetPostProcess(p1, p2) end

---Play effect at a location
---
---[Official Documentation](https://modding.desyncedgame.com/#view-playeffect)
---@param p1 string effect id
---@param p2 integer Tile Location X
---@param p3 integer Tile Location Y
---@param p4 boolean|nil Set to true to not show the effect outside the local player factions visibility (OPTIONAL)
---@returns integer # Effect instance (can be used with `View.StopEffect`)
function View.PlayEffect(p1, p2, p3, p4) end

---Play effect at a location
---
---[Official Documentation](https://modding.desyncedgame.com/#view-playeffect)
---@param p1 string effect id
---@param p2 entity entity to play it on
---@param p3 string|nil Socket name (OPTIONAL)
---@param p4 entity|nil Target entity (OPTIONAL)
---@param p5 integer|nil Entity instance number (OPTIONAL)
---@param p6 table|nil Particle effect parameter table (OPTIONAL)
---@returns integer # Effect instance (can be used with `View.StopEffect`)
function View.PlayEffect(p1, p2, p3, p4, p5, p6) end

---Set a parameter on an effect started with `View.PlayEffect`
---
---[Official Documentation](https://modding.desyncedgame.com/#view-seteffectparam)
---@param p1 integer Effect instance
---@param p2 string Parameter name
---@param p3 any Parameter value (numerical or color value)
function View.SetEffectParam(p1, p2, p3) end

---Stop an effect started with `View.PlayEffect`
---
---[Official Documentation](https://modding.desyncedgame.com/#view-stopeffect)
---@param p1 integer Effect instance
function View.StopEffect(p1) end

---Checks if the player is currently in construction mode
---
---[Official Documentation](https://modding.desyncedgame.com/#view-inconstructionmode)
---@returns boolean # Is in construction mode
function View.InConstructionMode() end

---Get all entities currently on screen
---
---[Official Documentation](https://modding.desyncedgame.com/#view-getvisibleentities)
---@param p1 boolean|nil Set to true to only get entities with health not at the maximum (OPTIONAL, default false)
---@returns table # One array with 4 or 6 elements for each entity (entity, X, Y, distance, health/max_health if true was passed)
function View.GetVisibleEntities(p1) end

---Set the full 3D camera position and target location directly
---
---[Official Documentation](https://modding.desyncedgame.com/#view-setcamera3dposition)
---@param p1 table|nil A table with x, y and z camera position (or nil if only setting the target location)
---@param p2 table|nil A table with x, y and z target location (or nil if only setting the camera position)
function View.SetCamera3DPosition(p1, p2) end

---Get the 3D camera position and target location
---
---[Official Documentation](https://modding.desyncedgame.com/#view-getcamera3dposition)
---@returns integer # Distance from camera position to target location
function View.GetCamera3DPosition() end

---Directly shift the camera in 3D space (relative to the current camera rotation)
---
---[Official Documentation](https://modding.desyncedgame.com/#view-pancamera3dposition)
---@param p1 integer Forward/backward move amount
---@param p2 integer Right/left move amount
---@param p3 integer Up/down move amount
function View.PanCamera3DPosition(p1, p2, p3) end

---Directly rotate the camera in place
---
---[Official Documentation](https://modding.desyncedgame.com/#view-tiltcamera3drotation)
---@param p1 integer Yaw amount in degrees (how much to rotate around the Z axis)
---@param p2 integer Pitch amount in degrees (how much to rotate up and down)
function View.TiltCamera3DRotation(p1, p2) end

---Fully lock the camera in its current state until `UnlockCamera` is called
---
---Direct modification of the camera with `SetCamera3DPosition`, `PanCamera3DPosition` or `TiltCamera3DRotation` is available even while locked.
---
---[Official Documentation](https://modding.desyncedgame.com/#view-lockcamera)
function View.LockCamera() end

---Unlock the camera again after having `LockCamera` called
---
---[Official Documentation](https://modding.desyncedgame.com/#view-unlockcamera)
function View.UnlockCamera() end

