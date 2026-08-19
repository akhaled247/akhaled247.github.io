---
title: "REBUILT 2026 FRC Season | Team 9128"
description: "REBUILT 2026 FRC season by Abdullah Khaled (akhaled247): autonomous pathing, auto-align, automated driver-controls for Team 9128."
permalink: /first/rebuilt/
author_profile: false
project_schema: true
carousels:
  - images:
    - image: /assets/images/first/9128-2026-queue.jpg
    - image: /assets/images/first/9128-2026-btb.jpg
    - image: /assets/images/first/9128-2026-impact.jpg
    - image: /assets/images/first/9128-2026-ei.png
    - image: /assets/images/first/9128-2026-states.jpg
    - image: /assets/images/first/9128-2026-farmersville.png
    - image: /assets/images/first/9128-2026-space-city-1.jpg
    - image: /assets/images/first/9128-2026-robot-banners.png
  - images:
    - image: /assets/images/first/9128-2026-autoalign.gif
    - image: /assets/images/first/9128-2026-sotm.gif
  - images:
    - image: /assets/images/first/9128-2026-auto.gif
    - image: /assets/images/first/9128-2026-auto-pp.png
---
<div style="background-color: #FFF">
<img style="margin-top: 10px; position: relative; width: 80%; left: 10%; right: 10%" src="/assets/images/first/9128-2026-banners.png">
</div>
{% include videotextbreak %}
{% include carousel.html width="48" height="36" unit="%" duration="10" number="1" float="left" %}

After a somewhat disappointing season in [2025](/first/reefscape/), I was set on making sure our team bounced back as hard as possible. Using [Mantik](/mantik/) as a foundation and my new position as Technical Advisor, I improved our programming team enough so that much of the subsystem-level logic could be done without my intervention. As a result, I was able to direct my full attention to improving the QoL of my driver and bulletproofing our autonomous, which I describe in detail below.

As I say in this [ChiefDelphi post](https://www.chiefdelphi.com/t/itkan-robotics-2026-robot-reveal-triple-threat/515730/12), I truly believe that this season was the best in our program's history. Our accolades include: **4 event wins** (including the *Texas District Championship*), **1st Impact award** in team history, **1st Engineering Inspiration award** in team history, 1st **World Division Captain** in team history, **highest EPA rank** in team history (*19/3700+*), **10th best record** in the world (*60-7 in official play*), and an undefeated **53-0 autonomous record** in our District (*1/2300+ district teams*)! And, personally, I achieved what I set out to do, as our team was the **4th most improved team** year over year.
{% include videotextbreak %}
<h2 style="margin-top:0px">Automated Shooting</h2>
{% include carousel.html width="36" height="36" unit="%" duration="10" number="2" float="right" %}
<h3 style="margin-top:0px">Auto-Align</h3>
One of the first programming tools we identified we needed was some sort of auto-align. With the rapid-fire nature of the game, it was going to be crucial that our driver could operate as quickly as possible. With our newly-developed vision system, this process was a lot easier than previous years. Using trigonometry, we could calculate the angle the robot's heading would need to be in the field frame, and then feed those values into our existing drive method so the robot would snap to a desired angle. Doing the auto-align this way had the dual benefit of improving as we tuned our drivetrain for quicker turns and allowed for expansion to using shoot-on-the-move in the future.
<h3 style="margin-top:0px">Shoot-On-The-Move (SOTM)</h3>
Our robot compensates for translational and rotational motion during shooting by predicting the robot’s future pose at projectile release. The software models time of flight based on a lookup table we found using the HUB at our workspace. Shooter RPM and auto align angle are continuously updated using measured velocity and angular rate to maintain accuracy while driving. We implemented a quadratic time-of-flight model and iterative convergence based on one of our members' previous experience with SOTM from their time in FTC. 

However, after our first event, we realized that SOTM would not be feasible at higher levels of competition. The robot draws huge amounts of current from the battery when using SOTM (from the drivetrain, intake, transfer, conveyor, and shooter i.e. all subsystems), and we faced constant brownouts even after adjusting our strategy to use SOTM less. In addition, because we did not lock our wheels when shooting, we would be pushed around more easily against defense. Ultimately, these factors led us to focus on making sure we would stay planted in our shooting position as much as possible and rely on our driver's skill to make up for the difference, if any.
<h2 style="margin-top:0px">Autonomous Routines</h2>
{% include carousel.html width="48" height="36" unit="%" duration="20" number="3" float="left" %}
<h3 style="margin-top:0px">Path Planning</h3>
During the autonmous period, the robot uses PathPlanner to quickly collect and score fuel. This improves cycle speed by optimizing our paths based on our drivetrain’s constraints, and supports our overall match strategy by ensuring we score the most amount of fuel possible during auto in order to have an inactive hub during the first shift. We made a few key decisions when designing our autonomous. We decided to prioritize 2 cycles in autonomous to allow us to have a higher chance of winning autonomous, which gives us a stronger start in teleop. Additionally, we designed our paths to work with a variety of alliances as we stick to our half for our first cycle, going into the neutral zone further when an alliance robot is less likely to be there, increasing our scoring capacity while maintaining compatability. 
<h3 style="margin-top:0px">Vision Pose Estimation</h3>
We use our Limelight to constantly relocalize our robot when we can see an AprilTag. We reject new poses based on a variety of factors, including tag count, ambiguity, Z error, and field bounds. Our pose estimate standard deviation scales with averageTagDistance² / tagCount, with extra factors for MegaTag 2 and per-camera weights. Each accepted pose observation is sent to our drive’s pose estimator, which combines vision-based poses and the robot's current pose with regard to standard deviations. This allows us to maintain accuracy while driving, and mitigate the risks to accuracy caused by traversing over the bump.

<h2 style="margin-top:0px">Quick Links</h2>
[GitHub Code](https://github.com/itkan-robotics/RobotCode2026Public){: .btn .btn--purple .btn--large}
[Match Video](https://youtu.be/T_10eehuXz4){: .btn .btn--danger .btn--large}
[Software Explanation Video](https://www.youtube.com/watch?v=5HtLpv4AtlE&t=264s){: .btn .btn--warning .btn--large}
{% include videotextbreak %}
<h3 style="margin-top:0px">Engineering Notebook</h3>
{% include pdf path="/assets/images/first/rebuilt-en-worlds.pdf" width="34%" height="44%" float="left" %}