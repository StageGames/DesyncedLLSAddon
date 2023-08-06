# Desynced Lua Language Server Addon
This documentation covers the Lua API for [Desynced][desynced] and is to be used with [Sumneko](https://github.com/sumneko)'s [Lua Language Server][lls], using [LuaCATS]() annotation system.

## Setup

### VS Code
Follow the following steps to get started with this Addon.

1. Open (or download and install [Visual Studio Code][vscode]).
2. Install the [Lua Language Server][lls]'s [Visual Studio Code extension](https://marketplace.visualstudio.com/items?itemName=sumneko.lua).
3. Clone this repo.
4. Open the mods folder of Desynced with Visual Studio Code.
5. Inside the mods folder of Desynced, create a new folder ".vscode" if it doesn't exist.
6. Inside of ".vscode", create a file called `settings.json`
7. Paste the following json into this file, and replace `Lua.workspace.library` with the path this repo has been cloned to.

```json
{
    "Lua.runtime.version": "Lua 5.4",
    "Lua.workspace.checkThirdParty": false,
    "Lua.workspace.library": [
        "path\\to\\DesyncedLLSAddon\\library"
    ]
}
```

[desynced]: https://www.desyncedgame.com
[vscode]: https://code.visualstudio.com/
[lls]: https://github.com/LuaLS/lua-language-server