# require_relative "./rover"

# class Input
#   def initialize(x, y, direction)
#     @x = x
#     @y = y
#     @direction = direction
#   end

#   def user_command(command)
#     command.each do |choice|
#       case
#     when choice == 'R'
#         @rover.right_turn
#     when choice == 'L'
#         @rover.left_turn
#     else
#         move
#       end
#     end
#       puts "The rover is currently: x= #{ @x } y= #{ @y } pointing = #{ @direction }"
#   end

#   # def right_turn
#   #   case
#   #   when @direction == 'S'
#   #       puts "Pointing West."
#   #     @direction = 'W'
#   #   when @direction == 'N'
#   #       puts "Pointing East"
#   #     @direction = 'E'
#   #   when @direction == 'W'
#   #       puts "Pointing North"
#   #     @direction = 'N'
#   #   else
#   #     puts "Pointing South"
#   #     @direction = 'S'
#   #   end
#   # end

#   # def left_turn
#   #   case
#   #   when @direction == 'N'
#   #       puts "Pointing North."
#   #     @direction = 'W'
#   #   when @direction == 'W'
#   #       puts "Pointing West"
#   #     @direction = 'S'
#   #   when @direction == 'E'
#   #       puts "Pointing East"
#   #     @direction = 'N'
#   #   else
#   #     puts "Pointing South"
#   #     @direction = 'E'
#   #   end
#   # end

#   # def move
#   #   case
#   #   when @direction == 'N'
#   #     @y += 1
#   #   when @direction == 'E'
#   #     @x += 1
#   #   when @direction == 'S'
#   #     @y -= 1
#   #   else
#   #     @x -= 1
#   #   end
#   # end
# end

# #Two Rovers
# rover_one = Rover.new(0,0,'N')

# rover_two = Rover.new(1,1,'E')

# #hard code instructions
# rover_one.user_command(['L','M','R','M','L','M','M','R','R'])
# rover_two.user_command(['R','M','R','M','M','M','L','M'])