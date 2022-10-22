import XMonad
import XMonad.Util.EZConfig (additionalKeysP)

main = do
  xmonad $ def
        { terminal    = myTerminal
        , modMask     = myModMask
        , borderWidth = myBorderWidth
        }
      `additionalKeysP`
        [  ("M-e", spawn myEmacs)
        ,  ("M-b", spawn myBrowser)
        ,  ("<XF86MonBrightnessUp>", spawn "brightnessctl s +2%")
        ,  ("<XF86MonBrightnessDown>", spawn "brightnessctl s 2%-")
        ,  ("M-<Return>", spawn myTerminal)
        ]

myTerminal = "alacritty"
myModMask = mod4Mask
myBorderWidth = 3
myEmacs = "emacsclient -c -a 'emacs' "
myBrowser = "firefox"
