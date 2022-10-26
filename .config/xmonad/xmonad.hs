import XMonad
import XMonad.Util.EZConfig (additionalKeysP)
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.StatusBar
import XMonad.Hooks.StatusBar.PP
import XMonad.Hooks.EwmhDesktops
import XMonad.Util.SpawnOnce (spawnOnce)

main = do
  xmonad . ewmhFullscreen . ewmh . xmobarProp $ def
        { terminal           = myTerminal
        , modMask            = myModMask
        , borderWidth        = myBorderWidth
        , focusedBorderColor = themeFocusedBorderColor myTheme
        , normalBorderColor  = themeBorderColor myTheme
        , startupHook        = myStartupHook
        }
      `additionalKeysP` myKeybindings


myTerminal           = "alacritty"
myModMask            = mod4Mask
myBorderWidth        = 5
myEmacs              = "emacsclient -c -a 'emacs' "
myBrowser            = "firefox"
myTheme              = naturalGreenTheme

myStartupHook :: X ()
myStartupHook = do
  spawnOnce $ "/usr/bin/xmobar " ++ themeBarConfig myTheme
  spawn $ "feh --bg-scale " ++ themeWallpaper myTheme

myKeybindings :: [(String, X())]
myKeybindings = [  ("M-e", spawn myEmacs)
                ,  ("M-f", spawn myBrowser)
                ,  ("<XF86MonBrightnessUp>", spawn "brightnessctl s +4%")
                ,  ("<XF86MonBrightnessDown>", spawn "brightnessctl s 4%-")
                ,  ("<XF86AudioRaiseVolume>", spawn "amixer -q sset Master 3%+")
                ,  ("<XF86AudioLowerVolume>", spawn "amixer -q sset Master 3%-")
                ,  ("M-<Return>", spawn myTerminal)
                ]

-- Themes
data Theme = Theme { themeName :: String
                   , themeBarConfig :: String
                   , themeBorderColor :: String
                   , themeFocusedBorderColor :: String
                   , themeWallpaper :: String
                   }

naturalGreenTheme :: Theme
naturalGreenTheme = Theme { themeName               = "Natural Green"
                          , themeBarConfig          = "~/.config/xmobar/natural-green-xmobarrc"
                          , themeBorderColor        = "#425F57"
                          , themeFocusedBorderColor = "#749F82"
                          , themeWallpaper          = "~/Wallpapers/wp-hs.png"
                          }
