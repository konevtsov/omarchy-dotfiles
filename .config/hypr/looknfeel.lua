-- Change the default Omarchy look'n'feel.

-- Animate workspace changes, including three-finger touchpad swipes.
hl.animation({
  leaf = "workspaces",
  enabled = true,
  speed = 3,
  bezier = "easeOutQuint",
  style = "slidefade",
})

-- Keep all application windows fully opaque.
o.window({ tag = "default-opacity" }, { opacity = "1 1" })

-- Keep scrolling-layout columns nearly full-width and remove Hyprland window borders.
hl.config({
  general = { gaps_out = 0, border_size = 0 },
  scrolling = { column_width = 0.97 },
})

-- https://wiki.hypr.land/Configuring/Basics/Variables/#general
-- hl.config({
--   general = {
--     -- No gaps between windows or borders.
--     gaps_in = 5,
--     gaps_out = 5,
--     -- border_size = 0,
--
--     -- Change to niri-like side-scrolling layout.
--     layout = "scrolling",
--   },
-- })
--
-- https://wiki.hypr.land/Configuring/Basics/Variables/#decoration
hl.config({
  decoration = {
    -- Use round window corners.
    rounding = 0,

    -- Dim unfocused windows (0.0 = no dim, 1.0 = fully dimmed).
  --   dim_inactive = true,
  --   dim_strength = 0.15,
  },
})

-- Pop-out windows should be square so terminal/TUI rendering is not clipped
-- by compositor-side corner masking (for example, when running Codex).
o.window({ tag = "pop" }, { rounding = 0 })

-- https://wiki.hypr.land/Configuring/Basics/Variables/#animations
-- hl.config({
--   animations = {
--     -- Disable all animations.
--     enabled = false,
--   },
-- })

-- https://wiki.hypr.land/Configuring/Basics/Variables/#layout
-- hl.config({
--   layout = {
--     -- Avoid overly wide single-window layouts on wide screens.
--     single_window_aspect_ratio = { 1, 1 },
--   },
-- })

-- https://wiki.hypr.land/Configuring/Layouts/Scrolling-Layout/
-- hl.config({
--   scrolling = {
--     -- See only one column per screen instead of two.
--     column_width = 0.97,
--   },
-- })
