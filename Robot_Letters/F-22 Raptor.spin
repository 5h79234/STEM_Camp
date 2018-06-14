{{

  Robot drawing program

  J.A. Jerkins, 10/01/16



  This program will move the robot using the move_to function and arc_to function.

  The lower left-hand corner of the grid is the origin (0,0).

  The robot starts at the origin facing north.

  The robot moves in units of 0.5mm (1 unit = 0.5 millimeters).

  2.54 centimeters equals 1 inch.



  -----------------------------------------------------------------------------

  Straight line function - this command drives a straight line to x,y

  move_to(x, y)



  Move directly to the point (x, y). Units are approximately 0.5mm.



  Example: s2.move_to(1000, 50)

           Move to a point 500 mm to the right and 25mm above the origin.



  >>> Note the robot will turn and face the correct direction automatically.





  Arc function - this command drives an arc to x,y or radius r



  Example: s2.arc_to(250, 250, 5)

        Draw an arc from the current location to 250,250 with a radius of 5



  -----------------------------------------------------------------------------

}}

CON

  _clkmode = xtal1 + pll16x            'Standard clock mode * crystal frequency = 80 MHz

  _xinfreq = 5_000_000

  SCALE = 30

OBJ

  s2 : "S2"

  

PUB main



  s2.start

  s2.start_motors

  s2.button_mode(true, true)



  s2.here_is(0,0)

  s2.set_speed(7)

  s2.begin_path

  ' ####################### DO NOT MODIFY ANYTHING ABOVE THIS LINE #######################
    {Left Fin}
    s2.move_to()
    s2.move_to()
    s2.move_to()
    {Left Wing}
    s2.move_to()
    s2.move_to()
    s2.move_to()
    s2.move_to()
    {Cockpit}
    s2.move_to()
    s2.move_to()
    s2.move_to()
    s2.move_to()
    s2.move_to()
    {Right Wing}
    s2.move_to()
    s2.move_to()
    s2.move_to()
    s2.move_to()
    {Right Fin}
    s2.move_to()
    s2.move_to()
    s2.move_to()
    {Engine}
    s2.move_to()
    s2.move_to()
    s2.move_to()
    s2.move_to()
    s2.move_to()
    s2.move_to()
    s2.move_to()
  ' ####################### DO NOT MODIFY ANYTHING BELOW THIS LINE #######################

  s2.end_path
