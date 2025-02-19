---
layout: default
title: 'Tackling Climate Change with Machine Learning'
description: 'NeurIPS 2021 Workshop: Tackling Climate Change with Machine Learning'
og_image_url: 'https://www.climatechange.ai/images/neurips-2021-preview.png'
og_image_type: 'image/png'
og_image_width: 1103
og_image_height: 578
---

<h1>NeurIPS 2021 Workshop <br> Tackling Climate Change with Machine Learning</h1>

<div class='buttons' id='sticky-nav'>
  <a class='button' href='#about'>About</a>
  <a class='button' href='#schedule'>Schedule</a>
  <a class='button' href='#accepted-works'>Accepted Works</a>
  <a class='button' href='#sponsors'>Sponsors</a>
  <!-- <a class='button' href='#informational-webinar'>Informational Webinar</a> -->
  <!-- <a class='button' href='#mentorship-program'>Mentorship Program</a> -->
  <a class='button' href='#organizers'>Organizers</a>
  <a class='button' href='#call-for-submissions'><s>Submit</s></a>
  <a class='button' href='#frequently-asked-questions'>FAQ</a>
</div>

## About

Many in the ML community wish to take action on climate change, but are unsure of the pathways through which they can have the most impact. This workshop highlights work that demonstrates that, while no silver bullet, **ML can be an invaluable tool in reducing greenhouse gas emissions and in helping society adapt to the effects of climate change**. Climate change is a complex problem, for which action takes many forms - from theoretical advances to deployment of new technology. Many of these actions represent high-impact opportunities for real-world change, and are simultaneously interesting academic research problems.

This workshop is part of a series ([ICML 2021](https://www.climatechange.ai/events/icml2021), [NeurIPS 2020](https://www.climatechange.ai/events/neurips2020), [ICLR 2020](https://www.climatechange.ai/events/iclr2020), [NeurIPS 2019](https://www.climatechange.ai/events/neurips2019), and [ICML 2019](https://www.climatechange.ai/events/icml2019)). For this iteration of the workshop, the keynote talks and panel discussions will be particularly focused on ML as an enabling technology for empowering decision-makers in tackling climate change, though submitted works may be on any topic of relevance at the intersection of climate change and machine learning.


### About NeurIPS

This workshop is part of the conference on Neural Information Processing Systems (NeurIPS), one of the premier conferences on machine learning. To attend the workshop, register for the Workshops component of NeurIPS at <https://neurips.cc/Register/view-registration> (registration opens Sep 14). The workshop is open to the public; it is not necessary to submit to the workshop in order to attend.

### About the Workshop

- Date: Dec 14
- Location: Virtual
- <s>Tutorial proposal submission deadline: Aug 23, 23:59 AOE</s>
- <s>Paper/Proposal submission deadline: Sep 18, 23:59 AOE </s>
- Contact: <climatechangeai.neurips2021@gmail.com>

## Schedule

{% include workshop_schedule_table.html workshop="neurips2021" %}

## Accepted Works

Works were submitted to one of three tracks: [Papers](#Papers), [Proposals](#Proposals), or [Tutorials](#Tutorials).

{% assign tracks = "Papers Proposals Tutorials" | split: " " %}
{% for track in tracks %}
<h3 id='{{ track }}'>{{ track }}</h3>

<table class='paper-table'>
  <thead><tr>
  <th>Title</th>
  <th>Authors</th>
  <th>
    Poster Session
   <br><small>(registration required)</small>
  </th>
  </tr></thead>
  <tbody>
  {% for p in site.data.neurips2021_papers %}
  {% if p.q1_track == track %}
  <tr>
  <td>
  <a href="/papers/neurips2021/{{ p.id }}">({{ p.id }}) {{ p.paper_title }}</a>
  {% if p.award %}
  <span class='tag best-paper'>{{ p.award }}</span>
  {% endif %}
  </td>
  <td>{{ p.authors }}</td>
  <td class='poster-session-time'>
    {{ p.poster_sessions | join: ",<br>" }}
    <br>
    <a class='button is-small' target='_blank' href='{{ p.conference_link }}' style='margin-top: 5px; width: 100%'>
    View Poster
    </a>
     </td>
  </tr>
  {% endif %}
  {% endfor %}
  </tbody>
</table>
{% endfor %}

<style type='text/css'>
  .paper-table td:first-child {
    width: 33%;
  }
  .poster-session-time {
    white-space: nowrap;
  }
</style>

<!-- ## Informational Webinar

We recently conducted two informational webinars answering questions about the mentorship program and how to prepare a successful submission for the workshop. The video recording of the Aug 11 webinar can be found [here](https://www.youtube.com/watch?v=jBPG2PCshSM). -->

## Sponsors

![Microsoft logo](/images/microsoft.png)

## Organizers

[Maria João Sousa (IST, ULisboa)](https://www.linkedin.com/in/mariajoaosousa/)<br>
[Hari Prasanna Das (UC Berkeley)](http://hariprasanna.com/)<br>
[Simone Fobi (Columbia University)](https://nsutezo.github.io/)<br>
[Ján Drgoňa (PNNL)](https://drgona.github.io/)<br>
[Tegan Maharaj (Mila, UToronto)](http://www.teganmaharaj.com/)<br>
[Yoshua Bengio (Mila, UdeM)](https://yoshuabengio.org/)<br>

## Mentors

Alberto Costa Nogueira Junior (IBM Research)<br>
Anuroop Sriram (Facebook AI Research)<br>
Aranildo Lima (Aquatics Informatics)<br>
Campbell Watson (IBM Research)<br>
Deval Pandya (Vector Institute )<br>
Fatma Tarlaci (OpenTeams)<br>
Indrasis Chakraborty (Lawrence Livermore National Laboratory)<br>
Kara Lamb (Columbia University)<br>
Malte Hessenius  (Climate & Company)<br>
Mohamed Sidahmed (Shell)<br>
Peter Dolan  (Waymo)<br>
Quentin Paletta (University of Cambridge)<br>
Rajendiran Gopinath (CSIR-Central Scientific Instruments Organisation, India)<br>
Reshmi Ghosh (Carnegie Mellon University)<br>
Sara Khalid (University of Oxford)<br>
Siddha Ganju (Nvidia)<br>
Varvara Vetrova (University of Canterbury)<br>
Vishal Anand (Columbia University, Microsoft)<br>
Ying-Jung Chen Deweese (Georgia Institute of Technology)<br>
Yongli Zhu (Texas A&M University)<br>
Zoltan Nagy (The University of Texas at Austin)<br>

## Program Committee

Alberto Chapchap (GS Cap)<br>
Alexandra Puchko (Western Washington University)<br>
Andrew Ross (New York University)<br>
Aneesh Rangnekar (Rochester Institute of Technology)<br>
Ankur Mahesh (UC Berkeley)<br>
Ankush Chakrabarty (Mitsubishi Electric Research Labs)<br>
Armi Tiihonen (Massachusetts Institute of Technology)<br>
Bertrand Le Saux (European Space Agency (ESA))<br>
Bianca Zadrozny (IBM Research)<br>
Bill Cai (Massachusetts Institute of Technology)<br>
Bingqing Chen (Carnegie Mellon University)<br>
Brian Hutchinson (Western Washington University)<br>
Campbell Watson (IBM Reserch)<br>
Chase Dowling (Pacific Northwest National Laboratory)<br>
Clement Duhart (MIT Media Lab)<br>
Dali Wang (ORNL)<br>
Dan Lu (Oak Ridge National Laboratory)<br>
Daniel Salles Civitarese (IBM Research, Brazil)<br>
Daniela Szwarcman (IBM Research)<br>
Dara Farrell (Graduate of University of Washington)<br>
Dario Augusto Borges Oliveira (Technische Universität München)<br>
David Dao (ETH)<br>
David Rolnick (McGill University, Mila)<br>
Deepjyoti Deka (Los Alamos National Laboratory)<br>
Diego Kiedansk (Telecom ParisTech)<br>
Difan Zhang (PNNL)<br>
Duncan Watson-Parris (University of Oxford)<br>
Fabrizio Falasca (Georgia Institute of Technology)<br>
Felix Laumann (Imperial College London)<br>
Fred Otieno (IBM)<br>
Frederik Gerzer (fortiss)<br>
Gege Wen (Stanford University)<br>
Geneviève Patterson (Climate Change AI)<br>
Hannah Kerner (University of Maryland)<br>
Hao Sheng (Stanford University)<br>
Hari Prasanna Das (UC Berkeley)<br>
Hovig Bayandorian ()<br>
Isabelle Tingzon (Thinking Machines Data Science)<br>
Jan Drgona (Pacific Northwest National Laboratory)<br>
Jeremy Irvin (Stanford)<br>
Jiaxin Zhang (Oak Ridge National Laboratory)<br>
Jonathan Fürst (NEC Laboratories Europe)<br>
Joris Guerin (ENSAM)<br>
Joyjit Chatterjee (University of Hull)<br>
Julian de Hoog (The University of Melbourne)<br>
Julius von Kügelgen (MPI for Intelligent Systems, Tübingen & University of Cambridge)<br>
Kai Jeggle (ETH Zurich)<br>
Kalai Ramea (PARC)<br>
Katarzyna B. Tokarska (ETH Zurich)<br>
Kate Duffy (Northeastern University)<br>
Kidane Degefa (Haramaya University)<br>
Komminist Weldemariam (IBM Research)<br>
Konstantin Klemmer (University of Warwick)<br>
Kureha Yamaguchi (University of Cambridge)<br>
Lauren Kuntz (Gaiascope)<br>
Levente Klein (IBM Research)<br>
Lexie Yang (Oak ridge national laboratoy)<br>
Linda Petrini (Google Brain)<br>
Lucas Kruitwagen (University of Oxford)<br>
Lucas Spangher (U.C. Berkeley)<br>
Maike Sonnewald (Princeton University)<br>
Marcus Voss (TU Berlin)<br>
Maria João Sousa (IDMEC, Instituto Superior Técnico, Universidade de Lisboa)<br>
Markus Leippold (University of Zurich)<br>
Matias Quintana (National University of Singapore)<br>
Meareg Hailemariam (Addis Ababa University)<br>
Michael Howland (Stanford University)<br>
Michael Steininger (University of Würzburg)<br>
Miguel Molina-Solana (Universidad de Granada)<br>
Milan Jain (PNNL)<br>
Niccolo Dalmasso (J.P. Morgan Chase)<br>
Nikola Milojevic-Dupont (Mercator Research Institute on Global Commons and Climate Change (MCC))<br>
Olivia Mendivil Ramos (Cold Spring Harbor Laboratory)<br>
Paulo Orenstein (Stanford)<br>
Paweł Gora (TensorCell)<br>
Peetak Mitra (Palo Alto Research Center)<br>
Priya Donti (Carnegie Mellon University)<br>
Ramakrishna Tipireddy (Pacific Northwest National Laboratory)<br>
Redouane Lguensat (LOCEAN-IPSL)<br>
Robin Dunn (Novartis)<br>
Romana Markovic (KIT - Building Science Group)<br>
Samrat Chatterjee (Pacific Northwest National Laboratory)<br>
Sara El Mekkaoui (EMI Engineering School)<br>
Sasha Luccioni (Mila)<br>
Sayak Mukherjee (Pacific Northwest National Laboratory)<br>
Shruti Kulkarni (Indian Institute of Science (IISc))<br>
Simone Fobi (Columbia University)<br>
Tianle Yuan (NASA)<br>
Tristan Ballard (Sust Global, Stanford University)<br>
Valentina Zantedeschi (INRIA, UCL)<br>
Victoria Preston (MIT)<br>
Vili Hätönen (Emblica)<br>
Yimeng Min (Cornell University)<br>
Yue Hu (Vanderbilt University)<br>

## Call for Submissions

We invite submissions of short papers using machine learning to address problems in climate mitigation, adaptation, or modeling, including but not limited to the following topics:
 - Agriculture
 - Behavioral and social science
 - Buildings and cities
 - Carbon capture and sequestration
 - Climate finance and economics
 - Climate justice
 - Climate modeling
 - Climate policy
 - Disaster prediction, management, and relief
 - Earth science and monitoring
 - Ecosystems and natural systems
 - Forestry and other land use
 - Heavy industry and manufacturing
 - Power and energy systems
 - Societal adaptation
 - Transportation

All machine learning techniques are welcome, from kernel methods to deep learning. Each submission should make clear why the application has (or could have) a pathway to positive impacts regarding climate change. We highly encourage submissions which make their data publicly available. Accepted submissions will be invited to give poster presentations, of which some will be selected for spotlight talks.

The workshop does not publish proceedings, and submissions are non-archival. Submission to this workshop does not preclude future publication. Previously published work may be submitted under certain circumstances (see the [FAQ](#frequently-asked-questions)).

All **papers** and **proposals** submissions must be through the [submission website](https://cmt3.research.microsoft.com/CCAINeurIPS2021). Submissions will be reviewed double-blind; do your best to anonymize your submission, and do not include identifying information for authors in the PDF. Authors are required to use the workshop [style template](http://climatechange.ai/files/TCCML_NeurIPS_2021_Style_File.zip) (based on the NeurIPS style files), available for LaTeX and docx format.

All **tutorials** submissions must be through this [application form](https://forms.gle/wMkXSVnqxamJ5s7g8).

Please see the [Tips for Submissions](#tips-for-submissions) and [FAQ](#frequently-asked-questions), and contact <climatechangeai.neurips2021@gmail.com> with questions.

### Submission Tracks

There are three tracks for submissions: (i) Papers, (ii) Proposals, (iii) Tutorials. Submissions are limited to 4 pages for the Papers track, and 3 pages for the Proposals track, in PDF format (see examples from [ICML 2021](https://www.climatechange.ai/events/icml2021), [NeurIPS 2020](https://www.climatechange.ai/events/neurips2020), [ICLR 2020](https://www.climatechange.ai/events/iclr2020), [NeurIPS 2019](https://www.climatechange.ai/events/neurips2019), and [ICML 2019](https://www.climatechange.ai/events/icml2019)). References do not count towards this total. Supplementary appendices are allowed but will be read at the discretion of the reviewers. All submissions *must* explain why the proposed work has (or could have) positive impacts regarding climate change.

#### PAPERS Track

*Work that is in progress, published, and/or deployed.*

Submissions for the Papers track should describe projects relevant to climate change that involve machine learning. These may include (but are not limited to) academic research; deployed results from startups, industry, public institutions, etc.; and climate-relevant datasets.

Submissions should provide experimental or theoretical validation of the method presented, as well as specifying what gap the method fills. Authors should clearly illustrate a [pathway to climate impact](#addressing-impact), i.e., identify the way in which this work fits into broader efforts to address climate change. Algorithms need not be novel from a machine learning perspective if they are applied in a novel setting. Details of methodology need not be revealed if they are proprietary, though transparency is highly encouraged.

Submissions creating novel datasets are welcomed. Datasets should be designed to permit machine learning research (e.g. formatted with clear benchmarks for evaluation). In this case, baseline experimental results on the dataset are preferred, but not required.

#### PROPOSALS Track

*Early-stage work and detailed descriptions of ideas for future work.*

Submissions for the Proposals track should describe detailed ideas for how machine learning can be used to solve climate-relevant problems. While less constrained than the Papers track, Proposals will be subject to a very high standard of review. Ideas should be justified as extensively as possible, including motivation for why the problem being solved is important in tackling climate change, discussion of why current methods are inadequate, explanation of the proposed method, and discussion of the [pathway to climate impact](#addressing-impact). Preliminary results are optional.

#### TUTORIALS Track

*Interactive notebooks for insightful step-by-step walkthroughs.*

Submissions for the Tutorials track should introduce or demonstrate the use of ML methods and tools such as libraries, packages, services, datasets, or frameworks to address a problem related to climate change. Tutorial proposals (**250 words**, due Aug 23) should take the form of an abstract and should include a clear and concise description of users’ expected learning outcomes from the tutorial. Accepted submissions (to be notified by Aug 30) will be given 6 weeks for the initial tutorial development ("midterm" deadline Oct 11), after which tutorial creators will collaborate with the CCAI Tutorials Team, who will review the tutorials periodically and provide iterative feedback, while the creators continue to develop and improve their work over the course of another 6 weeks. Final tutorial submissions (due Nov 22) should be in the form of executable notebooks (e.g. Jupyter, Colab) in a hosted code environment.


### Tips for Submissions

- **For examples** of typical formatting and content, see submissions from our previous workshops at [ICML 2021](https://www.climatechange.ai/events/icml2021), [NeurIPS 2020](https://www.climatechange.ai/events/neurips2020), [ICLR 2020](https://www.climatechange.ai/events/iclr2020https://www.climatechange.ai/ICLR2020_workshop), [NeurIPS 2019](https://www.climatechange.ai/events/neurips2019), and [ICML 2019](https://www.climatechange.ai/events/icml2019)).
- **Be explicit:** Describe how your proposed approach addresses climate change, demonstrating an understanding of the application area.
- **Frame your work:** The specific problem and/or data proposed should be contextualized in terms of prior work.
- **Address the impact:** Describe the practical implications of your method in addressing the problem you identify, as well as any relevant societal impacts or potential side-effects. We recommend reading our further guidelines on this aspect [here](#addressing-impact).
- **Explain the ML:** Readers may not be familiar with the exact techniques you are using or may desire further detail.
- **Justify the ML:** Describe why the ML method involved is needed, and why it is a good match for the problem.
- **Avoid jargon:** Jargon is sometimes unavoidable but should be minimized. Ideal submissions will be accessible both to an ML audience and to experts in other relevant fields, without the need for field-specific knowledge. Feel free to direct readers to accessible overviews or review articles for background, where it is impossible to include context directly.

### Addressing Impact
Tackling climate change requires translating ideas into action. The guidelines below will help you clearly present the importance of your work to a broad audience, hopefully including relevant decision-makers in industry, government, nonprofits, and other areas.

- **Illustrate the link:** Many types of work, from highly theoretical to deeply applied, can have clear pathways to climate impact. Some links may be direct, such as improving solar forecasting to increase utilization within existing electric grids. Others may take several steps to explain, such as improving computer vision techniques for classifying clouds, which could help climate scientists seeking to understand fundamental climate dynamics.
- **Consider your target audience:** Try to convey with relative specificity why and to whom solving the problem at hand will be useful. If studying extreme weather prediction, consider how you would communicate your key findings to a government disaster response agency. If analyzing a supply chain optimization pilot program, what are the main takeaways for industries who might adopt this technology? To ensure your work will be impactful, where possible we recommend co-developing projects with relevant stakeholders or reaching out to them early in the process for feedback. We encourage you to use this opportunity to do so!
- **Outline key metrics:** Quantitative or qualitative assessments of how well your results (or for proposals, anticipated results) compare to existing methods are encouraged. Try to give a sense of the importance of your problem and your findings. We encourage you to convey why the particular metrics you choose are relevant from a climate change perspective. For instance, if you are evaluating your machine learning model on the basis of accuracy, how does improved accuracy on a machine learning model translate to climate impact, and why is accuracy the best metric to use in this context?
- **Be clear and concise:** The discussion of impact does not need to be lengthy, just clear.
- **Convey the big picture:** Ultimately, the goal of Climate Change AI is to “empower work that meaningfully addresses the climate crisis.” Try to make sure that from the beginning, you contextualize your method and its impacts in terms of this objective.

## Mentorship Program

We are hosting a mentorship program to facilitate exchange between potential workshop submitters and experts working in topic areas relevant to the workshop. The goal of this program is to foster cross-disciplinary collaborations and ultimately increase the quality and potential impact of submitted work.

### Expectations:

Mentors are expected to guide mentees during the CCAI mentorship program as they prepare submissions for this workshop.

Examples of mentor-mentee interactions may include:
- In-depth discussion of relevant related work in the area of the Paper or Proposal, to ensure submissions are well-framed and contextualized in terms of prior work.
- Iterating on the core idea of a Proposal to ensure that the climate change application is well-posed and the ML techniques used are well-suited.
- Giving feedback on the writing or presentation of a Paper or Proposal to bring it to the right level of maturity for submission.

Mentees are expected to initiate contact with their assigned mentor and put in the work and effort necessary to prepare a Paper or Proposal submission by Sep 18.

We suggest that after the mentor-mentee matching is made, a first (physical or digital) meeting should take place within the first week (Aug 19-25) to discuss the Paper or Proposal and set expectations for the mentorship period. Subsequent interactions can take place either through meetings or via email discussions, following the expectations set during the initial meeting, culminating in a final version of a Paper or Proposal submitted via the CMT portal by Sep 18.

Mentors and mentees must abide by the following Code of Conduct: <https://www.climatechange.ai/code_of_conduct>.

### Application

Applications are due by **Aug 16**.
- Application to be a mentee: <https://cmt3.research.microsoft.com/CCAIMNeurIPS2021>
- Application to be a mentor: <https://forms.gle/49Lmr8Uk2iWWBNF99>

## Frequently Asked Questions

### Mentorship Program FAQ

**Q:** Are mentors allowed to be authors on the paper for which they provided mentorship?<br>
**A:** Yes, mentors can be co-authors but not reviewers.

**Q:** What happens if the mentor/mentee does not fulfill their duties, or if major issues come up?<br>
**A:** Please email us at <climatechangeai.neurips2021@gmail.com> and we will do our best to help resolve the situation. Potential breaches of the [Code of Conduct](https://www.climatechange.ai/code_of_conduct) will be responded to promptly as detailed therein.

**Q:** What happens if I apply to be a mentee but do not get paired with a mentor?<br>
**A:** While we will do our best, we cannot guarantee pairings for everyone. Even if you do not get paired with a mentor, we encourage you to submit a Paper or Proposal to the workshop, and our reviewers will provide you with guidance and feedback on how to improve it.

**Q:** What happens if my submission does not get accepted to the workshop?<br>
**A:** While the mentorship program is meant to give early-career researchers and students the opportunity to improve the quality of their work, sometimes submissions will need further polishing and elaboration before being ready for presentation at a CCAI workshop. If this is the case, we invite you to take into account the comments made by the reviewers and to resubmit again to a subsequent CCAI workshop.

**Q:** I cannot guarantee that I can commit at least 4 hours to the program over the time period. Should I still apply as a mentor?<br>
**A:** No. While the 4 hour time commitment is a suggestion, we do believe that it is necessary to ensure that all mentees receive the help and guidance they need.

**Q:** I do not have a background in machine learning; can I still apply to be a mentor/mentee?<br>
**A:** Yes! We welcome applications from domains that are complementary to machine learning to solve the problems that we are targeting.

**Q:** What happens if my mentor/mentee wants to continue meeting after the workshop?<br>
**A:** We welcome and encourage continued interactions after the official mentorship period. That said, neither the mentor nor the mentee should feel obligated to maintain contact.

### Submission FAQ

**Q:** How can I keep up to date on this kind of stuff?<br>
**A:** Sign up for our [mailing list](https://www.climatechange.ai/mailing_list.html)!

**Q:** I’m not in machine learning. Can I still submit?<br>
**A:** Yes, absolutely!  We welcome submissions from many fields. Do bear in mind, however, that the majority of attendees of the workshop will have a machine learning background; therefore, other fields should be introduced sufficiently to provide context for the work.

**Q:** What if my submission is accepted but I can’t attend the workshop?<br>
**A:** You may ask someone else to present your work in your stead.

**Q:** It’s hard for me to fit my submission on 3 or 4 pages.  What should I do?<br>
**A:** Feel free to include appendices with additional material (these should be part of the same PDF file as the main submission).  Do not, however, put essential material in an appendix, as it will be read at the discretion of the reviewers.

**Q:** Can I send submissions directly by email?<br>
**A:** No, please use the CMT website to make submissions.

**Q:** The submission website is asking for my name. Is this a problem for anonymization?<br>
**A:** You should fill out your name and other info when asked on the submission website; CMT will keep your submission anonymous to reviewers.

**Q:** Do submissions for the Proposals track need to have experimental validation?<br>
**A:** No, although some initial experiments or citation of published results would strengthen your submission.

**Q:** The submission website never sent me a confirmation email. Is this a problem?<br>
**A:** No, the CMT system does not send automatic confirmation emails after a submission, though the submission should show up on the CMT page once submitted. If in any doubt regarding the submission process, please contact the organizers. Also please avoid making multiple submissions of the same article to CMT.

**Q:** Can I submit previously published work to this workshop?<br>
**A:** Yes, though under limited circumstances. In particular, work that has previously been published at non-machine learning venues may be eligible for submission; however, work that has been published in conferences on machine learning or related fields is likely not eligible. If your work was previously accepted to a Climate Change AI workshop, this work should have changed or matured substantively to be eligible for resubmission. Please contact <climatechangeai.neurips2021@gmail.com> with any questions.

**Q:** Can I submit work to this workshop if I am also submitting to another NeurIPS 2021 workshop?<br>
**A:** Yes. We cannot, however, guarantee that you will not be expected to present the material at a time that conflicts with the other workshop.

<!-- Code for sticky subnav -->

<style>
:root {
  --sticky-nav-height: 59px;
}

@media screen and (min-width: 651px) {
  #sticky-nav {
    position: -webkit-sticky;
    position: sticky;
    background: white;
    width: 100%;
    z-index: 1;
    padding-top: 10px;
    padding-bottom: 5px;
  }
}

@media screen and (min-width: 1024px) {
  #sticky-nav {
    top: var(--navbar-height-normal);
  }

  h1, h2, h3 {
    scroll-margin-top: calc(var(--navbar-height-normal) + var(--sticky-nav-height));
    scroll-snap-margin-top: calc(var(--navbar-height-normal) + var(--sticky-nav-height));
  }
}

@media screen and (min-width: 651px) and (max-width: 1023px) {
  #sticky-nav {
    top: var(--navbar-height-mobile);
  }

  h1, h2, h3 {
    scroll-margin-top: calc(var(--navbar-height-mobile) + var(--sticky-nav-height));
    scroll-snap-margin-top: calc(var(--navbar-height-mobile) + var(--sticky-nav-height));
  }
}
</style>

<script type='text/javascript'>
  $(document).ready(() => {
    const $stickyNav = $('#sticky-nav');

    document.documentElement.style.setProperty('--sticky-nav-height', `${$stickyNav.outerHeight()}px`);

    $(window).on("resize orientationchange", () => {
      document.documentElement.style.setProperty('--sticky-nav-height', `${$stickyNav.outerHeight()}px`);
    });

    // Fix an issue where the sticky nav covers the <h> element when visiting the
    // anchor link directly from a URL
    if ($(location.hash).length) {
      setTimeout(() => {
        $(location.hash)[0].scrollIntoView();
      }, 1);
    }
  });
</script>
