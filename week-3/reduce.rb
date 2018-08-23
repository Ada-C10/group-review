# Map is when we want to go from multiple input data to multiple output data
# Reduce is when we want to go from multiple input data to a single output value

# Examples:
# * sum and other arithmetic
# * join
# * average
# * count / length

def count(array)
  count = 0
  array.each do |x|
    count += 1
  end

  return count
end

def countr(array)
  the_count = array.reduce(0) do |count, new_value|
    # calculate NEW value for accumulator here
    count + 1
  end

  return the_count
end

def countr2(array)
  array.reduce(0) { |count| count + 1 }
end

# array = [10, 4, 35, 22, 180, 8, 9]
# puts countr2(array)


def join(strings, seperator)
  result = strings.first.clone
  strings[1..-1].each do |str|
    result << seperator
    result << str
  end

  return result
end

def joinr(strings, seperator)
  return strings.reduce do |result, str|
    result + seperator + str
  end
end

# array = ["Hello", "Ada", "Students"]
# puts joinr(array, " ")

golden_girls = [
  { name: "Blanche", actor: "Rue McClannahan" },
  { name: "Sophia", actor: "Estelle Getty" },
  { name: "Rose", actor: "Betty White" },
  { name: "Dorothy", actor: "Bea Arthur" }
]

def tshirt(actors)
  names = actors.map do |actor|
    actor[:name]
  end

  names.reduce do |result, name|
    result + " &\n" + name
  end
end

puts tshirt(golden_girls)
