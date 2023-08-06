---@meta Game
---The game module contains global functions
---[Official Documentation](https://modding.desyncedgame.com/#game)
Game = {}

---Start a new game
---
---[Official Documentation](https://modding.desyncedgame.com/#game-newgame)
---@param p1 table|nil New game settings (scenario, seed) (OPTIONAL)
---@param p2 boolean|nil If replay recording is to be disabled (OPTIONAL, default false)
---@param p3 table|nil Session settings when starting a multiplayer server (OPTIONAL, default nil)
function Game.NewGame(p1, p2, p3) end

---Restart the current scenario with the same game settings
---
---[Official Documentation](https://modding.desyncedgame.com/#game-restartgame)
function Game.RestartGame() end

---End the current game and return to the main menu
---
---[Official Documentation](https://modding.desyncedgame.com/#game-endgame)
function Game.EndGame() end

---Quit the game to desktop
---
---[Official Documentation](https://modding.desyncedgame.com/#game-quitgame)
function Game.QuitGame() end

---Pauses the game (is only effective while playing without multiplayer)
---
---If called multiple times with true, needs to be called equal amounts with false.
---
---[Official Documentation](https://modding.desyncedgame.com/#game-offlinepause)
---@param p1 boolean Pause state
function Game.OfflinePause(p1) end

---Get a loaded mod package
---
---[Official Documentation](https://modding.desyncedgame.com/#game-getmodpackage)
---@param p1 string Mod package path ("Mod/Package")
---@returns modpackage|nil # Module package (or nil on error)
function Game.GetModPackage(p1) end

---Get all currently active mod packages
---
---[Official Documentation](https://modding.desyncedgame.com/#game-getmodpackages)
---@returns table # Table of all active mod packages
function Game.GetModPackages() end

---Get the mod package of the currently running scenario
---
---[Official Documentation](https://modding.desyncedgame.com/#game-getscenariomodpackage)
---@returns modpackage|nil # Module package (or nil on error)
function Game.GetScenarioModPackage() end

---Get meta data of all installed mods
---
---[Official Documentation](https://modding.desyncedgame.com/#game-getinstalledmods)
---@returns table # Array of tables with mod meta data
function Game.GetInstalledMods() end

---Get meta data of all packages from an installed mod
---
---[Official Documentation](https://modding.desyncedgame.com/#game-getinstalledmodpackages)
---@param p1 string Mod id
---@returns table # Array of tables with package meta data
function Game.GetInstalledModPackages(p1) end

---Get meta data of one package and its mod
---
---[Official Documentation](https://modding.desyncedgame.com/#game-getinstalledmodpackage)
---@param p1 string Mod package path ("Mod/Package")
---@returns table|nil # Array of tables with mod meta data (or nil if package doesn't exist)
function Game.GetInstalledModPackage(p1) end

---Set a mods enabled state
---
---Will be applied when the next map starts
---
---[Official Documentation](https://modding.desyncedgame.com/#game-setmodenabled)
---@param p1 string Mod id
---@param p2 boolean Mod enabled state
function Game.SetModEnabled(p1, p2) end

---Refresh the list of installed mods and call mod change callbacks
---
---UIOnModAdded with parameters id, name for newly added mods
---
---UIOnModRemoved with parameters id, name for removed mods
---
---[Official Documentation](https://modding.desyncedgame.com/#game-refreshinstalledmods)
function Game.RefreshInstalledMods() end

---Get the name of the mod management system of this platform
---
---[Official Documentation](https://modding.desyncedgame.com/#game-getnativemodmanagername)
---@returns string|nil # System name (or nil if none available)
function Game.GetNativeModManagerName() end

---Open the native the mod management system of this platform (if available)
---
---[Official Documentation](https://modding.desyncedgame.com/#game-opennativemodmanager)
function Game.OpenNativeModManager() end

---Get command line arguments
---
---[Official Documentation](https://modding.desyncedgame.com/#game-getcommandlinearguments)
---@returns string # Command line arguments
function Game.GetCommandLineArguments() end

---Save save game
---
---[Official Documentation](https://modding.desyncedgame.com/#game-savegame)
---@param p1 string Save title
---@param p2 string|nil Slot name (OPTIONAL, pass nil to save into a new slot)
---@returns string|nil # Written slot name (or nil if save operation failed)
function Game.SaveGame(p1, p2) end

---Load save game
---
---[Official Documentation](https://modding.desyncedgame.com/#game-loadgame)
---@param p1 string Slot name
---@param p2 table|nil Session settings when starting a multiplayer server (OPTIONAL, default nil)
---@param p3 boolean|nil Reset mods to the currently active ones (OPTIONAL, default false)
function Game.LoadGame(p1, p2, p3) end

---Play save game replay
---
---[Official Documentation](https://modding.desyncedgame.com/#game-replaygame)
---@param p1 string Slot name
function Game.ReplayGame(p1) end

---Delete save game
---
---[Official Documentation](https://modding.desyncedgame.com/#game-deletegame)
---@param p1 string Slot name
---@returns boolean # Result
function Game.DeleteGame(p1) end

---Rename save game
---
---[Official Documentation](https://modding.desyncedgame.com/#game-renamegame)
---@param p1 string Slot name
---@param p2 string New save title
---@returns string|nil # Written slot name (or nil if rename operation failed)
function Game.RenameGame(p1, p2) end

---Get the list of all save games
---
---[Official Documentation](https://modding.desyncedgame.com/#game-getsavegamelist)
---@returns table # Save game list table
function Game.GetSaveGameList() end

---Get list of mod packages that were in use when the save game was created.
---
---Besides the basic fields (id, name, mod_id, mod_name, mod_version_code) the info table can contain the following flags:
---
---- is_scenario: Set on the package that is the scenario
---
---- error_missing: Set if the mod or package is now missing
---
---- error_dependencies: Set if the mod now has missing dependencies
---
---- error_version: Set if the save was made with a newer mod version than installed
---
---- now_disabled: Set if the save was made with an addon that is now disabled or has any of the errors above
---
---- now_enabled: Set if the save was made with an addon that has since been enabled
---
---The tables in the resulting array can optionally have error flags 'error_missing' or 'error_version' set.
---
---[Official Documentation](https://modding.desyncedgame.com/#game-getsavegamemodpackages)
---@returns table # Array of mod package info tables
function Game.GetSaveGameModPackages() end

---Get if any save game exists
---
---[Official Documentation](https://modding.desyncedgame.com/#game-haveanysavegame)
---@returns boolean # True if any save game exists
function Game.HaveAnySaveGame() end

---Get auto save time setting
---
---[Official Documentation](https://modding.desyncedgame.com/#game-getautosavetime)
---@returns integer # Auto save minutes (or 0 if disabled)
function Game.GetAutoSaveTime() end

---Set auto save time setting
---
---[Official Documentation](https://modding.desyncedgame.com/#game-setautosavetime)
---@param p1 integer Auto save minutes (or 0 to disable)
function Game.SetAutoSaveTime(p1) end

---Get lock mouse option
---
---[Official Documentation](https://modding.desyncedgame.com/#game-getmouselock)
---@returns boolean # Option
function Game.GetMouseLock() end

---Set lock mouse option
---
---[Official Documentation](https://modding.desyncedgame.com/#game-setmouselock)
---@param p1 boolean Option
function Game.SetMouseLock(p1) end

---Get edge scrolling option
---
---[Official Documentation](https://modding.desyncedgame.com/#game-getedgescrolling)
---@returns boolean # Option
function Game.GetEdgeScrolling() end

---Set edge scrolling option
---
---[Official Documentation](https://modding.desyncedgame.com/#game-setedgescrolling)
---@param p1 boolean Option
function Game.SetEdgeScrolling(p1) end

---Get scroll speed setting
---
---[Official Documentation](https://modding.desyncedgame.com/#game-getscrollspeed)
---@returns integer # Speed
function Game.GetScrollSpeed() end

---Set scroll speed setting
---
---[Official Documentation](https://modding.desyncedgame.com/#game-setscrollspeed)
---@param p1 integer Speed
function Game.SetScrollSpeed(p1) end

---Get the play time
---
---[Official Documentation](https://modding.desyncedgame.com/#game-getgameduration)
---@returns integer # Total number of seconds of play time
function Game.GetGameDuration() end

---Get the time that passed since the map was last saved
---
---[Official Documentation](https://modding.desyncedgame.com/#game-gettimesincesave)
---@returns integer # Seconds since the map was last saved
function Game.GetTimeSinceSave() end

---Get the game version
---
---[Official Documentation](https://modding.desyncedgame.com/#game-getversionstring)
---@returns string # Game version
function Game.GetVersionString() end

---Get the local player faction
---
---[Official Documentation](https://modding.desyncedgame.com/#game-getlocalplayerfaction)
---@returns faction|nil # Local player faction (or nil if there is none)
function Game.GetLocalPlayerFaction() end

---Get the local player extra data
---
---If called without argument from a mod other than 'Main', will return a mod specific child table parent.mods[mod_id]
---
---If called with an empty string or nil, will always return entire parent table
---
---[Official Documentation](https://modding.desyncedgame.com/#game-getlocalplayerextra)
---@param p1 string|nil Mod id (OPTIONAL)
---@returns table # Local player extra data table
function Game.GetLocalPlayerExtra(p1) end

---Get the local profile table
---
---If called without argument from a mod other than 'Main', will return a mod specific child table parent.mods[mod_id]
---
---If called with an empty string or nil, will always return entire parent table
---
---[Official Documentation](https://modding.desyncedgame.com/#game-getprofile)
---@param p1 string|nil Mod id (OPTIONAL)
---@returns table # Profile table
function Game.GetProfile(p1) end

---Change the color mapping mode
---
---[Official Documentation](https://modding.desyncedgame.com/#game-setcolormapping)
---@param p1 string Mode
function Game.SetColorMapping(p1) end

---Convert a color according to the color mapping
---
---[Official Documentation](https://modding.desyncedgame.com/#game-getmappedcolor)
---@param p1 color Input color
---@returns color # Mapped color
function Game.GetMappedColor(p1) end

---Create an online session
---
---[Official Documentation](https://modding.desyncedgame.com/#game-createonlinesession)
---@param p1 table Session settings
---@param p2 function LUA function callback when complete (with 1 argument boolean success)
function Game.CreateOnlineSession(p1, p2) end

---Create an online session
---
---[Official Documentation](https://modding.desyncedgame.com/#game-findonlinesessions)
---@param p1 function LUA function callback when complete (with 2 arguments boolean success and table session list)
---@param p2 boolean|nil True to search for servers on LAN, false to search lobbies on online service if available (OPTIONAL, default false)
function Game.FindOnlineSessions(p1, p2) end

---Join an online session
---
---[Official Documentation](https://modding.desyncedgame.com/#game-joinonlinesession)
---@param p1 integer|nil Session number (in result list of FindOnlineSessions) to join. You can pass 0 or nil to join the most recent invited session.
---@param p2 string|nil Server password (OPTIONAL)
---@param p3 function|nil LUA function callback when complete (with 1 argument boolean success) (OPTIONAL)
function Game.JoinOnlineSession(p1, p2, p3) end

---Join an online session
---
---[Official Documentation](https://modding.desyncedgame.com/#game-joinonlinesession)
---@param p1 string|nil Server hostname (with optional :port suffix) to join with direct IP connection
---@param p2 string|nil Server password (OPTIONAL)
---@param p3 function|nil LUA function callback when complete (with 1 argument boolean success) (OPTIONAL)
function Game.JoinOnlineSession(p1, p2, p3) end

---End online session (stop server or go back to title on client)
---
---[Official Documentation](https://modding.desyncedgame.com/#game-endonlinesession)
function Game.EndOnlineSession() end

---Returns if online lobbies are available and sessions can be created with visibility PUBLIC/FRIENDS/INVITE
---
---[Official Documentation](https://modding.desyncedgame.com/#game-onlinehavelobbies)
---@returns boolean # Availability
function Game.OnlineHaveLobbies() end

---Returns if friend inviting is available
---
---[Official Documentation](https://modding.desyncedgame.com/#game-caninvitefriend)
---@returns boolean # Availability (true if available on platform and currently in a multiplayer session)
function Game.CanInviteFriend() end

---Show the friend invite UI to invite them to the current session
---
---[Official Documentation](https://modding.desyncedgame.com/#game-showfriendinviteui)
function Game.ShowFriendInviteUI() end

---Get the current network mode
---
---[Official Documentation](https://modding.desyncedgame.com/#game-getnetmode)
---@returns string # Mode string ('offline', 'server' or 'client')
function Game.GetNetMode() end

---Get a table of all connected multiplayer players
---
---[Official Documentation](https://modding.desyncedgame.com/#game-getallplayers)
---@returns table # Player list
function Game.GetAllPlayers() end

---Get a connected player by id
---
---[Official Documentation](https://modding.desyncedgame.com/#game-getplayerbyid)
---@param p1 integer Player id
---@returns table # Player details
function Game.GetPlayerById(p1) end

---Get player details of the local player
---
---[Official Documentation](https://modding.desyncedgame.com/#game-getlocalplayer)
---@returns table # Player details
function Game.GetLocalPlayer() end

---Get the name of a connected player
---
---[Official Documentation](https://modding.desyncedgame.com/#game-getplayername)
---@param p1 integer|nil Player id (OPTIONAL, defaults to local player)
---@returns string # Player name
function Game.GetPlayerName(p1) end

---Check if a given player id belongs to the host player
---
---[Official Documentation](https://modding.desyncedgame.com/#game-ishostplayer)
---@param p1 integer|nil Player id (OPTIONAL, defaults to local player)
---@returns boolean # True if player is the host player
function Game.IsHostPlayer(p1) end

---Check if a given player id belongs to the local player
---
---[Official Documentation](https://modding.desyncedgame.com/#game-islocalplayer)
---@param p1 integer Player id
---@returns boolean # True if player is the local player
function Game.IsLocalPlayer(p1) end

---Kick a player from the server (only available to the host of a locally running session)
---
---[Official Documentation](https://modding.desyncedgame.com/#game-kickplayer)
---@param p1 integer Player id
---@param p2 boolean|nil True to ban the player until the game on the server is restarted (OPTIONAL, default false)
function Game.KickPlayer(p1, p2) end

---Get the number of connected players
---
---Will be 1 in single player, and 0 on a dedicated server without anyone connected
---
---[Official Documentation](https://modding.desyncedgame.com/#game-getplayercount)
---@returns integer # Player count
function Game.GetPlayerCount() end

---Get the maximum number of multiplayer players (or 1 if offline)
---
---[Official Documentation](https://modding.desyncedgame.com/#game-getmaxplayercount)
---@returns integer # Max player count
function Game.GetMaxPlayerCount() end

---Get the visibility of the current multiplayer session
---
---[Official Documentation](https://modding.desyncedgame.com/#game-getsessionvisibility)
---@returns string|nil # Visibility (PUBLIC, FRIENDS, INVITE, LAN or nil if there is no session)
function Game.GetSessionVisibility() end

---Get the session settings used to start hosting the session. Only the host can use this.
---
---[Official Documentation](https://modding.desyncedgame.com/#game-gethostsessionsettings)
---@returns table|nil # Session settings table (or nil if not hosting a session)
function Game.GetHostSessionSettings() end

---Get which player has a given entity selected
---
---[Official Documentation](https://modding.desyncedgame.com/#game-getentityselectedplayerid)
---@param p1 entity Entity to check
---@returns table|nil # List of player ids (or nil if none)
function Game.GetEntitySelectedPlayerId(p1) end

---Get the display fullscreen mode
---
---[Official Documentation](https://modding.desyncedgame.com/#game-getfullscreenmode)
---@returns string # Mode ('windowed', 'borderless', 'fullscreen')
function Game.GetFullscreenMode() end

---Change the display fullscreen mode
---
---[Official Documentation](https://modding.desyncedgame.com/#game-setfullscreenmode)
---@param p1 string Mode ('windowed', 'borderless', 'fullscreen')
function Game.SetFullscreenMode(p1) end

---Get active screen resolution
---
---[Official Documentation](https://modding.desyncedgame.com/#game-getscreenresolution)
---@returns integer # Y resolution
function Game.GetScreenResolution() end

---Set screen resolution
---
---[Official Documentation](https://modding.desyncedgame.com/#game-setscreenresolution)
---@returns integer # Y resolution
function Game.SetScreenResolution() end

---Get a list screen resolutions appropriate for the current fullscreen mode
---
---[Official Documentation](https://modding.desyncedgame.com/#game-getscreenresolutions)
---@returns table # Resolution list
function Game.GetScreenResolutions() end

---Apply resolution and fullscreen mode settings
---
---[Official Documentation](https://modding.desyncedgame.com/#game-applyscreenmoderequired)
---@returns boolean # True if a followup call to ConfirmScreenMode or RevertScreenMode is needed
function Game.ApplyScreenModeRequired() end

---Apply resolution and fullscreen mode settings
---
---[Official Documentation](https://modding.desyncedgame.com/#game-applyscreenmodeneedconfirm)
---@returns boolean # True if a followup call to ConfirmScreenMode or RevertScreenMode is needed
function Game.ApplyScreenModeNeedConfirm() end

---Confirm changed resolution and fullscreen mode settings
---
---[Official Documentation](https://modding.desyncedgame.com/#game-confirmscreenmode)
function Game.ConfirmScreenMode() end

---Revert resolution and fullscreen mode to last confirmed settings
---
---[Official Documentation](https://modding.desyncedgame.com/#game-revertscreenmode)
function Game.RevertScreenMode() end

---Get the vsync video setting
---
---[Official Documentation](https://modding.desyncedgame.com/#game-getvsync)
---@returns boolean # VSync enabled state
function Game.GetVSync() end

---Set the vsync video setting
---
---[Official Documentation](https://modding.desyncedgame.com/#game-setvsync)
---@param p1 boolean VSync enabled state
function Game.SetVSync(p1) end

---Get the frame rate limit
---
---[Official Documentation](https://modding.desyncedgame.com/#game-getframeratelimit)
---@returns integer # Frame rate limit (0 means unlimited)
function Game.GetFrameRateLimit() end

---Set the frame rate limit
---
---[Official Documentation](https://modding.desyncedgame.com/#game-setframeratelimit)
---@returns integer # Frame rate limit (0 means unlimited)
function Game.SetFrameRateLimit() end

---Get power save mode setting
---
---[Official Documentation](https://modding.desyncedgame.com/#game-getpowersavemode)
---@returns boolean # Power Save Mode enabled state
function Game.GetPowerSaveMode() end

---Set power save mode setting
---
---[Official Documentation](https://modding.desyncedgame.com/#game-setpowersavemode)
---@param p1 boolean Power Save Mode enabled state
function Game.SetPowerSaveMode(p1) end

---Starts or stops power saving if power save mode has been enabled
---
---[Official Documentation](https://modding.desyncedgame.com/#game-powersavingsection)
---@param p1 boolean State
function Game.PowerSavingSection(p1) end

---Get the overall graphical quality level
---
---[Official Documentation](https://modding.desyncedgame.com/#game-getoverallquality)
---@returns integer # Quality level (0 - 3)
function Game.GetOverallQuality() end

---Set the overall graphical quality level
---
---[Official Documentation](https://modding.desyncedgame.com/#game-setoverallquality)
---@param p1 integer Quality level (0 - 3)
function Game.SetOverallQuality(p1) end

---Get the resolution scale percentage
---
---[Official Documentation](https://modding.desyncedgame.com/#game-getresolutionpercentage)
---@returns integer # Scale percentage
function Game.GetResolutionPercentage() end

---Set the resolution scale percentage
---
---[Official Documentation](https://modding.desyncedgame.com/#game-setresolutionpercentage)
---@param p1 integer Scale percentage
function Game.SetResolutionPercentage(p1) end

---Get the state of HDR output
---
---[Official Documentation](https://modding.desyncedgame.com/#game-gethdroutput)
---@returns boolean # HDR output state
function Game.GetHDROutput() end

---Enable or disable HDR output
---
---[Official Documentation](https://modding.desyncedgame.com/#game-sethdroutput)
---@param p1 boolean State
function Game.SetHDROutput(p1) end

---Get the depth of field quality level
---
---[Official Documentation](https://modding.desyncedgame.com/#game-getdepthoffieldquality)
---@returns integer # Quality level (0 = disabled, 4 = max)
function Game.GetDepthOfFieldQuality() end

---Set the depth of field quality level
---
---[Official Documentation](https://modding.desyncedgame.com/#game-setdepthoffieldquality)
---@param p1 integer Quality level (0 = disabled, 4 = max)
function Game.SetDepthOfFieldQuality(p1) end

---Get the Depth of Field Strength
---
---[Official Documentation](https://modding.desyncedgame.com/#game-getdepthoffieldstrength)
---@returns integer # Strength of Depth of Field
function Game.GetDepthOfFieldStrength() end

---Set the strength of the Depth of field
---
---[Official Documentation](https://modding.desyncedgame.com/#game-setdepthoffieldstrength)
---@param p1 integer Strength of Depth of Field
function Game.SetDepthOfFieldStrength(p1) end

---Get the volume of a mix type
---
---[Official Documentation](https://modding.desyncedgame.com/#game-getvolume)
---@param p1 string Volume type ('master', 'effect', 'music', 'voice', 'ui')
---@returns integer # Volume percentage (100 means full volume)
function Game.GetVolume(p1) end

---Set the volume of a mix type
---
---[Official Documentation](https://modding.desyncedgame.com/#game-setvolume)
---@param p1 string Volume type ('master', 'effect', 'music', 'voice', 'ui')
---@param p2 integer Volume percentage (100 means full volume)
function Game.SetVolume(p1, p2) end

---Load the news text from the online source
---
---[Official Documentation](https://modding.desyncedgame.com/#game-getnewstext)
---@param p1 function LUA function callback when complete (with one string argument containing the text)
function Game.GetNewsText(p1) end

---Open Website to a special URL
---
---[Official Documentation](https://modding.desyncedgame.com/#game-openwebsite)
---@param p1 string Site name (one of "STORE", "DISCORD")
function Game.OpenWebsite(p1) end

---Open OS file browser to a special folder
---
---[Official Documentation](https://modding.desyncedgame.com/#game-explorefolder)
---@param p1 string Special folder name (one of "SAVEGAMES", "LOGS", "MODS")
function Game.ExploreFolder(p1) end

