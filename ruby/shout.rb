=begin 
old code
module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yell_happily(words)
    words + " is awesome!" + ":^)"
  end
end
=end

#mixin module
module Shout
   def yell_angrily(words)
    words + "!!!" + " :("
  end

  def yell_happily(words)
    words + " is awesome!" + ":^)"
  end
end

class Donald
  include Shout
end

class Trump
  include Shout
end

#driver
donald = Donald.new
donald.yell_angrily("obama")
donald.yell_happily("golf")

trump = Trump.new
trump.yell_angrily("hillary")
trump.yell_happily("putin")


