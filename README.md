# Artoo Adaptor For SDL Joysticks & Game Controllers

This repository contains the Artoo (http://artoo.io/) adaptor for Simple DirectMedia Layer(SDL) compatible joysticks and game controllers. 

Artoo is a open source micro-framework for robotics using Ruby.

For more information abut Artoo, check out our repo at https://github.com/hybridgroup/artoo

The artoo-sdl-joystick adaptor is based on the rubysdl gem (http://www.kmc.gr.jp/~ohai/rubysdl.en.html).

[![Code Climate](https://codeclimate.com/github/hybridgroup/artoo-sdl-joystick.png)](https://codeclimate.com/github/hybridgroup/artoo-sdl-joystick) [![Build Status](https://travis-ci.org/hybridgroup/artoo-sdl-joystick.png?branch=master)](https://travis-ci.org/hybridgroup/artoo-sdl-joystick)

## Installing

```
gem install artoo-sdl-joystick
```

## Using

```ruby
require 'artoo'

connection :joystick, :adaptor => :sdl_joystick
device :controller, :driver => :sdl_joystick, :connection => :joystick, :interval => 0.1

work do
  on controller, :joystick => proc { |*value|
    puts "joystick x:#{value[1][:x]} y:#{value[1][:y]}"
  }
  on controller, :button => proc { |*value|
    puts "button #{value[1]}"
  }
end
```

## Connecting to USB Joysticks and Game Controllers

Your USB joystick or game controller plugs into your USB port. You are now ready, if your device is supported by SDL.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request