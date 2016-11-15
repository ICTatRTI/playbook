# Center for Data Science Technical Operating Procedures for Version Control

## I. Overview

The Center for Data Science uses version control to share and maintain software developed in-house. To use version control both effectively and securely, standards on what to put in version control, where to use version control, and best version control practices are needed.

Key take-aways from this document are:

1. Staff **SHOULD** put all code developed for use by others in version control.
2. Staff **MUST NOT** put shared secrets (passwords, API keys, and the like) in version control.
3. Staff **SHOULD NOT** put data in version control.

## II. Definitions

The key words "MUST", "MUST NOT", "REQUIRED", "SHALL", "SHALL NOT", "SHOULD", "SHOULD NOT", "RECOMMENDED",  "MAY", and "OPTIONAL" in this document are to be interpreted as described in [RFC 2119](https://www.ietf.org/rfc/rfc2119.txt).

1. **CDS**: Center for Data Science.
2. **Source code** or **code**: Any instructions written in a computer language meant for running in that language.
3. **Project code**: Source code written to distribute to others or to produce results for others, whether for an official project or not.
4. **Scratch code**: Source code written to produce results or automate tasks for yourself with no intent to distribute.
5. **Open-source code**: Source code released with an [open-source license](https://opensource.org/licenses). This code is available for re-use by the public or incorporation into other projects.
6. **Code repository**: A system that allows for the central storage of version controlled source code.
7. **Commit**: An individual set of changes to source code packaged and delivered together. To commit is the act of making a commit.
8. **Trunk**, **branch**, and **merge**: Changes to source code are best visualized not as a set of sequential changes, but as a tree trunk with many branches growing off of it, where branches are independent, parallel sets of commits. This metaphor breaks as the branches often are merged back into the main "trunk" of the code. (The trunk is also known as the _master_ branch.) A branch is a grouped set of commits made outside the main trunk. To branch is the act of creating a branch. To merge is to take a branch and apply the commits within it to the trunk or to another branch.
9. **Merge conflict** or **conflict**: When two developers edit the same section of code in different branches and then attempt to merge those branches, there is a _merge conflict_ that must be resolved before merging those branches.
10. **Refactoring**: The act of changing the code without changing its functionality. Often done for clarity or building toward later changes in functionality.

## III. Procedures

### What to version control

All project code **MUST** be in version control.

Scratch code **MAY** be in version control. This is up to individual choice.

Not all code is easily classified into one of these two categories. As an example, a staff member may have some Jupyter notebooks that contain exploratory programming for a dataset. This dataset may be used in a future project. Does this belong in version control? This is a subjective decision, but we advise yes if sharing the notebooks with anyone else, or if the possible future project becomes an actual project.

#### Data files

Data files **SHOULD NOT** be in version control. Even in the case of projects that use open data, it is recommended that the project authors provide instructions, either manual or automated, for getting the data instead of including it with the source code.

### Code repositories

For all CDS projects, we use the Git version control system for managing project code. With Git, the user may choose a code repository to store a central version of the software project. CDS uses a system called GitLab that is internally hosted for project code. This system is found at http://gitlab.rtp.rti.org. This is the only currently approved general code repository for our projects. Permission from RTI's CTAC is **REQUIRED** to use any other code repository for a project.

Project code should be hosted under a _group_ on GitLab. The default group is the Center for Data Science group found at http://gitlab.rtp.rti.org/cds/, but individual projects may have their own group.

Scratch code should be hosted under your own account on GitLab.

Approved open-source code should be hosted on GitHub under the RTI International group found at https://github.com/RTIInternational/.

### How to effectively use version control

When using version control, it is up to the user to determine when to make a branch or a commit. Following a set of guidelines can help make your code easier to understand and prevent conflicts when working on projects with multiple people.

#### Small, frequent branches

A new branch should be used when starting any new feature or bug fix. The branch should be named after the feature or bug fix; the exact naming mechanism is up to the individual project.

If a feature is large -- it will take more than 8 hours of developer time to complete -- it should be broken up into multiple features. It is tempting to work on a feature until there are no more improvements to make to it. However, this can result in long-term branches, which will result in many merge conflicts.

When a feature or bug fix is complete, a merge request should be made in order to get the branch merged back into master.

One difficult issue that may occur when making branches so frequently is that new work may rely on a branch that is not yet merged. In that case, make a new branch based off of the unmerged branch.

This advice makes sense for multi-developer applications. For applications where there is a sole developer, or for code repositories that are not applications, such as Jupyter notebooks, branches may not always make sense.

#### Small, frequent commits

Make a commit for each change to the code. Commit-worthy changes include:

* Adding a new dependency or removing a dependency
* Refactoring a class or function
* Adding a new public function
* Reformatting a file
* Changing the database schema

When working in a well-tested project, knowing when to commit can be easy: commit every time a new test is written and the changes needed to pass the test are implemented. In this case, you only commit working, tested code. When working in a project where automated testing is not as prevalent, finding the right place to commit can be harder. Code that is committed should, in general, have no outstanding known bugs; commit the smallest reasonable changes that do not introduce bugs.

Each commit should have [a well-written commit message](http://chris.beams.io/posts/git-commit/).

Breaking up commits in this fashion makes it easier to find later where changes were made and where bugs were introduced.

## IV. Further resources

* If you are new to Git and want some hands-on practice, try [Git Immersion](http://gitimmersion.com/).
* If you have used Git for some time and want a deeper understanding, try ["Git from the Bottom Up"]( https://jwiegley.github.io/git-from-the-bottom-up/).
* If you need a reference guide for Git, try [the official website](https://git-scm.com/).