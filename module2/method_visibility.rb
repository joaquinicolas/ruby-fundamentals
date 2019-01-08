class SpaceshipVisibility

  def self.disable_engine_containment
    # dangerous - should be private!
  end

  private_class_method :disable_engine_containment

  def launch
    batten_hatches
  end

  def batten_hatches
    puts "Batten the hatches!"
  end

  private :batten_hatches

  attr_reader :call_sign
  protected :call_sign

  def initialize
    @call_sign = "Dreadnought"
  end

  def call_sign_matches?(other)
    call_sign == other.call_sign
  end
end


# The following don't work since batten_hatches is private
# ship = SpaceshipVisibility.new
# ship.batten_hatches


class SpritelySpaceship < SpaceshipVisibility
  def initialize
    batten_hatches # this ship is always ready to go
    @call_sign = "Fast cruiser"
  end
end

ship = SpritelySpaceship.new

protected_ship = SpaceshipVisibility.new
fast_ship = SpritelySpaceship.new

puts fast_ship.call_sign_matches?(protected_ship)
puts protected_ship.call_sign