require 'artoo/drivers/joystick'

module Artoo
  module Drivers
    # The Ps3 controller driver behaviors
    class Ps2Dancemat < Artoo::Drivers::Joystick

      def currently_pressed?(b)
        if button_map.has_value?(b)
          button_values[button_map.key(b)]
        else
          super b
        end
      end

      def publish_button(b)
        puts b
        if button_values[b] == 1
          publish(event_topic_name("button_#{button_map[b]}"))
        else
          publish(event_topic_name("button_up_#{button_map[b]}"))
        end
        super
      end

      def button_map
        BINDING_MAP[:ps2_dancemat][:button_map]
      end

      def axis_map
        BINDING_MAP[:ps2_dancemat][:axis_map]
      end

    end
  end
end
