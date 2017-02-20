require 'gosu'

require 'dodge_this/window'
require 'dodge_this/cat'
require 'dodge_this/human'

module DodgeThis
  def self.start
    Window.new.show
  end
end
