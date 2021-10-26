class East
  def right_turn
    South.new
  end

  def left_turn
    North.new
  end

  def move(current_position)
    x = current_position[0] + 1
    y = current_position[1]

    [x, y]
  end
end