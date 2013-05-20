import XMonad
import XMonad.Config.Gnome

main = xmonad gnomeConfig


-- keys
myKeys :: XConfig Layout -> M.Map (KeyMask, KeySym) (X ())
myKeys conf@(XConfig {XMonad.modMask = modMask}) = M.fromList $
	-- mod-[w,e] %! switch to twinview screen 1/2
	-- mod-shift-[w,e] %! move window to screen 1/2
	[((m .|. modMask, key), screenWorkspace sc >>= flip whenJust (windows . f))
		| (key, sc) <- zip [xK_e, xK_w, xK_r] [0..]
		, (f, m) <- [(W.view, 0), (W.shift, shiftMask)]]
