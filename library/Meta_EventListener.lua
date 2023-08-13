---@meta EventListener
---A global event listener used for various APIs
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#eventlistener)
EventListener = {}

---Bind a function to this listener, usually done with a function assignment like
---
---function LISTENER.FUNCTIONNAME(arg1, arg2) ... end
---
---Only use this if you want to explicitly unbind the function later.
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#eventlistener-bind)
---@param p1 string Function name
---@param p2 function Callback function
function EventListener.Bind(p1, p2) end

---Unbind a specific function from this listener
---
---Depending on the type of this listener unbinding functions might not be supported.
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#eventlistener-unbind)
---@param p1 string Function name
---@param p2 function Callback function
function EventListener.Unbind(p1, p2) end

---Unbind all functions bound to a given name
---
---Depending on the type of this listener unbinding functions might not be supported.
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#eventlistener-unbindall)
---@param p1 string Function name
function EventListener.UnbindAll(p1) end

