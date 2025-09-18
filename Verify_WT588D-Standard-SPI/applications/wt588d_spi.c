/*
 * Copyright (c) 2006-2021, RT-Thread Development Team
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 * Change Logs:
 * Date           Author       Notes
 * 2025-09-18     Administrator       the first version
 */
#include "wt588d_spi.h"
#include <drv_spi.h>



#define DBG_LVL DBG_LOG
#define DBG_TAG "WT588D"
#include <rtdbg.h>

//以下是SPI以及WT588D引脚配置相关的函数---------------------------------------------------------------------------------------------

/* 宏定义SPI名称 */
#define     WT588D_SPI_NAME    "wt588d_spi2"
/* 宏定义SPI总线 */
#define     WT588D_SPI_BUS     "spi2"
/* 定义spi设备名称 */
struct rt_spi_device *spi_dev_wt588d;


int WT588D_SPI_Init(void)
{
    //--------------------------------------------------------------------------------------
    /* 将SPI设备名挂载到总线 */
    rt_hw_spi_device_attach(WT588D_SPI_BUS, WT588D_SPI_NAME, WT588D_NSS_PORT, WT588D_NSS_PIN);
    /* 查找SPI设备 */
    spi_dev_wt588d = (struct rt_spi_device *)rt_device_find(WT588D_SPI_NAME);
    if(spi_dev_wt588d == NULL){
        LOG_E("LOG:%d. WT588D spi device is not found!",Record.ulog_cnt++);
        return RT_ERROR;
    }
    else{
        LOG_I("LOG:%d. WT588D spi device is successfully!",Record.ulog_cnt++);
    }

    /***
     *! 配置SPI结构体参数
     *! data_width: spi传输数据长度为8bits
     *! max_hz: spi的最大工作频率；
     *! mode-> RT_SPI_MASTER: 主机模式；
     *! mode-> RT_SPI_MODE_0: 工作模式0（ CPOL:0 -- 空闲状态为低电平 ， CPHA:0 -- 第一个边沿采集数据 ）
     *! mode-> RT_SPI_MSB: 通讯数据高位在前低位在后
     * */
    struct rt_spi_configuration wt588d_spi_cfg;

    wt588d_spi_cfg.data_width = 8;
    wt588d_spi_cfg.max_hz = 1*1000*1000; /* 10M,SPI max 10MHz,lora 4-wire spi */
    wt588d_spi_cfg.mode = RT_SPI_MASTER | RT_SPI_MODE_0 | RT_SPI_LSB;
    rt_spi_configure(spi_dev_wt588d, &wt588d_spi_cfg); /* 使能参数 */

    //--------------------------------------------------------------------------------------

    return RT_EOK;
}



/***
 * 向 WT588D写入len字节数据
 */
int WT588D_Write_nBytes(const uint8_t *buf, uint8_t len)
{
    return rt_spi_send(spi_dev_wt588d, buf, len);
}






