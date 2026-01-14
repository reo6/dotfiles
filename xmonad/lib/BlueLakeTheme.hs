module BlueLakeTheme (blueLakeTheme) where
import Theme (Theme(..))
import XMonad.Hooks.StatusBar.PP

blueLakeXmobarPP :: PP
blueLakeXmobarPP = def
        { ppSep = " • "
        }

blueLakeTheme :: Theme
blueLakeTheme = Theme { themeName               = "Blue Lake"
                          , themeBarConfig          = "~/.config/xmobar/blue-lake-xmobarrc"
                          , themeBorderColor        = "#23497E"
                          , themeFocusedBorderColor = "#376899"
                          , themeWallpaper          = "/home/reo/Wallpapers/lake1.jpg"
                          , themeXmobarPP           = blueLakeXmobarPP
                          }
