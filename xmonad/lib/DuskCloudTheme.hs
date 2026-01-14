module DuskCloudTheme (duskCloudTheme) where
import Theme (Theme(..))
import XMonad.Hooks.StatusBar.PP

duskCloudXmobarPP :: PP
duskCloudXmobarPP = def
        { ppSep = " • "
        }

duskCloudTheme :: Theme
duskCloudTheme = Theme { themeName               = "Dusk Cloud"
                       , themeBarConfig          = "~/.config/xmobar/dusk-cloud-xmobarrc"
                       , themeBorderColor        = "#333333"
                       , themeFocusedBorderColor = "#FFFFFF"
                       , themeWallpaper          = "/home/reo/Wallpapers/sky.jpg"
                       , themeXmobarPP           = duskCloudXmobarPP
                       } 