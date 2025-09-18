/*
 * Copyright (c) 2006-2021, RT-Thread Development Team
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 * Change Logs:
 * Date           Author       Notes
 * 2025-08-05     18452       the first version
 */
#include "bsp_sys.h"









/**
  * @brief  This thread entry is used for NixieTube scanning
  * @retval void
  */
void WT588D_Thread_entry(void* parameter)
{
    rt_uint16_t playCnt = 0;

    WT588D_RST_L();
    rt_thread_mdelay(10);
    WT588D_RST_H();
    rt_thread_mdelay(30);

    WT588D_Set_Cmd(WT588D_ADDR_VOICE_1);
    WT588D_Set_Volume(WT588D_CMD_VOLUME_LEVEL7);
    rt_thread_mdelay(50);
    WT588D_Set_Cmd(WT588D_CMD_LOOP_PLAYBACK);

    for(;;)
    {
        if(WT588D_Busy_Check() == 1){
            playCnt++;
            if(playCnt == 1){
                rt_kprintf("PRINTF:%d. The voice is playing now\r\n", Record.kprintf_cnt++);
            }
        }
        else{
            if(playCnt != 0){
                rt_kprintf("PRINTF:%d. The voice is pausing now\r\n", Record.kprintf_cnt++);
            }
            playCnt = 0;
        }

        rt_thread_mdelay(100);
    }

}



/**
  * @brief  This is a Initialization for water level Check
  * @retval int
  */
int WT588D_Thread_Init(void)
{
    rt_thread_t WT588D_Task_Handle = RT_NULL;
    /* 创建检查一些系统状态标志的线程  -- 优先级：25 */
    WT588D_Task_Handle = rt_thread_create("WT588D_Thread_entry", WT588D_Thread_entry, RT_NULL, 1024, 25, 30);
    /* 检查是否创建成功,成功就启动线程 */
    if(WT588D_Task_Handle != RT_NULL)
    {
        rt_kprintf("PRINTF:%d. WT588D_Thread_entry is Succeed!! \r\n",Record.kprintf_cnt++);
        rt_thread_startup(WT588D_Task_Handle);
    }
    else {
        rt_kprintf("PRINTF:%d. WT588D_Thread_entry is Failed \r\n",Record.kprintf_cnt++);
    }

    return RT_EOK;
}
INIT_APP_EXPORT(WT588D_Thread_Init);



