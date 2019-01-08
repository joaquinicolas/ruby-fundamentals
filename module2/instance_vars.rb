class Spaceship
  def launch(destination)
    @destination = destination
    # go towards destination
  end

  def destination
    @destination
  end
end

ship = Spaceship.new
ship.launch("Earth")
puts ship.inspect
p ship

# get an error telling me that destination is an undefined method
# puts ship.destination
#
# This is because instance variables are private. To do destination public we should declare a method destination. Methods are public by default
#
puts ship.destination


class Spaceship2
  # It provides read and write access to destination
  attr_accessor :destination
  # It allows read access
  attr_reader :name

  # It allows write access
  attr_writer :name

  def cancel_launch
    destination = "" # Creates a local variable
    self.destination = ""
  end
end

s = Spaceship2.new
s.name = "Dreadnought"
puts s.name
