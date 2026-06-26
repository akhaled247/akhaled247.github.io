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

  #headline([Undergraduate applicant — electrical engineering & Islamic studies; embedded systems, vision, robotics])

#connections(
  [#connection-with-icon("location-dot")[Frisco, TX]],
  [#link("mailto:me@aakhaled.com", icon: false, if-underline: false, if-color: false)[#connection-with-icon("envelope")[me\@aakhaled.com]]],
  [#link("https://www.aakhaled.com/", icon: false, if-underline: false, if-color: false)[#connection-with-icon("link")[www.aakhaled.com]]],
  [#link("https://linkedin.com/in/akhaled247", icon: false, if-underline: false, if-color: false)[#connection-with-icon("linkedin")[akhaled247]]],
  [#link("https://github.com/akhaled247", icon: false, if-underline: false, if-color: false)[#connection-with-icon("github")[akhaled247]]],
)


== Education

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

    - Engineering Portfolio: aakhaled.com\/pltw-engineering

  ],
)

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

== Engineering Projects

#regular-entry(
  [
    #strong[OralVision (Oral Disease Detector)] -- #strong[Conrad Challenge; Diamond Challenge]

  ],
  [
    Oct 2025 – present

  ],
  main-column-second-row: [
    - Developed privacy-preserving oral disease screening pipeline (centrally trained model + on-device inference, without transmitting raw patient images), with my engineering focus on the imaging device end-to-end while my partner focused on the inference\/training layer

    - Designed, wired, and programmed the imaging device (XIAO-ESP32-C6 MCU + OV5642 5MP camera), including power-aware capture (camera current draw can trip the 5V voltage regulator)

    - Bench-tested image capture quality and robustness across lighting\/viewing angles to maximize reliable low-cost imaging

    - Verified repeatability by running multiple capture sessions under comparable conditions and confirming output consistency

    - Iterated through 3 PCB revisions and 5 3D-printed snap-fit case revisions to improve reliability and manufacturability

    - Used Onshape 3D CAD software to design and 3D print the device, reducing manufacturing costs

    - Conrad Challenge Innovator Award

    - Diamond Challenge Semifinalist

    - Patent application in progress with United States Patent and Trademark Office (USPTO)

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
    - Designed fall-detection device using Raspberry Pi Pico with on-device TensorFlow Lite inference

    - Developed lightweight ML model for real-time motion tracking and fall detection with buzzer alert system

    - Engineered hybrid dataset combining public and custom annotated data, reducing false positive rate

    - Integrated Arducam HM01B0 Monochrome QVGA SPI Camera Module with Raspberry Pi Pico for resource-aware frame capture

    - Planned next validation: evaluate false positives and alert responsiveness on recorded motion\/fall scenarios, then tune fall rules and thresholds before expanded on-device testing

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
    - Taught groups of \~4–12 students\/day from kindergarten to 11th grade in math, reading, and grammar (including Algebra and Geometry), using guided learning sessions

    - Analyze student performance data with guided checkpoints to identify learning gaps and develop personalized plans

    - Evaluate reading material difficulty and adapt instruction to match target comprehension levels using targeted guided practice

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
    - Graded students' work from kindergarten to 11th-grade, including Algebra and Geometry

    - Aided students in completing their assignments appropriate to their age and skill level

    - Increased grading efficiency by 50\%

  ],
)

== Technical and Computer Skills

#strong[Engineering:] CAD\/CAM: Fusion 360 (Autodesk), Onshape; NI Multisim, KiCAD, EasyEDA, Soldering

#strong[Technologies:] WPILib, FTC SDK, OpenCV, SolvePnP, TensorFlow, Federated Learning, Kalman Filtering, Finite State Machines, Mechanism Simulation, Control Theory

#strong[Software:] Python, Java (robotics), JavaScript, HTML, Jekyll, CSS, Google Workspace, R, Google Sheets, MS Office, Git, GitHub

== Extracurricular Activities

#regular-entry(
  [
    #strong[Programming Lead], ITKAN Robotics - FIRST Robotics Competition (FRC 9128) -- Plano, TX

  ],
  [
    Sept 2024 – Feb 2026

  ],
  main-column-second-row: [
    - Lead FRC 9128 robot software for a \~50-member team; as Programming Lead (2024-12–2025-06) owned \~80\% of the codebase as primary Java\/WPILib developer, maintaining GitHub workflows and command-based autonomous and teleop systems

    - Integrated OpenCV + SolvePnP and tuned Kalman fusion between vision and drivetrain state; shipped autonomous pathing and targeting (state machines, Bezier-based planning, PID), improving average autonomous points per match by \~50\% across 12 matches after vision integration

    - Implemented driver-input buffering for teleop handoff to automated placement; built match logging\/debug tooling and simulation workflows to validate behavior during an 8-week build season with limited robot access; taught mechanism simulation to supporting students

    - Mentored rookie FTC teams 26357 and 28931 (2024–2025); supported \~30 students (6 programmers) from prototyping through competition, including \~25 hrs\/week at peak ITKAN FTC build season

    - Applied FRC sensor-fusion experience to a custom FTC pose estimator (wheel odometry, IMU, vision) with Kalman filtering for localization and automated turret targeting; improved targeting\/scoring accuracy by \~35\%; #link("https://github.com/itkan-of-icf/ftc-26357-2526-v2")[FTC codebase]

    - Delivered three 1-hour ICF FLL workshops (7 students\/session) for refugee students using the self-developed OARobotics curriculum (#link("https://www.aakhaled.com/personal/oarobotics/")[OARobotics]); students built FLL-class robots and completed block-code autonomous maze navigation by session end

  ],
)

#regular-entry(
  [
    #strong[Chief Technical Advisor], ITKAN Robotics - FIRST Robotics Competition (FRC 9128) -- Plano, TX

  ],
  [
    July 2025 – present

  ],
  main-column-second-row: [
    - Lead software strategy for ITKAN's multi-team FRC program (\~20 programmers, \~100-member organization), delegating work, standardizing codebase layout, and aligning autonomy and teleop with mechanical\/electrical integration under build-season deadlines

    - Managed autonomy and teleop reliability engineering, implementing layered failsafes to meet \>90\% reliability expectations despite limited build-season time and staffing; coordinated cross-functional integration so contingency planning preserved match performance after a near-failure camera disconnect

    - Improved mechanism cycle time from \~2 s to \<1 s (intake-to-top) and increased shooter accuracy from \~70\% to \~95\%, doubling throughput from \~10 to \~20 balls\/s (lab-measured before\/after under comparable conditions)

    - Completed autonomous routines without error in \~8–10 unofficial practice runs (pre-competition testing)

    - Mentored programming students and led sponsor and university\/community communication, including Toyota and U.S. Senator Chris Van Hollen at an in-person event

    - Built #link("https://mantik.netlify.app/")[Mantik] (Java + WPILib training website) and produced an FRC programming tutorial playlist (#link("https://www.youtube.com/playlist?list=PLXZmTommNXyXFZJGnoJt82-evVkSwn-f8")[YouTube series]); Google Search Console reach over a 2-month period reached 50+ students in the United States

    - Supported multi-team FRC outcomes including FRC 9128 Texas State Championship playoff qualification; program results on #link("https://www.thebluealliance.com/team/9128")[The Blue Alliance (9128)] and #link("https://www.thebluealliance.com/team/10340")[10340]

    - Ranked highly on Statbotics for Highest Combined Clean Scores among global FRC teams (snapshot Mar 2026); https:\/\/www.statbotics.io\/matches

  ],
)

#regular-entry(
  [
    #strong[Founder and President], Wolverine Robotics — Wakeland High School (FTC 33791) -- Frisco, TX

  ],
  [
    Aug 2024 – present

  ],
  main-column-second-row: [
    - Founded school FTC program (team 33791) and led Wolverine Robotics to an undefeated run and 3rd place at the UIL State Championship; grew membership from 0 to 50+ in year one (\~75 roster in year two; 25–50\% active participants)

    - Secured \~\$6,000+ in resources and built a competition-ready FTC robot in under two weeks (approx. \$2,000 school allocation + \$2,000 NHS fundraising + \$2,000 parent donations)

    - Presented club vision and resourcing plan to school administration (principal, assistant principal\/club manager, physics teacher sponsor) to obtain approval, a teacher sponsor, and permission to compete

    - Delivered \~6 technical workshops (10–15 attendees) on assembly, Java, FTC simulations, and Onshape CAD; created onboarding presentations and an engineering notebook; led monthly meetings with robot demonstrations

    - Implemented FTC autonomous\/pathing (FTC Libraries, PedroPathing) with dead-reckoning wheel odometry and IMU fusion for real-time localization

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
    #strong[Co-Founder, Secretary], Muslim Student Association (MSA), Wakeland High School -- Frisco, TX

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
    #strong[Tutoring Program Coordinator], Ma'ruf Dallas Refugee Organization (Project Taleem) -- Dallas, TX

  ],
  [
    Sept 2023 – present

  ],
  main-column-second-row: [
    - Co-lead Project Taleem (\~2 hr\/week during the school year; pauses for summer and winter breaks), tutoring K–6 refugee students in small groups (\~1:2–3), typically 3–10 learners per session alongside \~4–5 peer instructors

    - Coordinate Ma'ruf and Gideon organizers to supply discounted Gideon learning materials; place students with IXL math and reading diagnostics spanning phonics through \~3rd-grade reading passages and addition through fractions

    - Lead pre-session briefings for peer instructors; assign age-banded groups and smaller ratios for newer volunteers; supervise instructional delivery while maintaining a direct tutoring load; train peers on Gideon-based methods informed by parallel Gideon student, TA, and instructor roles

    - Recruit high-school volunteers from five schools via robotics networks and onboard them into the program; provide periodic updates to the volunteer coordinator

    - Run multilingual sessions with peer interpretation when available, mid-session breaks, and age-separated groupings to stabilize pacing and engagement

    - Deliver monthly robotics enrichment for Project Taleem using the OARobotics curriculum (www.aakhaled.com\/personal\/oarobotics)

    - Measured average \~15-point IXL SmartScore increase over four months (Nov–Feb; n=10 students)

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
    #strong[Junior Varsity (JV)], Wolverines Tennis Team, Wakeland High School -- Frisco, TX

  ],
  [
    Aug 2023 – Aug 2024

  ],
  main-column-second-row: [
    - Participated in singles and doubles tournaments throughout academic school year

    - Sportsmanship Award Winner 2024

  ],
)

== Honors & Awards

- (2025) Collegeboard: AP Scholar with Distinction, National Recognition Program: School Recognition Award

- (2026) OralVision: Conrad Challenge Innovator Award; Diamond Challenge Semifinalist

- (2026) FTC 33791: Event Winner, Control Award Winner (FiT-North Dallas Semi-Regional Championship, 25 teams), Control Award Winner (FiT-North U-League Tournament)

- (2025) FRC 9128: FIRST® Leadership Award Semifinalist, Event Winner (FIRST® in Texas Victoria, 25 teams); Autonomous Award (FiT Plano, 31 teams); Creativity Award (FiT Amarillo, 36 teams)

- (2025) FTC 26357: Finalist Alliance Captain (FiT-North McKinney Qualifier, 19 teams)
