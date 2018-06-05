#choose a starting tile
#get_available_neighbors
#while ar < expected_length, ar << choose from among get_available_neighbors

class TileSequence
    attr_reader :expected_length, :grid

    def initialize(expected_length, grid)
        @expected_length = expected_length
        @grid = grid
    end

    def build
    end

end

class TileSequenceBuilder
    def initialize
        @tile_sequence = TileSequence.new([])
    end

    def choose_start
        @grid.tiles.sample
    end
end