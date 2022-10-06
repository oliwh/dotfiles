------------------------------------------
-- oliwh onedark theme                  --
-- based on noaccOS' Nord minimal theme --
------------------------------------------

local theme_assets = require("beautiful.theme_assets")
local xresources = require("beautiful.xresources")
local dpi = xresources.apply_dpi

local gfs = require("gears.filesystem")
local theme_path = "~/.config/awesome/themes/onedark/"

local theme = {}
--local wibar = require("wibar")
-- onedark colours 
theme.onedarkBlack   = "#282c34"
theme.onedarkWhite   = "#abb2bf"
theme.onedarkLRed    = "#e06c75"
theme.onedarkDRed    = "#be5046"
theme.onedarkGreen   = "#98c379"
theme.onedarkLYellow = "#e5c07b"
theme.onedarkDYellow = "#d19a66"
theme.onedarkBlue    = "#61afef"
theme.onedarkMagenta = "#c678dd"
theme.onedarkCyan    = "#56b6c2"
theme.onedarkDGrey   = "#4b5263"
theme.onedarkLGrey   = "#5c6370"

theme.font          = "Iosevka Medium 16"
theme.transparent   = "#00000000"

theme.bg_normal     = theme.onedarkBlack
theme.bg_focus      = theme.bg_normal
theme.bg_urgent     = theme.bg_normal
theme.bg_minimize   = theme.bg_normal
theme.bg_systray    = theme.bg_normal

theme.fg_normal     = theme.onedarkWhite
theme.fg_focus      = theme.fg_normal
theme.fg_urgent     = theme.fg_normal
theme.fg_minimize   = theme.fg_normal

theme.useless_gap   = dpi(5)
theme.border_width  = dpi(0)
theme.border_normal = theme.onedarkDGrey
theme.border_marked = theme.onedarkDRed

theme.tasklist_bg_focus = theme.onedarkBlack
theme.tasklist_icon_size = dpi(5)
theme.tasklist_plain_task_name = true
-- There are other variable sets
-- overriding the default one when
-- defined, the sets are:
-- taglist_[bg|fg]_[focus|urgent|occupied|empty|volatile]
-- tasklist_[bg|fg]_[focus|urgent]
-- titlebar_[bg|fg]_[normal|focus]
-- tooltip_[font|opacity|fg_color|bg_color|border_width|border_color]
-- mouse_finder_[color|timeout|animate_timeout|radius|factor]
-- prompt_[fg|bg|fg_cursor|bg_cursor|font]
-- hotkeys_[bg|fg|border_width|border_color|shape|opacity|modifiers_fg|label_bg|label_fg|group_margin|font|description_font]
-- Example:
--theme.taglist_bg_focus = "#ff0000"
theme.taglist_spacing = dpi(5)

-- Generate taglist squares:
local taglist_square_size = dpi(4)
theme.taglist_squares_sel = theme_assets.taglist_squares_sel(
    taglist_square_size, theme.fg_normal
)
theme.taglist_squares_unsel = theme_assets.taglist_squares_unsel(
    taglist_square_size, theme.fg_normal
)

-- Variables set for theming notifications:
-- notification_font
-- notification_[bg|fg]
-- notification_[width|height|margin]
-- notification_[border_color|border_width|shape|opacity]

-- Variables set for theming the menu:
-- menu_[bg|fg]_[normal|focus]
-- menu_[border_color|border_width]
theme.menu_submenu_icon = theme_path.."../defaults/submenu.png"
theme.menu_height = dpi(15)
theme.menu_width  = dpi(100)

theme.wallpaper   = theme_path.."wallpaper/wallpaper.jpg"
theme.background  = theme.onedarkBlack

-- Generate Awesome icon:
theme.awesome_icon = theme_assets.awesome_icon(
    theme.menu_height, theme.bg_focus, theme.fg_focus
)

-- Define the icon theme for application icons. If not set then the icons
-- from /usr/share/icons and /usr/share/icons/hicolor will be used.
theme.icon_theme = nil


theme.taglist_text_font = "JetBrains  Mono 20"
-- theme.taglist_text_empty    =  {"","","","","","","","",""}
-- theme.taglist_text_occupied =  {"","","","","","","","",""}
-- theme.taglist_text_focused  = {"","","","","","","","",""}
-- theme.taglist_text_urgent   = {"","","","","","","","",""}

theme.taglist_text_empty    = {" ", "", "", "", "", "", "", "", ""}
theme.taglist_text_occupied = {" ", "", "", "", "", "", "", "", ""}
theme.taglist_text_focused  = {" ", "", "", "", "", "", "", "", ""}
theme.taglist_text_urgent   = {" ", "", "", "", "", "", "", "", ""}

-- theme.taglist_font = 'Iosevka 20'
theme.taglist_bg_focus = theme.bg_normal
theme.taglist_colour = {
	theme.onedarkCyan,
	theme.onedarkGreen,
	theme.onedarkMagenta,
	theme.onedarkDYellow,
	theme.onedarkLRed,
	theme.onedarkBlue,
	theme.onedarkLYellow,
	theme.onedarkMagenta,
	theme.onedarkCyan,
}
theme.taglist_bg_occupied = theme.bg_normal
theme.taglist_bg_empty = theme.bg_normal
theme.taglist_fg_empty = theme.onedarkWhite
theme.taglist_bg_urgent = theme.bg_normal
theme.taglist_fg_urgent = theme.onedarkDRed

return theme
