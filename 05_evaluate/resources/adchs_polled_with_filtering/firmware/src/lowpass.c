// DOM-IGNORE-BEGIN
/*******************************************************************************
 * Copyright (C) 2019 Microchip Technology Inc. and its subsidiaries.
 *
 * Subject to your compliance with these terms, you may use Microchip software
 * and any derivatives exclusively with Microchip products. It is your
 * responsibility to comply with third party license terms applicable to your
 * use of third party software (including open source software) that may
 * accompany Microchip software.
 *
 * THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES, WHETHER
 * EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY IMPLIED
 * WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS FOR A
 * PARTICULAR PURPOSE.
 *
 * IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE,
 * INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND
 * WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP HAS
 * BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE. TO THE
 * FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL CLAIMS IN
 * ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT OF FEES, IF ANY,
 * THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS SOFTWARE.
 *******************************************************************************/
// DOM-IGNORE-END

#include "lowpass.h"

uint32_t lwp_iir_tap[LWP_N_FILTER];

void LWP_iir_init(uint32_t set) {
    int ix;
    for (ix = 0; ix < LWP_N_FILTER; ix++) {
        lwp_iir_tap[ix] = set << LWP_SHIFT_VALUE_K;
    }
}

uint32_t LWP_iir_filter(uint32_t usX) {
    int ix;
    uint32_t ulsTap;
    static uint32_t usXmem = 0;
    uint32_t diff;

    /* add 8 bit's for higher accuracy */
    usX <<= 8;

    /* If the delta from new to old value is greater 
     * than (20mV / ((3.3V / 4096)) * 256 = 6355
     * set all tap's to current input value to 
     * speed up the filter response time
     */
    diff = abs((int) usX - (int) usXmem);
    if (diff > 6355) {
        LWP_iir_init(usX);
    }

    /*
     * NORMALIZED BANDWIDTH AND
     * RISE TIME FOR VARIOUS VALUES OF k
     *  k   Bandwidth          Rise time
     *      (normalized        (samples)
     *      to 1 Hz)
     * ========================================
     *  1   0.1197              Three
     *  2   0.0466              Eight
     *  3   0.0217              16
     *  4   0.0104              34
     *  5   0.0051              69
     *  6   0.0026              140
     *  7   0.0012              280
     *  8   0.0007              561
     */

    for (ix = 0; ix < LWP_N_FILTER; ix++) {
        ulsTap = lwp_iir_tap[ix];
        ulsTap = ulsTap - (ulsTap >> LWP_SHIFT_VALUE_K) + usX;
        lwp_iir_tap[ix] = ulsTap;
        usX = lwp_iir_tap[ix] >> LWP_SHIFT_VALUE_K;
    }
    /* Store new value for next leap */
    usXmem = usX;
    /* scale value back to input range  */
    usX >>= 8;

    return usX;
}


