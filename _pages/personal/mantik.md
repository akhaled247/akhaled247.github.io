---
title: "Mantik - FIRST Robotics Programming Curriculum"
description: "Mantik by Abdullah Khaled (akhaled247): Free video and written tutorials for FIRST Robotics programming: WPILib, command-based programming, PID, and motion profiling."
permalink: /mantik/
author_profile: false
project_schema: true
project_type: SoftwareSourceCode
carousels:
  - images:
    - image: /assets/images/personal/mantik/itkannewstitle.png
    - image: /assets/images/personal/mantik/countriesimpacted.png
    - image: /assets/images/personal/mantik/homepage.png
    - image: /assets/images/personal/mantik/resourcespage.png
    - image: /assets/images/personal/mantik/pidsimulation.png
---
{% include carousel.html width="48" height="27" unit="%" duration="10" number="1" float="left"%}
{% include video id="JXoCSk-9al4" provider="youtube" width="48%" height="27%" float="right" margin="5px"%}
{% include videotextbreak %}
<h2 style="margin-top:0px">Motivation</h2>
In my second season as an FRC programmer ([2025](/first/reefscape/)), I was the only active programmer on my FRC team. While htis definitely spurred me to learn at a much quicker rate than I likely would have otherwise, it also made me highly susceptible to burnout. By the end of the season, I could feel my interest in robotics waning, yet I was still driven by the original reason I fell in love with FIRST: the feeling you get when your code finally works and everything comes together. 

During the offseason, we ran summer training sessions for students learning CAD and programming. I was in charge of teaching a subset of the students with prior programming experience the ins and outs of FRC programming. As a mentor, I was frustrated by the scattered knowledge base, in particular between WPILib (the main library we use) and vendor-specific libraries (i.e. for the motors, other hardware we used).

Therefore, I made [Mantik](https://mantik.netlify.app/), a website that trains students in Java programming with robotics as a core tenet of its teaching curriculum. Working with my mentor, we created the Java section of the website. Once he got busy with teaching the newer students Java with the website, however, I was in charge of developing the FIRST-specific sections of the site (FTC and FRC). 

Since I was already teaching the students based on how I learned to program in [2024](/first/crescendo), I had a loose framework in mind when making the website. I then took that idea and expanded on it to include individual lessons the students could refer back to when programming the robot. Lessons include setting up WPILib, coding a motor, understanding the coding structure we use, control theory, and more advanced features I was testing during the offseason. I used Mantik as a supplement to my in-person training, which allowed my students to learn both on- and off-robot. I believe this allowed them to feel that learning is continuous in robotics and encouraged them to explore Mantik and its references to build a more holistic understanding of FRC programming as a whole.

<h2 style="margin-top:0px">Expansion: Control Theory</h2>
Yet when I began disseminating the platform beyond Itkan's walls, I knew that many teams did not have access to a robot during the offseason, especially schools teams since their facilities closed during summer or robots were dismantled to save costs. As such, I created a series of [YouTube videos](https://www.youtube.com/playlist?list=PLXZmTommNXyVIK9u44SjCFfDdXBWcj-Cy) that walk students through learning control theory through hand-on simulations. The videos walk through set up and attempt to build an intuitive understanding of how to tune a PID system in FRC based on my own experiences and the wealth of knowledge available online. 

Completing these trainings, though, led me to explore other ways to decrease the knowledge barrier in terms of PID tuning. So, I added a PID Simulation to the website based on the WPILib online simulations. It allows users to choose the mechanism and control stack they're using (i.e. different vendors) and learn how to program in those frameworks via a simplified IDE. The sim also walks through the code and how to tune the mechanism's movement as we would in season.

<h2 style="margin-top:0px">Results</h2>
Since Mantik's inception, we have received over 10,000 impressions between ChiefDelphi and Google's SEO! We also had our new Software Director join Mantik and contribute using his knowledge of competitive programming, which has added another dimension to Mantik. In addition, Mantik has seen two years' worth of budding programmming students stress test the website through our summer training sessions. I think the cooolest outcome of the project, though, happened this past summer at Itkan. Since I was in [Boston](/rise/) for most of the summer, I could not commit to teaching this year. Instead, the students I had taught last year became the teachers, mentoring this year's students in a strikingly similar fashion to how I did when I first made the website. Thus, I believe that Mantik's true value comes from the institutionalization of ideas that comes with making a website, allowing our team to preserve our programming knowledge even when we graduate.

{% include videotextbreak %}
<h2 style="margin-top:0px">Quick Links</h2>
[Mantik Website](https://mantik.netlify.app/){: .btn .btn--danger .btn--large}
[Itkan News Article](https://www.itkan.one/news/mantik-4500-users){: .btn .btn--primary .btn--large}
[ChiefDelphi Post](https://www.chiefdelphi.com/t/resource-mantik-the-15th-competing-standard/522085){: .btn .btn--warning .btn--large}
[GitHub Source Code](https://github.com/itkan-robotics/mantik/
){: .btn .btn--purple .btn--large}