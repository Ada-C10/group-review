students = ["Ada", "Grace", "Katherine", "Anita"]

# How to select the last name?
students.last
students[-1]
students[students.length - 1]

# Averages

def average_age(ages)
  sum = 0.0
  ages.each do |age|
    sum += age
    # shorthand for
    # sum = sum + age
  end


  average = sum / ages.length
  # average = average / ages.length

  return average
end

def biggest_age(ages)
  biggest = ages.first
  ages.each do |age|
    if biggest < age
      biggest = age
    end
  end
  return biggest
end


ada_ages = []

average_ada_age = average_age(ada_ages)

# puts average_ada_age

oldest = biggest_age(ada_ages)
# puts oldest

fruit_prices = {
  apple: 2.15,
  pear: 3.02
}

puts "#{fruit_prices.keys}"

def find_cheap_fruit(fruits)
  cheap_fruit = []

  fruits.each do |fruit, price|
    if price < 3
      cheap_fruit << fruit
    end
  end

  return cheap_fruit
end

cheap_fruit = find_cheap_fruit(fruit_prices)
puts "Fruit < $3.00: #{cheap_fruit}"

stone_fruit = {
  peach: 3.14,
  nectarine: 2.12,
  cherry: 1.12,
  plum: 4.33
}
cheap_stone_fruit = find_cheap_fruit(stone_fruit)
puts "Stone fruit: #{cheap_stone_fruit}"
