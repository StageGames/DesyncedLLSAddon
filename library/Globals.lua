---@meta
CC_ACTIVATED               = 1 << 0
CC_FINISH_WORK             = 1 << 1
CC_FINISH_SLEEP            = 1 << 2
CC_FINISH_MOVE             = 1 << 3
CC_REFRESH                 = 1 << 4
CC_WAKEUP                  = 1 << 5
CC_CHANGED_REGISTER_NUM    = 1 << 6
CC_CHANGED_REGISTER_ID     = 1 << 7
CC_CHANGED_REGISTER_ENTITY = 1 << 8
CC_CHANGED_REGISTER_COORD  = 1 << 9
CC_CHANGED_ITEMSLOT_AMOUNT = 1 << 10
CC_CHANGED_ITEMSLOT_ITEM   = 1 << 11
CC_CHANGED_ITEMSLOT_EXTRA  = 1 << 12
CC_LOST_MOVE_CONTROL       = 1 << 13
CC_LOST_POWER              = 1 << 14
CC_OTHER_COMP_FINISH_WORK  = 1 << 15
CC_OTHER_COMP_FAIL_WORK    = 1 << 16

FRAMEREG_GOTO              = Register
FRAMEREG_STORE             = Register
FRAMEREG_VISUAL            = Register
FRAMEREG_SIGNAL            = Register
FRAMEREG_COUNT             = Register
REG_INFINITE               = Register

EntityAction = EventListener
FactionAction = EventListener
ConstructionAction = EventListener
PlayerAction = EventListener

UIMsg = EventListener
MapMsg = EventListener

--- ToDo: Add documentation
data = {
	---@type table<integer|string, Component>
	components = {},
	---@type table<string, Instruction>
	instructions = {},
}

--- ToDo: Add documentation
ModPackage = {}

--- ToDo: Add documentation
InputDefaultActionMappings = {}

--- ToDo: Add documentation
InputTooltips = {}

--- ToDo: Add documentation
---@return string
function L(...) end