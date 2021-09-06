---
layout: default
title: 'Tackling Climate Change with Machine Learning'
description: 'NeurIPS 2020 Workshop: Tackling Climate Change with Machine Learning'
og_image_url: 'https://www.climatechange.ai/images/NeurIPS2020_preview_copy4.png'
og_image_type: 'image/png'
og_image_width: 850
og_image_height: 443
---

<h1>NeurIPS 2020 Workshop <br> Tackling Climate Change with Machine Learning</h1>

<div class='buttons'>
  <a class='button' href='#about'>About</a>
  <a class='button' href='#schedule-and-recordings'>Schedule and Recordings</a>
  <a class='button' href='#accepted-works'>Posters</a>
  <a class='button' href='#sponsors'>Sponsors</a>
  <a class='button' href='#organizers'>Organizers</a>
  <a class='button' href='#call-for-submissions'><s>Submit</s></a>
  <a class='button' href='#frequently-asked-questions'>FAQ</a>
</div>

This workshop is focused on impactful uses of machine learning in reducing and responding to climate change, and is intended to be a venue for discourse between experts in machine learning and other fields. Recordings are available at the links below:
<ul>
<li><b><a href='#schedule-and-recordings'>Main workshop</a></b> (Dec 11)</li>
<li><b><a href='#side-event'>Side event: Monitoring the Climate Crisis with AI, Satellites and Drones</a></b> (Dec 14)</li>
</ul>

## About

Many in the ML community wish to take action on climate change, but are unsure of the pathways through which they can have the most impact. This workshop will highlight work that demonstrates that, while no silver bullet, **ML can be an invaluable tool both in reducing greenhouse gas emissions and in helping society adapt to the effects of climate change**. Climate change is a complex problem, for which action takes many forms - from theoretical advances to deployment of new technology. Many of these actions represent high-impact opportunities for real-world change, and are simultaneously interesting academic research problems.

This workshop was held as part of the Conference on Neural Information Processing Systems (NeurIPS), one of the premier conferences on machine learning, which draws a wide audience of researchers and practitioners in academia, industry, and related fields.

## Schedule and Recordings

The main workshop took place digitally on December 11, and the side event took place on December 14. The schedule is available below, with links to recordings, papers, and slides.

<h3 id='main-workshop'>
  Main Workshop
  <a class="tag is-info" href="https://slideslive.com/38947095/tackling-climate-change-with-ml" target="_blank">
    Full Recording
  </a>
</h3>

The main workshop day (Dec. 11) featured 94 posters and spotlight pesentations, along with 12 invited speakers and panelists highlighting pathways to impact in the public and private sectors, and poster sessions via Gather.town.

{% include workshop_schedule_table.html workshop="neurips2020" %}

<h3 id="side-event">
  Side Event
  <a class="tag is-info" href="https://www.youtube.com/watch?v=oAsIGo2BjRk&ab_channel=ClimateChangeAI" target="_blank">
    Full Recording
  </a>
</h3>

Our side event on "Monitoring the Climate Crisis with AI, Satellites and Drones" (Dec. 14) featured talks and socials with prominent speakers in industry and academia to discuss how artificial intelligence and remote sensing can be used to monitor global carbon impact - and allow for new levels of trust and accountability between governments, companies, and projects internationally.

<table class='remote-workshop-table'>
  <thead>
  <tr>
    <th>Time (UTC)</th>
    <!--<th>Time (<span class='fill-local-tz'>Local</span>)</th>-->
    <th>Event</th>
  </tr>
  </thead>

  <tbody>
  {% for r in site.data.neurips2020_sideevent_schedule %}
    <tr class='range-row' data-d1='{{ r.utc1 | jsonify }}' data-d2='{{ r.utc2 | jsonify }}'>
      <td class='fill-utc'> </td>
      <!--<td class='fill-local'> </td>-->
      <td>
        {% if r.url %}
          <a href="{{ r.url }}" target="_blank">{{r.desc | strip_newlines | strip }}</a>
        {% else %}
          {{r.desc | strip_newlines | strip }}
        {% endif %}

        {% if r.more.size > 0 %}
          <details>
            <summary>Details: (click to expand)</summary>
            {{ r.more | strip_newlines | strip }}
          </details>
        {% endif %}
      </td>
    </tr>
  {% endfor %}
  </tbody>
</table>

## Accepted Works

Works were submitted to one of two tracks: [Papers](#Papers) or [Proposals](#Proposals). 

Click the links below for information about each submission, including slides, videos, and papers.

{% assign tracks = "Papers Proposals" | split: " " %}
{% for track in tracks %}
<h3 id='{{ track }}'>{{ track }}</h3>

<table class='paper-table'>
  <thead><tr>
  <th>Title</th>
  <th>Authors</th>
  <!--<th>Poster Session</th>-->

  </tr></thead>
  
  <tbody>
  {% for p in site.data.neurips2020_papers %}
  {% if p.q1_track == track %}
  <tr>
  <td>
  <a href="/papers/neurips2020/{{ p.id }}">({{ p.id }}) {{ p.paper_title }}</a>
  {% if p.award %}
  <span class='tag best-paper'>{{ p.award }}</span>
  {% endif %}
  </td>
  <td>{{ p.authors }}</td>
  <!--<td style='white-space: nowrap'>-->
    <!--{{ p.poster_sessions | join: ",<br>" }}-->
  <!--</td>-->
  </tr>
  {% endif %}
  {% endfor %}
  </tbody>
</table>
{% endfor %}

## Sponsors
![Microsoft logo](/images/microsoft.png)

## Organizers

<a href="https://daviddao.org/" target="_blank">David Dao* (ETH Zürich)</a> <br> 
<a href="https://www.evansherwin.com/" target="_blank"> Evan Sherwin* (Stanford)</a> <br>
<a href="https://priyadonti.com/" target="_blank">Priya Donti (CMU)</a> <br>
<a href="https://scholar.google.fr/citations?user=jsy-VxMAAAAJ" target="_blank">Lynn Kaack (ETH Zürich)</a> <br>
<a href="https://www.gaia-scope.com/contact" target="_blank">Lauren Kuntz (Gaiascope)</a> <br>
<a href="https://www.researchgate.net/profile/Yumna_Yusuf" target="_blank">Yumna Yusuf (UK Gov)</a> <br>
<a href="http://www.davidrolnick.com" target="_blank">David Rolnick (McGill)</a> <br>
<a href="https://nasaharvest.org/partner/catherine-nakalembe"> Catherine Nakalembe (UMD)</a> <br>
<a href="https://www.colorado.edu/faculty/claire-monteleoni/">Claire Monteleoni (CU Boulder)</a> <br>
<a href="https://mila.quebec/en/yoshua-bengio/" target="_blank">Yoshua Bengio (Mila)</a> <br>
\* Denotes co-lead organizers

## Side Event Co-organizers

<a href="https://www.kasiatokarska.com/" target="_blank">Kasia Tokarska (ETH Zürich)</a> <br>
<a href="https://www.linkedin.com/in/mariajoaosousa/" target="_blank">Maria João Sousa (IST, ULisboa)</a> <br>
<a href="https://www.linkedin.com/in/isabelletingzon/" target="_blank">Isabelle Tingzon (Thinking Machines Data Science)</a> <br>

## Program Committee

Abdulrahman Ahmed (Cairo University)<br>
Alberto Chapchap (Visia Investments)<br>
Alexandra Puchko (Western Washington University)<br>
Alexandre Lacoste (Element AI)<br>
Amelia Taylor (University of Malawi, The Polytechnic)<br>
Andrew Ross (Harvard University)<br>
Aneesh Rangnekar (Rochester Institute of Technology)<br>
Anthony Ortiz (Microsoft)<br>
Arijit Patra (University of Oxford)<br>
Armi Tiihonen (Massachusetts Institute of Technology)<br>
Arvind Mohan (Los Alamos National Laboratory)<br>
Ashesh Chattopadhyay (Rice University)<br>
Ashley Pilipiszyn (Stanford University)<br>
Bill Cai (Massachusetts Institute of Technology)<br>
Björn Lütjens (Massachussets Institute of Technology)<br>
Brian Hutchinson (Western Washington University)<br>
Caleb Robinson (Georgia Institute of Technology)<br>
Christian Schroeder de Witt (University of Oxford)<br>
Claire Monteleoni (University of Colorado Boulder)<br>
Clement DUHART (MIT Media Lab)<br>
Conrad Foley (Deep Planet)<br>
Dali  Wang (ORNL)<br>
Daniel Kofman (Telecom ParisTech)<br>
Daniel Livescu (Los Alamos National Laboratory )<br>
Dara Farrell (Graduate of University of Washington)<br>
David Rolnick (McGill University, Mila)<br>
Deval Pandya (Shell Global solutions)<br>
di wu (McGill)<br>
Diego Kiedansk (Telecom ParisTech)<br>
Duncan Watson-Parris (University of Oxford)<br>
Fabrizio Falasca (Georgia Institute of Technology)<br>
FELIPE OVIEDO (MIT)<br>
Felix Laumann (Imperial College London)<br>
Femke van Geffen (FU Berlin)<br>
Filip Tolovski (Fraunhofer Heinrich-Hertz-Institut )<br>
Fred Otieno (IBM)<br>
Frederik Gerzer (fortiss)<br>
Frederik Kratzert (LIT AI Lab, Institute for Machine Learning, Johannes Kepler University Linz, Austria)<br>
Gavin Portwood (Los Alamos National Lab)<br>
Gege Wen (Stanford University)<br>
Genevieve Flaspohler (MIT)<br>
Hari Prasanna Das  (UC Berkeley )<br>
Henning Schwabe (Private)<br>
Hovig Bayandorian ()<br>
Ioannis C. Konstantakopoulos (UC Berkeley)<br>
Isaac Waweru (IBM)<br>
Jan Drgona (Pacific Northwest National Laboratory)<br>
Jefferson Sankara (Lori Systems)<br>
Jeremy Irvin (Stanford)<br>
Jigar Doshi (Wadhwani AI)<br>
Jingfan Wang (Stanford University)<br>
Johan Mathe (Frog Labs)<br>
John Platt (Google)<br>
Jonathan Fürst (NEC Laboratories Europe)<br>
Joris Guerin (ENSAM)<br>
Joyjit Chatterjee (University of Hull)<br>
Julius von Kügelgen (MPI for Intelligent Systems, Tübingen & University of Cambridge)<br>
K. Shankari (UC Berkeley)<br>
Kalai Ramea (PARC)<br>
Kate Duffy (Northeastern University)<br>
Kelly Kochanski (University of Colorado Boulder)<br>
Kevin McCloskey (Google)<br>
Kidane Degefa (Haramaya University)<br>
Konstantin Klemmer (University of Warwick)<br>
Kris Sankaran (University of Wisconsin-Madison)<br>
Lauren Kuntz (Gaiascope)<br>
Lea Boche (EPRI)<br>
Lexie Yang (Oak ridge national laboratoy)<br>
Linda Petrini (Google)<br>
loubna benabbou (EMI Engineering School, Mohammed V University in Rabat.)<br>
Lucas Kruitwagen (University of Oxford)<br>
Lucas Liebenwein (Massachusetts Institute of Technology)<br>
Lucas Spangher (U.C. Berkeley)<br>
Lynn Kaack (ETH Zurich)<br>
Martin Gauch (University of Waterloo)<br>
Mayur Mudigonda (UC Berkeley)<br>
Melrose Roderick (Carnegie Mellon University)<br>
Michael Howland (Stanford University)<br>
Miguel Molina-Solana (Imperial College London)<br>
Mohammad Mahdi Kamani (The Pennsylvania State University)<br>
Neel Guha (Stanford University)<br>
Niccolo Dalmasso (Carnegie Mellon University)<br>
Nikola Milojevic-Dupont (Mercator Research Institute on Global Commons and Climate Change (MCC))<br>
Olivia Mendivil Ramos (Cold Spring Harbor Laboratory)<br>
Pedram  Hassanzadeh (Rice University)<br>
Priya Donti (Carnegie Mellon University)<br>
Rajesh Sankaran (Argonne National Lab)<br>
Robin Dunn (Carnegie Mellon University)<br>
Ruben Glatt (LLNL)<br>
Sadegh Farhang (The Pennsylvania State University)<br>
Sam Skillman (Descartes Labs)<br>
Sandip Agarwal (IISER Bhopal)<br>
Sasha Luccioni (Mila)<br>
Saumya Sinha (University of Colorado, Boulder)<br>
Shamindra Shrotriya (Carnegie Mellon University)<br>
Shruti Kulkarni (Indian Institute of Science (IISc))<br>
Simona Santamaria (ETH Zurich)<br>
Sookyung Kim (Lawrence Livermore National Laboratory)<br>
Sophie Giffard-Roisin (University of Colorado Boulder)<br>
Soukayna Mouatadid (University of Toronto)<br>
Stephan Rasp (Technical University of Munich)<br>
Tianle Yuan (NASA)<br>
Valentina Zantedeschi (GE Global Research)<br>
Victor Schmidt (Mila)<br>
Victoria Preston (MIT)<br>
Xin Hou (WeBank)<br>
Ydo Wexler (Amperon)<br>
Yimeng Min (Mila)<br>
Yue Hu (Vanderbilt University)<br>
Yumna Yusuf (City University London)<br>
Zhecheng Wang (Stanford University)<br>

***

## Call for Submissions

<b>Deadline:</b> October 6, Anywhere on Earth<br>
<b>Notification:</b> October 30 <br>
<b>Submission website:</b> <a href="https://cmt3.research.microsoft.com/CCAINeurIPS2020" target="_blank">https://cmt3.research.microsoft.com/CCAINeurIPS2020</a>

We invite submissions of short papers using machine learning to address problems in climate mitigation, adaptation, and science, including but not limited to the following topics:
 - Agriculture
 - Behavioral and social science
 - Buildings and cities
 - Carbon capture and sequestration
 - Climate and earth science
 - Climate finance
 - Climate justice
 - Disaster prediction, management, and relief
 - Ecosystems and natural systems
 - Forestry and other land use
 - Industry
 - Policy
 - Power and energy
 - Societal adaptation
 - Transportation
 

All machine learning techniques are welcome, from kernel methods to deep learning. Each submission should make clear why the application has (or could have) a pathway to positive impacts regarding climate change. We highly encourage submissions that make their data publicly available. Accepted submissions will be invited to give poster presentations, of which some will be selected for spotlight talks.

The workshop does not publish proceedings, and submissions are non-archival. Submission to this workshop does not preclude future publication. Previously published work may be submitted under certain circumstances (see the [FAQ](#frequently-asked-questions)).

All submissions must be through the [submission website](https://cmt3.research.microsoft.com/CCAINeurIPS2020). Submissions will be reviewed double-blind; do your best to anonymize your submission, and do not include identifying information for authors in the PDF. We encourage, but do not require, use of the [NeurIPS style template](https://neurips.cc/Conferences/2020/PaperInformation/StyleFiles).

Please see the [Tips for Submissions](#tips-for-submissions) and [FAQ](#frequently-asked-questions), and contact <climatechangeai.neurips2020@gmail.com> with questions.

### Submission Tracks

There are two tracks for submissions. Submissions are limited to 4 pages for the Papers track, and 3 pages for the Proposals track, in PDF format (see examples from  [ICLR 2020](/events/iclr2020){:target="_blank"}, [NeurIPS 2019](/events/neurips2019){:target="_blank"} and [ICML 2019](/events/icml2019){:target="_blank"}. References do not count towards this total. Supplementary appendices are allowed but will be read at the discretion of the reviewers. All submissions *must* explain why the proposed work has (or could have) positive impacts regarding climate change.

#### PAPERS Track

*Work that is in progress, published, and/or deployed*

Submissions for the Papers track should describe projects relevant to climate change that involve machine learning. These may include (but are not limited to) academic research; deployed results from startups, industry, public institutions, etc.; and climate-relevant datasets.

Submissions should provide experimental or theoretical validation of the method presented, as well as specifying what gap the method fills. Authors should clearly illustrate a [pathway to climate impact](#addressing-impact), i.e., identify the way in which this work fits into broader efforts to address climate change. Algorithms need not be novel from a machine learning perspective if they are applied in a novel setting. Details of methods need not be revealed if they are proprietary, though transparency is highly encouraged.

Submissions creating novel datasets are welcomed. Datasets should be designed to permit machine learning research (e.g. formatted with clear benchmarks for evaluation). In this case, baseline experimental results on the dataset are preferred, but not required.

#### PROPOSALS Track

*Detailed descriptions of ideas for future work*

Submissions for the Proposals track should describe detailed ideas for how machine learning can be used to solve climate-relevant problems. While less constrained than the Papers track, Proposals will be subject to a very high standard of review. No results need to be demonstrated, but ideas should be justified as extensively as possible, including motivation for why the problem being solved is important in tackling climate change, discussion of why current methods are inadequate, explanation of the proposed method, and discussion of the [pathway to climate impact](#addressing-impact).

### Tips for Submissions

- **For examples** of typical formatting and content, see submissions from our previous workshops at [ICLR 2020](/events/iclr2020){:target="_blank"}, [NeurIPS 2019](/events/neurips2019){:target="_blank"}, and [ICML 2019](/events/icml2019){:target="_blank"}).
- **Be explicit:** Describe how your proposed approach addresses climate change, demonstrating an understanding of the application area.
- **Frame your work:** The specific problem and/or data proposed should be contextualized in terms of prior work.
- **Address the impact:** Describe the practical ramifications of your method in addressing the problem you identify, as well as any relevant societal impacts or potential side-effects. We recommend reading our further guidelines on this aspect [here](#addressing-impact).
- **Explain the ML:** Readers may not be familiar with the exact techniques you are using or may desire further detail.
- **Justify the ML:** Describe why the ML method involved is needed, and why it is a good match for the problem.
- **Avoid jargon:** Jargon is sometimes unavoidable but should be minimized. Ideal submissions will be accessible both to an ML audience and to experts in other relevant fields, without the need for field-specific knowledge. Feel free to direct readers to accessible overviews or review articles for background, where it is impossible to include context directly.

### Addressing Impact

Tackling climate change requires translating ideas into action. The guidelines below will help you clearly present the importance of your work to a broad audience, hopefully including relevant decision-makers in industry, government, nonprofits, and other areas.

- **Illustrate the link:** Many types of work, from highly theoretical to deeply applied, can have clear pathways to climate impact. Some links may be direct, such as improving solar forecasting to increase utilization within existing electric grids. Others may take several steps to explain, such as improving computer vision techniques for classifying clouds, which could help climate scientists seeking to understand fundamental climate dynamics.

- **Consider your target audience:** Try to convey with relative specificity why and to whom solving the problem at hand will be useful. If studying extreme weather prediction, consider how you would communicate your key findings to a government disaster response agency. If analyzing a supply chain optimization pilot program, what are the main takeaways for industries who might adopt this technology? To ensure your work will be impactful, where possible we recommend co-developing projects with relevant stakeholders or reaching out to them early in the process for feedback. We encourage you to use this opportunity to do so!

- **Outline key metrics:** Quantitative or qualitative assessments of how well your results (or for proposals, anticipated results) compare to existing methods are encouraged. Try to give a sense of the importance of your problem and your findings. We encourage you to convey why the particular metrics you choose are relevant from a climate change perspective. For instance, if you are evaluating your machine learning model on the basis of accuracy, how does improved accuracy on a machine learning model translate to climate impact, and why is accuracy the best metric to use in this context?

- **Be clear and concise:** The discussion of impact does not need to be lengthy, just clear.

- **Convey the big picture:** Ultimately, the goal of Climate Change AI is to "empower work that meaningfully addresses the climate crisis." Try to make sure that from the beginning, you contextualize your method and its impacts in terms of this objective.

## Grants

### NeurIPS Registration Grants

Although conference fees have been significantly reduced, if cost is still a burden, then please apply for financial assistance [here](https://docs.google.com/forms/d/e/1FAIpQLSft_c2HuQCCW2s861Brc0np-PfnEIHy9WXf_XGWMsQFgUPqWw/viewform?usp=sf_link). CCAI will do our best to meet financial assistance needs for the NeurIPS registration fee. The application deadline is November 20th, 2020. 

Participants may also apply for registration grants through the main NeurIPS conference. Applications can be submitted [here](https://neurips.cc/Surveys/49) through November 27.

### Data Grants

Given the COVID-19 pandemic and the virtual nature of NeurIPS this year, CCAI is offering Data Grants to participants who have limited access to the internet. The application deadline is November 20th, 2020. Please apply here [here](https://docs.google.com/forms/d/e/1FAIpQLScrj7BFMUIB1-IDja9jwUsCEF6FnnKaK3MUBiHGWOvV5Pq4Eg/viewform).


## Submission Mentorship Program

<b>Deadline:</b> August 25

We are hosting a mentorship program to facilitate exchange between potential workshop submitters and experts working in topic areas relevant to the workshop. The goal of this program is to foster cross-disciplinary collaborations and ultimately increase the quality and potential impact of submitted work. See also [this video](https://www.youtube.com/watch?v=aZnsLrL0CQ8) explaining the program.

### Expectations:

Mentors are expected to guide mentees during the six weeks of the CCAI mentorship program (Aug 28 - Oct 6) as they prepare submissions for this workshop.

Examples of mentor-mentee interactions may include:
- In-depth discussion of relevant related work in the area of the Paper or Proposal, to ensure submissions are well-framed and contextualized in terms of prior work.
- Iterating on the core idea of a Proposal to ensure that the climate change application is well-posed and the ML techniques used are well-suited.
- Giving feedback on the writing or presentation of a Paper or Proposal to bring it to the right level of maturity for submission.

Mentees are expected to initiate contact with their assigned mentor and put in the work and effort necessary to prepare a Paper or Proposal submission by Oct 6. In turn, mentors are expected to commit at least 5 hours over the time period of the mentorship program.

We suggest that after the mentor-mentee matching is made, a first (physical or digital) meeting should take place within the first week (Aug 28 - Sep 4) to discuss the Paper or Proposal and set expectations for the mentorship period. Subsequent interactions can take place either through meetings or via email discussions, following the expectations set during the initial meeting, culminating in a final version of a Paper or Proposal submitted via the CMT portal by Oct 6.

### Application

Applications are due by August 25.

#### Mentee application

Mentees should apply via the mentorship program CMT site: <https://cmt3.research.microsoft.com/CCAIMNeurIPS2020><br>
(After logging in, click the "create new submission" button to start your application.)

In the application, mentees will be asked to answer questions describing their project, their project's relevance to climate change and machine learning, and the areas on which they are looking for feedback.

Important instructions:
* In your abstract (100-150 words), please summarize your project and the kinds of feedback you are looking to receive from a mentor.
* The primary subject area you select in CMT should represent the area on which you are primarily looking to obtain feedback. Secondary subject areas should reflect other areas of relevance to your submission.

(While the mentorship program is primarily targeted at students and early-career researchers, individuals at any level of seniority are welcome and encouraged to apply for mentorship.)

#### Mentor application

Mentors should apply via the following Google form: <https://forms.gle/g2xyFkvh9A5LouoZA>

We suggest that mentor applicants have at least 3 years of research or industry experience in climate change and/or machine learning.

Between August 26-28, selected mentors may be asked to provide additional input in order to facilitate the mentor/mentee matching process. As the mentor/mentee matching period is short, we ask that mentors be responsive during this period.


### Mentorship Program FAQ

**Q:** Am I required to participate in the mentorship program if I want to submit to the workshop?<br>
**A:** No -- while encouraged, participation in the mentorship program is strictly optional.

**Q:** Are mentors allowed to be authors on the paper for which they provided mentorship?<br>
**A:** Yes, mentors can be co-authors but not reviewers.

**Q:** What happens if the mentor/mentee does not fulfill their duties, or if major issues come up?<br>
**A:** Please email us at <climatechangeai.neurips2020@gmail.com> and we will do our best to help resolve the situation.

**Q:** What happens if I apply to be a mentee but do not get paired with a mentor?<br>
**A:** While we will do our best, we cannot guarantee pairings for everyone. Even if you do not get paired with a mentor, we encourage you to submit a Paper or Proposal to the workshop, and our reviewers will provide you with guidance and feedback on how to improve it.

**Q:** What happens if my submission does not get accepted to the workshop?<br>
**A:** While the mentorship program is meant to give students and early-career researchers the opportunity to improve the quality of their work, sometimes submissions will need further polishing and elaboration before being ready for presentation at a CCAI workshop. If this is the case, we invite you to take into account the comments made by the reviewers and to resubmit again to a subsequent CCAI workshop.

**Q:** I cannot guarantee that I can commit at least 5 hours to the program over the time period. Should I still apply as a mentor?<br>
**A:** No. While the 5 hour time commitment is a suggestion, we do believe that it is necessary to ensure that all mentees receive the help and guidance they need.

**Q:** I do not have a background in machine learning; can I still apply to be a mentor/mentee?<br>
**A:** Yes! We welcome applications from domains that are complementary to machine learning to solve the problems that we are targeting.

**Q:** What happens if my mentor/mentee wants to continue meeting after the workshop?<br>
**A:** We welcome and encourage continued interactions after the official mentorship period. That said, neither the mentor nor the mentee should feel obligated to maintain contact.

## "How-to" Webinar

View recording [here](https://www.youtube.com/watch?v=prDI7Oy-VMM)

This workshop aims to attract submissions and participants from a broad range of fields and stakeholder groups across the world to highlight work that uses machine learning to help tackle climate change. Both our main <b>workshop</b> and the supplementary <b>mentorship program</b> aim to facilitate exchange between individuals from many different backgrounds who work at the intersection of climate change and machine learning.

Because this call is so broad, potential submitters likely have many questions. E.g: 
* “I am a materials scientist applying machine learning to speed up materials discovery. What aspects of my work should I highlight in my submission?”
* “I am a machine learning expert applying reinforcement learning to supply chain optimization. How do I communicate the climate impact of my work?”
* “I study forestry and have a giant database of images of trees from Canadian forests increasingly strained by rising temperatures. I think machine learning could help answer important scientific questions, but I’m not sure where to start!”

To help answer these and other questions, we held a webinar on Thursday, August 20th, at 9am PDT (12pm EDT, 1pm BRT, 6pm CEST, 9:30pm IST, midnight Beijing time), explaining:

* How to prepare a successful submission for the workshop.
* Our mentorship program (applications due August 25), which will pair applicants from a variety of backgrounds with experienced mentors to help improve their submission.

## Poster sessions

All poster sessions will take place in our online space on Gather.town. (Registration is required to attend.) All attending the poster session are warmly invited to play [Mingle Bingo](#mingle-bingo).

### Overview
Our poster sessions use the Gather.town platform, an interactive virtual world which attendees can navigate as 8-bit characters. For a full description, see this [tutorial](https://gather.town/docs), but here are the basics:

- The poster session is set up in a virtual space, much like a physical poster session, with posters placed in designated areas across the space and plenty of room for informal conversation.
- You can use the arrow keys to walk anywhere you like in the space with your customizable avatar.
- You can have a video call with anyone near your avatar. As you approach someone, their video will appear on your screen.
- Each poster is prominently numbered on the map in one of the two poster rooms. These numbers are visible on the minimap (which you can access from the bottom bar) to aid navigation, and correspond to the poster numbers on our website. 
- Around each poster is a rectangle which marks a private conversation area, meaning that everyone in that area is part of the same video conversation. There are also private conversation areas around the tables in other rooms.
- At least one author of each poster should be present at at least one poster session. See the schedule [above](#schedule).
- To view a poster, walk up to the corresponding podium (which looks like <img height="30px" src="https://i.imgur.com/vP9YRNh.png"/>) and press the “x” button. This will bring up the poster’s webpage (also above), which includes slides describing the work and in many cases a recorded video or workshop paper.
- There is a “CCAI Corner” in the top room. This is a space where conference organizers, speakers, and members of CCAI are available to talk with attendees in a larger group (we will also be circulating and enjoying the show!).

### Pro tips
You can press “g” to walk through other people like a ghost.
Click on the minimap in the bottom bar to see the whole space, including poster numbers and explanation of the contents of other rooms.
You can see who else is in the session in the left panel (click the “participants” button, which looks like two abstract people). You can click on someone there and select “locate” to trace a path directly to them.
There is also a chat functionality that you can access via the left panel (click on the message icon). You can use the chat to direct message other participants, message everyone you can see (“nearby”), or message absolutely everyone in the room (“everyone”).

### Mingle Bingo
Part of the fun of coming to conferences is meeting exciting new people!

As an icebreaker, we are introducing Mingle Bingo. To play, [download our bingo card](/events/neurips2020/mingle-bingo-card){:target="_blank"}, which has a grid of 25 things that might describe different conference attendees (e.g. “Works in agriculture”, “Uses computer vision” , or “From South America”). 

Instructions:
- When you meet someone who checks a box, fill in their name on the card.

- Five boxes in a row (horizontally, vertically, or diagonally) is Bingo.

- If you fill in all 25 boxes, you’ve got Super-Bingo.

- If you have Bingo or Super-Bingo, you can submit your filled-in card [here](https://forms.gle/9F6gbwb5gQAZq3Q99) and we will list
you as one of the [TCCML bingo winners](/events/neurips2020/mingle-bingo-winners){:target="_blank"}! (The winners list will display name, institution, and type of bingo only)

- You can edit your submission any time, so feel free to submit a card with Bingo and keep going for Super-Bingo.

The bingo card should be fillable in most PDF readers but we will accept cards in any format (e.g. feel free to print it out and send a picture of a handwritten card).

Google account sign-in is required to submit a card using the main form due to the file upload but if you don’t have a Google account, just email your card to us at [climatechangeai.neurips2020@gmail.com]() and we will add you to the winner list!

***

## Frequently Asked Questions

**Q:** How can I keep up to date on this kind of stuff?<br>
**A:** Sign up for our [mailing list](/newsletter){:target="_blank"}!

**Q:** I’m not in machine learning. Can I still submit?<br>
**A:** Yes, absolutely!  We welcome submissions from many fields. Do bear in mind, however, that the majority of attendees of the workshop will have a machine learning background; therefore, other fields should be introduced sufficiently to provide context for the work.

**Q:** What if my submission is accepted but I can’t attend the workshop?<br>
**A:** You may ask someone else to present your work in your stead.

**Q:** Do I need to use LaTeX or the NeurIPS style files?<br>
**A:** No, although we encourage it.

**Q:** It’s hard for me to fit my submission on 3 or 4 pages.  What should I do?<br>
**A:** Feel free to include appendices with additional material (these should be part of the same PDF file as the main submission).  Do not, however, put essential material in an appendix, as it will be read at the discretion of the reviewers.

**Q:** What do I do if I need an earlier decision for visa reasons?<br>
**A:** Given the virtual nature of the conference, we do not anticipate this being an issue. That said, feel free to contact us at <climatechangeai.neurips2020@gmail.com> and explain your situation and the date by which you require a decision and we will do our best to be accommodating.

**Q:** Can I send submissions directly by email?<br>
**A:** No, please use the CMT website to make submissions.

**Q:** The submission website is asking for my name. Is this a problem for anonymization?<br>
**A:** You should fill out your name and other info when asked on the submission website; CMT will keep your submission anonymous to reviewers.

**Q:** Do submissions for the Proposals track need to have experimental validation?<br>
**A:** No, although some initial experiments or citation of published results would strengthen your submission.

**Q:** The submission website never sent me a confirmation email. Is this a problem?<br>
**A:** No, the CMT system does not send automatic confirmation emails after a submission, though the submission should show up on the CMT page once submitted. If in any doubt regarding the submission process, please contact the organizers. Also please avoid making multiple submissions of the same article to CMT.

**Q:** Can I submit previously published work to this workshop?<br>
**A:** Yes, though under limited circumstances. In particular, work that has previously been published at non-machine learning venues may be eligible for submission; however, work that has been published in conferences on machine learning or related fields is likely not eligible. (As stated by the NeurIPS workshop guidelines, “Workshops are not a venue for work that has been previously published in other conferences on machine learning or related fields. Work that is presented at the main NeurIPS conference should not appear in a workshop, including as part of an invited talk.”) If your work was previously accepted to a Climate Change AI workshop, this work must have changed or matured substantively to be eligible for resubmission. Please contact <climatechangeai.neurips2020@gmail.com> with any questions.

**Q:** Can I submit work to this workshop if I am also submitting to another NeurIPS 2020 workshop?<br>
**A:** From our perspective, yes; however, please also check the policies of the other workshop. If you submit to multiple workshops, we cannot guarantee that you will not be expected to present the material at a time that conflicts with the other workshop.

**Q:** If I submit my work to this workshop, can also I still submit this work to other venues in the future?<br>
**A:** The workshop does not publish proceedings, and submissions are non-archival. Submission to this workshop does not preclude future publication in other venues from our perspective; however, please also check the policies of the other venue(s) to which you wish to submit.
