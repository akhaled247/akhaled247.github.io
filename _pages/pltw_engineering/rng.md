---
title: "Random Number Generator | PLTW Engineering"
description: "Digital dice circuit using 555 timers, D flip-flops, and combinational logic for random 1-6 generation, designed in NI Multisim for PLTW Engineering."
permalink: /pltw-engineering/rng/
author_profile: false
---
{% include video id="VFdojpUZpH0" provider="youtube" width="100vw" height="38vw" float="left" margin="10px"%}
After learning about sequential and combinational logic, we were challenged to make a random number generator (RNG) that “rolls” a die and outputs a number from 1-6 based on the roll. This project combined our knowledge of capacitors, 555 timers, D flip-flops worked, boolean logic, and simple electrical components to complete our final project.

Throughout this process, I learned a lot about the different components used in the circuit. For example, I learned how capacitors and capacitance worked, how 555 timers used resistors to vary their oscillation period, and how frequency dividers could serve as binary counters. I also gained knowledge on circuit design software (CDS) and utilized this knowledge to design the schematic in NI Multisim and make it easily followable at first glance.

One of the most memorable parts of this project was figuring out how the counter worked with my friend, Ibrahim. At the beginning of the project, we did not know how DFFs worked. However, by painstakingly tracing the wires, we determined how the counter functioned and improved our understanding of the circuit as a whole.

<div style="float:left;">
{% include pdf path="/assets/images/PLTW/rng/rngreport.pdf" width="500px" height="500px"%}
RNG Report
</div>
<div style="float:right;">
{% include pdf path="/assets/images/PLTW/rng/rngmultisim.pdf" width="600px" height="500px"%}
RNG Circuit in NI Multisim
</div>
