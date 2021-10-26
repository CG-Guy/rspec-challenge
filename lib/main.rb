class Main
  def initialize(command)
    @command = command # e.g. "MRMMMLM"
  end
  rover = Rover.new([0,0], North.new)
  rover.move
  rover.right_turn
end