// Import the rendercv function and all the refactored components
#import "@preview/rendercv:0.2.0": *

// Apply the rendercv template with custom configuration
#show: rendercv.with(
  name: "Abdullah Khaled",
  title: "Abdullah Khaled - CV",
  footer: context { [#emph[Abdullah Khaled -- #str(here().page())\/#str(counter(page).final().first())]] },
  top-note: [ #emph[Last updated in Mar 2026] ],
  locale-catalog-language: "en",
  text-direction: ltr,
  page-size: "us-letter",
  page-top-margin: 0.55in,
  page-bottom-margin: 0.55in,
  page-left-margin: 0.58in,
  page-right-margin: 0.58in,
  page-show-footer: false,
  page-show-top-note: false,
  colors-body: rgb(49, 49, 49),
  colors-name: rgb(49, 49, 49),
  colors-headline: rgb(97, 97, 97),
  colors-connections: rgb(16, 130, 172),
  colors-section-titles: rgb(4, 65, 109),
  colors-links: rgb(26, 167, 247),
  colors-footer: rgb(128, 128, 128),
  colors-top-note: rgb(128, 128, 128),
  typography-line-spacing: 0.48em,
  typography-alignment: "justified",
  typography-date-and-location-column-alignment: right,
  typography-font-family-body: "IBM Plex Sans",
  typography-font-family-name: "Playfair Display",
  typography-font-family-headline: "IBM Plex Sans",
  typography-font-family-connections: "Georgia",
  typography-font-family-section-titles: "Georgia",
  typography-font-size-body: 9.25pt,
  typography-font-size-name: 25pt,
  typography-font-size-headline: 9pt,
  typography-font-size-connections: 9pt,
  typography-font-size-section-titles: 1.4em,
  typography-small-caps-name: false,
  typography-small-caps-headline: false,
  typography-small-caps-connections: false,
  typography-small-caps-section-titles: false,
  typography-bold-name: false,
  typography-bold-headline: false,
  typography-bold-connections: false,
  typography-bold-section-titles: true,
  links-underline: true,
  links-show-external-link-icon: false,
  header-alignment: left,
  header-photo-width: 3.5cm,
  header-space-below-name: 0.7cm,
  header-space-below-headline: 0.7cm,
  header-space-below-connections: 0.7cm,
  header-connections-hyperlink: true,
  header-connections-show-icons: true,
  header-connections-display-urls-instead-of-usernames: false,
  header-connections-separator: "",
  header-connections-space-between-connections: 0.5cm,
  section-titles-type: "with_full_line",
  section-titles-line-thickness: 0.5pt,
  section-titles-space-above: 0.5cm,
  section-titles-space-below: 0.3cm,
  sections-allow-page-break: true,
  sections-space-between-text-based-entries: 0.12cm,
  sections-space-between-regular-entries: 0.32cm,
  entries-date-and-location-width: 4.15cm,
  entries-side-space: 0cm,
  entries-space-between-columns: 0.1cm,
  entries-allow-page-break: false,
  entries-short-second-row: false,
  entries-degree-width: 1cm,
  entries-summary-space-left: 0cm,
  entries-summary-space-above: 0.06cm,
  entries-highlights-bullet:  text(13pt, [•], baseline: -0.6pt) ,
  entries-highlights-nested-bullet:  text(13pt, [•], baseline: -0.6pt) ,
  entries-highlights-space-left: 0cm,
  entries-highlights-space-above: 0.05cm,
  entries-highlights-space-between-items: 0.05cm,
  entries-highlights-space-between-bullet-and-text: 0.28em,
  date: datetime(
    year: 2026,
    month: 3,
    day: 5,
  ),
)


= Abdullah Khaled

  #headline([#emph[Embedded systems engineer with robotics, vision, and on-device ML experience]])

#connections(
  [#connection-with-icon("location-dot")[Frisco, TX]],
  [#link("mailto:me@aakhaled.com", icon: false, if-underline: false, if-color: false)[#connection-with-icon("envelope")[me\@aakhaled.com]]],
  [#link("https://www.aakhaled.com/", icon: false, if-underline: false, if-color: false)[#connection-with-icon("link")[www.aakhaled.com]]],
  [#link("https://linkedin.com/in/akhaled247", icon: false, if-underline: false, if-color: false)[#connection-with-icon("linkedin")[akhaled247]]],
  [#link("https://github.com/akhaled247", icon: false, if-underline: false, if-color: false)[#connection-with-icon("github")[akhaled247]]],
)


== Summary

- Embedded systems engineer with hands-on experience building robotics automation, sensor fusion, and on-device inference systems.

- Delivered reliability engineering for competition-grade robotics, led distributed software teams, and developed low-cost vision hardware for real-world monitoring applications.

== Skills

#strong[Hardware & Prototyping:] Fusion 360, Onshape, NI Multisim, KiCad, EasyEDA, soldering, PCB prototyping

#strong[Software & Machine Learning:] ROS, Python, Java, JavaScript, TensorFlow, OpenCV

#strong[Systems & Methods:] Kalman filtering, finite state machines, mechanism simulation, control theory, prompt engineering

== Work Experience

#regular-entry(
  [
    #strong[Math and Reading Instructor], Gideon Math and Reading Center -- Frisco, TX

  ],
  [
    June 2024 – present

  ],
  main-column-second-row: [
    - Designed individualized instruction plans using student performance data to identify learning gaps and accelerate progress.

    - Managed daily small-group sessions, adapting delivery and materials across multiple grade levels.

    - Strengthened progress tracking by implementing structured checkpoints and targeted review.

  ],
)

== Projects

#regular-entry(
  [
    #strong[OralVision] -- #strong[Conrad Challenge; Diamond Challenge]

  ],
  [
    Oct 2025 – present

  ],
  main-column-second-row: [
    - Developed a privacy-preserving oral disease detection prototype using federated learning for centralized model training and on-device inference.

    - Designed and programmed a low-cost imaging device using XIAO-ESP32-C6, OV5642 camera, and power-aware capture logic.

    - Iterated through three PCB revisions and five 3D-printed enclosure revisions to improve reliability and manufacturability.

    - Bench-tested capture consistency across lighting and viewing angles to validate robustness.

  ],
)

#regular-entry(
  [
    #strong[WatchFall] -- #strong[Samsung Solve for Tomorrow]

  ],
  [
    Sept 2025 – present

  ],
  main-column-second-row: [
    - Built a fall-detection system with Raspberry Pi Pico, TensorFlow Lite inference, and buzzer alerting for real-time on-device monitoring.

    - Engineered a hybrid dataset and sensor integration strategy to lower false positives and improve detection responsiveness.

  ],
)

== Leadership

#regular-entry(
  [
    #strong[Chief Technical Advisor \/ Programming Lead], ITKAN Robotics -- Plano, TX

  ],
  [
    July 2025 – present

  ],
  main-column-second-row: [
    - Directed software strategy for a multi-team robotics program with \~20 programmers, standardizing code structure, GitHub workflows, and integration practices.

    - Implemented reliability engineering and contingency planning that preserved system performance after critical sensor failures.

  ],
)

== Education

#education-entry(
  [
    #strong[Wakeland High School], High School Diploma  -- Frisco, TX

  ],
  [
    Aug 2023 – May 2027

  ],
  main-column-second-row: [
    - Completed PLTW engineering coursework in digital electronics, systems design, and engineering development.

    - Took rigorous course load, including Multivariable Calculus and Physics C

  ],
)

#education-entry(
  [
    #strong[Boston University],  Research in Science & Engineering (BU RISE) -- Boston, MA

  ],
  [
    June 2026 – Aug 2026

  ],
  main-column-second-row: [
    - Researched under Dr. Wenchao Li, Department of Electrical and Computer Engineering

    - Studied VLM\/VLA-driven Sawyer robots to enable long-horizon task completion from vague human prompts

  ],
)
