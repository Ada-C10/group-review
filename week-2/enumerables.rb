PETS_IN_SPACE = [
  { name: "Homer",   home_planet: "Neptune", age:   5, species: :cat },
  { name: "Max",     home_planet: "Earth",   age:   2, species: :dog },
  { name: "Slither", home_planet: "Mars",    age: 105, species: :iguana },
]

def average_age
  total_age = 0
  PETS_IN_SPACE.each do |pet|
    total_age += pet[:age]
  end

  average_age = total_age / PETS_IN_SPACE.length
  return average_age
end
