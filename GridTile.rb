# h_position, letter, vposition_history = [], empty?, visited?

class GridTile
  attr_accessor :h_position, :v_history, :letter, :visited?, :grid

  def initialize (h_position, v_history, letter, visited?)
    @h_position = h_position
    @v_history = v_history
    @letter = letter
    @visited? = visited?
    @grid = grid
  end

  def v_position
    v_history[-1]
  end

  def neighbors
    result = grid.select do |other|
      (other.h_position - h_position).abs <= 1
      && (other.v_position - cell.v_position).abs <= 1 }
    end
    result.delete(self)
    result
  end

  def empty?
    @letter == "*"
  end

  def available?
    !empty? && !visited?
  end

  def available_neighbors
    self.neighbors.select{ &:available? }
  end