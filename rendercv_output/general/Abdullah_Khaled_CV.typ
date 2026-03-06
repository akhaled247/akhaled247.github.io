// Import the rendercv function and all the refactored components
#import "@preview/rendercv:0.1.0": *

// Apply the rendercv template with custom configuration
#show: rendercv.with(
  name: "Abdullah Khaled",
  footer: context { [#emph[Abdullah Khaled -- #str(here().page())\/#str(counter(page).final().first())]] },
  top-note: [ #emph[Last updated in Mar 2026] ],
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

    - Rigorous course load including 12 APs before senior year

  ],
)

== Extracurricular Activities

#regular-entry(
  [
    #strong[Chief Technical Advisor], ITKAN Robotics -- Frisco, TX

  ],
  [
    June 2024 – present

  ],
  main-column-second-row: [
    - Led team to playoffs at FIRST® In Texas District Championship (89 teams) using AprilTag pose estimation

    - Trained students in Java robotics programming concepts ranging from basic motor control to advanced sensor 

     integration

    - Designed custom Java training website to accompany training curriculum: #link("https://mantik.netlify.app/frc")[Mantik's FRC Curriculum]

    - Mentor refugee children in FLL workshops and lead weekly summer training for FTC and FRC students through self-made curriculum: #link("https://akhaled247.github.io/personal/oarobotics/")[OARobotics]

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
    - Founded inaugural Robotics Club scaling from 0 to 50+ members in first year

    - Secured funding and constructed competition-ready robot in under 2 weeks, qualified for FIRST in Texas FTC UIL State Championship

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

    - Utilize ChatGPT for reading material level assessment and adjustment

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

    - Provide mentorship in academic skills, time management, and social integration for students transitioning to American schools

    - 300+ volunteer hours to date

  ],
)

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
    Sept 2024 – present

  ],
  main-column-second-row: [
    - Co-founded MSA as Secretary, establishing organizational structure and creating digital promotional media

    - Negotiated with school administration to establish dedicated prayer room, coordinating facility setup and policies

  ],
)

== Independent Projects

#regular-entry(
  [
    #strong[Oral Disease Detector] -- #strong[The Conrad Challenge (Innovator Award, Alternate Finalist)]

  ],
  [
    Oct 2025 – present

  ],
  main-column-second-row: [
    - Designed novel oral disease detector using HIPAA-compliant federated learning architecture with TensorFlow Federeated for distributed, low-cost model training without exposing patient data

    - Used Onshape 3D CAD software to design and 3D print the device, reducing manufacturing costs

  ],
)

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

== Selected Honors

- (2026) OralVision: Conrad Challenge Innovator Award & Alternate Finalist, Diamond Challenge Semifinalist

- (2026) FTC 33791: Event Winner, Control Award Winner (FiT-North Dallas Semi-Regional Championship, 25 teams), Control Award Winner (FiT-North U-League Tournament)

- (2025) FRC 9128: FIRST® Leadership Award Semifinalist, Event Winner (FIRST® in Texas Victoria, 25 teams); Autonomous Award (FiT Plano, 31 teams); Creativity Award (FiT Amarillo, 36 teams)

- (2025) FTC 26357: Finalist Alliance Captain (FiT-North McKinney Qualifier, 19 teams)

- (2025) Collegeboard: AP Scholar with Distinction, National Recognition Program: School Recognition Award

== Skills

#strong[CAD\/CAM:] Fusion 360, Onshape

#strong[Web Development:] Python, Java, HTML, CSS, Javascript, Jekyll

#strong[Vision Processing:] Java, SolvePNP, Python, TensorFlow

#strong[Electrical:] NI Multisim, KiCAD, EasyEDA, Soldering

#strong[Statistical Analysis:] R, Google Sheets, MS Office
