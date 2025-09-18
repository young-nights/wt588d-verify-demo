/*
 * Copyright (c) 2006-2021, RT-Thread Development Team
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 * Change Logs:
 * Date           Author       Notes
 * 2025-09-18     Administrator       the first version
 */
#ifndef APPLICATIONS_WT588D_SPI_H_
#define APPLICATIONS_WT588D_SPI_H_

#include "bsp_sys.h"



/* SPI引脚 -- NSS */
#define     WT588D_NSS_PORT     WT588D_CS_GPIO_Port
#define     WT588D_NSS_PIN      WT588D_CS_Pin


#define     WT588D_NSS_SET(bit) if(bit) \
                               HAL_GPIO_WritePin ( WT588D_NSS_PORT, WT588D_NSS_PIN , GPIO_PIN_SET );\
                               else \
                               HAL_GPIO_WritePin ( WT588D_NSS_PORT, WT588D_NSS_PIN , GPIO_PIN_RESET );



int WT588D_SPI_Init(void);
int WT588D_Write_nBytes(const uint8_t *buf, uint8_t len);







#endif /* APPLICATIONS_WT588D_SPI_H_ */
