import XMonad
import XMonad.Hooks.SetWMName
import XMonad.Config.Xfce

main = xmonad xfceConfig
	{ terminal = "urxvt" }
