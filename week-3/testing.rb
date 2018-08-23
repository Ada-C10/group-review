require 'minitest'
require 'minitest/spec'
require 'minitest/autorun'
require 'minitest/reporters'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new


#what to do if planet name is nil? how to search?
#how to write test to check if planet name is empty string
def find_planet_by_name(planet)
  planet_name = planet.upcase

  @planets.each do |planet|
    if planet_name == planet.name.upcase
      return planet
    end
  end
end

# Test case: Finding a planet successfully
# Setup the SolarSystem with at least one planet
# call find_planet_by_name with the name of a planet that was created
# check that the return value is:
# * of type planet
# * has a name that matches the search value
# * is one of the planets in the solar system's list

# Test case: Finding a planet unsuccessfully
# Setup the SolarSystem with at least one planet
# call find_planet_by_name with the name of NONEXISTANT planet
# check that the return value is:
# * nil
