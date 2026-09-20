---
title: "Labtech Innovation Internship"
description: "As part of the Labtech Innovation Internship, a collaboration between MedRock, Meddots AI, and Itkan, Abdullah Khaled led his team through creating a mechanical doser that could dispense various powders with extreme accuracy."
permalink: /medrock/
author_profile: false
project_schema: true
carousels:
  - images:
    - image: /assets/images/personal/medrock/medtown-team-pic.jpg
    - image: /assets/images/personal/medrock/medrock-example-device.jpg
    - image: /assets/images/personal/medrock/medtown-wiring-diagram.png
---
{% include video id="s5PjXrNfZYA" provider="youtube" width="45vw" height="27vw" float="left" margin="10px 10px 0px 0px"%}
{% include carousel.html width="40.5" height="27" unit="vw" duration="5" number="1" float="right" %}
{% include videotextbreak %}
> It started with a problem that sounds small until you multiply it. At many pharmacies, compounds are still measured by hand. One dose, one powder, one scale at a time. It works, and it has worked for a long time. But do it thousands of times a day and it becomes a bottleneck that no amount of care can speed up...This summer ITKAN formed a partnership with FIRST in Texas and Medrock Pharmacy, and announced a program in which teams from across the state competed over three months for the best design to automate compound mixing. Five teams took on the same brief, three of them ITKAN's, and each had to find its own way through it. - <a href="https://www.itkan.one/news/meddots-medrock-internship" target="_blank">Itkan News</a>

When we first began the internship, We surveyed both commercial products and open-source projects to understand how powder is metered mechanically, and how multiple powders are handled within a single machine. Across everything we reviewed, there was little to no prior art for multiple dispensers within a single setup, as every mechanism we analyzed was a single doser. MedTown's core requirement, feeding one scale from many isolated powders, had no direct mechanical predecessor in industry or in the open-source space. To find a workable approach for multiple dosers, we drew on 3D-printer multi-material and filament-changer architecture: independent modules mounted around the edge of an enclosure, each feeding a shared central point, sized so that adding more modules is straightforward.

<img src="/assets/images/personal/medrock/medtown-v1.png" style="width: auto; height:27vw; float:left; margin: 10px;">
<br>The initial MedTown concept used a vertical auger, matching the dominant pattern we observed across commercial devices in Section 1.1. This design (pictured below) mounted a NEMA 17 stepper directly above a vertical auger and hopper assembly, with the doser body fastened to a vertical aluminum-extrusion frame and the discharge positioned over a benchtop VEVOR scale for direct gain-in-weight measurement.
This vertical concept was abandoned for two reasons. The first was cleaning/teardown difficulty. The auger was integrated into the hopper in a way that made it hard to disassemble, clean, and reassemble between powders — directly in tension with the M1 cleanability requirement that the doser be removable and serviceable using simple tools. The second was the poor expansion path. Replicating a vertical-auger doser to support multiple powders would have added substantial mechanical complexity at the multi-doser stage, working against the modularity goal established prior to the design work.
{% include videotextbreak %}
<img src="/assets/images/personal/medrock/medtown-v2.png" style="width: auto; height:27vw; float:right; margin: 10px;">
<br>
The first mechanism built was a horizontal, direct-drive auger integrated into a gantry-style platform, shown right. The horizontal auger was direct-driven with no coupling between motor and auger, eliminating a failure point and a hard-to-clean interface present in V1. The auger is mounted on a hex shaft running through the funnel/hopper body, connected to the drive motor through the gantry-mounted carriage. The dose is modulated by drive rotation (run time / turn count/pulses). There was no agitation or vibration assist in the first build. The first build was open-loop, targeting ±20% repeatability over 10 actuations as the mechanical baseline. The auger and hopper are 3D printed in PLA for this prototype. A material upgrade to PETG is planned for cleanability and FDA / dishwasher-safe compliance.

The system uses end-scale gain-in-weight measurement. The dispensed compound is weighed on the integrated scale, which we planned would terminate the dispense at target weight in future iterations. However, since gravity didn’t push powder down the auger in this design, the initial priming time took longer than expected. The scale model we bought only transmitted data every .5 seconds, despite the product page suggesting continuous feedback. This would not be fast enough for the 3% tolerances we would be required to hit later. There was no force driving the powder towards where it is dispensed, so larger quantities of free-flowing powder (like granulated sugar) tended to spill out of the back and onto the device instead of the intended scale plate.
{% include videotextbreak %}
<img src="/assets/images/personal/medrock/medtown-v3.png" style="width: auto; height:27vw; float:left; margin: 10px;">
<br>
The second fully built mechanism uses a vertical auger powered by a serial bus servo. The vertical auger allows for fluid motion of powder, reduces priming time significantly, and eliminates the spilling issues from V2. Agitation planned to be added for M2/M3 via either a vibration motor or a physical agitator coupled to the main drive shaft. The mechanism is manually driven at M1 for guaranteed consistency, but driven by a serial servo later for complete automation. Modularity in M1 design allows a stopper powered by a PWM servo to be added for M2/M3 in order to have complete control over powder output. Acetal is used for mounting plates and the stopper for mechanical robustness and powder-safe smoothness. Along with PETG, acetal is planned to be used later as an easily cleanable surface.

A Bonvoisin scale has replaced the VEVOR scale for its continuous data output, smaller footprint, and simple interface. Built-in batteries on the Bonvoisin scale allow for M1 testing to be completely independent of a wall outlet. Powder in the hopper is fed laterally by the rotating vertical auger and discharged from the auger spout above the collection jar / scale platform, visible at left. The gantry frame positions the doser assembly over the target zone on the platform, with the integrated touchscreen and E-stop providing the operator interface and hardware safety cutoff respectively.
{% include videotextbreak %}
<h2 style="margin-top:0px">Technical Documents</h2>
{% include pdf path="/assets/images/personal/medrock/m1-technical-drawing.pdf" width="47%" height="34%" float="left" %}
{% include pdf path="/assets/images/personal/medrock/project-schedule.pdf" width="47%" height="34%" float="right" %}
{% include pdf path="/assets/images/personal/medrock/sop.pdf" width="34%" height="44%" float="left" %}