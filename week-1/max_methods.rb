ages = [10, 37, 12, 22]

def biggest_age(ages)
  biggest = ages.first
  ages.each do |age|
    if biggest < age
      biggest = age
    end
  end
  return biggest
end

banana_counts = [5, 0, 17, 3]

def top_vendor(banana_counts)
  most = banana_counts.first
  banana_counts.each do |num_bananas|
    if most < num_bananas
      most = num_bananas
    end
  end
  return most
end

def max(nums)
  greatest = nums.first
  nums.each do |num|
    if greatest < num
      greatest = num
    end
  end

  return greatest
end

puts max(ages) == ages.max
puts max(banana_counts) == banana_counts.max
