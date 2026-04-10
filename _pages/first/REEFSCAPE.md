---
title: "2025 FRC Season"
description: "REEFSCAPE as Programming Lead: motion profiling for smooth elevator/pivot control (vs PID), triple-PID autonomous alignment for pole scoring — Autonomous Award at the first event, district win at the second, Texas State Playoffs."
permalink: /first/reefscape/
author_profile: false
---
In this season of the FIRST® Robotics Competition (FRC) game, REEFSCAPE, robots had to align to a pole and place a 4-inch diameter pipe on the pole, leaving teams with a ±2 inch placement tolerance. As the Programming Lead for my team, I used control theory to ensure smooth movement of our mechanisms and robot drivetrain as well as developed our robot's autonomous alignment algorithm. In doing so, our team won the Autonomous Award at our first event, were the District Event Winner at our second, and advanced to the Texas State Playoffs!

However, with only 8 weeks between the game being revealed and our first competition, I had only 2 weeks to program the entire robot once it was fully built. As such, I used our team's practice robot to test many of the different functions before implementing them on the final robot. The major unique robot functions I was responsible for were mechanism motion (e.g. making sure the robot was smooth and reliable) and autonomous alignment (since the precision during this game was crucial). At first, I used PID controllers to calculate the target motor velocity to reach the desired position of the elevator and pivot smoothly. However, I found that the movement it produced was jerky and inconsistent, which led me to use motion profiling to limit the robot and balance speed with safety. Below, you can see the different between the two approaches. Although I saw an ~20% increase in travel time between the positions, there was also a ~40% decrease in current draw from the motors when changing positions, meaning our robot stayed functional for the longer period os time each match required.

<div style="display: flex; justify-content: center; align-items: center; gap: 20px;">
  {% include video id="qiwtuV4k8Zs" provider="youtube" width="15.1875vw" height="27vw" %}
  {% include video id="xHXsx9nMC_0" provider="youtube" width="15.1875vw" height="27vw" %}
</div>
{% include videotextbreak %}

I also went through multiple iterations of the autonomous alignment algorithm to optimize for precision and speed, with an emphasis on precision because it was the most important when attempting to score the pipes onto the poll. Initially, I used on-the-fly path generation to create a time-discretized path from the robot's initial position to its goal position, but that did not work when the robot moved at high speed before the driver aligned to the pole. Then, I used motion profiling to attempt to constrain the movement before, during, and after the alignment routine, but I found it too time-consuming. Finally, I settled on a triple-PID control system that independently calculated the robot's velocity and rotation, which finally allowed us to score with the precision and speed required for the game. This solution reduced our drivers' alignment time from 3-5 seconds per cycle to under 2, with our average success rate increasing from around 50% to 75%.

<div style="display: flex; justify-content: center; align-items: center; gap: 20px;">
  {% include video id="m4jbJwh5K_8" provider="youtube" width="15.1875vw" height="27vw" %}
  {% include video id="DIV7_fdrCYg" provider="youtube" width="15.1875vw" height="27vw" %}
  {% include video id="kh1LWeagWGw" provider="youtube" width="15.1875vw" height="27vw" %}
</div>  

{% include videotextbreak %}
[GitHub Code](https://github.com/itkan-robotics/FRC_REEFSCAPE2025_V2){: .btn .btn--purple .btn--large}
[Onshape CAD](https://cad.onshape.com/documents/9aad57d3cb5d2be899be5aa7/w/f997cc794f7a12ee163b0551/e/a7a9a0e959e36dfcddccf823?renderMode=0&uiState=68e7261632f8214a01eab67d
){: .btn .btn--success .btn--large}
[Match Video](https://youtu.be/J6AmbcRqa6o){: .btn .btn--danger .btn--large}
