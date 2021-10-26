class North
  def right_turn
    East.new
  end

  def left_turn
    West.new
  end

  def move(current_position)
    x = current_position[0]
    y = current_position[1] + 1

    [x, y]
  end
end
