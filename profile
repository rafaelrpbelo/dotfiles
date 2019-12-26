export EDITOR=/usr/bin/nano
export QT_QPA_PLATFORMTHEME="qt5ct"
export QT_AUTO_SCREEN_SCALE_FACTOR=0
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"

if [ "$DESKTOP_SESSION" = "i3" ]; then
    # Start xscreensaver
    xscreensaver -nosplash &

    # Set keyboard settings
    setxkbmap -layout us -variant mac -option altwin:swap_lalt_lwin

    # Settings for monitor
    xrandr --output LVDS1 --left-of DP3 --output DP3 --auto # Enable secondary montior to left side
    #xrandr --output LVDS1 --same-as DP3 --output DP3 --auto # Enable secondary monitor as a clone


    # Enable tapping to TouchPad
    xinput set-prop 13 292 1
fi

