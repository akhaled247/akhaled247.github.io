// Import the rendercv function and all the refactored components
#import "@preview/rendercv:0.1.0": *

// Apply the rendercv template with custom configuration
#show: rendercv.with(
  name: "Abdullah Khaled",
  footer: context { [#emph[Abdullah Khaled -- #str(here().page())\/#str(counter(page).final().first())]] },
  top-note: [ #emph[Last updated in Feb 2026] ],
  locale-catalog-language: "en",
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
  typography-font-size-body: 10pt,
  typography-font-size-name: 30pt,
  typography-font-size-headline: 10pt,
  typography-font-size-connections: 10pt,
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
    month: 2,
    day: 1,
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

    - Rigorous course load including 12 APs before senior year

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
    - Introduction to Engineering Design, Principles of Engineering, Digital Electronics, Engineering Design and Development

    - #link("https://akhaled247.github.io/pltw-engineering/")[PLTW Engineering EPortfolio]

  ],
)

== Experience

#regular-entry(
  [
    #strong[Programming Lead, Chief Technical Advisor], ITKAN Robotics (FRC 9128) -- Frisco, TX

  ],
  [
    June 2024 – present

  ],
  main-column-second-row: [
    - Led team to playoffs at Texas State Championship (89 teams) using AprilTag pose estimation, and swerve drive odometry achieving sub 2-inch precision

    - Trained 4 students in Java robotics programming; created Java training website: #link("https://mantik.netlify.app/frc")[Mantik's FRC Curriculum]

    - Developed custom publish-subscribe motor logging system for real-time diagnostics analyses

    - Implemented finite state machine with Dijkstra's Algorithm

    - Used FRC-specific Java mechanism simulation towards telescoping arm optimization

  ],
)

#regular-entry(
  [
    #strong[Founder, President, Youth Mentor], Wolverine Robotics (FTC 33791) -- Frisco, TX

  ],
  [
    Aug 2024 – present

  ],
  main-column-second-row: [
    - Founded inaugural Robotics Club scaling from 0 to 50+ members in first year, securing funding and registration in under 2 weeks

    - Teach CAD software (Onshape) and Java programming through monthly technical workshops

    - Manage club operations including mission development, curriculum design, and budget management

  ],
)

#regular-entry(
  [
    #strong[Programming Mentor], ITKAN Robotics of ICF (FTC 26357, 28931) -- Frisco, TX

  ],
  [
    Sept 2024 – present

  ],
  main-column-second-row: [
    - Trained 5+ students in Java, command-based programming, motor control, PID tuning, servo control, sensor integration, and dead-reckoning wheel odometry

    - Created self-paced learning website and summer training programs: #link("https://mantik.netlify.app/ftc")[Mantik's FTC Curriculum]

    - Mentor refugee children in FLL workshops and lead weekly summer training for FTC and FRC students through self-made #link("https://akhaled247.github.io/personal/oarobotics/")[OARobotics] curriculum

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

    - Utilize ChatGPT for reading material level assessment and adjustment

  ],
)

== Projects

#regular-entry(
  [
    #strong[Senior Fall Monitor Device] -- #strong[Samsung Solve for Tomorrow]

  ],
  [
    Sept 2025 – present

  ],
  main-column-second-row: [
    - Developed lightweight TensorFlow Lite ML model for real-time motion tracking and fall detection on mobile devices with buzzer alert system

    - Engineered hybrid dataset combining public and custom annotated data, reducing false positive rate

  ],
)

#regular-entry(
  [
    #strong[Oral Disease Detector] -- #strong[The Conrad Challenge]

  ],
  [
    Oct 2025 – present

  ],
  main-column-second-row: [
    - Designed HIPAA-compliant federated learning architecture using TensorFlow Federated for distributed model training without exposing patient data

    - Used Onshape 3D CAD software to design and 3D print the device, reducing manufacturing costs

  ],
)

== Extracurricular Activities

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

    - Organized annual middle school math competition with 100+ participants, 3 participating schools, and 35+ volunteers

  ],
)

#regular-entry(
  [
    #strong[Secretary, Co-Founder], Muslim Student Association -- Wakeland High School, Frisco, TX

  ],
  [
    Sept 2023 – present

  ],
  main-column-second-row: [
    - Co-founded MSA as Secretary, establishing organizational structure and creating digital promotional media

    - Negotiated with school administration to establish dedicated prayer room, coordinating facility setup and policies

  ],
)

#regular-entry(
  [
    #strong[Lead Math and English Instructor], Ma'ruf Project Taleem -- Dallas, TX

  ],
  [
    Sept 2024 – present

  ],
  main-column-second-row: [
    - Teach Math and English to refugee elementary and middle school students, developing differentiated curriculum

    - Provide mentorship in academic skills, time management, and social integration for students transitioning to American schools

  ],
)

== Selected Honors

- (2025) Collegeboard AP Scholar with Distinction; NRP School Recognition Award

- (2025) FRC 9128: Event Winner (FiT Victoria, 25 teams); Autonomous Award (FiT Plano, 31 teams); Creativity Award (FiT Amarillo, 36 teams)

- (2025) FTC 26357: Finalist Alliance Captain (FiT-North McKinney Qualifier, 19 teams)

- (2026) FTC 28931: Dean's List Semifinalist (FiT-North Regional Championship, 46 teams)

== Skills

#strong[CAD\/CAM:] Fusion 360, Onshape

#strong[Software:] Python, Java, HTML, CSS, Jekyll, MS Office

#strong[Electrical:] NI Multisim, Soldering

#strong[Programming & Technologies:] TensorFlow Lite, Federated Learning, solvePnP AprilTag vision, Kalman Filtering, Finite State Machines, Mechanism Simulation, Control Theory
