# Load environment variables
[[ -e ~/.zprofile ]] && source ~/.zprofile

# Set random background in ~/Pictures/Backgrounds/Archlinux/*
~/app/scripts/wallpaper.sh &

# Start xscreensaver
xscreensaver -nosplash &

# Load X settings
xrdb -load ~/.Xresources

# Start Dunst (notifications alert)
dunst &

# I3 config
exec i3

# Set default typematic delay and rate
xset r rate 220 70
