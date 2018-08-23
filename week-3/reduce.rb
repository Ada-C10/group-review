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




array = [10, 4, 35, 22, 180, 8, 9]
puts countr2(array)
