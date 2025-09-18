/*
 * Copyright (c) 2006-2021, RT-Thread Development Team
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 * Change Logs:
 * Date           Author       Notes
 * 2025-09-18     Administrator       the first version
 */
#ifndef APPLICATIONS_WT588D_DRIVER_H_
#define APPLICATIONS_WT588D_DRIVER_H_

#include "bsp_sys.h"


#define WT588D_RST_H()      HAL_GPIO_WritePin(WT588D_RST_GPIO_Port,  WT588D_RST_Pin,    GPIO_PIN_SET)
#define WT588D_RST_L()      HAL_GPIO_WritePin(WT588D_RST_GPIO_Port,  WT588D_RST_Pin,    GPIO_PIN_RESET)


//--------------------------------------------------------------------------------------------------------
#define WT588D_CMD_VOLUME_LEVEL0        0xE0
#define WT588D_CMD_VOLUME_LEVEL1        0xE1
#define WT588D_CMD_VOLUME_LEVEL2        0xE2
#define WT588D_CMD_VOLUME_LEVEL3        0xE3
#define WT588D_CMD_VOLUME_LEVEL4        0xE4
#define WT588D_CMD_VOLUME_LEVEL5        0xE5
#define WT588D_CMD_VOLUME_LEVEL6        0xE6
#define WT588D_CMD_VOLUME_LEVEL7        0xE7
#define WT588D_CMD_LOOP_PLAYBACK        0xF2
#define WT588D_CMD_STOP_PLAYING         0xFE


//--------------------------------------------------------------------------------------------------------
#define WT588D_ADDR_VOICE_1             0x00


// 函数声明--------------------------------------------------------------------------------------------------------
void wt588d_send_cmd(uint8_t cmd);


#endif /* APPLICATIONS_WT588D_DRIVER_H_ */
