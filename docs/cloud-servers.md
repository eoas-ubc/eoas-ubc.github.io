# Servers and hubs

For deploying dashboards, see the [Dashboard HowTo](dashboards-howto.md) pages.

For using Jupyter hubs see [Jupyter hub tutorials](https://eoas-ubc.github.io/tut-jhubs.html). Ideally, four targets requirements are:

1. Reliable, zero-maintenance scaleable jupyter hubs for codes with "standard" libraries used in corses with large numbers of students - typically 1st and 2nd year introductory courses. (2i2c until UBC can provide stable hubs)
2. Jupyter hub that can have custom environments, scalable to 50+ students. Must be able to rapidly update code and libraries (instant, or at least over night). (eg for EOSC350, ATSC301, EOSC471). (2i2c)
3. Research capable hub - as per #2 but usually expecting larger datasets, more custom environments, one or two users.
4. Server (not Juupyter hub) for delivering dashboards; scaleble for 150+ students. (As of 2023, such a server was provided and managed by Dep't staff.)

Some courses will have learnign goals that sound like "_Become profficient at developing Python and managing corresponding environments, libraries and version control on you own computer._" These may not need managed cloud computing facilities.

Also not needing cloud computing are courses for which instructors use GitHub for managing code or materials (eg Jupyter Books), but who do not require students to run code on cloud-based Jupyter hubs or other types of servers.

OCESE project priorities reliable solutions for target #1 & #4, with #2 desirable for 1 or 2 courses (EOAS350, ATSC301). Target #3 was beyond the scope of OCESE.

## Options

### Run code locally on individual laptops

No hub is needed if students can install Python (or other code) and Jupyter on their notebooks. This makes sense for smaller courses that are computing intensive, and when "gaining self-propelled coding skills" is a course learning goal. The procedures have become more stable since 2020, but some students may need individual support. Also - it helps to provide fixed "code-locked" environment files for students, especially if they are beginners.

### CoLab

**Pros** (google it)

**Cons**

Pertinent quote:  "if you're not paying for the product, you are the product"

* Tied to Google account (notebooks are saved to GDrive).
* No warranties, no service, no support, no security.
* Not a Canadian server (also, the service is governed by US laws).
* No UBC course can *require* students to access accounts on US servers -- it has to be *opt in* and students can decline.  So you have to be ready to supply a backup server for students.
* Similarly we (UBC) can not *require* that a student have a Google account.
* More constraints at https://colab.one/terms-of-use.
* Google kills projects, and we don't want to be left unable to run a course if they kill or curtail their facilities. See https://killedbygoogle.com/.
* Some courses need more speed or RAM or CPU's or persistent storage in the cloud coupled to the code.
* Some courses need custom environments (i.e. libraries).
* Some UBC courses want Julia, R, or other kernels.
* Also, see for example some disadvantages [here](https://www.quora.com/What-are-some-of-the-disadvantages-of-using-Google-Colab))

### Institutional server

As of 2022, UBC has a Jupyter Hub for courses and learning that students can access using their campus wide login (CWL). Instructors guidelines are now good: see https://lthub.ubc.ca/guides/jupyterhub-instructor-guide/.

**Pros**

- On UBC servers and maintained by UBC IT/CTLT staff
- Ideal for larger courses that do not have special needs (see **Cons** below).
- NOTE there were "teething" problems back in 2021 and 2022, but these have been worked out and the systems are now stable, reliable and steadily improving. (For example, they have been experimenting with means of running secure exams that use the Hub.)
- There are a variety of kernals ready to run, including Python, R, Ruby, C++ and others.

**Cons**

- If the course or learning situations (eg student projects) have special needs, such as unique or changing code libraries or large data sets, then a custom Hub is probablyu needed. UBC can set this up, but you need to contact the managers. Details are on the [Instructors' guidelines page](https://lthub.ubc.ca/guides/jupyterhub-instructor-guide/).

### 2i2c

This is a third party hub provider. Our Department (EOAS) employed them to run hubs for EOSC 211 (large class requiring stability and minimal instructor support) and EOSC 350 (requiring special-purpose code libraries). It is not cheap, and UBC's Jupyter Hub can be expected to become sufficient in future years.