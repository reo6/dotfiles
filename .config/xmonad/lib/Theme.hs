module Theme ( Theme(..) ) where
import XMonad.Hooks.StatusBar.PP

data Theme = Theme { themeName :: String
                   , themeBarConfig :: String
                   , themeBorderColor :: String
                   , themeFocusedBorderColor :: String
                   , themeWallpaper :: String
                   , themeXmobarPP :: PP
                   }
