
# Aerospace Vehicle Engine

The Aerospace Vehicle engine (`asv` for short) is a low-level
aerodynamics and space simulator. It communicates with the Vehicle
Controller via as-yet-undecided language-agnostic means, such as
`stdin/stdout` or network ports.

The goal is to implement an environment for fully automated or
hardware-in-the-loop testing of real-life rocket and launch vehicle
hardware and GNC that is realistic enough to substitute for real-life
testing.

There will be a few major components you have to understand:

* `libasv`: this is the core library. It does not contain any
  information on vehicle definitions, components, or controllers.
* World: this is a description of the universe the vehicle exists
  in. It specifies planets, their positions and makeups, as well as
  defining Vehicle Components (to be used as ground-side hardware).
* Vehicle Definition: this is the hardware description for a single
  vehicle. Each vehicle contains one or more multiple Vehicle
  Components.
* Vehicle Component: a single, atomic hardware component. This covers
  everything from a stage of a vehicle to a single valve to a
  pneumatic hose between two air connectors. Each Vehicle Component
  can define its own structure, aerodynamic properties, sensors, and
  failure modes.
* Vehicle Controller: this is the controlling software for a single
  Vehicle Component.

A "Vehicle Component" is a very generic object. Every Vehicle
Component can contain zero or more child Vehicle Components, and each
Vehicle Component can include its own scripts (defined as part of the
Vehicle Definition). These scripts are programmed in an
as-yet-undecided language, as they're part of the vehicle hardware,
not its GNC.

A "Vehicle Definition" is a vehicle category. It will probably be a
single file which is parsed and built up in-memory by `libasv` using
XML or something similar. It needs the ability to include other
Vehicle Components (for example, to include "dummy payload" which will
include "gnc-main" which will include "accelerometer-<part-number>",
etc.)

A "Vehicle Controller" is a third-party piece of software that will
receive input from `libasv` and send control inputs to `libasv`.
