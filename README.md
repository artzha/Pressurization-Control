# Pressurization-Control
Designed by Josh Azrin and Arthur Zhang.

![Board Front](./Board/renders/pressurization_series1_f.jpg)
|:--:| 
| *Front of PCB* |

Combustion-Control is a project that Josh and I researched and designed to actively balance the liquid fuel tanks for rockets using a PID control loop and various peripherals. We are currently working with the ATLO team to integrate their custom PID control loop into this system. Currently, we are using this PCB on Tangerine Space Machine, a rocket that students are designing at Michigan Aeronautics and Science Association (MASA), a project design team at the University of Michigan.

## Project Overview
1. Overview
1. Board Specs
2. Key Features
3. Firmware Architecture
4. Additional Information

## Overview

![Pressure Explanation](./Board/docs/pressure_fed_rocket.png)
|:--:| 
| *Diagram of Pressure Fed Rocket* |

Liquid fuel rockets typically use a pressurized gas like helium to force fuel and oxidizer together into a combustion chamber. In order to maintain a steady combustion, we must ensure that the tank pressures exceed the combustion chamber pressure. We plan on accomplishing this by controlling the flow rate of the the fuel and oxidizer together using a needle valve. This method uses simple plumbing and removes the need for complex turbopumps. Along with Josh, we designed a PCB that supports this functionality. In addition, I have also architected the firmware for carrying out PID control, Command and Data Handling, and interfacing with peripherals.

## Board Specs

![Board Back](./Board/renders/pressurization_series1_b.jpg)
|:--:| 
| *Back of PCB* |

The completed board is an eight layer PCB with the stackup
listed below:

* Analog
* Ground
* North South Signals
* 3v3
* 12v
* East West Signals
* Ground Power

We chose to use 8 layers for this iteration for this iteration to reduce the layout
complexity and remove concerns about electromagnetic interference. However, on the
future flight board, I will focus on reducing the number of layers and condensing
the placement of the components.

* 9 Dual State Valves (12V 5A continuous)
* 3 Analog to Digital Converters (12 bit resolution)
* 6 Pressure Transducers
* 4 H-Bridge Motor Drivers (12V 15A)
* 2 Three Phase Motor Drivers
* 6 Hall Effect Sensors
* 2 Potentiometers
* 2 Full Duplex RS-422 Communication Channels
* 5 Thermocouples
* 1 Non-volatile Flash Memory Chip
* 1 Micro SD Card Reader

The board organizational hierachy can be seen in the schematic below.

![Schematic](./Board/docs/schematic-top.jpg)

## Key Features

Utilizing the redundant RS-422 communication chips, the system is able transceive
data with a ground computer with the assistance of a wireless transceiver. This 
becomes extremely important because it gives us the ability to monitor the rocket state for
anomalies and abort the procedure if needed.

In addition, the board supports multiple methods of storing data. During pressurization
tests, we are able to write telemetry directly into non-volatile flash memory and
a micro sd card. This creates an additional level of data redundancy on the board 
in case parts of the system become damaged and unusable during testing. 

## Firmware Architecture

![State Diagram](./Board/docs/state-diagram.png)
|:--:| 
| *State Diagram of Firmware* |

The system can be one of these various states (in orange) and transitions between 
the Idle, Armed, and Done states by receiving commands from a remote computer. 
These states are for the user to check the system for nominal behavior. In the Running 
and Abort Case Handling states, the board is in control of the system and will continue 
executing the PID control loop until commanded to stop or potentially dangerous 
system behavior is detected. Once the pressurization procedure is proceeded, all of the 
telemetry data logged at high speed is dumped from flash memory to the remote computer
via an ethernet using RS-422.

Because there are several time sensitive tasks that must be completed, I used hardware
timers to guarantee that they are executed precisely. For less critical functions,
the system uses a virtual timer to approximately execute them at the correct time.

Along with writing C code for interfacing with peripherals using SPI and UART, I also
developed a telemetry packet format and firmware for communicating with external 
PCBs and computers. The communication packet COBs encodes data to increase its 
resilence to errors and contains useful information like a 32 bit timestamp, packet
target address, and simple checksum.

![Serial Comms](./Board/docs/serial-comms.png)
|:--:| 
| *Logic Flow of Serial Communications Library* |

The serial communication library supports both sending and receiving data over RS-422 transceiver chips, and is capable of handling communications across any amount of daisy chained PCBs. It will become increasingly more important to support daisy chained communications across boards as the rocket becomes more complex because communicatingbetween board to board is highly useful. During both data transmission and reception, the library utilizes a two buffer system for loading and encoding data. By doing this, the system can be easily adapted to a design where an external chip can write telemetry data directly to memory on the microcontroller before it is encoded by the library. This allows for parallel processing of data preparation and transmission. 

The library also provides users with the ability to COBs encode data prior to transmission. Using COBs encoding, 
otherwise known as Consistent Overhead Byte Stuffing, saves a significant amount of memory on the microcontroller 
because the algorithm allows boards to unambiguously terminate each transmission frame with a unique termination bit. It does this by replacing all occurrences of a terminator bit in the message with a byte representing the number of spaces until the next terminator bit. The algorithm also guarantees that it will add exactly two bytes to each transmission frame, which allows us to calculate the number of packets that will be sent  in the next transmission frame and include this information in the packet header. 

For additional information on the firmware architecture, please consult me (Arthur Zhang)
and I will be happy to discuss more details on its implementation.

## Additional Information

### Project Setup Details

This project uses KiCAD, a free PCB and schematic design tool. It uses the default
schematic, footprint, and 3d model library paths. In addition, the repository for
firmware is built on the STM32CubeIDE platform.

### Reviewers

Special thanks to Marion Anderson and Alex Davenport for constantly reviewing and 
providing guidance on this project.
