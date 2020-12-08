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

#include "median.h"

volatile uint32_t result;
struct s_median myMedian;
uint32_t my_data[MDN_SIZE_MEDIAN];
uint32_t my_ages[MDN_SIZE_MEDIAN];

void MDN_test(void) {
    int ix;

    MDN_median_constructor(&myMedian, my_data, my_ages, MDN_SIZE_MEDIAN);

    for (ix = 0; ix < 1000; ix++) {
        result = MDN_median_insert(&myMedian, rand()>>24);
    }
}

/**
 * Initialize the Median Object
 */
void MDN_median_constructor(struct s_median *p, uint32_t *data, uint32_t *age, uint32_t size) {

    int ix;
    p->age = age;
    p->data = data;
    p->count = 0;
    p->size = size;

    // Initialize the values and ages
    for (ix = 0; ix < size; ix++) {
        data[ix] = 0;
        age[ix] = 0;
    }
}

/**
 * Insert an Element to the Median Filter
 */
uint32_t MDN_median_insert(struct s_median *p, uint32_t value) {
    uint32_t inspos = p->size;
    uint32_t pos;
    uint32_t tmpdata;
    uint32_t tmpage;
    uint32_t swapcount = 0;

    // Replace the Oldest entry and store the insertion position in inspos
    for (pos = 0; pos < p->size; pos++) {
        if (p->age[pos] > 0)
            p->age[pos] -= 1;
        else if (inspos == p->size) {
            inspos = pos;
            p->data[pos] = value;
            p->age[pos] = p->size - 1;
        }
    }

    // Count the current number of data until the size is reached
    if (p->count < p->size)
        p->count += 1;

    // shift the elements up to the right sorted position
    for (pos = inspos + 1; pos < p->count; pos++) {
        if (p->data[pos - 1] < p->data[pos])
            break;

        tmpdata = p->data[pos];
        tmpage = p->age[pos];
        p->data[pos] = p->data[pos - 1];
        p->age[pos] = p->age[pos - 1];
        p->data[pos - 1] = tmpdata;
        p->age[pos - 1] = tmpage;
        swapcount++;
    }

    // If we already shifted up, then we need no shift down
    if (swapcount == 0) {
        // shift the elements down to the right sorted position
        for (pos = inspos; pos > 0; pos--) {
            if (p->data[pos] < p->data[pos - 1]) {
                tmpdata = p->data[pos];
                tmpage = p->age[pos];
                p->data[pos] = p->data[pos - 1];
                p->age[pos] = p->age[pos - 1];
                p->data[pos - 1] = tmpdata;
                p->age[pos - 1] = tmpage;
            }
        }
    }

    pos = p->count;
    if (pos & 0x01) {
        // Return the median if the count is an odd number
        return p->data[pos >> 1];
    } else {
        // Return the average value of the two median values
        pos = pos >> 1;
        return (uint32_t) (((uint32_t) p->data[pos - 1] + p->data[pos]) >> 1);
    }
}

