---
title: "Majority Vote Circuit Design | PLTW Engineering"
description: "Majority vote circuit by Abdullah Khaled (akhaled247): boolean algebra, Karnaugh mapping, and logic gate design with presidential override in NI Multisim."
permalink: /pltw-engineering/majority-vote/
author_profile: false
project_schema: true
---
{% include video id="Vcxdboo5JB0" provider="youtube" width="45vw" height="27vw" float="left" margin="0px"%}
{% include video id="hPqy3gH22aA" provider="youtube" width="45vw" height="27vw" float="right" margin="0px"%}
{% include videotextbreak %}
As stated in the design brief, the majority vote is meant to accomplish the task of mitigating potential counting errors in voting systems. In this project, I was meant to create a circuit that incorporated both a majority voting system and a presidential overrule in the event of a tied vote. In a real-world context, this circuit could be used in legislative branches such as the Senate. Since the Senate has 100 members, a tied vote would force the Vice President to vote on the issue as well, mimicking the designed circuit (albeit at a much larger scale). In practice, however, the circuit could be easily expanded to accommodate the larger voting body, highlighting one benefit of the design.

One of the larger design challenges I faced was the schematics of the simplified circuit. While in theory, the circuit was relatively simple, creating various solutions was difficult. The issue was compounded due to efforts to simplify the circuits, forcing I to think critically about circuitry pathing and what connections could be simplified for all circuit types (i.e. AOI, NAND, NOR). Moreover, Is’ desire to utilize the schematic as an assembly guide for the final circuit necessitated both color coding and the use of ICs rather than gates during schematic creation, dramatically increasing the complexity of circuit wiring and organization.

Yet, I learned a wide variety of technical skills from the project. Foremost, I gained experience and fluency in schematic creation using Multisim. Additionally, I furthered his understanding of logic expressions and the simplification process of complex expressions extracted from truth tables using multiple methods, including Karnaugh mapping and boolean algebra simplification. Practically, I gained experience in breadboarding more complex circuits, gaining skills that are transferrable to a wide range of projects.
<div style="float:left;">
{% include pdf path="/assets/images/PLTW/majority-vote/mvreport.pdf" width="500px" height="500px"%}
Majority Vote Report
</div>
<div style="float:right;">
{% include pdf path="/assets/images/PLTW/majority-vote/mvmultisimcombined.pdf" width="600px" height="500px"%}
Combined Majority Vote Circuits in NI Multisim
</div>
