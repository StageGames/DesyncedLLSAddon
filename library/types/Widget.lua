---@class Widget
---@field parent Widget Parent widget (or nil if none)
---@field root Widget Root widget (can be self if there is no parent)
---@field children table Array of child widgets
---@field child_count integer Number of child widgets
---@field has_children boolean True if there are any child widgets
---@field child_index integer Child index
---@field next_sibling Widget Next sibling (or nil if none)
---@field previous_sibling Widget Previous sibling (or nil if none)
---@field class table Class table (or nil if none)
---A widget object represents a UI object that is part of a layout tree.
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#widget)
Widget = {}

---Check if widget has not been removed yet
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#widget-isvalid)
---@returns boolean # Valid state
function Widget:IsValid() return false end

---Add a widget to a panel widget
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#widget-add)
---@param p1 Widget The widget to add
---@returns Widget # The added widget
function Widget:Add(p1) return Widget end

---Add a widget to a panel widget
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#widget-add)
---@param p1 string Layout text for creating a new widget inline
---@param p2 table|nil Property table for the inline widget (OPTIONAL)
---@returns Widget # The added widget
function Widget:Add(p1, p2) return Widget end

---Set the content of a single-child panel widget
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#widget-setcontent)
---@param p1 Widget The widget to set
---@returns Widget # The set widget
function Widget:SetContent(p1) return Widget end

---Set the content of a single-child panel widget
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#widget-setcontent)
---@param p1 string Layout text for creating a new widget inline
---@param p2 table|nil Property table for the inline widget (OPTIONAL)
---@returns Widget # The set widget
function Widget:SetContent(p1, p2) return Widget end

---Clear all widgets in a panel widget
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#widget-clear)
function Widget:Clear() end

---Get a child widget
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#widget-getchild)
---@param p1 integer|nil Which child to get (OPTIONAL, default 1)
---@returns Widget # Child widget
function Widget:GetChild(p1) return Widget end

---Clear and add multiple child widgets
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#widget-setchildren)
---@param p1 table Array of widgets
function Widget:SetChildren(p1) end

---Sort all child widgets
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#widget-sortchildren)
---@param p1 function Sort predicate callback (will be called with two widgets to compare)
function Widget:SortChildren(p1) end

---Remove a widget from its parent
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#widget-removefromparent)
function Widget:RemoveFromParent() end

---Invoke an event function
---
---Similar to calling the function directly but will correctly pass the parent as self if invoking a function higher up the layout tree.
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#widget-sendevent)
---@param p1 string Function property name
---@param p2 any|nil Passed values (OPTIONAL, can pass multiple values)
---@returns any # Return values of call
function Widget:SendEvent(p1, p2) return 0 end

---Get the desired size of a widget
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#widget-getdesiredsize)
---@returns integer # Height
function Widget:GetDesiredSize() return 0 end

---Set the position of a widget placed a canvas panel widget
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#widget-setposition)
---@param p1 integer X position
---@param p2 integer Y position
---@param p3 integer|nil Z order, widgets with higher values are drawn on top (OPTIONAL)
function Widget:SetPosition(p1, p2, p3) end

---Gets the viewport relative position of the widget
---
---If a widget gets passed that hasn't had its layout calculated yet, the function will return nil
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#widget-getviewportposition)
---@param p1 Widget|nil Widget to get relative position to (OPTIONAL)
---@returns integer # Y position
function Widget:GetViewportPosition(p1) return 0 end

---Set this widget (and any children) to not interact with the mouse cursor (clicking or dragging over)
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#widget-setignorehittest)
---@param p1 boolean|nil Ignore hit test  (OPTIONAL)
function Widget:SetIgnoreHitTest(p1) end

---Animate a numerical property
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#widget-tweento)
---@param p1 string Parameter name
---@param p2 integer Target value
---@param p3 integer|nil Duration in milliseconds (OPTIONAL, default 400)
---@param p4 integer|nil Wait time in milliseconds (OPTIONAL, default 0)
---@param p5 string|nil Easing function (OPTIONAL, default "InOutQuad")
---@param p6 function|nil Animation finished callback (OPTIONAL)
function Widget:TweenTo(p1, p2, p3, p4, p5, p6) end

---Animate a numerical property
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#widget-tweenfromto)
---@param p1 string Parameter name
---@param p2 integer Start value
---@param p3 integer Target value
---@param p4 integer|nil Duration in milliseconds (OPTIONAL, default 400)
---@param p5 integer|nil Wait time in milliseconds (OPTIONAL, default 0)
---@param p6 string|nil Easing function (OPTIONAL, default "InOutQuad")
---@param p7 function|nil Animation finished callback (OPTIONAL)
function Widget:TweenFromTo(p1, p2, p3, p4, p5, p6, p7) end

---Stop an active tween
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#widget-stoptween)
---@param p1 string Parameter name
---@returns boolean # True if a tween existed and was stopped
function Widget:StopTween(p1) return false end

---Get the target value of an active tween
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#widget-gettweentarget)
---@param p1 string Parameter name
---@returns integer|nil # Target value (or nil if not active tween)
function Widget:GetTweenTarget(p1) return 0 end

---Find property in any widget above in the layout tree
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#widget-findabove)
---@param p1 string Parameter name
---@returns any # Parameter value if found
function Widget:FindAbove(p1) return 0 end

