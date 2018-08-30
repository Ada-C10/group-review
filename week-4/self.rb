require 'awesome_print'
ap self
puts '=' * 30

class Wombat
  ap self

end

def Wombat.print_self
  ap self
end

w = Wombat.new

def w.print_self
  ap self
end

w.print_self

w2 = Wombat.new
w2.print_self
