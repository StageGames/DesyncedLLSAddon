---@meta Instruction
---@class Instruction
---@field func fun(comp: Component, state: table, cause: any, ...): boolean|nil
---@field args table|nil
---@field exec_arg table|boolean|nil
---@field name string|nil
---@field desc string|nil
---@field category string
---@field icon string
Instruction = {}

---@param comp Component
---@param state table
---@param i integer
---@return Register
---@see Component.GetRegister
function InstGet(comp, state, i)
end

---@param comp Component
---@param state table
---@param i integer
---@return integer
---@see Component.GetRegisterNum
function InstGetNum(comp, state, i)
end

---@param comp Component
---@param state table
---@param i integer
---@return Point
---@see Component.GetRegisterCoord
function InstGetCoord(comp, state, i)
end

---@param comp Component
---@param state table
---@param i integer
---@return string
---@see Component.GetRegisterId
function InstGetId(comp, state, i)
end

---@param comp Component
---@param state table
---@param i integer
---@return Entity
---@see Component.GetRegisterEntity
function InstGetEntity(comp, state, i)
end

---@param comp Component
---@param state table
---@param a integer
---@param b integer
---@return boolean
function InstAreEqual(comp, state, a, b)
end

---@param comp Component
---@param state table
---@param i integer
function InstSet(comp, state, i, val)
end

---@param comp Component
---@param state table
---@param err string
function InstError(comp, state, err)
end

-- ---@param comp Component
-- ---@param state table
-- ---@param i integer
-- function InstBeginBlock(comp, state, it)
-- 	local next_counter, loop_inst_idx = state.counter, state.lastcounter
-- 	local inst = state.asm[loop_inst_idx]
-- 	local op = data.instructions[inst[1]]
-- 	if op.next(comp, state, it, table.unpack(inst, 3)) then
-- 		op.last(comp, state, it, table.unpack(inst, 3))
-- 	else
-- 		local blocks = state.blocks
-- 		if not blocks then blocks = {} state.blocks = blocks end
-- 		if #blocks >= 40 then
-- 			return InstError(comp, state, "Behavior exceeded loop recursion limit")
-- 		end
-- 		blocks[#blocks + 1] = { next_counter, loop_inst_idx, it, state.returns and #state.returns or 0 }
-- 	end
-- end