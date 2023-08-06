---@meta Debug
---The debug module contains debug functions
---[Official Documentation](https://modding.desyncedgame.com/#debug)
Debug = {}

---Assert a condition during automated tests
---
---[Official Documentation](https://modding.desyncedgame.com/#debug-assert)
---@param p1 boolean Condition
---@param p2 string Message
function Debug.Assert(p1, p2) end

---Ending an automated test scenario
---
---[Official Documentation](https://modding.desyncedgame.com/#debug-endtest)
function Debug.EndTest() end

---Print the current call stack
---
---[Official Documentation](https://modding.desyncedgame.com/#debug-printcallstack)
function Debug.PrintCallStack() end

---Get lua internal memory stats
---
---[Official Documentation](https://modding.desyncedgame.com/#debug-getstats)
---@returns table # Stats
function Debug.GetStats() end

---Get a hash of the entire map state
---
---[Official Documentation](https://modding.desyncedgame.com/#debug-getmapstatehash)
---@returns integer # All hash number
function Debug.GetMapStateHash() end

---Start or stop tracking of all LUA memory allocations
---
---Will log all new allocations that have not been freed between starting and stopping.
---
---[Official Documentation](https://modding.desyncedgame.com/#debug-setmemorytracking)
---@param p1 boolean State
function Debug.SetMemoryTracking(p1) end

---Time some code
---
---[Official Documentation](https://modding.desyncedgame.com/#debug-benchmark)
---@returns integer # Number of milliseconds (returned every second call)
function Debug.Benchmark() end

---Crash the program (only works in mod development mode)
---
---[Official Documentation](https://modding.desyncedgame.com/#debug-crashprogram)
function Debug.CrashProgram() end

