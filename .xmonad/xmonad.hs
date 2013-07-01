import XMonad
import XMonad.Config.Gnome

main = xmonad gnomeConfig { terminal = "/usr/bin/urxvt" }

