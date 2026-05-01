[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-22041afd0340ce965d47ae6ef1cefeee28c7c493a6346c4f15d667ab976d596c.svg)](https://classroom.github.com/a/LCgql7HN)
# ELE476 Term Project
## Project Description

**DTMF** signals are audio tones used in telephone systems to represent **digits (0–9), letters (A–D), and symbols (*, #)**. Each key press on a DTMF keypad generates a combination of two sine waves — one from a **low-frequency group and one from a high-frequency** group like shown in the following image.

<img src="DTMFTones.png">

This **dual-tone** system ensures reliable detection and reduces errors in transmission.

In this project, we aim to **generate and analyze** DTMF tones using **GNU Radio**. For this task, you will prepare two flowgraphs:

1. DTMFToneGenerator.grc – This will **generate** DTMF tones via a user interface.

2. DTMFToneAnalyzer.grc – This will **analyze** the DTMF signal and show the correct key sent. 

You can use [OnlineToneGenerator](https://onlinetonegenerator.com/dtmf.html) website for test purposes. 

### Teams
You can work in teams of 2 maximum. If you prefer not to work in a team, you may also complete the project on your own.

### Bonus Point  
If you can receive and print keys sent consecutively, you are welcome to collect bonus points! Just to give **an example** assume that we want to call THY's call center. I have to call 4440849. If you can receive this number correctly, you would get extra points:)  

### NOTE
DTMFToneGenerator_2 is a reorganized version of the original GNU Radio Companion (GRC) file that adds support for keyboard key presses and applies debounce logic to button interactions to ensure reliable input handling.

**Good luck!**
