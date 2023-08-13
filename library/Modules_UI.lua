---@meta UI
---The UI module contains UI related functions
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#ui)
UI = {}

---Register a layout definition tag
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#ui-register)
---@param p1 string Layout tag name
---@param p2 string Layout string
---@param p3 table|nil Class table (OPTIONAL)
---@param p4 boolean|nil Set to true to overwrite an existing layout tag (OPTIONAL, default false)
function UI.Register(p1, p2, p3, p4) end

---Check if a layout tag has been registered
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#ui-isregistered)
---@param p1 string Layout tag name
---@returns boolean # True if known layout tag
function UI.IsRegistered(p1) end

---Instantiate a new widget
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#ui-new)
---@param p1 string Layout Text
---@param p2 table|nil Property table (OPTIONAL)
---@returns Widget|nil # Created widget (or nil on error)
function UI.New(p1, p2) end

---Add widget to screen canvas
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#ui-addlayout)
---@param p1 Widget Widget
---@param p2 integer|nil Ordering priority (OPTIONAL, default 0)
---@returns Widget # The widget passed in the first argument
function UI.AddLayout(p1, p2) end

---Add widget to screen canvas
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#ui-addlayout)
---@param p1 string Layout text for creating a new widget inline
---@param p2 table|nil Property table for the inline widget (OPTIONAL)
---@param p3 integer|nil Ordering priority (OPTIONAL, default 0)
---@returns Widget # The widget passed in the first argument
function UI.AddLayout(p1, p2, p3) end

---Instantiate the options widget of a mod
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#ui-makemodoptionswidget)
---@param p1 string Mod id
---@returns Widget|nil # Created widget (or nil on error)
function UI.MakeModOptionsWidget(p1) end

---Get the size of the screen scaled in UI coordinates
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#ui-getscreensize)
---@returns integer # Screen size Y
function UI.GetScreenSize() end

---Pop up a context menu or window
---
---If there isn't enough space in the direction it will flip to the other side
---
---If there isn't enough space in the crosswise direction it will shift horizontally (if UP/DOWN) or vertically (if LEFT/RIGHT)
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#ui-menupopup)
---@param p1 Widget Widget
---@param p2 string|nil Direction (OPTIONAL, default DOWN or UP/LEFT/RIGHT)
---@param p3 string|nil Alignment (OPTIONAL, default MIDDLE or LEFT/RIGHT/TOP/BOTTOM)
---@param p4 Widget|nil Pop up next to this widget (OPTIONAL, default pop up at mouse cursor)
---@param p5 integer Attachment X offset
---@param p6 integer Attachment Y offset
---@returns Widget # The widget passed in the first argument or that was created
function UI.MenuPopup(p1, p2, p3, p4, p5, p6) end

---Pop up a context menu or window
---
---If there isn't enough space in the direction it will flip to the other side
---
---If there isn't enough space in the crosswise direction it will shift horizontally (if UP/DOWN) or vertically (if LEFT/RIGHT)
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#ui-menupopup)
---@param p1 string Layout text for creating a new widget inline
---@param p2 table|nil Property table for the inline widget (OPTIONAL)
---@param p3 string|nil Direction (OPTIONAL, default DOWN or UP/LEFT/RIGHT)
---@param p4 string|nil Alignment (OPTIONAL, default MIDDLE or LEFT/RIGHT/TOP/BOTTOM)
---@param p5 Widget|nil Pop up next to this widget (OPTIONAL, default pop up at mouse cursor)
---@param p6 integer Attachment X offset
---@param p7 integer Attachment Y offset
---@returns Widget # The widget passed in the first argument or that was created
function UI.MenuPopup(p1, p2, p3, p4, p5, p6, p7) end

---Close the context menu opened with MenuPopup
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#ui-closemenupopup)
---@param p1 Widget|nil Close popup containing this widget (OPTIONAL, default close all popups)
---@returns boolean # If a popup was actually closed
function UI.CloseMenuPopup(p1) end

---Close the current tooltip
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#ui-closetooltip)
function UI.CloseTooltip() end

---Refresh the current tooltip
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#ui-refreshtooltip)
function UI.RefreshTooltip() end

---Play a UI sound effect, music, voice or ambience
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#ui-playsound)
---@param p1 string Effect ID
---@param p2 integer|nil Volume multiplier for sound effect (OPTIONAL, default 1)
---@param p3 integer|nil Pitch multiplier for sound effect (OPTIONAL, default 1)
---@param p4 integer|nil Start time for sound effect (OPTIONAL, default 0)
function UI.PlaySound(p1, p2, p3, p4) end

---Stop the playing music
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#ui-stopmusic)
function UI.StopMusic() end

---Stop the playing voice
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#ui-stopvoice)
function UI.StopVoice() end

---Stop the playing ambience sound effect
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#ui-stopambiencesound)
function UI.StopAmbienceSound() end

---Hide the entire UI
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#ui-setuihidden)
---@param p1 boolean|nil UI hidden state (OPTIONAL, if not set will toggle)
---@returns boolean # UI hidden state
function UI.SetUIHidden(p1) end

---Check if UI has been hidden with SetUIHidden
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#ui-isuihidden)
---@returns boolean # UI hidden state
function UI.IsUIHidden() end

---Query the UI coordinate of an entity in the game camera view
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#ui-entitylocationonscreen)
---@param p1 Entity Input entity
---@param p2 boolean|nil Only return success if the position is on screen (or less than 100 points away from the screen border) (OPTIONAL, default false)
---@returns integer # Screen position Y.
function UI.EntityLocationOnScreen(p1, p2) end

---Run code in UI context or call bound UIMsg functions
---
---When called from simulation context the function will execute for all connected players (to limit to specific players use `faction:RunUI` or `Action.RunUI`)
---
---When called from UI context the function will only execute for the local player
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#ui-run)
---@param p1 function LUA function to execute in UI context
---@param p2 any|nil Passed values (OPTIONAL, can pass multiple values)
function UI.Run(p1, p2) end

---Run code in UI context or call bound UIMsg functions
---
---When called from simulation context the function will execute for all connected players (to limit to specific players use `faction:RunUI` or `Action.RunUI`)
---
---When called from UI context the function will only execute for the local player
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#ui-run)
---@param p1 string Message name registered in UIMsg
---@param p2 any|nil Passed values (OPTIONAL, can pass multiple values)
function UI.Run(p1, p2) end

---Get a table of languages
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#ui-getlanguages)
---@returns table # languages (pairs of 'code' = 'name')
function UI.GetLanguages() end

---Get the current language code
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#ui-getlanguagecode)
---@returns string # language code (for example 'en_us')
function UI.GetLanguageCode() end

---Change the active language
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#ui-setlanguagecode)
---@param p1 string language code (for example 'en_us')
function UI.SetLanguageCode(p1) end

---Get the UI scale factor
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#ui-getscale)
---@returns integer # scale factor (1.0 being 100%)
function UI.GetScale() end

---Set the UI scale factor
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#ui-setscale)
---@param p1 integer scale factor (1.0 being 100%)
function UI.SetScale(p1) end

---Gets position of mouse cursor
---
---If a widget gets passed that hasn't had its layout calculated yet, the function will return nil
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#ui-getmouseposition)
---@param p1 Widget|nil Widget to get relative position to (OPTIONAL)
---@returns integer # y position of mouse cursor
function UI.GetMousePosition(p1) end

---Check if the mouse cursor is over a UI widget
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#ui-ismouseoverui)
---@returns boolean # True if mouse is over UI
function UI.IsMouseOverUI() end

