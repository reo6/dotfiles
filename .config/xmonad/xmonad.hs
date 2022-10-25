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
        , focusedBorderColor = myFocusedBorderColor
        , normalBorderColor  = myNormalBorderColor
        , startupHook      = myStartupHook
        }
      `additionalKeysP`
        [  ("M-e", spawn myEmacs)
        ,  ("M-f", spawn myBrowser)
        ,  ("<XF86MonBrightnessUp>", spawn "brightnessctl s +2%")
        ,  ("<XF86MonBrightnessDown>", spawn "brightnessctl s 2%-")
        ,  ("<XF86AudioRaiseVolume>", spawn "amixer -q sset Master 3%+")
        ,  ("<XF86AudioLowerVolume>", spawn "amixer -q sset Master 3%-")
        ,  ("M-<Return>", spawn myTerminal)
        ]

myTerminal = "alacritty"
myModMask = mod4Mask
myBorderWidth = 5
myEmacs = "emacsclient -c -a 'emacs' "
myBrowser = "firefox"
myFocusedBorderColor = "#749F82"
myNormalBorderColor = "#425F57"

myStartupHook :: X ()
myStartupHook = do
  spawnOnce "/usr/bin/xmobar"
