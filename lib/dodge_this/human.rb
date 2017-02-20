module DodgeThis
  class Human
    attr_reader :x

    def initialize(window:)
      @image = Gosu::Image.new('data/human.png')
      @x = window.width
      @y = [0, 65].sample
    end

    def move
      @x -= 16
    end

    def draw
      @image.draw(@x, @y, 1)
    end

    def collision_with?(cat:)
      return true if @y == cat.y && @x < cat.x + @image.width
      false
    end
  end
end
