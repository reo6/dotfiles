import XMonad
import XMonad.Util.EZConfig (additionalKeysP)
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.StatusBar
import XMonad.Hooks.StatusBar.PP
import XMonad.Hooks.EwmhDesktops
import XMonad.Util.SpawnOnce (spawnOnce)

import Theme
import NaturalGreenTheme

main = do
  xmonad . ewmhFullscreen . ewmh . withEasySB (statusBarProp ("xmobar " ++ themeWallpaper myTheme) (pure $ themeXmobarPP myTheme)) defToggleStrutsKey $ myConfig


myConfig =  def { terminal           = myTerminal
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
myLauncher           = "rofi -show run"

myStartupHook :: X ()
myStartupHook = do
  spawn $ "/usr/bin/xmobar " ++ themeBarConfig myTheme
  spawn $ "feh --bg-scale " ++ themeWallpaper myTheme

myKeybindings :: [(String, X())]
myKeybindings = [  ("M-e", spawn myEmacs)
                ,  ("M-f", spawn myBrowser)
                ,  ("<XF86MonBrightnessUp>", spawn "brightnessctl s +4%")
                ,  ("<XF86MonBrightnessDown>", spawn "brightnessctl s 4%-")
                ,  ("<XF86AudioRaiseVolume>", spawn "amixer -q sset Master 3%+")
                ,  ("<XF86AudioLowerVolume>", spawn "amixer -q sset Master 3%-")
                ,  ("M-<Return>", spawn myTerminal)
                ,  ("M-q", spawn "xmonad --recompile; killall xmobar; xmonad --restart")
                ,  ("M-d", spawn myLauncher)
                ]
