[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-22041afd0340ce965d47ae6ef1cefeee28c7c493a6346c4f15d667ab976d596c.svg)](https://classroom.github.com/a/s1y5eiyy)
# Week-4
In this week, we will start using our **RTL-SDR** kits. You must have already downloaded necessary apps onto your PC. Check out last week's README on how to do this, if you have not done yet.  

## Install RTL-SDR (Windows Users)
Follow instructions below to install RTL-SDR into your computer. Go to the folder where you have extracted SDR#. 

1. Double click on install-rtlsdr.bat to install drivers
2. Plug in your dongle into your computer's USB port
3. Run zadig.exe with adminstrator rights
4. If zadig.exe is not available, download zadig software from [here](https://zadig.akeo.ie/downloads/)
5. Replace Windows installed driver with zadig's. You can find this [guide](https://www.rtl-sdr.com/rtl-sdr-quick-start-guide/) helpful. Check steps 7, 8, 9, 10 and 11.  
6. If everything goes well now your test connection should succeed.

## Install RTL-SDR (Linux and Mac Users)
In order to use RTL-SDR, you can install drivers with **librtlsdr** package. You may need to **blacklist RTL** so that default DVB-T driver is not loaded when RTL-SDR dongle is plugged in. 

## Test your RTL-SDR
Use `rtl_test` tool to test your device. You can also get a list of gain you can apply. You should get a similar output shown below. 
```
Found 1 device(s):
  0:  Realtek, RTL2838UHIDIR, SN: 00000001

Using device 0: Generic RTL2832U OEM
Found Rafael Micro R820T tuner
Supported gain values (29): 0.0 0.9 1.4 2.7 3.7 7.7 8.7 12.5 14.4 15.7 16.6 19.7 20.7 22.9 25.4 28.0 29.7 32.8 33.8 36.4 37.2 38.6 40.2 42.1 43.4 43.9 44.5 48.0 49.6 
[R82XX] PLL not locked!
Sampling at 2048000 S/s.

Info: This tool will continuously read from the device, and report if
samples get lost. If you observe no further output, everything is fine.

Reading samples in async mode...
Allocating 15 zero-copy buffers
^C
Signal caught, exiting!

User cancel, exiting...
Samples per million lost (minimum): 0
```

**Don't wait until the end!** 
