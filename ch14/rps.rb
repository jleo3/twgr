module Games
  class RPS
    include Comparable
    WINS = [%w{ rock scissors },
            %w{ scissors paper },
            %w{ paper rock }]
    attr_accessor :move
    def initialize(move)
      @move = move.to_s
    end
    def <=>(other)
      if move == other.move
        0
      elsif WINS.include?([move, other.move])
        1
      elsif WINS.include?([other.move, move])
        -1
      else
        raise ArgumentError, "Something's Wrong"
      end
    end
    def play(other)
      if self > other
        self
      elsif other > self
        other
      else
        false
      end
    end
  end
end
