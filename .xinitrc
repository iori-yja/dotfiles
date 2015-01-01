export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus
export GTK_IM_MODULE=ibus
exec uim-toolbar-gtk&
exec urxvtd&
uim-xim&
xsetroot -cursor_name left_ptr
xmodmap .xmodmap
exec stalonetray -i 1 --geometry 6x1-0+0 -bg black&
#exec usr/bin/wallpaper&
exec xmonad&
exec xterm


