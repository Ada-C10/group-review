class Parent
  def greeting
    "Hi there!"
  end
end

class Child < Parent
  def greeting
    super() + " I'm 4."
  end
end


c = Child.new
puts c.greeting
puts (c.is_a? Parent)
