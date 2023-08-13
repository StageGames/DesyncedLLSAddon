---@meta Twitch
---The twitch module contains functions that interact with Twitch.
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#twitch)
Twitch = {}

---Start the auth process on Twitch unless already logged in
---
---Once logged in the authentication data is stored to disk and login is not needed until logged out
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#twitch-login)
---@param p1 function Callback which will get called with true or false depending on success
function Twitch.Login(p1) end

---Clear any stored authentication parameters if logged in
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#twitch-logout)
function Twitch.Logout() end

---Check if the user is logged in on Twitch
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#twitch-isloggedin)
---@returns boolean # Login status
function Twitch.IsLoggedIn() end

---Request user information of the logged in user
---
---If the user data has already been requested before the callback will be called immediately.
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#twitch-getuserdata)
---@param p1 function|nil Callback which will get called with user_id and display_name or nil on error
function Twitch.GetUserData(p1) end

---Request the list of custom rewards
---
---If the reward list has already been requested before the callback will be called immediately with the cached data.
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#twitch-getcustomrewards)
---@param p1 function Callback which will get called with an array of reward tables { id = "...", title = "..." }
function Twitch.GetCustomRewards(p1) end

---Start listening for reward redemptions
---
---User must be logged in before this is called (`IsLoggedIn` must return true)
---
---When a reward is redeemed, `UIMsg.TwitchOnRewardRedeemed(reward_id, user_display_name, redemption_user_input)` will get called
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#twitch-startrewards)
function Twitch.StartRewards() end

---Stop listening for reward redemptions
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#twitch-stoprewards)
function Twitch.StopRewards() end

---Start listening for chat messages
---
---When a message is posted, `UIMsg.TwitchOnChatMessage(username, message)` will get called
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#twitch-startchat)
---@param p1 string|nil Channel name to join, can be omitted if logged in (OPTIONAL)
function Twitch.StartChat(p1) end

---Stop listening for chat messages
---
---[Official Documentation](https://modding.desyncedgame.com/syntax.html#twitch-stopchat)
function Twitch.StopChat() end

