--- 
title: "CSDE 502 Winter 2021"
author: "[Phil Hurvitz](https://csde.washington.edu/staff/phil-hurvitz/)"
date: '2021-02-17 15:50'
site: bookdown::bookdown_site
output: bookdown::gitbook
documentclass: book
bibliography: [book.bib, packages.bib]
biblio-style: apalike
link-citations: yes
github-repo: rstudio/bookdown-demo
description: "These are the class notes and assignments for CSDE 502."
---

# Introduction {-}

This is the main workbook for CSDE 502 for Winter 2021. It will contain or link to all lecture notes, code examples, exercises, and assignments. Assignment answer keys will be provided in a separate location accessible only to currently enrolled CSDE 502 students.

The course syllabus is available as a PDF: [csde502_syllabus_2021.pdf](csde502_syllabus_2021.pdf).

## Course logistics {-}
### Class meetings {-}
All class meetings will happen over Zoom. The Zoom link for this course is [https://washington.zoom.us/j/93089524851](https://washington.zoom.us/j/93089524851). Please join the class promptly at the scheduled time (Fridays at 10:30 AM). About halfway through the class session there will be a 10-minute break.

Class meetings will follow the structure:

1. Addressing any outstanding issues from previous sessions or assignments. 
1. A brief lecture to introduce the topics of the day.
1. A hands-on instructional session.
1. Overview/clarification of assignment.

### Canvas {-}
The course has a Canvas site: [CSDE 502 A Wi 21: Population Studies Proseminar](https://canvas.uw.edu/courses/1434040). The site will be used primarily for posting and collecting assignments and returning reviewed assignments.

### Computing {-}
All computing for this course should be done on CSDE Terminal Servers (TS). Those students that already have TS access (e.g., CSDE trainees) should be able to use their existing TS1, TS2, or TS3 accounts, but are encouraged to use TS4 for this course so that we will all be using the same environment. More recent student CSDE computing accounts for the general UW student population will use TS4 (csde-ts4.csde.washington.edu).

Most students have computers capable of running R and handling relatively large data sets. However, using a common computing environment will help us avoid some of the problems associated with running the same code on different machines that have different processors, RAM, graphics cards, R versions, etc. This will aid in troubleshooting any problems that arise.

In order to get access to the CSDE Terminal Servers, see [CSDE Computing Accounts](https://csde.washington.edu/computing/accounts/). All students at UW who pay the [Student Technology Fee](https://uwstf.org/) are elgible to obtain CSDE computing accounts.

For information about the CSDE Terminal Servers, see [Choosing a Terminal  Server](https://csde.washington.edu/computing/resources/#TerminalServerChoosing). For instructions on connecting to a Terminal Server, see [Computing tutorials](https://csde.washington.edu/computing/tutorials/).

In order to make remote connections to TS4, you will need a remote desktop protocol (RDP) client. Windows has a built-in "Remote Desktop" application. The same is available for Macs at the Apple Store. Windows users may also want to use [mRemoteNG](https://mremoteng.org/), which I find to be a bit more full-featured than the built-in Windows application. For example, mRemoteNG can have any window size, whereas the Windows RDP application has fixed size that must be specified at the time of connection. Linux users are likely to have problems establishing stable RDP connections, although [Remmina](https://sourceforge.net/projects/remmina/) might work.

In addition to the RDP client, in order to access any of CSDE's computing resources, it is necessary to install and enable Husky OnNet, the UW virtual private network (VPN) client. Instructions are available at [Download and use Husky OnNet](https://itconnect.uw.edu/connect/uw-networks/about-husky-onnet/use-husky-onnet/)

### Assignments {-}
Each week there will be an assignment made available at 12:00 on the day of class meetings. The assignments are designed to allow students to practice the skills introduced in class sessions. Assignments are due at 09:00 AM on the week following when the assignment was distributed. See the [syllabus](csde502_syllabus_2021.pdf) for additional details.

<h4>Source code for this document</h4>
Each of the pages in this book will have a section at the bottom including the source code for the page.

````
--- 
title: "CSDE 502 Winter 2021"
author: "[Phil Hurvitz](https://csde.washington.edu/staff/phil-hurvitz/)"
date: '`r format(Sys.time(), "%Y-%m-%d %H:%M")`'
site: bookdown::bookdown_site
output: bookdown::gitbook
documentclass: book
bibliography: [book.bib, packages.bib]
biblio-style: apalike
link-citations: yes
github-repo: rstudio/bookdown-demo
description: "These are the class notes and assignments for CSDE 502."
---

# Introduction {-}

This is the main workbook for CSDE 502 for Winter 2021. It will contain or link to all lecture notes, code examples, exercises, and assignments. Assignment answer keys will be provided in a separate location accessible only to currently enrolled CSDE 502 students.

The course syllabus is available as a PDF: [csde502_syllabus_2021.pdf](csde502_syllabus_2021.pdf).

## Course logistics {-}
### Class meetings {-}
All class meetings will happen over Zoom. The Zoom link for this course is [https://washington.zoom.us/j/93089524851](https://washington.zoom.us/j/93089524851). Please join the class promptly at the scheduled time (Fridays at 10:30 AM). About halfway through the class session there will be a 10-minute break.

Class meetings will follow the structure:

1. Addressing any outstanding issues from previous sessions or assignments. 
1. A brief lecture to introduce the topics of the day.
1. A hands-on instructional session.
1. Overview/clarification of assignment.

### Canvas {-}
The course has a Canvas site: [CSDE 502 A Wi 21: Population Studies Proseminar](https://canvas.uw.edu/courses/1434040). The site will be used primarily for posting and collecting assignments and returning reviewed assignments.

### Computing {-}
All computing for this course should be done on CSDE Terminal Servers (TS). Those students that already have TS access (e.g., CSDE trainees) should be able to use their existing TS1, TS2, or TS3 accounts, but are encouraged to use TS4 for this course so that we will all be using the same environment. More recent student CSDE computing accounts for the general UW student population will use TS4 (csde-ts4.csde.washington.edu).

Most students have computers capable of running R and handling relatively large data sets. However, using a common computing environment will help us avoid some of the problems associated with running the same code on different machines that have different processors, RAM, graphics cards, R versions, etc. This will aid in troubleshooting any problems that arise.

In order to get access to the CSDE Terminal Servers, see [CSDE Computing Accounts](https://csde.washington.edu/computing/accounts/). All students at UW who pay the [Student Technology Fee](https://uwstf.org/) are elgible to obtain CSDE computing accounts.

For information about the CSDE Terminal Servers, see [Choosing a Terminal  Server](https://csde.washington.edu/computing/resources/#TerminalServerChoosing). For instructions on connecting to a Terminal Server, see [Computing tutorials](https://csde.washington.edu/computing/tutorials/).

In order to make remote connections to TS4, you will need a remote desktop protocol (RDP) client. Windows has a built-in "Remote Desktop" application. The same is available for Macs at the Apple Store. Windows users may also want to use [mRemoteNG](https://mremoteng.org/), which I find to be a bit more full-featured than the built-in Windows application. For example, mRemoteNG can have any window size, whereas the Windows RDP application has fixed size that must be specified at the time of connection. Linux users are likely to have problems establishing stable RDP connections, although [Remmina](https://sourceforge.net/projects/remmina/) might work.

In addition to the RDP client, in order to access any of CSDE's computing resources, it is necessary to install and enable Husky OnNet, the UW virtual private network (VPN) client. Instructions are available at [Download and use Husky OnNet](https://itconnect.uw.edu/connect/uw-networks/about-husky-onnet/use-husky-onnet/)

### Assignments {-}
Each week there will be an assignment made available at 12:00 on the day of class meetings. The assignments are designed to allow students to practice the skills introduced in class sessions. Assignments are due at 09:00 AM on the week following when the assignment was distributed. See the [syllabus](csde502_syllabus_2021.pdf) for additional details.

<h4>Source code for this document</h4>
Each of the pages in this book will have a section at the bottom including the source code for the page.
```{r, comment='', echo=FALSE}
cat(readLines("index.Rmd"), sep = '\n')
```
````
