#import "@preview/modern-cv:0.7.0": *

#show: resume.with(
  author: (
    firstname: "Karl",
    lastname: "Meakin",
    email: "karlwfmeakin@gmail.com",
    phone: "(+44) 7508191866",
    github: "Kmeakin",
    address: "420 Milton Road, Cambridge, CB4 1ST",
    positions: (
      "Software Engineer",
    ),
  ),
  date: datetime.today().display(),
  language: "en",
  colored-headers: true,
  show-footer: false,
)

= Experience
#resume-entry(
  title: "Software Engineer",
  location: "Cambridge, United Kingdom",
  date: "January 2023 - Present",
  description: "Arm, CE-OSS, Trusted Firmware",
)
#resume-item[
  - Maintenance and feature additions to the Hafnium hypervisor component of the
    Firmware Framework for A-profile processors (FF-A).
]

#resume-entry(
  title: "Graduate Software Engineer",
  location: "Cambridge, United Kingdom",
  date: "May 2022 - December 2022",
  description: "Arm, CE-OSS, Morello",
)
#resume-item[
  - Maintenance and internal improvements to Morello, AArch64's implementation
    of the CHERI memory protection model.
]

#resume-entry(
  title: "Graduate Software Engineer",
  location: "Cambridge, United Kingdom",
  date: "September 2021 - April 2022",
  description: "Arm, CE-OSS, Rust",
)
#resume-item[
  - Contributed AArch64 feature support and performance improvements to the Rust
    and LLVM compilers.
]

= Skills
#resume-skill-item(
  "Programming Languages",
  ("C", "C++", "Rust", "Python", "Shell"),
)
#resume-skill-item(
  "Technologies",
  ("Linux", "Git", "Docker"),
)

= Education
#resume-entry(
  title: "University of Manchester",
  date: "2018 - 2021",
  description: "BSc Computer Science",
)
#resume-item[
  - Graduated with First Class Honours
  - Awarded Undergraduate Scholarship for academic performance in 1st year
]

#resume-entry(
  title: "Kingston Grammar School",
  date: "2016 - 2018",
  description: "A Levels",
)
#resume-item[
  - Mathematics: $A^*$
  - Economics: $A^*$
  - Physics: $A$
]

#resume-entry(
  title: "Kingston Grammar School",
  date: "2014 - 2016",
  description: "GCSE",
)
#resume-item[
  - 9 $A^*$s, 1 $A$
  - Awarded academic scholarship for A levels based on GCSE results
]
