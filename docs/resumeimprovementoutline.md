## Must add (portfolio-critical)

1. **Professional Summary (1–3 lines)**
   - **what to add:** A short, role-targeted “who you are / what you build / proof-of-capability” summary.
   - **why it helps (ECE/robotics entry-level):** Recruiters screen fast; a tailored summary anchors your specialty before they dive into bullets. Strong entry-level guidance emphasizes fast scanning + role fit. (e.g., 6–10 second scan + what hiring managers want: https://www.dice.com/career-advice/your-first-resume-and-portfolio-what-tech-hiring-managers-really-want-to-see)
   - **exact placement guidance in your YAML:** template-dependent; add either `cv: summary:` (if your template supports it) OR add a new section under `cv.custom_connections.sections`, e.g. `Professional Summary: [ ... ]`.
   - **example bullet:** “ECE-focused robotics builder combining embedded systems + computer vision (federated learning, AprilTag-based localization) to ship reliable, testable autonomy.”

2. **Core Competencies / Technical Snapshot (ECE keywords grouped)**
   - **what to add:** A compact “skills snapshot” section that mirrors the exact robotics stack recruiters search for (embedded, CV, estimation, controls, testing).
   - **why it helps:** Improves keyword alignment and makes your specialty immediately legible; best-practice resume/portfolio advice stresses organizing skills by what you do + impact.  
   - **exact placement guidance:** add under `cv.custom_connections.sections` as a new key (template-dependent), e.g. `Core Competencies:` with 1–2 bullet strings, or split your existing `Technical and Computer Skills` into more robotics-specific categories.
   - **example bullet:** “Robotics: embedded vision, sensor fusion (Kalman), state estimation, real-time inference (TensorFlow Lite), controls + mechanism simulation.”

3. **Per-project “case study” structure (summary + evidence + links)**
   - **what to add:** For each Engineering Project (e.g., `OralVision`, `WatchFall`), add template-dependent metadata fields: `id`, `summary`, `links`, `tags`, `evidence`.
   - **why it helps:** Robotics portfolios work best as mini case studies: problem → approach → measurable impact, with visible artifacts/demos. (Robotics portfolio/case study examples: https://alexbuildstech.github.io/portfolio/ and robotics case-study structure style: https://develop.realman-robotics.com/en/symbiosis/demo/warehousehandlingrobot/ )
   - **exact placement guidance:** under each entry inside `cv.custom_connections.sections.Engineering Projects[]`, add:
     - `id: oralvision` (new)
     - `summary: "..."`
     - `links:` (new; see next item for phrasing)
     - `tags:` / `evidence:` (new; for your reuse tooling)
   - **example bullet:** “OralVision — embedded federated vision system (MCU + camera) with privacy-preserving distributed training; validated across multiple hardware/PCB iterations.”

4. **Explicit demo/artifact links per project (not buried in highlights)**
   - **what to add:** Standardize links so each project has “read it / run it / watch it” assets.
   - **why it helps:** Recruiters value discoverability; even general engineering portfolio advice stresses accessible links and demo availability. (General “make it clickable” guidance: https://www.linkedin.com/top-content/engineering/tips-for-engineering-resume-writing/showcasing-previous-engineering-projects-on-your-resume/ )
   - **exact placement guidance:** add `links:` under each project in `Engineering Projects[]` (template-dependent) OR add 1–2 dedicated highlight lines with consistent prefixes:
     - `Project link: ...`
     - `Demo/video link: ...`
     - `GitHub/repo link: ...`
   - **example bullet:** “Demo/Write-up: https://akhaled247.github.io/oralvision (video on request). Repo: github.com/akhaled247/oralvision”

5. **Verification & validation sub-bullets for every technical project**
   - **what to add:** For each project, add a short “how you proved it works” block: test setup, failure modes, evaluation method, and verification artifacts.
   - **why it helps:** For hardware/embedded/robotics, “it worked once” is less compelling than “it was verified”—robotics V&V framing is repeatedly emphasized in robotics/system resume guidance.
   - **exact placement guidance:** inside each project’s `highlights:` add 2–3 new bullets with consistent structure:
     - `Verification:` (test setup)
     - `Metrics:` (performance)
     - `Reliability/Failure modes:` (what broke + mitigation)
   - **example bullet:** “Verification: tested in repeated battery-powered runs; logged inference latency + false alarms; iterated thresholds to reduce spurious detections under motion.”

6. **System architecture / dataflow bullets (ECE robotics “interfaces” clarity)**
   - **what to add:** Add 1–2 bullets that describe your system as modules + interfaces (sensor → preprocessing → model → estimation/control → actuation/alerts).
   - **why it helps:** Entry-level candidates often sound like “tool users”; architecture/dataflow shows you understand system integration tradeoffs (embedded + software + CV).
   - **exact placement guidance:** add to `Engineering Projects[].highlights` for `OralVision` and `WatchFall`; optionally also add to robotics roles under `Extracurricular Activities` where you did integration.
   - **example bullet:** “Pipeline: camera frames → OpenCV preprocessing → on-device inference → postprocessing + decision logic → user alert.”

7. **Relevant coursework (ECE robotics/embedded-focused)**
   - **what to add:** A “Relevant Coursework” section listing courses that map to your projects (embedded systems, digital logic, controls, signals, ML/CV, sensors, robotics).
   - **why it helps:** Entry-level reviewers use coursework to infer fundamentals and reduce risk. (General academic resume guidance: https://career.ucla.edu/resources/resumes-cover-letters/ )
   - **exact placement guidance:** add `Relevant Coursework:` under `cv.custom_connections.sections` (template-dependent) as an array of bullets/strings (until you confirm how your template renders them).
   - **example bullet:** “Embedded Systems, Digital Electronics, Control Systems, Computer Vision, Probability & Statistics, Data Structures.”

8. **Patents / IP block (separate from project highlights)**
   - **what to add:** A dedicated `Patents & IP:` or `Intellectual Property:` section for things like “patent application in progress.”
   - **why it helps:** IP is strong technical signaling even at entry-level when presented cleanly and consistently.
   - **exact placement guidance:** add a new `Patents & IP:` key under `cv.custom_connections.sections`, and move/copy the existing OralVision patent application line into a structured block entry (you can keep the original highlight too).
   - **example bullet:** “OralVision — patent application in progress (USPTO). Federated learning + embedded imaging device.”

9. **Competitions as structured “impact entries” (not only honors)**
   - **what to add:** A dedicated `Competitions (Robotics/Engineering):` section where each competition has: role, system scope, what you shipped, and outcome.
   - **why it helps:** Recruiters like seeing “real deliverables under constraints.” Your current awards are good, but separating them as engineering case entries makes them skimmable and reusable.
   - **exact placement guidance:** keep `Honors & Awards` as-is; add `Competitions (Robotics/Engineering):` under `cv.custom_connections.sections` and reference projects/roles (Conrad/Diamond, Samsung Solve, FRC/FTC Fit-North, etc.).
   - **example bullet:** “Conrad Challenge (OralVision): shipped embedded privacy-preserving detection pipeline; recognized as Innovator Award winner & alternate finalist.”

10. **Add a “Technical Writing / Engineering Documentation” section**
   - **what to add:** A section for documentation artifacts: design docs, architecture write-ups, technical blog posts, README quality, diagrams, user manuals, calibration/test logs.
   - **why it helps:** For robotics, documentation often differentiates candidates because it enables reproducibility and team onboarding.
   - **exact placement guidance:** add `Technical Writing:` under `cv.custom_connections.sections` (template-dependent). Include links to pages like your existing curriculum/robot codebase documentation URLs.
   - **example bullet:** “Robot codebase + documentation: https://akhaled247.github.io/first/reefscape (autonomous + localization + mechanisms).”

---

## Modular “reuse” structure (for generating specific portfolios)

1. **Add stable IDs for every “block”**
   - **what to add:** `id:` for each project, competition entry, and major robotics role (e.g., `oralvision`, `watchfall`, `frc_itkan_localization`).
   - **placement:** `Engineering Projects[].id`, `Extracurricular Activities[].id` (template-dependent but safe as metadata).
   - **why:** makes it easy to programmatically include/exclude blocks for internships vs research.

2. **Add `audience:` tags**
   - **what to add:** `audience: [entry_level, internship, research]` (pick one or more).
   - **placement:** each block entry (project/competition/research) under `audience:`.
   - **why:** enables “generate the internship portfolio only” filtering.

3. **Add `domain:` tags aligned to your target specialty**
   - **what to add:** e.g. `domain: [embedded, hardware_integration, computer_vision, estimation, control, federated_learning, robotics_software]`.
   - **placement:** per Engineering Project and robotics role.
   - **why:** quickly selects only the most relevant ECE/robotics content.

4. **Add `evidence_type:` tags**
   - **what to add:** `evidence_type: [metrics, reliability_test, dataset, deployment_demo, award_recognition, documentation]`.
   - **placement:** per bullet cluster or per block (template-dependent; simplest is per block).
   - **why:** ensures portfolios include proof, not only descriptions.

5. **Standardize links into a `links:` list**
   - **what to add:** `links: [{type: repo|demo|writeup|video|slides, url: ...}]`.
   - **placement:** each block entry.
   - **why:** you can later render only certain link types per audience.

6. **Add a `results_style:` / `metrics_phrasing:` helper**
   - **what to add:** Store a preferred phrasing mode:
     - `metrics_phrasing: [quantified|qualitative_with_verification]`
   - **placement:** per project block.
   - **why:** keeps your “no exact numbers yet” writing consistent.

7. **Add `prereqs_or_constraints:` tags**
   - **what to add:** e.g. `constraints: [battery_powered, limited_memory, real_time_latency, HIPAA_compliance, mechanical_tolerances]`.
   - **placement:** per block.
   - **why:** recruiters like candidates who understand constraints; it reads like systems thinking.

8. **Create an optional `portfolio_profiles:` section (for your generator)**
   - **what to add:** A list of profiles that reference block IDs (example structure is template-independent).
   - **placement:** top-level under `cv:` (template-dependent; may be ignored by RenderCV).
   - **why:** turns your YAML into an actual “repository” rather than one static resume.

---

## Robotics/ECE-specific evidence to include

1. **Hardware integration evidence**
   - **what to add:** Concrete details: sensor module, MCU/SoC, power budget, interfaces (I2C/SPI/UART), mechanical design approach.
   - **how to phrase without exact numbers:** “Powered from battery via regulated 5V rail; validated stable operation across multiple runs.”
   - **placement:** `Engineering Projects[].highlights` for OralVision/WatchFall.

2. **Embedded real-time constraints**
   - **what to add:** Mention real-time behavior: inference speed target, control loop timing, watchdogs, memory limits.
   - **how to phrase without exact numbers:** “Optimized for low-latency on-device inference; used lightweight model + postprocessing to keep control loop responsive.”
   - **placement:** `WatchFall` highlights (and any robotics roles with on-robot vision/control).

3. **Verification & test methodology (not just outcomes)**
   - **what to add:** test environment, number of trials/runs (even if approximate), what you logged, pass/fail criteria.
   - **how to phrase without exact numbers:** “Evaluated across repeated trials in varied lighting/motion conditions; used logged confidence/alerts to tune thresholds.”
   - **placement:** add 1–2 bullets under each project’s `highlights`.

4. **Calibration / sensor fusion / estimation credibility**
   - **what to add:** if you used calibration or fusion, describe how you validated it (e.g., error bounds, drift behavior, baseline comparison).
   - **example phrasing without exact numbers:** “Validated estimation stability against ground-truth measurements; tuned process/measurement noise for robust fusion.”
   - **placement:** your robotics roles already mention AprilTag + sensor fusion; add one evidence bullet per role.

5. **Failure modes and mitigation**
   - **what to add:** “What went wrong” + “what you changed.” Robotics hiring managers value engineering maturity.
   - **how to phrase without exact numbers:** “Observed false detections under motion blur; mitigated via confidence thresholding + filtering.”
   - **placement:** project highlights, especially where you mention iterating thresholds/datasets.

6. **Performance metrics with baselines**
   - **what to add:** metrics like precision/recall, localization error, latency, false positive rate, or stability measures—plus what baseline you compared to (even “without filtering”).
   - **how to phrase without exact numbers:** “Compared against non-fused baseline; reduced false positives in motion-heavy scenarios during practice tests.”
   - **placement:** add “Metrics” bullets under each project block.

7. **System demo story (what you can show in 60 seconds)**
   - **what to add:** A single “demo narrative” bullet: start state → key action → measurable effect/behavior.
   - **how to phrase without exact numbers:** “In under a minute, demonstrates end-to-end perception-to-decision behavior with alerts and on-screen logs.”
   - **placement:** add to each project block as last highlight.

---

## Research & academia blocks (if applicable)

1. **Research Experience / Independent Study section**
   - **what to add:** A block that frames federated learning + medical/privacy constraints as research/engineering research.
   - **why it helps:** University career-service guidance encourages organizing research outputs and using clear action → method → outcome bullet patterns. (Binghamton career guidance: https://careertools.binghamton.edu/resources/how-to-add-research-experience-to-your-resume-or-cv/ )
   - **placement:** add `Research Experience:` under `cv.custom_connections.sections` (template-dependent).

2. **Publications / Preprints**
   - **what to add:** Even if none exist yet, add a placeholder with status:
     - `In review: ...` / `Submitted: ...` / `In preparation: ...`
   - **placement:** `Publications:` under `cv.custom_connections.sections` (template-dependent).

3. **Datasets & evaluation protocol (for ML/CV work)**
   - **what to add:** dataset composition, labeling approach, train/val split strategy, and evaluation method.
   - **how to phrase without exact numbers:** “Built a hybrid dataset from public + custom annotated samples; evaluated using held-out validation with tuned thresholds.”
   - **placement:** within `OralVision` and `WatchFall` blocks (add bullets under `highlights`).

4. **Ablations / baselines / what changed**
   - **what to add:** For each core technical contribution, mention at least one comparison:
     - “with vs without sensor fusion”
     - “larger model vs lightweight model”
     - “baseline model vs federated approach”
   - **placement:** per project block under `highlights` and/or add `experiments:` metadata (template-dependent).

5. **Patents as “research outputs” (separate from projects)**
   - **what to add:** Structured `Patents & IP:` entry with claims focus (1 line), novelty angle, and current status.
   - **placement:** `Patents & IP:` under `cv.custom_connections.sections`.

6. **Mentoring + academic-style impact**
   - **what to add:** If you’re applying to research roles, mention mentoring with a research framing (experiments, reproducibility, method coaching).
   - **placement:** keep your existing mentoring bullets under `Extracurricular Activities`, and optionally duplicate a subset under a new `Research Mentoring:` section.

---

## Quality checklist

1. Every project has a clear **problem statement** (what it solves) before listing tools.
2. Every project includes at least one **verification/validation** bullet (how you proved it works).
3. Every project has at least one **metrics/evidence** bullet, even if qualitative + verification details.
4. Hardware/embedded projects explicitly mention **interfaces/power/mechanics constraints**.
5. Robotics autonomy/ML projects mention **dataflow or architecture** (modules and boundaries).
6. Bullets start with strong action verbs and avoid generic phrasing like “worked on.”
7. Bullets contain your **specific contribution**, not only team/shared effort.
8. Links are **visible and consistent** (repo/demo/write-up/video), ideally standardized via `links:`.
9. Robotics roles show **system integration** (sensor fusion → estimation/control → actuation/telemetry).
10. Failure modes are included at least once per project/major effort (shows engineering maturity).
11. Consistent terminology across sections (use the same names for sensors/modules/models).
12. Your ML/CV bullets mention **evaluation strategy** (held-out validation, thresholds, baselines).
13. Research-oriented content includes **datasets/protocols** and (when possible) baselines/ablation ideas.
14. Tailoring support: blocks have tags like `audience/domain/evidence_type` so you can filter reliably.
15. Avoid fluff: awards/leadership are connected back to **technical deliverables** and outcomes.