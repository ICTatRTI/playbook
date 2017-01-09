# Data Security Guidelines

## Introduction

Data security is foundational to the reputation and integrity of RTI, CDS, and each project&#39;s Project Director (PD) or Principle Investigator (PI). Please familiarize yourself with these guidelines and incorporate them into your workflow.

The purpose of this document is to provide a starting point for considering data security topics and provide some guidelines to start you in the right direction. Data security can be a complex topic, and it is ultimately the responsibility of the PD or PI to decide on how data will be secured for their project.

## Table of Contents

- [Data Security Guidelines](#data-security-guidelines)
	- [Introduction](#introduction)
	- [Relevant RTI Policies](#relevant-rti-policies)
	- [Understanding the Level of Risk](#understanding-the-level-of-risk)
		- [Human Subjects &amp; RTIs IRB](#human-subjects-amp-rtis-irb)
			- [Study Protocol](#study-protocol)
			- [Privacy Certificate](#privacy-certificate)
		- [Security Questions](#security-questions)
	- [Working with the Data](#working-with-the-data)
		- [Storage](#storage)
	- [CDS Best Practices](#cds-best-practices)
		- [Source code](#source-code)
		- [Passwords](#passwords)
		- [Cloud Technology/Services](#cloud-technologyservices)
		- [Project start-up checklist](#project-start-up-checklist)

## Relevant RTI Policies

[Cloud Policy 14.5: Cloud Based Services](http://staffnet.rti.org/policy/PAP2/document/index.cfm?fuseaction=detail&amp;PID=1987)
 [Sensitive Info Policy 12.5
14.2 Information Security and Classification of Electronic Information ](http://staffnet.rti.org/policy/PAP2/document/index.cfm?fuseaction=detail&amp;PID=1246)

[FIPS Publication 199: Standards for Security Categorization of Federal Information and Information Systems](http://csrc.nist.gov/publications/fips/fips199/FIPS-PUB-199-final.pdf)

## Understanding the Level of Risk

When starting on any project it is important to familiarize yourself with the type of data you&#39;ll be working with and the security considerations it requires.  The project PD should be able to describe the study&#39;s level of risk to you.

Some questions to ask include:
  - Does this data involve human subjects research?
  - Does the data have personal identifiers and/or contact information?
  - How is the data collected, transmitted, and stored?
  - Are there access restrictions?
  - Is the data subject to a distribution license or a data destruction date?

### Human Subjects &amp; RTIs IRB

All CDS staff should take the following human subjects training:
#### CITI training:

[http://staffnet.rti.org/services/orpe/training.cfm](http://staffnet.rti.org/services/orpe/training.cfm) (
*Group 3 only*)

It will probably take 2+ hours, and there are modules where you can break off.  Staff can PDF the certificate of completion when complete.  Certifications are good for five years.

#### Study Protocol

Any project involving human subjects research will have a Study Protocol approved by RTI&#39;s IRB.  You need to review the _Data Security Section_ of that Study Protocol and develop a work plan in accordance with the data security procedures.

#### Privacy Certificate

In addition, if you are working on a Department of Justice (DOJ) project, you need to review the _Privacy Certificate_ associated with the Study.

### Security Questions

If you have questions about anything related to IRB, Security or Quality you can talk to:

 - QC Team
 - Project PI
 - RTI Corporate:
  - Juesta Caddell (pronounced Weesta): Director, Regulatory Affairs (IRB)
  - Martha Wewer: IRB issues
  - Mary Elizabeth Reiss: VP, Compliance (cloud acceptance, etc)

If you see deviations from the approved security plan, always report to the CDS task lead who should then report it to the PI and inform the CDS QC Team.

## Working with the Data

Once you are familiar with the approved security plan, you&#39;re going to want to get to work. You may be asked to work inside a defined environment. Below is a discussion of the more common data storage options, but you&#39;ll need to discuss this with the PD.

### Storage

One of the most important questions for handling data is where and how should it be stored. There is not one answer for every project, so you should always check with the PD first (there may be IRB-provided and/or client-provided restrictions, and this takes precedence in determining storage location).

Possibilities include:
- On an RTI shared drive inside the RTI network
  - This is typically sufficient for data classified with a potential impact of &quot;Low&quot;
- ESN (Enhanced Security Network)
  - Data classified with a potential impact of &quot;Moderate&quot; can be stored here
  - Working in the ESN requires collaborating with ITS
- CDS servers
  - These are servers maintained by CDS staff, with no promise of security
  - The fact that they are inside the RTI network offers some protection
  - Storing any data that is not &quot;Public&quot; on these should first be discussed with the QC team and the project PD.
- On your RTI computer
  - This should only be temporary, not for the life of the project
- Cloud Services (AWS, Digital Ocean)
  - **must** be approved by the project PI and CTAC
- **Remember, never include data** in code repositories or on Slack, Github, or Trello.

Always initiate a conversation about data security and data storage with the Project Director before beginning work on projects that involve human subjects research, and obtain an email acknowledgement from the PD on the proposed plan (and update them if that data storage plan changes during the project).  **Keep the email stream for future reference.**

_Example:_

*PD*:

Please confirm that all data associated with this project is on RTI storage behind an RTI firewall (except for the backup file, which is in my office). Can you also confirm that you have a valid certificate in human subjects protection training (e.g., CITI training). If so, please send me a copy.

*CDS Data Scientist*:

Yes – all data for the project is either on my RTI computer (temporary for the downloading from SAS and uploading to our database process, the SAS web interface does not allow for downloading directly to a RTI server), or on the &quot;Freyja&quot; Center for Data Science server, which is located in RTI&#39;s data center.

*PD*:

Please complete this training: [http://staffnet.rti.org/services/orpe/training.cfm](http://staffnet.rti.org/services/orpe/training.cfm). It is an all online. You should be able to do Group 3, which is more limited in scope. It will probably take 2 hours and there are modules where you can break off. You can bill the project for the time. Once complete you will have the option to print a certificate of completion. Please pdf and send to me when complete. Certifications are good for five years so you will not need to do this often.  To comply with USGOV guidelines, you should not interact with the database until after completing this training.

*CDS Data Scientist*:

I acknowledge that I will complete the training and not interact with the data until completion.  I plan for another member of CDS to also work on this at some point.

Before he or she interacts with the database, I will direct him to complete this training.  Does that sound reasonable?

*PD*:
 Yes, thank you. That sounds reasonable.

## CDS Best Practices

### Source code

Source code should be managed under version control and stored in a project code repository

- **NO DATA** in code repositories, Slack or Trello
- Gitlab – Default internally hosted repository for most projects
  - Github – Open source projects and other projects approved by CTAC only
- Refer to [Best Practices](http://gitlab.rtp.rti.org/cds/playbook/blob/master/best_practices-version_control.md)
- [Version Control TOP](http://gitlab.rtp.rti.org/cds/playbook/blob/master/top-version_control.md)

Data security procedures should be specified in the code repository where you&#39;ll be working so that this information is easy to find and clear to anyone else working on this project later.

### Passwords

Don&#39;t share passwords over Email, Slack, Trello, or any other potentially insecure channel.  Any network traffic can be intercepted and inspected. Sometimes traffic is encrypted to protect against this (e.g. https traffic is encrypted using ssl ) however encryption can be broken and is not a guarantee. It&#39;s best to avoid sharing secrets over the internet when you can avoid it.

CDS Passwords should be stored in http://sif.rtp.rti.org/syspass/

### Cloud Technology/Services

All Cloud technology used for RTI business purposes should be approved by RTI&#39;s Cloud Technology Advisory Committee (CTAC). Before using any cloud service review the plan with the project PI and confirm it is approved for use by the CTAC. To do this:

- Review [Cloud Computing List](https://sharenet.rti.org/adm/ITS/compliance/application_reviews/RTI%20Cloud%20Computing%20List%20DL/RTICloudComputingList.aspx)
- Submit [Cloud Computing Service Request](https://sharenet.rti.org/adm/ITS/compliance/application_reviews/Forms/Cloud%20Computing%20Services%20-%20Request%20Intake%20Form.docx) and submit to [it-security@rti.org](mailto:it-security@rti.org)  if it&#39;s not universally approved
- Plan for the approval process to take at least 30 days

### Project start-up checklist

This may eventually be a separate SOP but for now we&#39;re including it here.

- --Ask PI about data security protocol
  - Review study protocol and specifically, the Data Security section (human subjects research studies only)
  - See Data Security Kickoff Example
- --Review privacy certificate (DOJ studies only)
- --Document your data security agreement with PI
  - In Email, and store electronically with other important project records
- --Set up project code repository
  - NO DATA in code repositories, Slack or Trello

Always initiate a conversation about data security and data storage with the Project Director before beginning work on projects that involve human subjects research, and obtain an email acknowledgement from the PD on the proposed plan (and update them if that data storage plan changes during the project).  **Keep the email stream for future reference.**
