[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-22041afd0340ce965d47ae6ef1cefeee28c7c493a6346c4f15d667ab976d596c.svg)](https://classroom.github.com/a/-zavhIcS)
# Week-3
## ELE361L 2024-2025 Fall Term Week-3 repository
In this week, you have **two** tasks, one for **week-3** and another one for **week-4 prelab**. 

## Week-3 Tasks
For week-3 tasks, check out the **notebook** in this repo to complete the tasks assigned to you. Then upload your notebook pushing your repository to GitHub.

## Week-4 PreLab Task
We will download necassary applications and tools for the coming week. We will make the installations next week because you'll need real hardware to do that. 
### Windows Users 
#### 1. Download and Extract SDRSharp (SDR#) App for Windows
We will be using SDR# in our lab. **Download** the latest SDR# package from this [site](https://airspy.com/download/) and **extract** it to a known, safe place, directory.

#### 2. Download zadig file
**Download** the latest zadig software from [here](https://zadig.akeo.ie/downloads/). **DO NOT RUN** it, yet!

#### 3. Download and Extract Osmocom Software Suite
There exist many software tools available for using with RTL-SDR. We will first use RTL-SDR with command line tools. These tools can be used to test device existance and perform some basic data transfer and decoding jobs. Much information can be obtained from [osmocom's wiki](https://osmocom.org/projects/rtl-sdr/wiki) page. Install binaries into your machine if you haven't done yet. Use this [link](https://downloads.osmocom.org/binaries/windows/rtl-sdr/) for Windows. You can also find the latest Windows build file in this week's repo. **Extract** these binaries along with dlls into your **miniconda ELE361L environment folder** so that they can be called within miniforge prompt. I extracted all these binaries and dlls into `C:\Users\murat\miniforge3\envs\ELE361L`.

### Linux and Mac Users
You can install [gqrx](https://www.gqrx.dk/) software for the labs. You can install the **gqrx** app through your package installer. In order to use RTL-SDR, you can install drivers with librtlsdr package. You may need to blacklist RTL so that default DVB-T driver is not loaded when RTL-SDR dongle is plugged in. 

Do not forget to upload all your files along with the notebook. 
