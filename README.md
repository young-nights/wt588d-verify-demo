<style>
.red {
  color: #ff0000;
}
.green {
  color:rgb(10, 162, 10);
}
.blue {
  color:rgb(17, 0, 255);
}

.wathet {
  color:rgb(0, 132, 255);
}
</style>



# <span class="wathet"><font size=4>验证WT588D功能板</font></span>
## <font size=3>一、测试目的</font>
<font size=2>

```bash
1. WT588D采用3线串口模式，测试当采用5V电源供电时，使用STM32-SPI驱动是否可行；
2. 功放电路使用LM4871芯片，验证电路可行性，并测试不同阻抗和功率的喇叭对其的影响
3. WT588D-SSOP20只能外挂SPI-FLASH,使用XP866+烧录工具对SPI-Flash进行.bin文件的烧写，验证是否可行
```


[📑Windows安装FFmpeg](./Windows安装FFmpeg.md)
</font>







