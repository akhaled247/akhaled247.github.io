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
  page-top-margin: 0.7in,
  page-bottom-margin: 0.7in,
  page-left-margin: 0.7in,
  page-right-margin: 0.7in,
  page-show-footer: true,
  page-show-top-note: true,
  colors-body: rgb(0, 0, 0),
  colors-name: rgb(0, 79, 144),
  colors-headline: rgb(0, 79, 144),
  colors-connections: rgb(0, 79, 144),
  colors-section-titles: rgb(0, 79, 144),
  colors-links: rgb(0, 79, 144),
  colors-footer: rgb(128, 128, 128),
  colors-top-note: rgb(128, 128, 128),
  typography-line-spacing: 0.6em,
  typography-alignment: "justified",
  typography-date-and-location-column-alignment: right,
  typography-font-family-body: "Raleway",
  typography-font-family-name: "Raleway",
  typography-font-family-headline: "Raleway",
  typography-font-family-connections: "Raleway",
  typography-font-family-section-titles: "Raleway",
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
  typography-bold-section-titles: false,
  links-underline: false,
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
  sections-space-between-text-based-entries: 0.3em,
  sections-space-between-regular-entries: 1.2em,
  entries-date-and-location-width: 4.15cm,
  entries-side-space: 0.2cm,
  entries-space-between-columns: 0.1cm,
  entries-allow-page-break: false,
  entries-short-second-row: false,
  entries-degree-width: 1cm,
  entries-summary-space-left: 0cm,
  entries-summary-space-above: 0.12cm,
  entries-highlights-bullet:  "•" ,
  entries-highlights-nested-bullet:  "•" ,
  entries-highlights-space-left: 0cm,
  entries-highlights-space-above: 0.12cm,
  entries-highlights-space-between-items: 0.12cm,
  entries-highlights-space-between-bullet-and-text: 0.5em,
  date: datetime(
    year: 2026,
    month: 3,
    day: 5,
  ),
)


= Abdullah Khaled

#connections(
  [#connection-with-icon("location-dot")[Frisco, TX]],
  [#link("mailto:abdullahkhaled0224@gmail.com", icon: false, if-underline: false, if-color: false)[#connection-with-icon("envelope")[abdullahkhaled0224\@gmail.com]]],
  [#link("tel:+1-469-347-2884", icon: false, if-underline: false, if-color: false)[#connection-with-icon("phone")[(469) 347-2884]]],
  [#link("https://akhaled247.github.io/", icon: false, if-underline: false, if-color: false)[#connection-with-icon("link")[akhaled247.github.io]]],
  [#link("https://linkedin.com/in/akhaled247", icon: false, if-underline: false, if-color: false)[#connection-with-icon("linkedin")[akhaled247]]],
  [#link("https://github.com/akhaled247", icon: false, if-underline: false, if-color: false)[#connection-with-icon("github")[akhaled247]]],
)


== Education

#education-entry(
  [
    #strong[Wakeland High School], High School Diploma   -- Frisco, TX

  ],
  [
    Aug 2023 – May 2027

  ],
  main-column-second-row: [
    - Unweighted GPA: 4.0

    - 18 AP courses by graduation (completed and planned)

  ],
)

#education-entry(
  [
    #strong[Frisco ISD Career and Technical Education Center], Project Lead The Way  -- Frisco, TX

  ],
  [
    Aug 2023 – May 2027

  ],
  main-column-second-row: [
    - Frisco ISD Career and Technical Education Center Project Lead the Way (PLTW) Nationally Distinguished Engineering Program

    - Courses: PLTW Introduction to Engineering Design (9th grade), PLTW Principles of Engineering (10th grade), PLTW Digital Electronics (11th grade), PLTW Engineering Design and Development (12th grade)

    - Engineering Portfolio: akhaled247.github.io\/pltw-engineering

  ],
)

== Technical Experience

#regular-entry(
  [
    #strong[Programming Lead, Chief Technical Advisor], ITKAN Robotics (FRC 9128) -- Frisco, TX

  ],
  [
    June 2024 – present

  ],
  main-column-second-row: [
    - Developed components of competition robot software stack integrating localization, path planning, telemetry, and mechanism control in Java

    - Built publish–subscribe telemetry and motor logging framework for real-time robot diagnostics and performance analysis

    - Led development of robot state estimation and localization system using sensor fusion of AprilTag vision and swerve-drive odometry, achieving \<2 in positional error

    - Implemented finite-state machine control architecture with Dijkstra-based path planning using time-weighted graph

    - Used WPILib Java mechanism simulation to optimize telescoping arm geometry and motion constraints

    - Developed self-paced robotics programming curriculum and training website used by 20+ FRC and FTC students and reaching 1000+ impressions worldwide (mantik.netlify.app)

    - Advanced team to Texas State Championship playoffs (89 teams)

    - Robot codebase and documentation: akhaled247.github.io\/first\/reefscape

  ],
)

#regular-entry(
  [
    #strong[Programming Mentor], ITKAN Robotics of ICF (FTC 26357, 28931) -- Frisco, TX

  ],
  [
    Sept 2024 – Feb 2026

  ],
  main-column-second-row: [
    - Implemented Kalman-filtered state estimation combining AprilTag vision and wheel odometry for real-time robot localization and automated turret targeting

    - Mentored all-rookie FTC team through full engineering design cycle from prototyping to competition

    - Mentor refugee students in FLL workshops and lead weekly summer training for FTC and FRC students using self-developed OARobotics curriculum (akhaled247.github.io\/personal\/oarobotics)

  ],
)

#regular-entry(
  [
    #strong[Co-Founder, President], Wakeland High School Wolverine Robotics (FTC 33791) -- Frisco, TX

  ],
  [
    Aug 2024 – present

  ],
  main-column-second-row: [
    - Co-founded Wakeland robotics club, growing membership from 0 to 50+ students in the first year

    - Secured funding and constructed competition-ready robot in under 2 weeks

    - Teach CAD software (Onshape) and Java programming through monthly technical workshops

    - Manage club operations including mission development, curriculum design, and budget management

  ],
)

#regular-entry(
  [
    #strong[Math and Reading Instructor], Gideon Math and Reading Center -- Frisco, TX

  ],
  [
    June 2024 – present

  ],
  main-column-second-row: [
    - Instruct K-11th grade students in mathematics (Algebra, Geometry), reading, and grammar

    - Analyze student performance data to identify learning gaps and develop personalized plans

    - Evaluate reading material difficulty and adjust instruction to match target comprehension levels

  ],
)

== Projects

#regular-entry(
  [
    #strong[OralVision] -- #strong[The Conrad Challenge]

  ],
  [
    Oct 2025 – present

  ],
  main-column-second-row: [
    - Designed oral disease detection system using HIPAA-compliant federated learning with TensorFlow Federated, enabling distributed model training without sharing patient data

    - Used Onshape 3D CAD software to design and 3D print the device, reducing manufacturing costs

    - Conrad Challenge Innovator Award and Alternate Finalist; Diamond Challenge Semi-Finalist

    - Patent application in progress with the United States Patent and Trademark Office (USPTO)

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
    - Designed fall-detection device using Raspberry Pi Pico with on-device TensorFlow Lite inference

    - Developed lightweight ML model for real-time motion tracking and fall detection with buzzer alert system

    - Engineered hybrid dataset combining public and custom annotated data, reducing false positive rate

  ],
)

== Skills

#strong[Software & Data:] Python, Java, JavaScript, R, Google Sheets

#strong[Robotics, ML & Vision:] TensorFlow, TensorFlow Federated, OpenCV, SolvePnP, Kalman Filtering, Finite State Machines, Mechanism Simulation, Control Theory, Federated Learning

#strong[CAD, Electronics & Prototyping:] Fusion 360, Onshape, NI Multisim, KiCAD, EasyEDA, Soldering

#strong[Web & Productivity:] HTML, CSS, Jekyll, Google Workspace, Microsoft Office

== Leadership & Activities

#regular-entry(
  [
    #strong[Vice President], Math National Honor Society -- Wakeland High School, Frisco, TX

  ],
  [
    Sept 2023 – present

  ],
  main-column-second-row: [
    - Led organization as Vice President (2024-25) and Treasurer (2023-24), managing budget for 100+ members

    - Designed Math Lab Program website using Google Sites and coordinated peer tutoring, attaining over 20\% member participation

  ],
)

#regular-entry(
  [
    #strong[Secretary, Co-Founder], Muslim Student Association -- Wakeland High School, Frisco, TX

  ],
  [
    Sept 2024 – present

  ],
  main-column-second-row: [
    - Co-founded MSA as Secretary, establishing organizational structure and creating digital promotional media

  ],
)

#regular-entry(
  [
    #strong[Lead Math and English Instructor], Ma'ruf Project Taleem -- Dallas, TX

  ],
  [
    Sept 2023 – present

  ],
  main-column-second-row: [
    - Teach Math and English to refugee elementary and middle school students, developing differentiated curriculum

  ],
)

== Honors & Awards

- (2026) OralVision: Conrad Challenge Innovator Award & Alternate Finalist, Diamond Challenge Semifinalist

- (2026) FTC 33791: Event Winner, Control Award Winner (FiT-North Dallas Semi-Regional Championship, 25 teams), Control Award Winner (FiT-North U-League Tournament)

- (2025) FRC 9128: FIRST® Leadership Award Semifinalist, Event Winner (FIRST® in Texas Victoria, 25 teams); Autonomous Award (FiT Plano, 31 teams); Creativity Award (FiT Amarillo, 36 teams)

- (2025) FTC 26357: Finalist Alliance Captain (FiT-North McKinney Qualifier, 19 teams)

- (2025) Collegeboard: AP Scholar with Distinction, National Recognition Program: School Recognition Award
