# Hub for Experimental Projects
> "Wireless Made Easy!" - Full workshop experience to learn and touch PIC32MZ W1 family

[Back to Main page](../README.md)

## A la carte

1. [ADC example and Digital Filtering](#step1)


## ADC example and Digital Filtering<a name="step1"></a>

### Purpose

The ADCHS Polled example code has been modified with Digital filtering functions to enable a very accurate analog reading for application such as Battery Voltage Measurement.

In this sample code, the ADC channel AN9 has been used because it is easily available on the MikroBUS Header or on the Xpro Header of the PIC32WFI32E Curiosity Board.
<p align="center">
<img src="resources/media/01_an9_xpro_header.png" width=720>
</p>

To reduce the noise of the measurement and get a stable 12-bit ADC, two digital filtering techniques have been implemented in the code.

* Introduction of a Lowpass filter for DC interpolation
  - The Lowpass filter is the easiest to implement and it is adjustable.
  - But, because the Tau is very long (to block the noise as much as possible ), it has the disadvantage of long time sampling before getting the conversion result (about 10 to 20 seconds). To avoid such delay, a +/-20mV barrier was introduced. Any change outside this barrier will lead to load the actual input into the filter taps. And only when the difference between input and output is less than 20mV, the filter is used. The filter reaches its final value much faster but still strongly lowpasses/average/interpolate the result.

* Introduction of a 3rd order polynom to compensate Gain and Offset error
  - To find the coefficients of the Polynom, the program [Scilab](https://www.scilab.org/) has been used.
  - The Scilab script that calculate the compensation polynom coefficient is part of the MPLAB X project in `adchs_polled\firmware\src\calib.sce`.
  - It is necessary to measure in parallel with a good multimeter and read the results also from the terminal. Then put these two rows of data into the script to get the coefficients for the polynom.
  - The calculation is done in emulated float and need 560 instruction cycles (14us@40MHz (Flash bandwidth)).

<p align="center">
<img src="resources/media/01_polynom.png" width=>
</p>

With the two actions above, it is possible to achieve an accuracy of 1mV within less a second. 

### Try it

1. Clone/download the repo
2. Open the project located in `PIC32MZW1_Workshop/05_evaluate/resources/adchs_polled_with_filtering` with MPLAB X IDE
3. Build and program the code
4. Connect a 3.3V battery to AN9 channel
5. Observe the result on the console

```bash
ADC Count = 0xfff, ADC Input Voltage = 3.231248 V
```


<a href="#top">Back to top</a>