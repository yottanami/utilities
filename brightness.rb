#!/usr/bin/env ruby

current_brightness = `xrandr --verbose | grep rightness | awk '{ print $2 }' | sed -n 2p`.to_f

if ARGV[0] == '++'
  current_brightness = current_brightness + 0.1
  `xrandr --output VGA1 --brightness #{current_brightness}` if current_brightness < 1
elsif ARGV[0] == '--'
  current_brightness = current_brightness - 0.1
  `xrandr --output VGA1 --brightness #{current_brightness}` if current_brightness > 0.1
end
