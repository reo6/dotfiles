import XMonad
import XMonad.Util.EZConfig (additionalKeysP)
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.StatusBar
import XMonad.Hooks.StatusBar.PP
import XMonad.Hooks.EwmhDesktops
import XMonad.Util.SpawnOnce (spawnOnce)
import XMonad.Layout.Spacing

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
                , layoutHook         = spacingWithEdge myGapSize $ myLayoutHook
                }
                `additionalKeysP` myKeybindings

myTerminal           = "alacritty"
myModMask            = mod4Mask
myBorderWidth        = 5
myEmacs              = "emacsclient -c -a 'emacs' "
myBrowser            = "firefox"
myTheme              = naturalGreenTheme
myLauncher           = "rofi -show run"
myGapSize            = 10

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

myLayoutHook = tiled ||| Mirror tiled ||| Full
  where
     tiled   = Tall nmaster delta ratio
     nmaster = 1
     ratio   = 1/2
     delta   = 3/100
