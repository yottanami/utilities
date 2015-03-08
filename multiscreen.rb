#!/usr/bin/env ruby
SCREENS =`DISPLAY=:0 xrandr -q | grep ' connected' | wc -l

if SCREENS == 1
  `xrandr --output LVDS1 --mode 1280x800`
else
  `xrandr --output VGA1 --mode 1366x768 --above LVDS1`
  #`xrandr --output VGA1 --mode 1024x768 --above LVDS1`
  `xrandr --output LVDS1 --mode 1280x800`
end
