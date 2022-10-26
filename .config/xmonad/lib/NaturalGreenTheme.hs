module NaturalGreenTheme (naturalGreenTheme) where
import Theme (Theme(..))
import XMonad.Hooks.StatusBar.PP

naturalGreenXmobarPP :: PP
naturalGreenXmobarPP = def
        { ppSep = " • "
        }

naturalGreenTheme :: Theme
naturalGreenTheme = Theme { themeName               = "Natural Green"
                          , themeBarConfig          = "~/.config/xmobar/natural-green-xmobarrc"
                          , themeBorderColor        = "#425F57"
                          , themeFocusedBorderColor = "#749F82"
                          , themeWallpaper          = "~/Wallpapers/wp-hs.png"
                          , themeXmobarPP           = naturalGreenXmobarPP
                          }
