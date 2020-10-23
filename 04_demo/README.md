# Out-of-box experience
> "Wireless Made Easy!" - Full workshop experience to learn and touch PIC32MZ W1 family

[Back to Main page](../README.md)

## A la carte

1. [Introduction](#step1)
1. [Resources](#step2)
1. [Run the demo](#step3)
1. [Customize the demo](#step4)

## Introduction<a name="step1"></a>

The [PIC32WFI32E Curiosity Board](http://www.microchip.com/EV12F11A) comes with a Out-of-box demo application already programmed onto the PIC32MZ W1 device.

The demo has a web app and voice based interaction mode. 

<p align="center">
<img src="resources/media/oob_application.png" width=720>
</p>

In the web-app based interaction mode, you will be able to visualize the data telemetry from the Curiosity board and interact with the Curiosity board using a web-browser based application. 

In the voice control based interaction mode, you will be able to control the on-board user LED with voice commands using Amazon Alexa®.

All you will need is a board, a micro-USB cable, and a 2.4 GHz Wi-Fi connection.
Follow this 30-second demo to set up Wi-Fi connection and start viewing live data...


## Resources<a name="step2"></a>

- [Out-of-box Demo Application Firmware Image](https://github.com/MicrochipTech/PIC32MZW1_Curiosity_OOB/releases/latest)
- [Out-of-box Demo Landing Page](https://github.com/MicrochipTech/PIC32MZW1_Curiosity_OOB) with detailled instructions and Harmony 3 project source code


## Run the demo<a name="step3"></a>

With zero coding, follow the operations to get your device connected on the Internet.

<p align="center">
<img src="resources/media/oob_operation.png" width=720>
</p>

**Setup board**

- Connect J202 jumper to VBUS-VIN.
- Remove J301 jumpers.

**Plug In**

- Connect USB power connector (J204) of your board to your Windows, Mac, or Linux PC through a micro USB cable. Your PC will recognize the board as a removable storage drive.

<p align="center">
<img src="resources/media/oob_new_drive.png" width=480>
</p>

**Link Up**

The new drive contains several files.

- Click on `clickme.html` to open your uniquely configured AWS cloud portal in a browser.
<p align="center">
<img src="resources/media/oob_board_connected.png" width=520>
</p>

- Scroll-down, enter your wireless network information on the page.
<p align="center">
<img src="resources/media/oob_wireless_configuration.png" width=320>
</p>

- Click Download Configuration to download the Wi-Fi® configuration file `WIFI.CFG` and save the file in a dedicated folder on your hard drive (e.g. c:\pic32mzw1).

- Drag and drop the new file `WIFI.CFG` to the root of the new drive and replace the existing file. Make sure the file is named exactly `WIFI.CFG` and the copy process is completed.

- Reboot the board by pressing MCLR button.

- Your board will automatically connect to the network.

<p align="center">
<img src="resources/media/oob_board_ready.png" width=520>
</p>

> Check out the [FAQ](https://github.com/MicrochipTech/PIC32MZW1_Curiosity_OOB/blob/master/faq.md) in you are having trouble to connect.


**Dive In**

Once your board is connected, you'll immediately be able to dive into your temperature data through Microchip’s AWS cloud sandbox.

<p align="center">
<img src="resources/media/oob_temperature.png" width=240>
</p>

- On top of the temperature graph, copy the unique Thing Name in the clipboard.

> The Thing Name is also part of the web-app link: `https://pic-iot.com/pic32mzw1/aws/<ThingName>`

- Click <img src="resources/media/oob_whats_next.png" width=100> button

- To control the on-board LED from the cloud, select "Implement a Cloud-Controlled Actuator" 
<p align="center">
<img src="resources/media/oob_implement_actuator.png" width=>
</p>

- Click <img src="resources/media/oob_learn_more.png" width=100> button

- Select an LED state
- Click on "Send to Device" to trigger a cloud message to control the on-board Green LED.

<p align="center">
<img src="resources/media/oob_control_led.png" width=480>
</p>

> Microchip’s sandbox is for demonstration purposes. Learn [here](https://github.com/MicrochipTech/PIC32MZW1_Curiosity_OOB#connecting-to-your-cloud-instance) how to connect the demo to your own AWS cloud instance.


**Use your voice**

- Go back to the content of the new drive mounted

<p align="center">
<img src="resources/media/oob_new_drive.png" width=480>
</p>

- Click on `voice.html` 
- Simply create an account to Microchip front-end web page then log-in
- Register your device:
   - your unique Thing Name previously copied to clipboard
   - a friendly name such as "pic32 light"
<p align="center">
<img src="resources/media/oob_register_a_device.png" width=480>
</p>

- After claiming your new device, it will appear on the left window

<p align="center">
<img src="resources/media/oob_device_registered.png" width=480>
</p>

- Install and open the Amazon Alexa® app on your smartphone/tablet
- Enable the [Microchip IoT Skill](https://www.amazon.com/gp/product/B08B5THZH5)
- Type the same user and password you have used to create an account within Microchip Cloud over `voice.html`
- The app will discover your device and add it within your device list
- Control the board through Amazon Alexa® by using the friendly name
   - E.g. Alexa, turn on "pic32 light"
   - E.g. Alexa, turn off "pic32 light"


## Customize the demo<a name="step4"></a>

**[Clone/download](https://github.com/MicrochipTech/PIC32MZW1_Curiosity_OOB) the source code of the demo**

**Add Button Status**

The user switch (SW1) will be used to simulate another sensor.

- Go to the main web-app page: `https://pic-iot.com/pic32mzw1/aws/<ThingName>`
- In "What's next?" section, select "Add more sensor data"
<p align="center">
<img src="resources/media/oob_add_sensor_data.png" width=>
</p>

- Click <img src="resources/media/oob_learn_more.png" width=100> button
- The web app will be expose the step-by-step instructions
- Using MPLAB X IDE:
  - open/modify the project accordingly
  - compile and program the code on your board

- Link up again your device to the cloud
- Observe the button status on the web-app

<p align="center">
<img src="resources/media/oob_button_status.png" width=240>
</p>

<!-- **Add your own sensor** -->



<!-- Latest status: after generating code, many compilation issues -->
<!-- Project needs to be updated with latest Harmony framework -->

<!-- Good practice to use MHC to change any configuration settings of components or services. -->

<!-- - Connect Light Sensor from [IO1 Xplained Pro Extension Kit](https://www.microchip.com/DevelopmentTools/ProductDetails/ATIO1-XPRO) to WFI32 Curiosity Board.

| IO1 XPRO Extension Header | WFI32 Curiosity Board XPRO Header |
| ------------------------- | --------------------------------- |
| Pin 2 - GND | Pin 2 - GND |
| Pin 3 - LIGHTSENSOR OUT | Pin 13 - PGD4/TDI/AN9/CVD9/CVDR9/RPB9 |

- Open **MHC**
- Select **ADCHS** from the Active Components list
- Open **ADCHS Easy View** from **MHC -> Tools -> ADCHS Configuration**
- Select **ADC7 Enabled**
- Click **Channel Selection**
<p align="center">
<img src="resources/media/oob_adchs_easy_view_01.png" width=720>
</p>

- Enable **AN9** with Input Scan and Interrupt
<p align="center">
<img src="resources/media/oob_adchs_easy_view_02.png" width=520>
</p>

- Click **Close**

- Click **Generate Code**
<p align="center">
<img src="resources/media/oob_generate_code.png" width=>
</p>

- Save the new configuration
<p align="center">
<img src="resources/media/oob_save_configuration.png" width=520>
</p>


-->



<a href="#top">Back to top</a>