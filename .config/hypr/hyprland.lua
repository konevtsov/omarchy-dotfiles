-- Learn how to configure Hyprland: https://wiki.hypr.land/Configuring/Start/

-- Omarchy's bootstrap keeps path setup out of this user config.
dofile((os.getenv("OMARCHY_PATH") or "/usr/share/omarchy") .. "/default/hypr/bootstrap.lua")

-- Disable all Omarchy default bindings. Add your own in hypr/bindings.lua.
-- omarchy_default_bindings = false
--
-- Or disable only bindings for Omarchy's preinstalled apps/web apps while
-- keeping core window-manager bindings:
-- omarchy_preinstalled_bindings = false

-- Load Omarchy defaults.
require("default.hypr.omarchy")

-- Put your personal overrides in these files. They're loaded after Omarchy's
-- defaults so package updates can improve the defaults without rewriting your
-- ~/.config/hypr files.
require("hypr.envs")
require("hypr.monitors")
require("hypr.input")
require("hypr.bindings")
require("hypr.looknfeel")
require("hypr.autostart")

-- Toggle config flags dynamically.
require("default.hypr.toggles")

-- Add any other personal Hyprland configuration below.
-- o.window("qemu", { workspace = "5" })

-- Keep Codex/ChatGPT completion notifications from stealing focus or changing
-- the current Hyprland workspace.
o.window("^(ChatGPT|chatgpt)$", {
  focus_on_activate = false,
  idle_inhibit = "always",
})

-- Keep Telegram's media viewer separate from the tiled/fullscreen main window.
-- The content match limits this to photo and video windows, not the chat window.
o.window({ class = "^org\\.telegram\\.desktop$", content = "photo" }, {
  float = true,
  center = true,
})
o.window({ class = "^org\\.telegram\\.desktop$", content = "video" }, {
  float = true,
  center = true,
})
