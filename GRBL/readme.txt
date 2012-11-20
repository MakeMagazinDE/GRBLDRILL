h1. Grbl - An embedded g-code interpreter and motion-controller for the Arduino/AVR328 microcontroller
    
Grbl is a no-compromise, high performance, low cost alternative to parallel-port-based motion control for CNC milling. It will run on a vanilla Arduino (Duemillanove/Uno) as long as it sports an Atmega 328. 

The controller is written in highly optimized C utilizing every clever feature of the AVR-chips to achieve precise timing and asynchronous operation. It is able to maintain more than 30kHz of stable, jitter free control pulses.

It accepts standards-compliant G-code and has been tested with the output of several CAM tools with no problems. Arcs, circles and helical motion are fully supported, as well as, other basic functional g-code commands. Functions and variables are not currently supported, but may be included in future releases in a form of a pre-processor.

Grbl includes full acceleration management with look ahead. That means the controller will look up to 18 motions into the future and plan its velocities ahead to deliver smooth acceleration and jerk-free cornering.

*Changelog for v0.8 from v0.7:*
  - *ALPHA status: _Under heavy development. Code state may significantly change with each push as new features are integrated._*
  - Major structural overhaul to allow for multi-tasking events and new feature sets
  - New run-time command control: Feed hold (pause), Cycle start (resume), Reset (abort), Status reporting
  - Controlled feed hold with deceleration to ensure no skipped steps and loss of location.
  - After feed hold, cycle accelerations are re-planned and may be resumed.
  - Re-factored g-code parser with robust error-checking.
  - Work coordinate system (G54), offsets(G92), and machine coordinate system support. G10 work coordinate settings support. (Up to 6 work coordinate systems(G54-G59) available as a compile-time option.)
  - Program stop(M0,M1*,M2,M30) initial support. Optional stop to do.
  - System reset re-initializes grbl without resetting the Arduino and retains machine/home position and work coordinates.
  - Restructured planner and stepper modules to become independent and ready for future features.
  - Planned features: Jog mode, status reporting, runtime settings such as toggling block delete, XON/XOFF flow control.
  - Reduce serial read buffer to 128 characters and increased write buffer to 64 characters.
  - Misc bug fixes and removed deprecated acceleration enabled code.

*Important note for Atmega 168 users:* Going forward, support for Atmega 168 will be dropped due to its limited memory and speed. However, legacy Grbl v0.51 "in the branch called 'v0_51' is still available for use.

_The project was initially inspired by the Arduino GCode Interpreter by Mike Ellery_



Additions by Carsten Meyer, cm@heise.de: 
  - Status Report by <?> OK
  - Switch Report by <%>, may be changed to something else; Excellon uses <%> to indicate EOH
  - rudimantary home cycle, runs to switches with medium speed and backs off slowly so switch opens again
    Must be enabled / disabled in config.h file
    
Compiled and tested with WinAVR and AVRdude (see avrdude_com9.bat for example) on MikroElektronika MINI-AT Arduino clone.