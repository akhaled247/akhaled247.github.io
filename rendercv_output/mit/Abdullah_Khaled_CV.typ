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
  colors-name: rgb(117, 0, 20),
  colors-headline: rgb(117, 0, 20),
  colors-connections: rgb(117, 0, 20),
  colors-section-titles: rgb(117, 0, 20),
  colors-links: rgb(117, 0, 20),
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

  #headline([Robotics & Autonomy Engineer-in-Training])

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

    - Math readiness: AP Calculus AB & BC; planned Multivariable Calculus

    - Science readiness: AP Physics 1; AP Biology; planned AP Physics 2 and AP Physics C

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
    - Nationally Distinguished PLTW Engineering Program

    - Courses: PLTW Introduction to Engineering Design (9th grade), PLTW Principles of Engineering (10th grade), PLTW Digital Electronics (11th grade), PLTW Engineering Design and Development (12th grade)

    - Engineering Portfolio: akhaled247.github.io\/pltw-engineering

  ],
)

== Technical Experience

#regular-entry(
  [
    #strong[Chief Technical Advisor], ITKAN Robotics (FRC 9128) -- Frisco, TX

  ],
  [
    Aug 2025 – present

  ],
  main-column-second-row: [
    - Provided high-level technical oversight across all robot subsystems for a state-level team of 40 members

    - Built an extensive publish–subscribe telemetry and motor logging framework with match logs viewable after events for diagnosing issues and debugging autonomous routines

    - Led development of robot state estimation and localization using sensor fusion of AprilTag vision and swerve-drive odometry, achieving \<2 inch positional error

    - Engineered autonomous control architecture with finite-state-machine (FSM) logic, Dijkstra-based path planning on time-weighted graphs, and PID-aligned speed\/control tradeoffs

    - Used WPILib Java mechanism simulation to validate autonomous and mechanism behaviors ahead of build to reduce integration risk

    - Maintained and extended a \>1000-line Java codebase spanning autonomous routines, teleoperated control, vision, and mechanisms using WPILib's command-based framework

    - Achieved 100\% autonomous success rate at the first event, produced the 5th-highest-scoring autonomous routine worldwide, and won an autonomous award

    - Provided resources to 1000+ people online via mantik.netlify.app and an associated YouTube playlist

  ],
)

#regular-entry(
  [
    #strong[Software Lead], ITKAN Robotics (FRC 9128) -- Frisco, TX

  ],
  [
    Dec 2024 – July 2025

  ],
  main-column-second-row: [
    - Provided technical leadership on the organization of software team projects, educating and training new programming team members, and maintaining the team's FRC codebases

    - Taught 5–10 students Java programming with a command-based subsystem architecture; trained debugging\/troubleshooting and mechanism control using control theory

    - Taught control theory concepts using PID and motion profiles, and used mechanism simulation to validate constraints before events

    - Implemented autonomous Bezier pathing using a command-based architecture to coordinate motion profiles, mechanism actions, and sensor feedback

    - Advanced the team to Texas State Championship playoffs (89 teams)

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

    - Mentored a full all-rookie FTC team through the engineering design cycle from prototyping and debugging to competition, emphasizing measurement-driven iteration

    - Mentored refugee students in FLL workshops and led weekly summer training for FTC and FRC students using self-developed OARobotics curriculum (akhaled247.github.io\/personal\/oarobotics)

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

  ],
)

#regular-entry(
  [
    #strong[Math and Reading Teaching Assistant], Gideon Math and Reading Center -- Frisco, TX

  ],
  [
    Jan 2022 – May 2024

  ],
  main-column-second-row: [
    - Supported instruction and grading workflows, improving grading efficiency by approximately 50\%

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
    - Developed a privacy-preserving oral disease screening pipeline with centrally trained model + on-device inference, without transmitting raw patient images (HIPAA-aligned federated learning framing)

    - Designed, wired, and programmed the imaging device (XIAO-ESP32-C6 MCU + OV5642 5MP camera), including power-aware capture constraints (camera current draw can trip the 5V voltage regulator)

    - Bench-tested image capture quality and robustness across lighting\/viewing angles to maximize reliable low-cost imaging

    - Verified repeatability by running multiple capture sessions under comparable conditions and confirming output consistency

    - Iterated through 3 PCB revisions and 5 3D-printed snap-fit case revisions to improve reliability and manufacturability

    - Used Onshape 3D CAD software to design and 3D print the device, reducing manufacturing costs

    - Awarded Conrad Challenge Innovator Award and Alternate Finalist; Diamond Challenge Semi-Finalist

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

    - Engineered a hybrid dataset combining public and custom annotated data, reducing false positive rate

    - Integrated an Arducam HM01B0 Monochrome QVGA SPI Camera Module with Raspberry Pi Pico for resource-aware frame capture

    - Planned next validation: evaluate false positives and alert responsiveness on recorded motion\/fall scenarios, then tune fall rules and thresholds before expanded on-device testing

  ],
)

== Skills

#strong[Robotics, ML & Vision:] TensorFlow, TensorFlow Federated, OpenCV, SolvePnP, AprilTag vision, Swerve-drive odometry, Kalman Filtering, Finite State Machines, Dijkstra path planning, PID control, Mechanism Simulation, Control Theory, Federated Learning

#strong[Software & Data:] Python, Java, JavaScript, R, Google Sheets, WPILib (command-based)

#strong[CAD, Electronics & Prototyping:] Fusion 360, Onshape, NI Multisim, KiCAD, EasyEDA, Soldering

#strong[Web & Productivity:] HTML, CSS, Jekyll, Google Workspace, Microsoft Office

== Leadership & Activities

#regular-entry(
  [
    #strong[Vice President], Mu Alpha Theta\/Math National Honor Society

  ],
  [
    Aug 2024 – present

  ],
  main-column-second-row: [
    - Lead organization as Vice President, managing budget for 100+ members

    - Expanded Math Lab Program and coordinated peer tutoring, attaining over 20\% member participation

    - Organized annual middle school math competition with 100+ participants, 3 participating schools, and 35+ volunteers to promote STEM

  ],
)

#regular-entry(
  [
    #strong[Treasurer], Mu Alpha Theta\/Math National Honor Society

  ],
  [
    Aug 2023 – July 2024

  ],
  main-column-second-row: [
    - Designed and implemented Math Lab Program coordinating student-led Algebra I tutoring with teachers

  ],
)

#regular-entry(
  [
    #strong[Co-Founder, Secretary], Muslim Student Association (MSA) -- Wakeland High School, Frisco, TX

  ],
  [
    Sept 2024 – present

  ],
  main-column-second-row: [
    - Developed mission statement, recruited teacher sponsor and members, and presented activities to school administration

    - Negotiated with school administration to establish a dedicated prayer room, coordinating facility setup and policies

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
    - Teach Math and English to refugee students and mentor them in academics, time management, and social integration

    - Coordinate small-group instruction and parent communication to support students' long-term academic progress

  ],
)

== Honors & Awards

- (2026) OralVision: Conrad Challenge Innovator Award & Alternate Finalist; Diamond Challenge Semifinalist

- (2026) FTC 33791: Event Winner; Control Award Winner (FiT-North Dallas Semi-Regional, 25 teams; FiT-North U-League)

- (2025) FRC 9128: FIRST® Leadership Award Semifinalist; Event Winner (FiT Victoria, 25); Autonomous Award (FiT Plano, 31); Creativity Award (FiT Amarillo, 36)

- (2025) FTC 26357: Finalist Alliance Captain (FiT-North McKinney Qualifier, 19 teams)

- (2025) Collegeboard: AP Scholar with Distinction; National Recognition Program School Recognition Award
