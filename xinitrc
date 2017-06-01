# Load environment variables
[[ -e ~/.zprofile ]] && source ~/.zprofile

# Set random background in ~/Pictures/Backgrounds/Archlinux/*
~/app/scripts/wallpaper.sh &

# Start xscreensaver
xscreensaver -nosplash &

# Setting keyboard (ABNT2) - TECLADO ANTIGO
#setxkbmap -model abnt2 -layout br -variant abnt2

# Setting keyboard Apple
setxkbmap -layout us -variant mac   -option   -option altwin:swap_lalt  # -option ctrl:nocaps

# Load X settings
xrdb -load ~/.Xresources

# I3 config
exec i3

# Deepin
#exec startdde

# Budgie config
#export XDG_CURRENT_DESKTOP=Budgie:GNOME
#exec budgie-desktop

# Cinnamon config
#exec cinnamon-session

# Initializing with netflix
#exec google-chrome-stable --app='http://netflix.com' --start-fullscreen

# Initializeing with popcorn
#exec popcorntime

# Init media center
#exec xterm -fullscreen -maximized  -e ~/app/scripts/dialog-test.sh
