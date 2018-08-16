require 'minitest/spec'
require 'minitest/autorun'
require 'pry'

PETS_IN_SPACE = [
  { name: "Homer",   home_planet: "Neptune", age:   5, species: :cat },
  { name: "Max",     home_planet: "Earth",   age:   2, species: :dog },
  { name: "Slither", home_planet: "Mars",    age: 105, species: :iguana },
]

def average_age(pets)
  raise ArgumentError if pets.empty?

  total_age = 0
  pets.each do |pet|
    total_age += pet[:age]
  end


  average_age = total_age / pets.length

  return average_age
end


describe :average_age do
  it 'calculates average correctly' do
    # Arrange
    pets = [
      { name: "Test Pet", home_planet: "Earth", age: 30, species: :test}
    ]

    # Act
    result = average_age(pets)

    # Assert
    expect(result).must_equal 30
  end

  it 'throws ArgumentError when given an empty array' do
    # Arrange
    pets = []

    # Act

    # Assert
    expect {
      average_age(pets)
    }.must_raise ArgumentError
  end
end
