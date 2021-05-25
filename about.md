---
title: Climate Change AI - About
description: Climate Change AI is a group of volunteers from academia and industry who believe in using machine learning, where it is relevant, to help tackle the climate crisis.
---

# About Climate Change AI

Climate Change AI (CCAI) is an organization composed of volunteers from academia and industry who believe that tackling climate change requires concerted societal action, in which machine learning can play an impactful role. Since it was founded in June 2019, CCAI has led the creation of a global movement in climate change and machine learning, encompassing researchers, engineers, entrepreneurs, investors, policymakers, companies, and NGOs.

### Our Mission
To catalyze impactful work at the intersection of climate change and machine learning.

### Our Goals
* To build a community of diverse stakeholders.
* To guide impactful work through educational resources and programs.
* To fill gaps in essential infrastructure such as funding, tools, and datasets. 
* To advance discourse and advise relevant players.


# People

{% for grp in site.data.people %}
<h2 id="{{grp.anchor}}">{{grp.group}}</h2>
<div class="person__list">
{% for p in grp.members %}
{% if p.website_url %}
<a class="person__item" href="{{p.website_url}}" target="_blank">
{% else %}
<div class="person__item">
{% endif %}
<div class="person__pic-wrapper">
<img class="person__pic" src="{{p.image_url}}">
</div>
<div class="person__name">{{p.name}}</div>
<div class="person__affil">{{p.affiliation}}</div>
{% if p.website_url %}
</a>
{% else %}
</div>
{% endif %}
{% endfor %}
</div>
{% endfor %}

# Organizational Structure

## CCAI Chairs
- Priya L. Donti
- Lynn H. Kaack
- David Rolnick

## Content Committee
- Sasha Luccioni <em>(Committee Co-chair)</em>
- Nikola Milojevic-Dupont <em>(Committee Co-chair)</em>
- Lauren Kuntz <em>(Course)</em>
- Tegan Maharaj <em>(Peer Review and Publishing)</em>
- Ankur Mahesh <em>(Tutorials)</em>
- Geneviève Patterson <em>(Course)</em>
- Isabelle Tingzon <em>(Tutorials)</em>
- Marcus Voss <em>(Wiki)</em>

## Communications Committee
- Konstantin Klemmer <em>(Committee Chair)</em>
- Ján Drgoňa <em>(Forum)</em>
- Jesse Dunietz <em>(Media Relations)</em>
- Peetak Mitra <em>(Newsletter)</em>
- Andrew Ross <em>(Website)</em>
- Katherine Stapleton <em>(Strategic Outreach)</em>
- Kasia Tokarska

## Programs Committee
- Evan D. Sherwin <em>(Committee Chair)</em>
- Hari Prasanna Das <em>(Summer School)</em>
- Jessica Fan <em>(Industry Events)</em>
- Meareg Hailemariam <em>(Webinar)</em>
- Jeremy Irvin <em>(Summer School)</em>
- John Kieffer <em>(Community Events)</em>
- Konstantin Klemmer
- Felipe Oviedo <em>(Webinar)</em>
- Maria João Sousa <em>(Summer School)</em>
- Yumna Yusuf <em>(Happy Hours)</em>

## Community Leads
- David Dao <em>(Agriculture, Forestry, and Other Land Use)</em>
- Priya L. Donti <em>(Power Sector)</em>
- Lynn H. Kaack <em>(Public Sector)</em>
- Raphaela Kotsch <em>(Economics and Markets)</em>
- Nikola Milojevic-Dupont <em>(Buildings and Transportation)</em>
- Kelton Minor <em>(Computational Social Sciences)</em>
- David Rolnick <em>(Tech Industry and ML Academia)</em>
- Katherine Stapleton <em>(International Organizations)</em>
- Kasia Tokarska <em>(Climate and Earth Sciences)</em>

## Former Core Team Members
- Ebude Antem Yolande Ebong
- Natasha Jaques
- Kelly Kochanski
- Alexandre Lacoste
- Wei-Wei Lin
- Kris Sankaran
- Anna Waldman-Brown
- Sharon Zhou

# Press

## Releases
* Nov. 11, 2019: <a href="/press_releases/2019-11-11/release.html" target="_blank">press release</a> and [press packet](/press_releases/2019-11-11/press_packet.zip)

## Selected Coverage

### Articles

* <a href="https://www.technologyreview.com/2019/06/20/134864/ai-climate-change-machine-learning/" target="_blank">Here are 10 ways AI could help fight climate change</a> (MIT Technology Review): An overview of a selection of applications described in our paper, “Tackling Climate Change with Machine Learning.”

* <a href="https://docs.google.com/document/d/1TVuHgVkXtr2_gryO12cmHwemRe1GIwMqYtgBoFgyipk/edit#heading=h.ki3ua9ovql3n" target="_blank">To what extent can artificial intelligence help tackle climate change today?</a> (The Rising): A discussion of AI applications in electricity systems and climate policy, of privacy and equity considerations, and of deployment bottlenecks.

* <a href="https://www.plattform-lernende-systeme.de/interview-lynn-kaack.html" target="_blank">Lynn Kaack: An der Schnittstelle von Klimaschutz und Künstlicher Intelligenz</a> (Plattform Lernende Systeme, in German): An interview for the German Federal Ministry of Education and Research, which covers interdisciplinary research, policy analysis, and practical barriers in the area of AI and climate change.

### Talks

* <a href="https://www.youtube.com/watch?v=NRNKuhd0rR4" target="_blank">Tackling Climate Change with Machine Learning</a> (McGill AI Learnathon, 1 hour): An overview of themes and applications from our paper, "Tackling Climate Change with Machine Learning."

* <a href="https://www.youtube.com/watch?v=HEw3xhTMnp0&ab_channel=Heinrich-B%C3%B6ll-StiftungEuropeanUnion" target="_blank">Artificial Intelligence and Climate Change: Opportunities, considerations, and policy levers to align AI with climate change goals</a> (Heinrich Böll Stiftung, 1 hour): A discussion of AI’s multifaceted relationship with climate change — through positive applications, negative applications, and energy use — and how policy choices can help to align the use of AI with climate change goals.

* <a href="https://www.couchlessons.com/videos" target="_blank">Couch Lesson: AI + Climate Change</a> (Goethe Institute, 30 min): Talk and panel discussion on the broader topic of AI and climate change. Relevant talk starts at 19:30, Q&A starts at 49:00.

### Podcasts

* <a href="https://www.capeandislands.org/show/living-lab-radio-on-cai/2019-11-17/artificial-intelligence-can-help-fight-climate-change#stream/0" target="_blank">Artificial Intelligence Can Help Fight Climate Change</a> (Living Lab Radio on NPR, 12 min): An overview of applications highlighted in our paper, "Tackling Climate Change with Machine Learning."

* <a href="https://www.greentechmedia.com/articles/read/beyond-forecasting-artificial-intelligence-is-a-powerful-decarbonization-tool" target="_blank">Beyond Forecasting: Artificial Intelligence Is a Powerful Decarbonization Tool</a> (The Interchange, 50 min): An overview of applications and themes at the intersection of climate change and machine learning, as well as some discussion of CCAI’s early activities.

* <a href="https://www.koerber-stiftung.de/themen/technik-braucht-gesellschaft/podcast-futurechangers" target="_blank">Future Changers – Der Podcast für nachhaltige Innovation, 2. Staffel: Klima und KI</a> (Körber Stiftung, 30 min, in German): A podcast series dedicated to climate change and AI, with episodes 1 and 3 featuring CCAI members giving a general overview of the topic as well as diving specifically into applications of AI for nature-based solutions.
