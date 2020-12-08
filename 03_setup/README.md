# Setup the tools
> "Wireless Made Easy!" - Full workshop experience to learn and touch PIC32MZ W1 family

[Back to Main page](../README.md)

## A la carte

1. [Material Required](#step1)
1. [Hardware Setup](#step2)
1. [Software Requirements](#step3)
1. [Setup your development environement](#step4)

## Material Required<a name="step1"></a>

- [PIC32WFI32E Curiosity Board](http://www.microchip.com/EV12F11A)\
[Order a PIC32WFI32E Curiosity Board](https://www.microchipdirect.com/product/EV12F11A)
- Micro-USB to USB Cables
- USB-UART converter such as FTDI (TTL-232R-3V3) cable or an [ADM00393 MCP2200 USB-UART board](https://www.microchip.com/developmenttools/ProductDetails/ADM00393)
- (optional) Programmer/debugger: [MPLAB® SNAP](https://www.microchip.com/developmenttools/ProductDetails/PartNO/PG164100), [PICkit 4](https://www.microchip.com/Developmenttools/ProductDetails/PG164140), or [MPLAB® ICD4](https://www.microchip.com/Developmenttools/ProductDetails/DV164045)
- (optional) [AC164110 RJ11 to ICSP Adapter](https://www.microchipdirect.com/product/search/all/AC164110) for ICD4

- Wi-Fi Access Point or Mobile Hotspot with Internet access\
(make sure you have the credentials to the Wi-Fi AP with internet access handy)
- Personal Computer


## Hardware Setup<a name="step2"></a>

<p align="center">
<img src="resources/media/curiosity_board.png" width=720>
</p>

The PIC32WFI32E Curiosity Board has the PKOB debugger on-board. You can either setup the board to use the on-board programmer/debugger or either use an external programmer/debugger tool for faster programming experience.

The table below provide the possible combinations for the jumpers (open/close) and the connectors (Yes: connected, No: not connected).

| Mode of operation | External Power Supply J201 | Power Source Selection Jumpers J202 | Standalone USB Power J204 | USB Host/Device Selection Jumper J205 | ICSP Header J206 | Int/Ext Debugger/Programmer Jumpers J301 |  USB Prog/Debug J302 |
| --- | --- | --- | --- | --- | --- | --- | --- |
| On-board programming/debugger | No | PKOB | No | Open | No | Close | Yes |
| External programming/debugging | Yes | VBUS | No | Open | Yes | Open | No |
| External programming/debugging (tool supplies 3V) | No | Open | No | Open | Yes | Open | No |
| USB Device Standalone power operation/run | No | VBUS | Yes | Open | No | Open | No |
| USB Host powered from external 5V | Yes | PS | No | Close | No | Open | No |
| USB Device powered from USB debug | No | PKOB | No | Close | No | Close | Yes |

### On-board debugger setup

The PKOB debugger enables the user to program/debug through Debug USB (J302) on PIC32WFI32E Curiosity Board.

<p align="center">
<img src="resources/media/pkob_setup_02.png" width=480>
</p>

1. Make sure J202 jumper is connected to PKOB
1. Make sure J301 jumpers are shorted (Pins 1-2 shorted, Pins 3-4 shorted) 
1. Connect the USB Cable between **_USB Debug J302_** and your PC

| J301              | Jumpers Position                               |
| ----------------- | ---------------------------------------------- |
| Pins 1-2          | shorted                                        |
| Pins 3-4          | shorted                                        |

<p align="center">
<img src="resources/media/pkob_setup_01.png" width=480>
</p>

No external debug tool is needed.

### External debugger setup (optional)

MPLAB® ICD 4 In-Circuit Debugger/Programmer is Microchip’s fastest, cost-effective debugging and programming tool for PIC32MZ W1 family.

<p align="center">
<img src="resources/media/icd4_setup_02.png" width=480>
</p>

1. Make sure that J202 jumper is connected to VBUS
1. Make sure J301 jumpers are open (Pins 1-2 open, Pins 3-4 open)
1. To power supply the board , connect the USB Cable between **_USB Power J204_** and your PC
1. Connect the MPLAB® ICD 4 tool between ICSP J206 connector and your PC

| J301              | Jumpers Position                               |
| ----------------- | ---------------------------------------------- |
| Pins 1-2          | open                                           |
| Pins 3-4          | open                                           |

<p align="center">
<img src="resources/media/icd4_setup_01.png" width=480>
</p>

### USB-to-UART converter

To observe the application logs, you can connect a USB-to-UART converter to J207 (GPIO Header) of the Curiosity Board. Application debug logs can be captured from UART1.

> The UART1 pins (Tx and Rx) are marked on the GPIO Header silkscreen.\
Serial port settings: **_115200 8N1_**

#### Setup with FDTI cable

| USB-UART Cable    | GPIO Header J207 of the Curiosity Board        |
| ----------------- | ---------------------------------------------- |
| Tx                | UART1_RX (Pin 13)                              |
| Rx                | UART1_TX (Pin 23)                              |
| Ground            | GND (Pin 17)                                   |

<p align="left">
<img src="resources/media/usb-uart_cable.png" width=240>
</p>

#### Setup with PICKIT Serial

| PICKIT Serial header     | GPIO Header J207 of the Curiosity Board        |
| ----------------- | ---------------------------------------------- |
| Tx (Pin 1)        | UART1_RX (Pin 13)                              |
| Rx (Pin 6)        | UART1_TX (Pin 23)                              |
| Ground (Pin 3)    | GND (Pin 17)                                   |

> Curiosity board J207 pins 13 to 23 are aligned with PICKIT serial header output.\
> If using ADM00393 MCP2200 Breakout module, make sure to change jumper position to 3.3V position

<p align="center">
<img src="resources/media/pickit_serial_connection_01.png" width=195>
<img src="resources/media/pickit_serial_connection_02.png" width=240>
</p>



### Temperature sensor

The Microchip [TC1047A temperature sensor](https://www.microchip.com/wwwproducts/en/TC1047A) is on-board and connected to pin AN15/RPA13 of the WFI32E01PC module. 

1. Make sure jumper J209 is shorted to enable temperature sensor
<p align="center">
<img src="resources/media/temp_sense_setup.png" width=200>
</p>

## Software Requirements<a name="step3"></a>

- [MPLAB® X IDE](https://www.microchip.com/mplab/mplab-x-ide) v5.40 or above
- [MPLAB® XC32 Compiler](https://www.microchip.com/mplab/compilers) v2.41 or above
- [MPLAB® Harmony v3 Configurator](https://www.microchip.com/mplab/mplab-harmony) v3.6 or above
- Serial Terminal like TeraTerm

This material has been developped and validated with:

- MPLAB® X IDE v5.40
- MPLAB® XC32 Compiler v2.41
- MPLAB® Harmony v3 Configurator v3.6
- Device Pack PIC32MZ-W_DFP v1.3.177


## Setup your development environement<a name="step4"></a>

<!--Check out:

- [MPLAB® Harmony 3 wiki](https://github.com/Microchip-MPLAB-Harmony/Microchip-MPLAB-Harmony.github.io/wiki)
- [How to Set-up the Tools Required to Get Started with MPLAB® Harmony v3](https://youtu.be/5nt3D-Cmbus).

Set up your development environment.
-->

* Download and install [MPLAB® X IDE](https://www.microchip.com/mplab/mplab-x-ide) 
* Download and install [XC32 Compiler](https://www.microchip.com/mplab/compilers)
* Install the MPLAB® Harmony Configurator 3 Plugin [(tutorial)](https://github.com/Microchip-MPLAB-Harmony/contentmanager/wiki)
<p align="center">
<img src="resources/media/mplabx_plugin_01.png" width=>
<img src="resources/media/mplabx_plugin_02.png" width=>
</p>

* Launch MPLAB® Harmony 3 Content Manager from the IDE [(Getting Started with Content Manager](https://github.com/Microchip-MPLAB-Harmony/contentmanager/blob/master/doc/readme.md) for more details).
<p align="center">
<img src="resources/media/h3_content_manager.png" width=480>
<img src="resources/media/mplabx_content_manager_01.png" width=480>
</p>

* Select and download all remote contents to sync Harmony 3 releases into your local folder (the sync takes some time)
<p align="center">
<img src="resources/media/mplabx_content_manager_02.png" width=720>
</p>

> PIC32MZ W1 Device support comes automatically with latest MPLAB X IDE, check out from MPLAB Pack Manager.

* Open MPLAB Pack Manager from Tools -> Packs
<p align="center">
<img src="resources/media/mplabx_packs.png" width=>
</p>

* Type "w1" in Show Packs Compatible text box
<p align="center">
<img src="resources/media/mplabx_pack_manager.png" width=720>
</p>

> You are now ready to use the MPLAB® Harmony Framework to start your first application with PIC32MZ W1 device.


<a href="#top">Back to top</a>