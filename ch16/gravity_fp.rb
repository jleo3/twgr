G = 6.674*10**-11
gravitation = -> x,y,r { G * x * y / r**2 }
earth_mass = 5.976*10**24
sun_mass = 1.989*10**30
earth_and_sun_distance = 1.5*10**11
earth_and_sun = gravitation.call(sun_mass, earth_mass, earth_and_sun_distance)

earth_g_force = gravitation.curry.(earth_mass)
puts earth_and_sun
