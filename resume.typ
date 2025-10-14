#import "@preview/basic-resume:0.2.9": *

// Put your personal information here, replacing mine
#let name = "Patrick McCormick"
#let location = "Portland, OR"
#let email = "patm.mail@gmail.com"
#let github = "github.com/pmmccorm"
#let linkedin = "https://www.linkedin.com/in/patrick-m-mccormick/"
#let phone = "+1 (503) 351-8195"
#let personal-site = "github.com/pmmccorm/resume"

#show: resume.with(
  author: name,
  // All the lines below are optional.
  // For example, if you want to to hide your phone number:
  // feel free to comment those lines out and they will not show.
  location: location,
  email: email,
  github: github,
  linkedin: linkedin,
  phone: phone,
//  personal-site: personal-site,
  accent-color: "#26428b",
  font: "New Computer Modern",
  paper: "us-letter",
  author-position: left,
  personal-info-position: left,
)

/*
* Lines that start with == are formatted into section headings
* You can use the specific formatting functions if needed
* The following formatting functions are listed below
* #edu(dates: "", degree: "", gpa: "", institution: "", location: "", consistent: false)
* #work(company: "", dates: "", location: "", title: "")
* #project(dates: "", name: "", role: "", url: "")
* certificates(name: "", issuer: "", url: "", date: "")
* #extracurriculars(activity: "", dates: "")
* There are also the following generic functions that don't apply any formatting
* #generic-two-by-two(top-left: "", top-right: "", bottom-left: "", bottom-right: "")
* #generic-one-by-two(left: "", right: "")
*/
== Work Experience

#work(
  title: "Senior Software Engineer",
  location: "Remote, OR",
  company: "DigitalOcean",
  dates: dates-helper(start-date: "Nov 2020", end-date: "Present"),
)
- Respond to and resolve incidents (pagerduty). Maintain security vulnerability reporting and infrastructure by creating a REST API (python fastapi) for correlating CVEs with fleet package versions.
- Define, manage, and automate Ubuntu based Linux distribution for cloud infrastructure. Decrease deployment time from 24 hours to 1 hour across fleet of 25000+ hypervisor machines.
- Redesign and maintain mirrors.digitalocean.com, a geo-distributed and load balanced APT mirror of Ubuntu and Debian package archives enabled on VMs. Maintain 99.99% uptime with cloudflare, haproxy and varnish cache.
- Design and maintain the internal package build process for Debian packaging and deployment (CI/CD with github workflows). Integrate package status metrics across the fleet with Prometheus and build source-controlled dashboards with Grafana and Grafonnet.

#work(
  title: "Software Engineer",
  location: "Hillsboro, OR",
  company: "Intel",
  dates: dates-helper(start-date: "Apr 2011", end-date: "Nov 2020"),
)
- Backport kernel drivers and feature development for Intel Xeon Phi co-processor RDMA software stack, port build system to Yocto. Maintain release notes, user guide, release process.
- Develop functional and performance tests for OpenFabrics (OFED) userspace libraries, orchestrate with Google Test framework and integrate with internal automation system.
- Backport kernel drivers and feature development for Intel Xeon Phi co-processor RDMA software stack, port build system to Yocto. Maintain release notes, user guide, release process.
- Co-design and develop an FPGA “smart” NIC (ARM v8 based SoC). Design and implement kernel-userspace API and library, device memory registration/mapping, userspace fabric utilities. Continuous integration with Jenkins and Gitlab.
- Cloud benchmarking on OCI, Azure, GCP, AWS. Run industry standard benchmarks across VM instances and performance analysis of results. Investigate and explain gen-gen and cross-architectural performance differences.

== Education

#edu(
  institution: "Portlant State University",
  location: "Portland, OR",
  dates: dates-helper(start-date: "Sep 2012", end-date: "July 2017"),
  degree: "Master's of Science, Computer Science",

  // Uncomment the line below if you want edu formatting to be consistent with everything else
  // consistent: true
)
- Cumulative GPA: 4.0\/4.0 | Programming Language specialization track
- Internships: IBM Linux Technology Center (LTC) and Intel


== Projects

#project(
  name: "resume",
  // Role is optional
  role: "Developer",
  // Dates is optional
  //dates: dates-helper(start-date: "Nov 2023", end-date: "Present"),
  // URL is also optional
  url: "https://github.com/pmmccorm/resume",
)
- CI/CD typst resume building and deployment using github actions, docker, typst, and the  github container registry (ghcr.io)

//== Extracurricular Activities

//#extracurriculars(
//  activity: "Capture The Flag Competitions",
//  dates: dates-helper(start-date: "Jan 2021", end-date: "Present"),
//)
//- Founder of Les Amateurs (#link("https://amateurs.team")[amateurs.team]), currently ranked \#4 US, \#33 global on CTFTime (2023: \#4 US, \#42 global)
//- Organized AmateursCTF 2023 and 2024, with 1000+ teams solving at least one challenge and \$2000+ in cash prizes
//  - Scaled infrastructure using GCP, Digital Ocean with Kubernetes and Docker; deployed custom software on fly.io
//- Qualified for DEFCON CTF 32 and CSAW CTF 2023, two of the most prestigious cybersecurity competitions globally

// #extracurriculars(
//   activity: "Science Olympiad Volunteering",
//   dates: "Sep 2023 --- Present"
// )
// - Volunteer and write tests for tournaments, including LA Regionals and SoCal State \@ Caltech

// #certificates(
//   name: "OSCP",
//   issuer: "Offensive Security",
//   // url: "",
//   date: "Oct 2024",
// )

== Skills
- *Programming Languages*: Python, C/C++, Java, Bash, Go, Ruby, Rust, SQL, Make
- *Technologies*: Git, Github Actions, Linux, Docker, Grafana, Prometheus, Jenkins, Buildbot, Concourse CI/CD, yocto, debian and RPM packaging, Chef, Ansible, Nomad, Terraform, Opentofu, FastAPI, REST APIs
- *Experience*: Linux kernel build process and device drivers, cross compilation environments, systems level debugging and programming, parallel and socket programming, deploying and integration of large language models (LLMs), developer tooling
