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
    day: 20,
  ),
)


= Abdullah Khaled

  #headline([Programming Lead & Chief Technical Advisor, ITKAN FRC 9128 — FIRST® Leadership Award Semi-Finalist (2026)])

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
    - Class rank: top 5 of \~560; unweighted GPA: 4.0; 18 AP courses by graduation (completed and planned), typically 4–6 AP\/year in STEM

  ],
)

#education-entry(
  [
    #strong[Frisco ISD Career and Technical Education Center], Project Lead The Way (Engineering)  -- Frisco, TX

  ],
  [
    Aug 2023 – May 2027

  ],
  main-column-second-row: [
    - PLTW Nationally Distinguished Engineering Program — IED, POE, Digital Electronics, EDD

    - #link("https://akhaled247.github.io/pltw-engineering/")[Engineering portfolio]

  ],
)

== Extracurricular Activities

#regular-entry(
  [
    #strong[Programming Lead], ITKAN Robotics — FIRST Robotics Competition (FRC 9128) -- Plano, TX

  ],
  [
    Sept 2024 – Feb 2026

  ],
  main-column-second-row: [
    - Led robot #strong[Programming] as primary Java\/WPILib developer for a \~50-member team: owned \~80\% of the codebase (2024-12–2025-06), GitHub workflows, command-based autonomous and teleop

    - Built AprilTag pose estimation + auto-align, swerve odometry fusion, and a field-oriented driver UI; integrated OpenCV + SolvePnP with Kalman fusion; shipped autonomous pathing\/targeting (state machines, Bezier, PID)—\~50\% higher autonomous points\/match across 12 matches after vision integration

    - Designed and fabricated an Onshape camera mount for reliable AprilTag detection across field distances; implemented driver-input buffering, custom motor logging classes (AdvantageScope), and match logging\/simulation for limited build-season access

    - #strong[Mentored] rookie FTC teams 26357 and 28931 (2024–Present); supported \~30 students (6 programmers) through competition, including \~25 hrs\/week at peak FTC build season

    - #strong[Led] multiple FLL workshops (7 students\/session) for refugee students using the #strong[conceived] OARobotics curriculum (#link("https://akhaled247.github.io/personal/oarobotics/")[OARobotics]); students completed block-code autonomous maze navigation by session end

  ],
)

#regular-entry(
  [
    #strong[Chief Technical Advisor], ITKAN Robotics — FIRST Robotics Competition (FRC 9128) -- Plano, TX

  ],
  [
    July 2025 – present

  ],
  main-column-second-row: [
    - #strong[Lead] software strategy for ITKAN’s multi-team FRC program (\~20 programmers, \~100-member organization): delegate work, standardize codebase layout, align autonomy\/teleop with mechanical and #strong[Electrical] integration under build-season deadlines

    - Managed autonomy\/teleop reliability (#strong[\>90\%] target) with layered failsafes; preserved match performance after a near-failure camera disconnect through contingency planning

    - Improved mechanism cycle time (\~2 s to \<1 s), shooter accuracy (\~70\% to \~95\%), throughput (\~10 to \~20 balls\/s, lab-measured); completed autonomous routines without error in \~8–10 pre-competition practice runs

    - Presented vision and autonomous work to engineers at corporate sponsors #strong[Toyota] and #strong[Texas Instruments]; represented the team at nationwide conferences and community\/university showcases (incl. U.S. Senator Chris Van Hollen event)

    - #strong[Led] summer FRC programming training (\~10 students) from fundamentals through programming a competition robot from scratch; #strong[conceived] and built adaptive training site #link("https://mantik.netlify.app/")[Mantik] (written lessons, code, video); YouTube tutorial playlist; Discord support for peer learning

    - #strong[Conceived] a lightweight team task system to coordinate build-season work and reduce downtime between matches; cooperative leadership: adaptive curriculum by student mastery, follow-ups tying lessons to live robot code

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
    - Founded school FTC program after difficulty finding a school-sponsored FIRST team; #strong[led] club operations and connected members with local FIRST opportunities while teaching Java, CAD, and competition skills

    - Built competition-ready robot in \<2 weeks; UIL State Championship 3rd place; grew membership from 0 to 50+ (year one); \~\$6k+ resourcing secured (school, NHS, parents)

    - Delivered \~6 workshops (10–15 attendees) and monthly demonstrations; #strong[Outreach]: promoted STEM via school administration presentations and engineering notebook

  ],
)

#regular-entry(
  [
    #strong[Lead Instructor & Peer Program Coordinator], Ma'ruf Dallas Refugee Organization (Project Taleem) -- Dallas, TX

  ],
  [
    Sept 2023 – present

  ],
  main-column-second-row: [
    - Co-lead tutoring for K–6 refugees (\~2 hr\/week school year); multilingual, age-banded groups; recruited volunteers from five high schools via robotics networks

    - Measured \~15-point average IXL SmartScore gain (Nov–Feb; n=10); monthly robotics enrichment using OARobotics for inclusive, hands-on STEM access

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
    - #strong[Led] annual middle school math competition: 100+ participants, 3 schools, 35+ volunteers; expanded Math Lab peer tutoring (\>20\% member participation)

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
    - Co-founded club; secured sponsor and prayer space; created outreach media for student community building

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
    - Instructs K–11 (through Algebra\/Geometry) in guided sessions (\~4–12 students\/day); uses performance data to personalize plans and pacing

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
    - Graded multi-grade work; improved grading efficiency \~50\%

  ],
)

== STEM Projects

#regular-entry(
  [
    #strong[OralVision (Oral Disease Detector) - Conrad Challenge; Diamond Challenge]

  ],
  [
    Oct 2025 – present

  ],
  main-column-second-row: [
    - On-device imaging + privacy-preserving ML pipeline; 3D-printed device (Onshape); Conrad Innovator Award; Diamond Semifinalist

  ],
)

#regular-entry(
  [
    #strong[WatchFall (Senior Fall Monitor)] -- #strong[Samsung Solve for Tomorrow]

  ],
  [
    Sept 2025 – present

  ],
  main-column-second-row: [
    - Raspberry Pi Pico + TFLite fall detection; hybrid dataset to reduce false positives

  ],
)

== Honors & Awards

- (2026) FIRST® Tech Challenge: FIRST® Leadership Award Semi-Finalist (Team 28931)

- (2025) FRC 9128: Event Winner (FiT Victoria, 25 teams); Autonomous Award (FiT Plano, 31 teams); Creativity Award (FiT Amarillo, 36 teams)

- (2026) FTC 33791: Event Winner; Control Award (FiT-North Dallas Semi-Regional, 25 teams); Control Award (FiT-North U-League)

- (2026) OralVision: Conrad Challenge Innovator Award; Diamond Challenge Semifinalist

- (2025) FTC 26357: Finalist Alliance Captain (FiT-North McKinney Qualifier, 19 teams)

- (2025) College Board: AP Scholar with Distinction; National Recognition Program — School Recognition Award
