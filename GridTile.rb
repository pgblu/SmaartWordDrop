# column, position, letter, position_history = [], empty?, visited?

class GridTile
  attr_accessor :column, :position_history, :letter, :visited?

  def initialize (column, position_history, letter, visited)
    @column = column
    @position_history = position_history
    @letter = letter
    @visited = visited
  end

  def empty?
    @letter == "*"
  end
end