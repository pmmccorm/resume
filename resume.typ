#import "@preview/basic-resume:0.2.9": *

#let name = "Patrick McCormick"
#let location = "Portland, OR"
#let email = "patm.mail@gmail.com"
#let phone = "+1 (503) 351-8195"

#show: resume.with(
  author: name,
  // All the lines below are optional.
  // For example, if you want to hide your phone number:
  // feel free to comment those lines out and they will not show.
  location: location,
  email: email,
  phone: phone,
  accent-color: "#26428b",
  font: "Libertinus Serif",
  font-size: 9.8pt,
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
== Summary

Infrastructure engineer with 15 years leading new product introductions of server architectures at scale. Technical lead for arm64 and diskless bare-metal hypervisor introductions across a 25000+ machine fleet, spanning hardware bring-up, OS and package delivery, provisioning, and cross-team architecture review across on-premise and multi-cloud (AWS, Azure, GCP, OCI) infrastructure.

== Work Experience

#work(
  title: "Senior Software Engineer II",
  location: "Remote, OR",
  company: "DigitalOcean",
  dates: dates-helper(start-date: "Jan 2024", end-date: "Present"),
)
- Technical lead for the introduction of arm64 (aarch64) server architecture into the production hypervisor fleet: port and rebuild the package archive for arm64, design and implement bare metal machine provisioning, and prepare and maintain the internal infrastructure OS. Coordinate hardware bring-up and validation across platform, kernel, and datacenter teams.
- Technical lead for diskless hypervisor product. Architect network-booted bare metal servers using iPXE and NVMe/TCP attached remote storage as root disks. Own the product from RFC and architecture specification through proof-of-concept to production, coordinating design, review, and validation across many teams.
- Redesign and maintain mirrors.digitalocean.com (50+ million requests/day), a geo-distributed and load balanced APT mirror of Ubuntu and Debian package archives enabled on VMs (Terraform deployed), chef and ansible management). Maintain 99.99% uptime with Cloudflare, HAProxy and Varnish cache.

#work(
  title: "Senior Software Engineer",
  location: "Remote, OR",
  company: "DigitalOcean",
  dates: dates-helper(start-date: "Nov 2020", end-date: "Jan 2024"),
)
- Respond to and resolve incidents (PagerDuty). Maintain security vulnerability reporting and infrastructure by creating a REST API (Python FastAPI) for correlating CVEs with fleet package versions.
- Define, manage, and automate Ubuntu based Linux distribution for cloud infrastructure (debootstrap-based "golden" image pipeline service). Decrease deployment time from 24 hours to 1 hour across fleet of 25000+ hypervisor machines.
- Design and maintain the internal package build process for Debian packaging and deployment (CI/CD with GitHub workflows). Integrate package status metrics across the fleet with Prometheus and build source-controlled dashboards with Grafana and Grafonnet.

#work(
  title: "Software Engineer",
  location: "Hillsboro, OR",
  company: "Intel",
  dates: dates-helper(start-date: "Apr 2011", end-date: "Nov 2020"),
)
- New product introduction of an FPGA “smart” NIC (ARM v8 based SoC). Co-design hardware and software interfaces, implement kernel-userspace API and library, device memory registration/mapping, and userspace fabric utilities. Continuous integration with Jenkins and GitLab.
- Bring up and maintain the RDMA/OpenFabrics (OFED) HPC fabric software stack for Intel Xeon Phi co-processors. Backport kernel drivers, develop features and automated functional and performance test suites, port build system to Yocto, and own release notes, user guide, and release process.
- Multi-cloud performance benchmarking across OCI, Azure, GCP, and AWS. Run industry standard benchmarks across VM instances, analyze results, and investigate and explain generational and cross-architectural performance differences.

== Education

#edu(
  institution: "Portland State University",
  location: "Portland, OR",
  dates: dates-helper(start-date: "Sep 2012", end-date: "July 2017"),
  degree: "Master of Science, Computer Science",

  // Uncomment the line below if you want edu formatting to be consistent with everything else
  // consistent: true
)

#edu(
  institution: "Portland State University",
  location: "Portland, OR",
  dates: "2009",
  degree: "Bachelor of Science, Computer Science",
)


== Skills
- *Infrastructure and Systems*: Bare metal provisioning (PXE/iPXE), arm64/aarch64 enablement, NVMe/TCP storage, RDMA/OpenFabrics, hybrid and multi-cloud (AWS, Azure, GCP, OCI), distributed systems, Linux kernel and device drivers, cross compilation, systems level debugging, large language model (LLM) deployment
- *Platform and Automation*: Terraform, OpenTofu, Nomad, Chef, Ansible, Docker, Yocto, Debian and RPM packaging, Git, GitHub Actions, Jenkins, Buildbot, Concourse CI/CD
- *Observability and Services*: Prometheus, Grafana and Grafonnet, HAProxy, Varnish, Cloudflare, FastAPI, REST APIs
- *Programming Languages*: Python, C/C++, Go, Rust, Bash, SQL
