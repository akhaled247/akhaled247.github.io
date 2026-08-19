---
title: "OralVision - Conrad Challenge Entry"
description: "OralVision by Abdullah Khaled (akhaled247): A low-cost oral disease detection device using federated learning and ESP32, achieving 87% accuracy in the Conrad Challenge."
permalink: /oralvision/
author_profile: false
project_schema: true
header:
  og_image: /assets/images/personal/oralvision/main.png
media:
  - url: /assets/images/personal/oralvision/caseprototypes.png
    image_path: /assets/images/personal/oralvision/caseprototypes.png
    alt: "Case Prototypes"
    title: "Case Iterations"
  - url: /assets/images/personal/oralvision/irlprototype.jpg
    image_path: /assets/images/personal/oralvision/irlprototype.jpg
    alt: "Physical prototype of OralVision handheld device"
    title: "Physical prototype using 3D printing."
  - url: /assets/images/personal/oralvision/specifics.png
    image_path: /assets/images/personal/oralvision/specifics.png
    alt: "Design Details"
    title: "Notated drawing of OralVision's handheld device."
carousels:
  - images:
    - image: /assets/images/personal/oralvision/txhsic-poster-talk.jpg
    - image: /assets/images/personal/oralvision/txhsic-poster-topdown.jpg
    - image: /assets/images/personal/oralvision/txhsic-presentation-room.jpg
    - image: /assets/images/personal/oralvision/specifics.png
    - image: /assets/images/personal/oralvision/irlprototype.jpg
---
{% include carousel.html width="44" height="33" unit="%" duration="10" number="1" float="left"%}
{% include video id="lzHXL2q3vNI" provider="youtube" width="18vw" height="32vw" margin="0px"%}
{% include videotextbreak %}
<h2 style="margin-top:0px">The Problem</h2>
OralVision began when we witnessed a jarring reality firsthand: while we live in a hub of economic prosperity and innovation, our neighbors in underprivileged areas like South Dallas were dying from preventable, late-stage oral cancers. 

We realized that for millions worldwide, the barrier to survival isn't a lack of a cure, but a lack of proper diagnostics to lead to that cure. We developed OralVision to bridge this diagnostic gap, motivated by the challenge of integrating cutting-edge technologies such as federated learning and 3D printing to dismantle systemic healthcare inequities. 

Seeing the struggle of low-income families in our community transformed our technical curiosity into a mission: to ensure that everybody, no matter their age, gender, socioeconomic status, or income, has an equal chance of surviving cancer. In the end, our goal isn’t just to build a device, but to democratize early detection for the millions currently left behind.
<h2 style="margin-top:0px">Architecture</h2>
{% include figure popup=true image_path="/assets/images/personal/oralvision/architecture.png" alt="Architecture Overview of OralVision" caption="Architecture Overview of OralVision." width="100%" %}
{% include videotextbreak %}
OralVision is a potential intraoral diagnostic system made up of two main components: an imaging device and an image processing unit.

The control center for OralVision’s imaging device would be a XIAO-ESP32-C6 microcontroller, a cheap, yet powerful solution to reduce production costs while maintaining the technical capabilities of larger, more expensive controllers. The image would be taken using an OV5642 5MP image sensor with SPI compatibility for high-bandwidth data transfer to the microcontroller. In addition, an anti-fog nano coating would be applied to the camera lens to prevent moisture in the mouth from harming the internal components. To minimize user error, the entire system would use a single medical-grade momentary push button to control image streaming and capturing.

The power would be regulated using a 5V voltage regulator that accepts multiple power sources, including USB-C (with a port for easy charging access), AA batteries, and solar power (for extremely low-income areas with minimal electrical infrastructure). The device would also ship with rechargeable nickel-metal hydride batteries to prevent thermal runaway during transportation.

The entire imaging system would ultimately be encased in a clinical sterilization wrap to prevent bacteria and microbes from entering the device, with the prototype’s housing being held together using a snap-fit mechanism for easy access to the electronics for battery replacements and software updates.

For communication protocols between the imaging device and the machine learning interface, we plan to use SPI and Wi-Fi (see Figure 3). We chose SPI over UART and I2C because of its ability to transmit high-resolution intraoral images continuously with minimal latency.

The device transfers images to our ML interface wirelessly via Wi-Fi 5, where our decentralized federated learning model processes the images through computer vision and transmits diagnostic results and Bayesian inferences to the screen on our Raspberry Pi 5 human-machine interface (HMI). When a device processes an image, it systematically alters neural parameters to prevent overfitting and improve the accuracy of our main model, which clients will be able to download from our website periodically for software updates.
<h2 style="margin-top:0px">Evaluation</h2>
Due to financial limitations and strict Institutional Review Board (IRB) regulations, it is currently not feasible to validate the OralVision prototype in a clinical trial with oral cavity cancer patients. However, our team was able to validate accuracy and other important reliability benchmarks for OralVision's federated neural network model through an in-silico experimental trial, finding that it outscored major competitors in many important metrics.

For instance, our federated learning model was able to achieve an identification accuracy of 87.15%, a ROC-AUC Score of 0.9417, and an F1 score of 0.865. Meanwhile, VELScope, our main competitor, was only able to manage an accuracy of 53% in a separate experimental trial. Since we are one of the first companies in the intraoral cancer diagnostics market to implement AI, industry standard ROC-AUC and F1 scores aren’t publicly available, but both of the scores we found for OralVision are considered above average for a high-precision medical device.

In addition, we are in the process of obtaining a patent for our device. Currently, we have transitioned from the provisional stage into the non-provisional patent.
{% include videotextbreak %}
<h2 style="margin-top:0px">Quick Links</h2>
[Website](https://oral-vision.github.io/){: .btn .btn--info .btn--large}
[YouTube Channel](http://www.youtube.com/@Oral-Vision){: .btn .btn--danger .btn--large}

{% include videotextbreak %}
<h3 style="margin-top:0px">Pitch Videos</h3>
{% include video id="MfCu4gWxRUY" provider="youtube" width="32%" height="18%" float="left" margin="5px"%}
{% include video id="-GlsvQLBDAg" provider="youtube" width="32%" height="18%" float="left" margin="5px"%}
{% include video id="y4hZeqwWo9g" provider="youtube" width="32%" height="18%" float="left" margin="5px"%}