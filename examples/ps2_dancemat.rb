require 'artoo'

connection :joystick, :adaptor => :joystick
device :controller, :driver => :ps2_dancemat, :connection => :joystick

work do
  on controller, :button_up => proc { |*value|
    puts "Button Up Pressed!"
  }
  on controller, :button_down => proc { |*value|
    puts "Button Down Pressed!"
  }
  on controller, :button_left => proc { |*value|
    puts "Button Left Pressed!"
  }
  on controller, :button_right => proc { |*value|
    puts "Button Right Pressed!"
  }
  
  on controller, :button_circle => proc { |*value|
    puts "Button Circle Pressed!"
  }
  on controller, :button_square => proc { |*value|
    puts "Button square Pressed!"
  }
  on controller, :button_triangle => proc { |*value|
    puts "Button Triangle Pressed!"
  }
  on controller, :button_x => proc { |*value|
    puts "Button Cross Pressed!"
  }
end
