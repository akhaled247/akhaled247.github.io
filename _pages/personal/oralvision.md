---
title: "OralVision - Conrad Challenge Entry"
description: "OralVision: A low-cost oral disease detection device using federated learning and ESP32 for HIPAA-compliant cancer screening, achieving 87% accuracy in the Conrad Challenge."
permalink: /personal/oralvision/
author_profile: false
media:
  - url: /assets/images/personal/oralvision/caseprototypes.png
    image_path: /assets/images/personal/oralvision/caseprototypes.png
    alt: "Case Prototypes"
    title: "Case Iterations"
  - url: /assets/images/personal/oralvision/irlprototype.jpg
    image_path: /assets/images/personal/oralvision/irlprototype.jpg
    alt: "Physicial Prototype"
    title: "Physicial prototype using 3D printing."
  - url: /assets/images/personal/oralvision/specifics.png
    image_path: /assets/images/personal/oralvision/specifics.png
    alt: "Design Details"
    title: "Notated drawing of OralVision's handheld device."
---
{% include video id="lzHXL2q3vNI" provider="youtube" width="20.25vw" height="36vw"  float="left" margin="10px 10px 10px 15vw"%}

<div style="margin:10px;">
  <img style ="height:33vw;" src="/assets/images/personal/oralvision/technical.png" alt="CAD Drawing of OralVision's Imaging Device">
  <figcaption>CAD drawing of OralVision's imaging device.</figcaption>
</div>
{% include videotextbreak %}
Oral cavity cancers are highly treatable when detected early, yet nearly 70% of cases are diagnosed too late due to clinical uncertainty and the lack of accessible screening tools. As a result, over 170,000 people die each year from a largely preventable disease. OralVision is an intraoral, deep-learning–powered diagnostic device designed to make early screening affordable, reliable, and widely accessible.

At the core of OralVision’s imaging system is a XIAO ESP32-C6 microcontroller, chosen for its low cost and strong processing capabilities. Images are captured using a 5-megapixel OV5642 camera, which supports high-bandwidth data transfer for clear intraoral imaging. To ensure reliable operation in the moist oral environment, the camera lens is protected with an anti-fog nano-coating, and the entire system is enclosed in a sterilization wrap to prevent bacterial contamination. The device is operated using a single medical-grade push button, reducing user error and simplifying the screening process.

OralVision is designed for use in low-resource settings. Power is regulated through a 5V voltage regulator that supports multiple input methods, including USB-C, AA batteries, and solar power. Rechargeable nickel-metal hydride batteries are included to improve safety during transportation. The housing uses a snap-fit design, allowing easy access for battery replacement and software updates.

{% include gallery id="media" caption="Various media related to the development of OralVision's imaging device." %}

Captured images are transmitted wirelessly to the machine-learning interface using Wi-Fi, while SPI communication enables fast, low-latency image transfer within the device. Images are processed by a federated learning model, which generates diagnostic results displayed on a Raspberry Pi–based human-machine interface. Each device contributes to improving the global model by updating neural parameters locally, allowing users to periodically download improved versions without sharing sensitive patient data.

In testing, OralVision significantly outperformed existing market solutions. Our model achieved an overall accuracy of 87.15%, with a ROC-AUC score of 0.9417 and an F1 score of 0.8655. By comparison, VELscope, a widely used competing technology, has demonstrated accuracy rates near 53% in experimental trials.
{% include figure popup=true image_path="/assets/images/personal/oralvision/architecture.png" alt="Architecture Overview of OralVision" caption="Architecture Overview of OralVision." width="100%" %}
{% include videotextbreak %}
[Website](https://oral-vision.github.io/){: .btn .btn--info .btn--large}
[Conrad Challenge Video](https://www.youtube.com/watch?v=MfCu4gWxRUY){: .btn .btn--danger .btn--large}