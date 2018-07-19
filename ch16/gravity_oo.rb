class GravitationalForce
  G = 6.674*10**-11

  def initialize(mass1, mass2, distance)
    @mass1 = mass1
    @mass2 = mass2
    @distance = distance
  end

  def calculate
    G * @mass1 * @mass2 / @distance**2
  end
end

class EarthGForce < GravitationalForce
  EARTH_MASS = 5.976*10**24

  def initialize(mass, distance)
    super(EARTH_MASS, mass, distance)
  end
end

mars_mass = 6.39 * 10**23
earth_mass = 5.976*10**24
distance_earth_mars = 5.46 * 10**10
f = GravitationalForce.new(earth_mass, mars_mass, distance_earth_mars)
puts f.calculate

jupiter_mass = 1.90 * 10**27
distance_earth_jupiter = 5.88 * 10**11
f = GravitationalForce.new(earth_mass, jupiter_mass, distance_earth_jupiter)
puts f.calculate

f = EarthGForce.new(mars_mass, distance_earth_mars)
puts f.calculate
