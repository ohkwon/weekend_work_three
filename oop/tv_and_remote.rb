# In this exercise, you will be creating two classes AND the driver code to test them.
# You will create a Tv class and a Remote class. 

# The Tv class will have the attributes: power, volume, and channel. 

# The Remote class will have just one attribute: tv. This will represent which tv it
# actually controls.
# The Remote will have the following instance methods: 
# toggle_power (this will turn off the tv if it's on, or turn it on if it's off)
# increment_volume (this will increase the tv's volume by 1)
# decrement_volume (this will decrease the tv's volume by 1)
# set_channel (this will change the tv's channel to whatever integer is passed to this method)

class Tv

  attr_accessor :power, :volume, :channel

  def initialize
    @power = false
    @volume = 0
    @channel = 1
  end

end

class Remote

  def initialize(choose_tv)
    @tv = choose_tv
  end

  def toggle_power
    @tv.power = !@tv.power
  end

  def increment_volume
    @tv.volume += 1
  end

  def decrement_volume
    @tv.volume -= 1
  end

  def set_channel(channel)
    @tv.channel = channel
  end

end

home_tv = Tv.new

home_remote = Remote.new(home_tv)

home_remote.toggle_power
puts home_tv.power

if home_tv.power
  puts "PASS!!!"
else
  puts "F!!!!!"
end

home_remote.increment_volume
puts home_tv.volume

if home_tv.volume == 1
  puts "PASS!!!"
else
  puts "F!!!!!"
end

home_remote.decrement_volume
puts home_tv.volume

if home_tv.volume == 0
  puts "PASS!!!"
else
  puts "F!!!!!"
end

home_remote.set_channel(82)
puts home_tv.channel

if home_tv.channel == 82
  puts "PASS!!!"
else
  puts "F!!!!!"
end