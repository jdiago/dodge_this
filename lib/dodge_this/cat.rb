module DodgeThis
  class Cat
    attr_reader :x, :y

    def initialize
      @image = Gosu::Image.new('data/cat.png')
      @x = 65
      @y = 0
    end

    def move
      if @y == 0
        @y = 65
      else
        @y = 0
      end
    end

    def draw
      @image.draw(@x, @y, 1)
    end
  end
end
