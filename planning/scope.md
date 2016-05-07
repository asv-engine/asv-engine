
# Scope (`libasv`)

# Aerodynamic simulation

## Drag

* Occlusion

## Lift

* Cylindrical lift
* Wing lift is not needed

# World simulation

## Gravity

* N-Body from the start
* Does it have to handle planetary oblateness?

## Atmosphere

* Density
* Air masses (at different altitudes)
* Temperature
* Ocean effects
* Humidity (affects Mach and drag, as well as temperature)

## Terrain

* Heightmap terrain
* Procedural detail (if required)

## Other

* Coriolis effect (obviously)

# Vehicle simulation

## Hardware simulation

* Component-level simulation and failures
* Component-level control software

## Control simulation

* Third-party IO for vehicle control
* Third-party is sent data from Vehicle Components
