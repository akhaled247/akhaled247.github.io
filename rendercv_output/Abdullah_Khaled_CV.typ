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
  colors-body: rgb(0, 0, 0),
  colors-name: rgb(0, 79, 144),
  colors-headline: rgb(0, 79, 144),
  colors-connections: rgb(0, 79, 144),
  colors-section-titles: rgb(0, 79, 144),
  colors-links: rgb(0, 79, 144),
  colors-footer: rgb(128, 128, 128),
  colors-top-note: rgb(128, 128, 128),
  typography-line-spacing: 0.48em,
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

#connections(
  [#link("mailto:abdullahkhaled0224@gmail.com", icon: false, if-underline: false, if-color: false)[#connection-with-icon("envelope")[abdullahkhaled0224\@gmail.com]]],
  [#link("tel:+1-469-347-2884", icon: false, if-underline: false, if-color: false)[#connection-with-icon("phone")[(469) 347-2884]]],
  [#link("https://www.aakhaled.com/", icon: false, if-underline: false, if-color: false)[#connection-with-icon("link")[www.aakhaled.com]]],
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
    - Unweighted GPA: 4.0; 18 AP classes completed\/planned

    - Rank: Top 5\% of class; Expected graduation: 2027

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
    - Matched with mentor Dr. Wenchao Li, Department of Electrical and Computer Engineering for summer internship program

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
    - Frisco ISD Career and Technical Education Center PLTW Nationally Distinguished Engineering Program

    - Courses: Introduction to Engineering Design (Gr. 9), Principles of Engineering Design (Gr. 10), Digital Electronics (Gr. 11), Engineering Design and Development (Gr. 12)

    - Engineering online portfolio: https:\/\/www.aakhaled.com

  ],
)

== Honors & Awards

- OralVision: Conrad Challenge Innovator Award; Diamond Challenge Semifinalist (Gr. 11)

- FIRST Robotics Competition (FRC) State Championship Winner (Gr. 11)

- FIRST Tech Challenge (FTC) 5A UIL State Championship Bronze Medalist (Gr. 11)

- FTC FIRST Leadership Award Semifinalist (Gr. 11)

- FRC FIRST Leadership Award Semifinalist (Gr. 11)

- CollegeBoard AP Scholar with Distinction (Gr. 10)

- CollegeBoard National Recognition and School Recognition Awards (Gr. 10)

- Member of National Honor Society (NHS), Wakeland High School (Gr. 11–12)

== Projects

#regular-entry(
  [
    #strong[OralVision (Oral Disease Detector) — Conrad Challenge Innovator Award; Diamond Challenge Semifinalist]

  ],
  [
    Oct 2025 – present

  ],
  main-column-second-row: [
    - Designed oral disease detection system using HIPAA-compliant federated learning with TensorFlow Federated, enabling distributed model training without sharing patient data

    - Patent application in progress with United States Patent and Trademark Office (USPTO)

  ],
)

#regular-entry(
  [
    #strong[WatchFall (Senior Fall Monitor Device) — Samsung Solve for Tomorrow]

  ],
  [
    Sept 2025 – present

  ],
  main-column-second-row: [
    - Selected as one of two teams to represent school district in Samsung Solve for Tomorrow competition

    - Designed fall-detection device using Raspberry Pi Pico with on-device TensorFlow Lite inference

    - Developed lightweight ML model for real-time motion tracking and fall detection with buzzer alert system

  ],
)

== Community Service

#regular-entry(
  [
    #strong[Tutoring Program Coordinator], Ma'ruf Dallas Refugee Organization -- Dallas, TX

  ],
  [
    Sept 2023 – present

  ],
  main-column-second-row: [
    - Lead Math and English tutoring for 20+ refugee elementary and middle school children over three years

    - Developed differentiated curriculum for student groups based on their specific needs

    - Provide mentorship to students in academic skills, time management, life skills, and social integration for students transitioning to American schools

  ],
)

== Extracurricular Activities

#regular-entry(
  [
    #strong[Chief Technical Advisor], ITKAN Robotics (FIRST Robotics Team) -- Plano, TX

  ],
  [
    Aug 2025 – present

  ],
  main-column-second-row: [
    - Led programming team to 1st place wins at Space City \#1 (32 teams), Farmersville (31 teams), and State Championship (90 teams)

    - Undefeated 53-0 record during autonomous; 1st in the World

    - Ranked 5th in the World as of March 2026

    - Developed self-paced robotics programming curriculum and training website used by 30+ FRC and FTC students and over 2000 impressions across 7 countries (mantik.netlify.app)

  ],
)

#regular-entry(
  [
    #strong[Software Lead], ‎

  ],
  [
    Dec 2024 – July 2025

  ],
  main-column-second-row: [
    - Provided technical leadership on the organization of software team projects; educated and trained new programming team members; maintained the team's FRC and FTC codebases

    - FRC robot GitHub codebase and documentation: https:\/\/www.aakhaled.com\/first\/reefscape

  ],
)

#regular-entry(
  [
    #strong[Founder and President], Wolverine Robotics, Wakeland High School -- Frisco, TX

  ],
  [
    Aug 2024 – present

  ],
  main-column-second-row: [
    - Founded the Wakeland Robotics Club, growing membership from 0 to 50+ students in the first year

    - Bronze medalist at FTC UIL 5A State Championship in team's rookie year

    - Developed mission statement, recruited teacher sponsor and members, and presented team vision, schedule, and activities to school administration

    - Manage club operations including curriculum design, calendar management, and budget management

  ],
)

#regular-entry(
  [
    #strong[Vice President], Mu Alpha Theta Math Honor Society, Wakeland High School -- Frisco, TX

  ],
  [
    Aug 2024 – present

  ],
  main-column-second-row: [
    - Designed and implemented school Math Lab Program and coordinated peer tutoring, attaining over 20\% member participation

    - Organized annual middle school math competition with 100+ participants, 3 participating schools, and 35+ volunteers to promote STEM to middle school students

  ],
)

#regular-entry(
  [
    #strong[Co-Founder and President], Muslim Student Association (MSA), Wakeland High School -- Frisco, TX

  ],
  [
    Aug 2024 – present

  ],
  main-column-second-row: [
    - Developed mission statement, recruited teacher sponsor and members, and presented activities to school administration

    - Coordinated with school staff to establish a prayer room for weekly prayers

    - Created various media for promoting the club and prayer room, including social media posts

  ],
)

== Work Experience

#regular-entry(
  [
    #strong[Math and Reading Instructor], Gideon Math and Reading Center -- Frisco, TX

  ],
  [
    June 2024 – present

  ],
  main-column-second-row: [
    - Teach students from kindergarten to 11th grade in math, reading, and grammar, including Algebra and Geometry

    - Analyze student performance data to identify learning gaps and develop personalized plans

  ],
)

#regular-entry(
  [
    #strong[Math and Reading Teaching Assistant (TA)], Gideon Math and Reading Center -- Frisco, TX

  ],
  [
    Jan 2022 – May 2024

  ],
  main-column-second-row: [
    - Graded students' work from kindergarten to 11th grade, including Algebra and Geometry

    - Aided students in completing their assignments appropriate to their age and skill level

    - Increased grading efficiency by 50\%

  ],
)

== Skills

#strong[Engineering:] CAD\/CAM: Fusion 360 (Autodesk), Onshape; NI Multisim, KiCAD, EasyEDA; soldering

#strong[Software:] Python, Java, JavaScript, HTML, Jekyll, CSS, Google Workspace, R, Google Sheets, MS Office

#strong[Technologies:] OpenCV, SolvePnP, TensorFlow, Federated Learning, Kalman Filtering, Finite State Machines, Mechanism Simulation, Control Theory
