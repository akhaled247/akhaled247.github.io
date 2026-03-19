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
  typography-font-size-body: 9pt,
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

    - #link("https://akhaled247.github.io/pltw-engineering/")[Engineering Portfolio]

  ],
)

== Extracurricular Activities

#regular-entry(
  [
    #strong[Founder and President], Wolverine Robotics, Wakeland High School -- Frisco, TX

  ],
  [
    Aug 2024 – present

  ],
  main-column-second-row: [
    - Founded Wakeland Robotics Club, growing membership from 0 to 50+ students in the first year

    - Developed mission statement, recruited teacher sponsor and members, and presented team vision, schedule, and activities to school administration

    - Secured funding and constructed competition-ready robot in under 2 weeks, advancing to UIL State Championship

    - Teach CAD software (Onshape) and Java programming through monthly technical workshops

    - Manage club operations including curriculum design, calendar management, and budget management

    - Lead monthly club meetings with presentations and demonstrations of robots

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
    - Organized and designed presentations for meetings

    - Expanded Math Lab Program and coordinated peer tutoring, attaining over 20\% member participation

    - Organized annual middle school math competition with 100+ participants, 3 participating schools, and 35+ volunteers to promote STEM to middle school students

  ],
)

#regular-entry(
  [
    #strong[Treasurer], Mu Alpha Theta Math Honor Society, Wakeland High School -- Frisco, TX

  ],
  [
    Aug 2023 – July 2024

  ],
  main-column-second-row: [
    - Designed and implemented Math Lab Program, coordinating student-led tutoring in Algebra I courses with teachers

    - Built website for Math Lab Program using Google Sites for volunteer sign-up

    - Managed budget for 100+ members

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

#regular-entry(
  [
    #strong[Math and Reading Instructor], Gideon Math and Reading Center -- Frisco, TX

  ],
  [
    June 2024 – present

  ],
  main-column-second-row: [
    - Teach students from kindergarten to 11th-grade in math, reading, and grammar, including Algebra and Geometry

    - Analyze student performance data to identify learning gaps and develop personalized plans

    - Evaluate reading material difficulty and adjust instruction to match target comprehension levels

  ],
)

#regular-entry(
  [
    #strong[Lead Math and English Instructor], Ma'ruf Dallas Refugee Organization -- Dallas, TX

  ],
  [
    Sept 2023 – present

  ],
  main-column-second-row: [
    - Teach Math and English to refugee elementary and middle school children

    - Developed differentiated curriculum for student groups based on their specific needs

    - Provide mentorship to students in academic skills, time management, life skills, and social integration for students transitioning to American schools

  ],
)

#regular-entry(
  [
    #strong[Teaching Assistant (TA)], Islamic Center of Frisco (ICF) -- Frisco, TX

  ],
  [
    Sept 2023 – May 2024

  ],
  main-column-second-row: [
    - Aided elementary students in religious studies and helped keep them on task and engaged

    - Assisted Primary Instructor with curriculum implementation

  ],
)

#regular-entry(
  [
    #strong[Volunteer], Frisco Family Services -- Frisco, TX

  ],
  [
    Sept 2023 – present

  ],
  main-column-second-row: [
    - Sorted and shelved donations for Frisco Family Market, which raises funds for underserved local families with financial, medical, and physical needs

    - Sorted and stocked Food Pantry, which also serves underserved local families

  ],
)

#regular-entry(
  [
    #strong[Chief Technical Advisor], ITKAN Robotics -- Frisco, TX

  ],
  [
    June 2024 – present

  ],
  main-column-second-row: [
    - Mentored FRC and FTC students in Java robotics programming concepts from basic motor control to advanced sensor integration

    - Led team to Texas District Championship playoffs (89 teams) while guiding strategy and robot software improvements

    - Developed self-paced robotics programming curriculum and training website used by 20+ FRC and FTC students: #link("https://mantik.netlify.app/frc")[Mantik's FRC Curriculum]

    - Mentor refugee children in FLL workshops and lead weekly summer training for FTC and FRC students through self-developed OARobotics curriculum: #link("https://akhaled247.github.io/personal/oarobotics/")[OARobotics]

  ],
)

== Competition & Innovation Projects

#regular-entry(
  [
    #strong[OralVision (Oral Disease Detector)] -- #strong[Conrad Challenge; Diamond Challenge]

  ],
  [
    Oct 2025 – present

  ],
  main-column-second-row: [
    - Designed oral disease detection system using HIPAA-compliant federated learning to enable low-cost, privacy-preserving screening

    - Used Onshape 3D CAD software to design and 3D print the device, reducing manufacturing costs

    - Conrad Challenge Innovator Award and Alternate Finalist; Diamond Challenge Semi-Finalist

  ],
)

#regular-entry(
  [
    #strong[WatchFall (Senior Fall Monitor Device)] -- #strong[Samsung Solve for Tomorrow]

  ],
  [
    Sept 2025 – present

  ],
  main-column-second-row: [
    - Developed lightweight ML-based fall monitoring device to support senior safety with real-time alerts

    - Engineered hybrid dataset combining public and custom annotated data, reducing false positive rate

  ],
)

== Selected Honors

- (2026) OralVision: Conrad Challenge Innovator Award & Alternate Finalist, Diamond Challenge Semifinalist

- (2026) FTC 33791: Event Winner, Control Award Winner (FiT-North Dallas Semi-Regional Championship, 25 teams), Control Award Winner (FiT-North U-League Tournament)

- (2025) FRC 9128: FIRST® Leadership Award Semifinalist, Event Winner (FIRST® in Texas Victoria, 25 teams); Autonomous Award (FiT Plano, 31 teams); Creativity Award (FiT Amarillo, 36 teams)

- (2025) FTC 26357: Finalist Alliance Captain (FiT-North McKinney Qualifier, 19 teams)

- (2025) Collegeboard: AP Scholar with Distinction, National Recognition Program: School Recognition Award

== Skills

#strong[Software & Data:] Python, Java, JavaScript, R, Google Sheets

#strong[Robotics, ML & Vision:] TensorFlow, TensorFlow Federated, OpenCV, SolvePnP, Kalman Filtering, Finite State Machines, Mechanism Simulation, Control Theory, Federated Learning

#strong[CAD, Electronics & Prototyping:] Fusion 360, Onshape, NI Multisim, KiCAD, EasyEDA, Soldering

#strong[Web & Productivity:] HTML, CSS, Jekyll, Google Workspace, Microsoft Office
