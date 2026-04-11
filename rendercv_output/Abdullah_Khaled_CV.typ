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
    - 4.0 unweighted GPA; 18 AP courses (completed\/planned) by graduation

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
    - Frisco ISD CTE PLTW Nationally Distinguished Engineering Program

    - Courses: Introduction to Engineering Design, Principles of Engineering, Digital Electronics, Engineering Design and Development (grades 9–12)

    - Engineering portfolio: akhaled247.github.io\/pltw-engineering

  ],
)

== Projects

#regular-entry(
  [
    #strong[OralVision (oral disease screening device)] -- #strong[Conrad Challenge; Diamond Challenge]

  ],
  [
    Oct 2025 – present

  ],
  main-column-second-row: [
    - Privacy-preserving screening pipeline using centrally trained models and on-device inference without transmitting raw patient imagery; HIPAA-aligned design goal; author led imaging hardware end-to-end (partner focused on training\/inference stack)

    - Designed, built, and programmed embedded imager (XIAO-ESP32-C6, OV5642 5 MP) with power-aware capture; bench-tested illumination and viewpoint; repeated sessions to confirm capture consistency; 3 PCB and 5 snap-fit enclosure revisions

    - Onshape CAD and 3D printing; USPTO patent application in progress

  ],
)

#regular-entry(
  [
    #strong[WatchFall (fall-monitoring prototype)] -- #strong[Samsung Solve for Tomorrow]

  ],
  [
    Sept 2025 – present

  ],
  main-column-second-row: [
    - On-device fall detection on Raspberry Pi Pico with TensorFlow Lite; lightweight motion model and alert path; hybrid public + custom-labeled data to reduce false positives

    - Resource-aware monochrome imaging (Arducam HM01B0, SPI) on Pico; planned validation on recorded motion\/fall clips to tune thresholds before wider field testing

  ],
)

== Technical Experience

#regular-entry(
  [
    #strong[Chief Technical Advisor], ITKAN Robotics (FRC 9128) -- Plano, TX

  ],
  [
    Aug 2025 – present

  ],
  main-column-second-row: [
    - Software architecture and process for multi-team FRC (\~20 programmers); standardized repository layout; integrated autonomy and teleop with mechanical and electrical subsystems under tight iteration cycles

    - Reliability-focused autonomy\/teleop with layered failsafes; post-incident recovery planning after near-complete vision dropout; documented debugging and match logging workflows

    - Lab-characterized mechanism performance (cycle time, accuracy, throughput); Mantik open WPILib\/Java notes (mantik.netlify.app); mentored programmers; university and industry outreach

  ],
)

#regular-entry(
  [
    #strong[Software Lead], ITKAN Robotics (FRC 9128) -- Plano, TX

  ],
  [
    Dec 2024 – July 2025

  ],
  main-column-second-row: [
    - Primary Java\/WPILib contributor (\~80\% of codebase) for \~50-member team; Git-based review; command-based autonomous and teleoperation modes

    - Vision-based pose with OpenCV and SolvePnP fused to drivetrain state via Kalman filtering; Bezier-based paths, finite-state autonomy, and PID tracking—\~50\% higher autonomous scoring per match (n=12) after vision integration

    - Match logging, simulation, and teleop handoff tooling; mentored newer programmers in WPILib and mechanism simulation

    - Reference codebase: akhaled247.github.io\/first\/reefscape

  ],
)

#regular-entry(
  [
    #strong[Programming Mentor], ITKAN Robotics of ICF (FTC 26357, 28931) -- Plano, TX

  ],
  [
    Sept 2024 – Feb 2026

  ],
  main-column-second-row: [
    - State-estimation for FTC—wheel odometry, IMU, and vision fused with Kalman filtering; improved targeting and scoring efficiency \~35\% (github.com\/itkan-of-icf\/ftc-26357-2526-v2)

    - Mentored rookie FTC teams through design reviews and integration; peak \~25 hrs\/week during build season; FLL outreach for refugee students via OARobotics (akhaled247.github.io\/personal\/oarobotics)

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
    - Founded school FTC program; UIL State Championship finalist (3rd); scaled membership 0→50+ in year one; secured \~\$6k+ resources; first competition robot in under two weeks

    - Taught recurring technical workshops (Java, Onshape, FTC simulation); maintained engineering notebook and onboarding materials; autonomous localization with wheel odometry and IMU fusion (PedroPathing, FTC SDK)

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
    - Instructed K–11 in mathematics (through Geometry), reading, and grammar in guided small groups (\~4–12 students per day); used formative checkpoints to adjust pacing and difficulty

    - Analyzed student work to target misconceptions and personalize practice; adapted reading passages to goal comprehension levels

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
    - Graded K–11 mathematics including Algebra and Geometry; scaffolded in-class assignments

    - Streamlined grading workflow (\~50\% time reduction) while preserving feedback quality

  ],
)

== Skills

#strong[Software & Web:] Python, Java, JavaScript, R, Git, GitHub, HTML, CSS, Jekyll, Google Sheets, Google Workspace, Microsoft Office

#strong[Robotics, ML & Vision:] WPILib, FTC SDK, TensorFlow, TensorFlow Lite, TensorFlow Federated, OpenCV, SolvePnP, Kalman filtering, FSMs, mechanism simulation, control systems

#strong[CAD & Electronics:] Fusion 360, Onshape, NI Multisim, KiCAD, EasyEDA, soldering

== Leadership & Activities

#regular-entry(
  [
    #strong[Vice President], Mu Alpha Theta\/Math National Honor Society -- Wakeland High School, Frisco, TX

  ],
  [
    Aug 2024 – present

  ],
  main-column-second-row: [
    - Vice President (100+ members); organized chapter presentations; expanded Math Lab peer tutoring (\>20\% participation)

    - Directed annual middle school mathematics contest (\~100 students, 3 schools, 35+ student volunteers)

  ],
)

#regular-entry(
  [
    #strong[Treasurer], Mu Alpha Theta\/Math National Honor Society -- Wakeland High School, Frisco, TX

  ],
  [
    Aug 2023 – July 2024

  ],
  main-column-second-row: [
    - Launched Math Lab with faculty-aligned Algebra I peer tutoring; volunteer scheduling via Google Sites

    - Treasurer—managed club budget for 100+ members

  ],
)

#regular-entry(
  [
    #strong[Co-Founder, Secretary], Muslim Student Association (MSA) -- Wakeland High School, Frisco, TX

  ],
  [
    Aug 2024 – present

  ],
  main-column-second-row: [
    - Co-founded; mission, recruitment, admin presentations; prayer room coordination; club promotional media

  ],
)

#regular-entry(
  [
    #strong[Tutoring Program Coordinator], Ma'ruf Dallas Refugee Organization (Project Taleem) -- Dallas, TX

  ],
  [
    Sept 2023 – present

  ],
  main-column-second-row: [
    - Co-lead after-school tutoring (\~2 hr\/week, school year): K–6 refugee learners in small groups with trained high-school volunteers; coordinated Ma'ruf and Gideon for materials; IXL diagnostics (math and reading)

    - Ran pre-session briefings, age-banded grouping, and newcomer onboarding; trained tutors using methods informed by parallel Gideon instructor\/TA experience

    - \~15-point mean IXL SmartScore gain over four months (Nov–Feb, n=10); monthly robotics enrichment via OARobotics (akhaled247.github.io\/personal\/oarobotics)

  ],
)

#regular-entry(
  [
    #strong[Teaching Assistant], Islamic Center of Frisco (ICF) -- Frisco, TX

  ],
  [
    Sept 2023 – May 2024

  ],
  main-column-second-row: [
    - Supported elementary religious studies classes; assisted lead instructor with lesson delivery and student engagement

  ],
)

== Honors & Awards

- (2025) Collegeboard: AP Scholar with Distinction; National Recognition Program School Recognition Award

- (2026) OralVision: Conrad Challenge Innovator; Diamond Challenge Semifinalist

- (2026) FTC 33791: Event Winner; Control Award (FiT-North Dallas Semi-Regional Championship, 25 teams); Control Award (FiT-North U-League Tournament)

- (2025) FRC 9128: FIRST® Leadership Award Semifinalist; Event Winner (FIRST® in Texas Victoria, 25 teams); Autonomous Award (FiT Plano, 31 teams); Creativity Award (FiT Amarillo, 36 teams)

- (2025) FTC 26357: Finalist Alliance Captain (FiT-North McKinney Qualifier, 19 teams)
