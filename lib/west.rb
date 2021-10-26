class West
  #Looking West, North is on the Right
  def right_turn
    North.new
  end
  #Looking West South is on the left
  def left_turn
    South.new
  end

  #based on grid if it points it move along y
  def move(current_position)
    x = current_position[0]
    y = current_position[1] - 1

    [x, y]
  end
end
