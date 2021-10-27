#require_relative "./directions"
require_relative "./north"
require_relative "./east"
require_relative "./south"
require_relative "./west"
#require_relative "./input"
class Rover

  def initialize(current_position, init_direction)
    @position = current_position # x,y coordinates
    @direction = init_direction # North, East, South or West
  end

  def right_turn
    @direction = @direction.right_turn
  end

  def left_turn
    @direction = @direction.left_turn
  end

  def move
    @position = @direction.move(@position)
  end

  def state
    "#{@position[0]} #{@position[1]} #{@direction.class.to_s[0]}"
  end

  
  def user_command(command)
    command.each_char do |choice|
      case 
      when choice =='L'
        self.left_turn
      when choice =='R'
        self.right_turn
      when choice =='M'
        self.move
      else
        "Error, incorrect value chosen"
      end
    end
    self
  end
end


#================ Test =================
