---
title: "2025-26 FTC Season"
description: "2025-26 FTC DECODE season highlights: Limelight vision, Bezier pathing, Kalman filter localization, and Dean's List Semifinalist recognition with ITKAN of ICF."
permalink: /first/decode/
author_profile: false
---

In this season of the FIRST® Tech Challenge (FTC) game, robot were tasked with the deceptively simple task of shooting multicolored balls into a triangular goal as fast as possible. This year, I was the Programming Lead and Co-Founder of my school's team, coding all of the robot's functions, particularly the shooter, auto align, and autonomous routines. Through our efforts, our team won the Control Award (which "celebrates a team that uses sensors and software to increase the ROBOT’S functionality during gameplay") at two of our events, were the event winners at the Semi-Regional Tournament, and placed 3rd at the UIL State Championship!

However, from the start, our team faced time constraints unlike what I had experienced during my previous FRC season ([REEFSCAPE](/first/reefscape/)); because of latent funding and approval from my school, we started from 0 with only 11 days before our first official competition. As such, we were in a time scramble to build and program the robot. Since the majority of our funding was through the school ($4,070 in total), we decided that hardware iteration would be too costly—meaning that software would have to cover the lost ground. Therefore, I built off of my previous experience and focused on three main aspects to maximize our robot's capabilities in that time frame: shooter consistency, autonomous alignment, and autonomous routines.

<div style="display: flex; align-items: flex-start; gap: 24px;">
  <div style="flex: 1;">
    To score in DECODE, you had to be able to shoot. So, due to the incredibly short timeline I faced, I originally had two hard-coded shooter presets. While these worked in the short-term, the restrictions on where the driver could shoot limited the capabilities of our robot. I realized the importance of being able to shoot anywhere on the field. So, I implemented an interpolated lookup table. Using our camera data, I created an algorithm to calculate our distance from the target and find the optimal velocity for the shooter based on our location on the field. In turn, we reduced our cycle time from 6.5s to 3.8s, a 41.5% decrease.
  </div>
  <img src="/assets/images/first/ftc-velocity-lut.png" alt="FTC Pose Estimation" style="height:25vw; flex-shrink: 0;">
</div>
<br>
<div style="display: flex; align-items: flex-start; gap: 24px;">
  <img src="/assets/images/first/ftc-pose-estimation.png" alt="FTC Pose Estimation" style="height:25vw; flex-shrink: 0;">
  <div style="flex: 1;">
    I used our camera not only to automatically adjust our shooter, but also to align our robot's angle to the goal. After our first competition, where our driver struggled to manually align to the target, I applied techniques I learned in REEFSCAPE to support them. By fusing sensor data from the onboard camera with dead-reckoning wheel odometry, I built a custom pose estimation class—similar to what I used in FRC—that calculated the optimal angle for the robot to turn, ensuring precise alignment with the goal.
  </div>
</div>
<br>
After implementing variable shooting speed using the lookup table, shooting location
using auto alignment, and pose estimation, I worked on improving our autonomous routine. Originally, I only had time to make a six ball autonomous: one that shot our preloaded balls and then picked up and shot one more. After our first competition, though, I had more time to iterate and improve our autonomous routine. Using PedroPathing, an autonomous pathing software that allowed me to combine point-to-point (p2p) and Bézier curve paths, I was able to create a robust set of autonomous routines and even iterate on them during the competition! By the end of UIL States, we had eight different autonomous routines (four on each side) that we could choose based on our alliance partner, ensuring adaptability that other teams often did not have.
  <div style="display: flex; justify-content: center;">
    <img src="/assets/images/first/ftc-auto-paths.png" alt="FTC Auto Paths" style="width:50vw; flex-shrink: 0;">
  </div>

Below are some videos of our different autonomous routines (we are the black robot with the number 33791):

<div style="display: flex; gap: 24px; justify-content: center; align-items: flex-start;">
  {% include video id="8zg-Yr9Hc5I" provider="youtube" width="48vw" height="27vw" %}
  {% include video id="e51R_oLupJw" provider="youtube" width="48vw" height="27vw" %}
</div>
<br>
[GitHub Code](https://github.com/itkan-of-icf/ftc-26357-2526-v2){: .btn .btn--purple .btn--large}

<div style="display: flex; justify-content: space-between; align-items: center; gap: 20px;">
  <div>
    {% include pdf path="/assets/images/first/33791-25-26-portfolio.pdf"%}
  </div>
</div>
