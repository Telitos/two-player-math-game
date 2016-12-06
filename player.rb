module MathGame

  class Player

    attr_accessor :name
    attr_accessor :score
    attr_reader :id

    def initialize(id, name, score)
      @id = id
      @name = name
      @score = score
    end
  end
end