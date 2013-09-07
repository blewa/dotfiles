import XMonad
import XMonad.Config.Gnome
import XMonad.Hooks.SetWMName
import XMonad.Hooks.ManageDocks

main = xmonad gnomeConfig {
	borderWidth	= 1,
	terminal	= "/usr/bin/urxvt"
}

