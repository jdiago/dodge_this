module DodgeThis
  class Window < Gosu::Window
    def initialize
      super 700, 128
      self.caption = 'dodge this'
      @cat = Cat.new
      @human = Human.new(window: self)
    end

    def update
      move_human
      collision_check
    end

    def draw
      @cat.draw
      @human.draw
    end

    def button_up(id)
      if id == Gosu::KB_SPACE
        @cat.move
      else
        super
      end
    end

    private

    def move_human
      if @human.x < -64
        @human = Human.new(window: self)
      end
      @human.move
    end

    def collision_check
      if @human.collision_with?(cat: @cat)
        exit 0
      end
    end
  end
end
