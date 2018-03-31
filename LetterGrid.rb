ALPHABET = ('a'..'z').to_a

class LetterGrid
  attr_accessor :width, :height, :columns

  def initialize(columns)
    @columns = columns
    @width = columns.count
    @height = columns.first.length
  end

  def get_row(val)
    columns.map {|column| column[val]}
  end

  def get_column(val)
    columns[val].split(//)
  end
end

letters = []
8.times do
  letters.push ALPHABET.sample(8).join
end
letters.display

lg = LetterGrid.new(letters)
puts lg.get_column(0)
puts
puts lg.get_row(4)