export EDITOR=/usr/bin/nvim
export QT_QPA_PLATFORMTHEME="qt5ct"
export QT_AUTO_SCREEN_SCALE_FACTOR=0
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"
export TERM=screen-256color
export TERMINAL=alacritty

if [ "$DESKTOP_SESSION" = "i3" ]; then
    # Start xscreensaver
    xscreensaver -nosplash &

    # Set keyboard settings
    setxkbmap -layout us -variant mac -option altwin:swap_lalt_lwin
    xset r rate 220 70

    # Settings for monitor
    # RIGHT
    #xrandr --output LVDS-1 --right-of DP-3 --output DP-3 --auto # Enable secondary montior to left side
    # LEFT
    #xrandr --output LVDS-1 --left-of DP-3 --output DP-3 --auto # Enable secondary montior to left side
    xrandr --output LVDS-1 --left-of HDMI-2 --output HDMI-2 --auto # Enable secondary montior to left side
    # MIRROR
    #xrandr --output LVDS-1 --same-as DP-3 --output DP-3 --auto # Enable secondary monitor as a clone


    # Enable tapping to TouchPad
    # xinput set-prop 13 292 1
fi
