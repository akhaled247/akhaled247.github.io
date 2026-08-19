---
title: "RISE - Benchmarking Reinforcement Learning Algorithms with Search and Rescue Tasks"
description: "Boston University electrical engineering research internship. Studied search and rescue, reinforcement learning, and specification-guided RL under Dr. Wenchao Li."
permalink: /rise/
author_profile: false
project_schema: true
project_type: SoftwareSourceCode
carousels:
  - images:
    - image: /assets/images/rise/ak-symposium.jpg
    - image: /assets/images/rise/ak-zg-symposium.jpg
    - image: /assets/images/rise/ak-zg-jl-symposium.jpg 
    - image: /assets/images/rise/ak-zg-jl-mit.jpg
  - images:
    - image: /assets/images/rise/og-mockup.png
    - image: /assets/images/rise/saec-walls.jpg
    - image: /assets/images/rise/multigoalsar1.jpg
  - images:
    - image: /assets/images/rise/singlesuccess.png
    - image: /assets/images/rise/multisuccessviolation.png
---
{% include carousel.html width="48" height="36" unit="%" duration="5" number="1" float="left" %}
{% include pdf path="/assets/buriseweeklystatusreports.pdf" width="47%" height="34%" float="right" %}
{% include videotextbreak %}
> Specification-guided reinforcement learning (RL) is a growing field that attempts to improve the performance of traditional RL algorithms in long-horizon tasks, or tasks that require goals to be met in a certain order. Linear temporal logic (LTL) is one way to encode the specifications of these tasks, such as GenZ-LTL1. Search and rescue (SAR) is one such task, as agents often must complete rescues in a specified order (e.g. based on risk level). While there are existing benchmarks such as SpecRLBench2 that provide environments for evaluation, there currently are no environments that correlate to potential real-world applications of specification-guided RL. In this work, we propose an extension to SpecRLBench that includes a series of long-horizon SAR tasks compatible with specification-guided and traditional RL methods as well as single-agent and multi-agent environments. There are two casualty categories: surface, which are directly visible by the agent, and entrapped, which are hidden inside buildings. The tasks increase in complexity, with each level adding more obstacles (i.e. walls) and casualties. Our environment supports arbitrary task specification (i.e. the order the agents must rescue the casualties in). We trained unconstrained, constrained, and specification-guided RL (PPO3, PPO-Lagrangian4 and GenZ-LTL respectively) in our multi-agent environments. Empirical results find that specification-guided RL method outperforms the unconstrained and constrained traditional RL methods in the SAR environments with respect to episode success rates and minimizes cost violations from incorrect rescue sequences and environment border collisions.<br><span style="font-size:10px">(1) Guo, Z.; Işık, İ.; Ahmad, H. M.; Li, W. One Subgoal at a Time: Zero-Shot Generalization to Arbitrary Linear Temporal Logic Requirements in Multi-Task Reinforcement Learning. Advances in Neural Information Processing Systems 2026, 38, 77500–77529.</span><br><span style="font-size:10px">(2) Guo, Z.; Işık, İ.; Ahmad, H. M.; Li, W. SpecRLBench: A Benchmark for Generalization in Specification-Guided Reinforcement Learning. arXiv preprint 2026.</span><br><span style="font-size:10px">(3) Schulman, J.; Wolski, F.; Dhariwal, P.; Radford, A.; Klimov, O. Proximal Policy Optimization Algorithms. arXiv preprint 2017. </span><br><span style="font-size:10px">(4) Ray, A.; Achiam, J.; Amodei, D. Benchmarking Safe Exploration in Deep Reinforcement Learning. arXiv preprint arXiv:1910.01708 2019

At Boston University's Research In Science and Engineering (RISE) program, I was one of 2 members of the [Dependable Computing Lab](https://sites.bu.edu/depend/) under [Dr. Wenchao Li](https://www.bu.edu/eng/profile/wenchao-li-ph-d/). The lab's stated goal is to "develop *computational proof methods* (a.k.a. formal methods) and *machine learning* techniques to aid the construction of safe, reliable and secure systems." Under the direct guidance of [Zijian Guo](https://www.bu.edu/hic/profile/zijian-guo/), we proposed an extension to [SpecRLBench](https://arxiv.org/abs/2604.24729), a specification-guided reinforcement learning benchmark.

The existing environments in SpecRLBench, though successful at benchmarking various specification-guided RL models, are not rooted in real-world robotics applications. Therefore, I wanted to use a scenario that reflects the long-horizon tasks (i.e. ones that have multiple subgoals in it) that SpecRL thrives on. Therefore, I chose to use search and rescue (SAR) tasks. I also chose SAR environments since I personally am incredibly invested in trying to improve autonomous robotics for use in SAR applications and because Dr. Li told me himself that he believed this would align closely with my own interests.

{% include carousel.html width="36" height="36" unit="%" duration="10" number="2" float="left" %}
<br>
The first problem I had to solve was the environment itself. After reading up on existing literature surrounding unmanned ground vehicles (UGVs), autonomous robotics in SAR environments, and existing benchmarks and environments for RL agents, I came up with the mock-up in the carousel on the left. The key identifying features (taken from my poster) are as follows:
- **Agent**: What the model is controlling. The model controls the forward/backward movement and rotation of the agent.
- **Border**: A box around the environment so the agent cannot leave the bounds. The episode terminates if an agent hits the border.
- **Surface casualties (SC)**: Goals agent can detect with lidar or vision unless an object occludes it (e.g. other agents, buildings, walls, etc.).
- **Entrapped casualties (EC)**: Another goal that cannot be seen by lidar or vision unless the agent enters a building and an entrapped casualty is in that building.
- **Buildings**: An object that is globally visible by lidar and vision; i.e. the agent can always see buildings.
- **Walls**: Objects that obstruct the agent’s vision/lidar and terminate the episode if contacted.

Once all casualties are rescued (surface and entrapped), the episode ends prematurely. If the episode times out, the episode truncates. I decided not to make the environment too complex (i.e. add the human operator depicted in the mock-up) due to time constraints and difficulties faced when training the models initially. Once I had this down, I began the process of creating the environment. I started with the walls, then the buildings, then the casualties. In order to test the environment, I built of of the existing keyboard movement in Safety-Gym and adapted it to SpecRLBench's set up so I could manually control the agent. At this point, I began realizing the difficulty of the environment firsthand, and after trying to train models on the more complicated environment, I simplified it significantly. In the end, I created two sets of levels: `SingleGoalSAR` tasks only had one type of casualty (surface/entrapped) in the environment, while `MultiGoalSAR` tasks had both types.

{% include carousel.html width="36" height="36" unit="%" duration="10" number="3" float="right" %}
After I had set up all of the environments, I began testing different models: first, on the `SingleGoalSAR` tasks, I tested two types of algorithms:
- **Unconstrained (PPO, TRPO)**: These types of RL models only try to maximize reward (i.e. casualties rescued) and do not consider costs from collisions with the border or interior walls. PPO is the successor to TRPO (both of which were created by OpenAI). I originally tested these using Stable-Baselines3, but switched over to Safe Policy Optimization after realizing that SB3 does not have constrained algorithms natively built into its library (see below).
- **Constrained (PPO Lagrangian, TRPO Lagrangian)**: These types of models try to maximize reward and minimize cost (max-min optimization) using a penalty coefficient λ.

*Note: I also tested off-policy models (SAC), but they were too slow to effectively be used in the environment and the results that came from them were inadequate, so I did not pursue increases in its effectiveness.*

Once I solidified the effectiveness of these algorithms in simpler tasks, I transitioned to `MultiGoalSAR` tasks. Now that the tasks were actually long-horizon (before they were not since the agent always had the same goal, either entrapped or surface casaulties), I started to incorporated specification-guided RL in the form of GenZ-LTL, the model created by Zijian. Moreover, I chose not to include TRPO and TRPO-Lagrangian in my `MultiGoalSAR` comparison as GenZ-LTL itself is built on a modified PPO with Hamilton-Jacobi reachability constraints, so I wanted a more similar model as comparison. 

{% include video id="IkegtaiXWZY" provider="youtube" width="30vh" height="30vh" float="left" margin="10px"%}

After evaluation, I found that GenZ-LTL significantly outperforms traditional models in both environments, though all models struggle in Level 1. GenZ-LTL also had higher successful mean episode length than PPO and, although GenZ-LTL has lower violation rate on Level 0, it had the highest violation rate on Level 1. I concluded that violation rate and mean episode success length are likely skewed for Level 1 due to highly infrequent successful episodes (especially from PPO and PPO Lagrangian).

Overall, although in the end the results were somewhat disappointing at higher complexities, I am incredibly pleased with all that I learned at RISE. The incredible guidance from Dr. Li and Zijian allowed me to accomplish so much during the past six weeks, and I am excited to continue expanding upon my research and transferring my newly acqiured deep RL knowledge to other autonomous robotics frameworks. In the future, I wish that I may one day use what I've gained here to help benefit others through my engineering skillset (hopefully sooner than I think)!
{% include videotextbreak %}
<h2 style="margin-top:0px">Quick Links</h2>
[GitHub Repository](https://github.com/akhaled247/RISE-2026){: .btn .btn--purple .btn--large}
{% include videotextbreak %}
<h3 style="margin-top:0px">Final Poster</h3>
{% include pdf path="/assets/images/rise/KHALED_Internship_Poster.pdf" width="36%" height="48%" float="left" %}
