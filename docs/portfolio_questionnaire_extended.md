PORTFOLIO QUESTIONNAIRE (REUSABLE) — ABDULLAH KHALED
Target audience: entry-level ECE / robotics (internships, research, colleges)

How to use:
1) Fill only what you know; if you don't have numbers, write "qualitative" and describe verification.
2) For each project/research block, try to fill: (a) problem, (b) solution, (c) evidence/verification, (d) results, (e) links.
3) Reuse the “tags” fields to generate tailored portfolios.

============================================================
SECTION A — PORTFOLIO POSITIONING (FOR YOUR SUMMARY)
============================================================

A1. What 1-2 sentence “headline” describes what you build? (Tailored to robotics/ECE)

A2. List your top 5 technical strengths for robotics/ECE (short phrases, not sentences):
1) Computer Vision
2) PCB Design
3) Autonomous Navigation (Indoors)
4) Finite State Machines
5) 

A3. For each strength above, cite the project(s) where you used it:
Strength #1 → Projects: OralVision, WatchFall, FIRST Robotics Reefscape, FIRST Robotics Decode
Strength #2 → Projects: OralVision
Strength #3 → FIRST Robotics Reefscape, FIRST Robotics Decode
Strength #4 → FIRST Robotics Reefscape
...

A4. What roles are you targeting next (pick any)?
- entry-level embedded systems yes
- robotics software yes
- computer vision / ML for robotics yes
- systems / autonomy yes
- research opportunities yes

A5. What is your “proof point” for entry-level credibility? (e.g., awards + demonstrable working prototypes + quantified evaluation)
My team for OralVision won The Conrad Challenge Alternate Finalist and Diamond Challenge Semi-Finalist
My team for FIRST Robotics Reefscape won one of our district events, won an award for our autonomous routine during competition, and made it to the state playoffs
My team for FIRST Robotics Decode were finalists at one event, won another event, and obtained multiple awards for our sophisticated embedded systems
A6. What is your preferred metrics style if you don’t have exact numbers?
- quantified + estimates
- qualitative + verification method
- both yes

If you chose estimates: how do you label them (e.g., “estimated from 10 runs”)?

============================================================
SECTION B — GLOBAL TAGGING (REPOSITORY MODULARITY)
============================================================

B1. Define your tag vocabulary (edit as needed):
- audience tags (choose or add):
  - entry_level
  - internship
  - research
  - college_admissions
- domain tags (choose or add):
  - embedded yes
  - hardware_integration
  - computer_vision yes
  - sensor_fusion
  - state_estimation
  - controls yes
  - autonomy_navigation yes
  - federated_learning
  - robotics_software
  - reliability_testing
- evidence_type tags (choose or add):
  - metrics
  - reliability_test
  - dataset
  - deployment_demo
  - award_recognition
  - documentation
  - code_quality (tests, CI, reproducibility)
  - publication
- constraints tags (choose or add):
  - power_limited yes
  - real_time
  - limited_memory
  - motion_blur_robustness
  - privacy_hipaa_or_federated
  - mechanical_tolerance

B2. Write “default tags” you’ll apply to most blocks (comma-separated):
default audience:
default domain:
default evidence_type:
default constraints:

============================================================
SECTION C — BLOCK IDENTIFIERS (SO YOU CAN FILTER/RENDER)
============================================================

C1. Assign a stable `id` for each block you want in the YAML repository.
Use lowercase snake_case. Example: oralvision, watchfall, frc_itkan_localization.

Projects:
- OralVision (id = oralvision)
- WatchFall (id = watchfall)
Other engineering blocks / robotics roles (ids = ):
- FRC ITKAN Chief Technical Advisor (id = itkan_technical_advisor)
- FRC ITKAN Software Lead (id = itkan_software_lead)
- FTC Programming Mentor (id = icf_mentor)

Research/academia blocks (if any later):
- (id = )

C2. For each block, choose “audience” tags:
OralVision audience:
WatchFall audience:
FRC Chief Technical Advisor audience:
FTC Programming Mentor audience:

============================================================
SECTION D — PROJECT CASE STUDY FOR EACH ENGINEERING PROJECT
============================================================
Fill this section once per project block.
Use the template below and repeat.

---------------------------------------------
D0. Project list (do you have multiple?)
---------------------------------------------
Project #1 name:
Block id:

---------------------------------------------
D1. One-line summary (recruiter-friendly)
---------------------------------------------
What is it? (1 line)
---------------------------------------------
D2. Problem
---------------------------------------------
What problem did it address?

What constraints made it hard? (power, real-time, privacy, hardware tolerances, etc.)

---------------------------------------------
D3. Your solution (system architecture)
---------------------------------------------
Describe the pipeline in modules (sensor → processing → model/estimation/control → actuation/alerts → telemetry).
Write 3-6 module bullets:
- module 1:
- module 2:
- module 3:

Which interfaces did you engineer? (protocols, buses, APIs, ROS topics, GPIO/ADC, serial, etc.)

---------------------------------------------
D4. Embedded/hardware evidence (if relevant)
---------------------------------------------
Sensor(s) used:
MCU/SoC used:
Power method / power constraints:
Mechanical/case/PCB notes:

Validation approach for hardware reliability:
(e.g., repeated battery runs, physical stress, connector durability, thermal behavior, EMI checks)

---------------------------------------------
D5. ML/CV evidence (if relevant)
What input data did you use (images/video/sensor streams)?
What preprocessing steps did you do?
Model type (lightweight/heavy), and deployment target (on-device vs server):

Dataset details (even approximate):
- data source(s):
- labeling approach:
- train/val/test strategy:

Evaluation protocol:
- metric(s) you used:
- baseline you compared against (even “without filtering”):

If you don't have numbers: what qualitative evidence demonstrates improvement?

---------------------------------------------
D6. Verification & validation (robotics V&V)
How did you prove it works?
- test setup:
- number of trials / sessions (even approximate):
- pass/fail criteria:

Failure modes you encountered:
1)
2)

What you changed after failure:
1)
2)

---------------------------------------------
D7. Results phrasing (with/without exact numbers)
Write 2 candidate bullets:
1) Quantified style (use estimates + label them):
   - “... as measured by ... over ... runs”
2) Qualitative-with-verification style:
   - “... demonstrated via ... (test setup) ... under ... conditions”

---------------------------------------------
D8. Links & artifacts (make it discoverable)
Repo link:
Demo video link (if any):
Write-up / design doc link:
Hardware/case CAD link:
Calibration/test log link (if any):

---------------------------------------------
D9. Tags for this block (fill for YAML portability)
audience:
domain:
evidence_type:
constraints:

evidence_type selection rule you’ll follow:
(e.g., always include metrics or reliability_test when present)

============================================================
SECTION E — COMPETITIONS & AWARDS AS EVIDENCE BLOCKS
============================================================

E1. For each competition, list the block you want (id + title):

Competition #1:
Block id:
Your role:
System scope (what part of the system did you own?):
What you delivered (technical deliverables):
How it demonstrates robotics engineering competence:

E2. Awards mapping:
What award(s) show impact? (e.g., Innovator Award)
Tie each award to technical evidence you already have:
Award → evidence type:

E3. Links:
Competition page link:
Your project write-up link:

E4. Tags:
audience:
domain:
evidence_type:
constraints:

============================================================
SECTION F — ROBOTICS ROLES / EXPERIENCE (SYSTEM INTEGRATION)
============================================================
Fill this only for the roles you plan to keep in tailored portfolios.

F1. Role name:
Company/Team:
Block id:

F2. System you were responsible for (1 sentence):

F3. Integration work:
What sensors/software modules/controls did you integrate?

F4. Evidence:
Any performance outcomes? (position error, latency, reliability, debugging time saved)
If no exact numbers, write test/verification method.

F5. Links:
Repo link(s):
Docs link(s):
Demo/video link(s):

F6. Tags:
audience:
domain:
evidence_type:
constraints:

============================================================
SECTION G — RESEARCH & ACADEMIA BLOCKS (IF APPLICABLE)
============================================================
Even if you don't have publications yet, you can still document research experience.

G1. Research topic (ECE/robotics framing):

G2. Research type:
- lab research
- independent study
- capstone/honors thesis
- community-based research

G3. Method: what did you actually do?
(data collection, experiments, modeling, ablations, simulation, hardware trials)

G4. Data/datasets:
What dataset(s) did you create/use?
How were labels/ground truth created?
How did you split train/val/test?

G5. Evaluation protocol:
Metrics:
Baselines:
Ablations you ran (even small ones):

G6. Results phrasing:
Write 2 bullets (quantified style + qualitative-with-verification style).

G7. Outputs:
Publications status (submitted/in review/in preparation/none yet):
Poster/talks:
Code release status:

G8. Mentoring/teaching:
Did you mentor others on experiments/methods?
How?

G9. Links:
Paper/preprint link:
Poster link:
Repo link:

G10. Tags:
audience:
domain:
evidence_type:
constraints:

============================================================
SECTION H — OPTIONAL “PORTFOLIO PROFILES” (AUTOMATION-FRIENDLY)
============================================================

H1. Define which block IDs go into each portfolio profile:

Profile: entry_level_engineering_portfolio
Include block IDs (comma-separated):

Profile: internship_portfolio
Include block IDs:

Profile: research_opportunity_portfolio
Include block IDs:

Profile: college_application_portfolio
Include block IDs:

H2. For each profile: which sections do you want rendered first (priority order)?
Examples: projects first, then skills, then roles, then awards, then research.

H3. Minimum evidence rule you want to enforce:
For each project, must have:
- verification bullet: yes/no
- metrics or baseline: yes/no
- links: yes/no

============================================================
SECTION I — QUICK INVENTORY (CHECK FOR MISSING EVIDENCE)
============================================================

I1. For each of your top 3 engineering blocks, answer:
Does it have a demo link? (yes/no) If no, what demo artifact can you produce next?
Does it have verification method? (yes/no)
Does it have metrics or at least a baseline comparison? (yes/no)
Does it mention constraints? (yes/no)

I2. List any missing artifacts you should create:
1)
2)
3)

============================================================
END
