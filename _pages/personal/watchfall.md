---
title: "WatchFall - Samsung Solve for Tomorrow"
description: "WatchFall by Abdullah Khaled (akhaled247): An affordable fall-detection camera using TensorFlow for senior monitoring, designed for Samsung Solve for Tomorrow."
permalink: /watchfall/
author_profile: false
project_schema: true
---
{% include pdf path="/assets/images/personal/watchfall/watchfall-tech-drawing.pdf" width="47%" height="34%" float="left" %}

In some assisted living facilities, caretakers struggle to monitor their patients around the clock. However, despite their importance in preventing injuries, existing devices meant to monitor senior movements and detect falls are exorbitantly expensive.

At a high level, WatchFall works by calculating the downwards velocity of the senior citizen and determining whether they are falling or not. There are two speed sensors, spaced at a measurable distance apart, which use infrared light to perform object detection. Once the senior is not detected on the first sensor, then a timer is started, which runs until the senior is detected by the second sensor. Then, the program can calculate the velocity by dividing the distance between the two sensors by the time it took for the senior to move between them. The program can then determine if the senior is falling using the threshold the program has for a “falling velocity,” with an understanding of the distance between the two sensors. If the senior is indeed falling, then the program will simultaneously flash an LED, play a buzzing sound, and open a servo door with medication the senior caretaker can administer to the senior (such as painkillers and bandages). Finally, after a certain amount of time, the device is set back to its initial state and is primed to detect another fall.

One important thing that we learned was to control our scope. At the start of the project, we wanted to create an ML-powered smart monitor to determine if a senior had fallen anywhere in the room. However, we found that with the hardware constraints of the project (i.e. Raspberry Pi Pico H), it was infeasible. Therefore, we learned how to adjust our goals to provide a high-quality product that still fit within the constraints of our components.
