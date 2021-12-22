
# require_relative "./north"
# require_relative "./east"
# require_relative "./south"
# require_relative "./west"

# class Position
#   attr_accessor :rover
#   def initialize(rover)
#     @rover = rover
#   end

#   def choice(value)
#     value.each_char do |choice|
#     case 
#     when choice =='L'
#       @rover.left_turn
#     when choice =='R'
#       @rover.right_turn
#     when choice =='M'
#       @rover.move
#     else
#       "Error, incorrect value chosen"
#     end
#     end
#   end
# end

# #========== Test ==========

# RSpec.describe Position do
#   describe '#choice' do
#     let(:position) { Position.new(East.new) }

#     it 'returns the position of the value' do
#       expect(position.choice('R')).to eq('E')
#     end
#   end
# end