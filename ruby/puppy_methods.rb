class Puppy

  def initialize()
    print "\n Initalizing new Puppy instance..."
  end	

  def fetch(toy)
    puts "\n I brought back the #{toy}!"
    toy
  end

  def speak(int)
  	print "\n Woof!" * int
  end

  def roll_over()
  	print "\n *rolls over*"
  end

  def dog_years(int)
  	return int * 7
  end

  def run(distance)
  	print "\n I ran for #{distance} meters!"
  end

end

#driver code
charles = Puppy.new

charles.fetch("ball")
charles.speak(8)
charles.roll_over()
charles.dog_years(15)
charles.run(23)

class Baller

  def initialize()
    print "\n We ballin' now"
  end
  
  def practice(shots)
    print "\n You made #{shots/2} out of #{shots} shots in practice today"
  end
  
  def mvp()
    print "\n Unless your name is James Harden, you are not the MVP"
  end
    
end

#driver 
kobe = Baller.new 
kobe.practice(500)
kobe.mvp()




