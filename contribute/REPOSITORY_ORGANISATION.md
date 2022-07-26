:arrow_heading_up: Go back to the [Reference System Website](https://referencesystem.copernicus.eu/) :arrow_heading_up:

# How to organise your GitHub repository
This section describes how to organise your GitHub repository.

Table of content:
- [Git repository tree](#git-repository-tree)
- [README.md](#readmemd-1)
  - [Link to the Reference System Sotfware repository](#link-to-the-reference-system-sotfware-repository)
  - [Pre-requierements](#pre-requierements)
  - [Installation procedure](#installation-procedure)

## Git repository tree
You shall arrange your **git** repository like below.

- .github
- CHANGELOG.md
- LICENCE.md
- README.md
- User Manuals
  - UM1
  - UM2
  - …
- Apps
- Specific folder
- …

### .github
`.github` is a folder to improve [repository managment](https://docs.github.com/en/communities/setting-up-your-project-for-healthy-contributions/creating-a-default-community-health-file) and [developer interactions](https://docs.github.com/en/actions/learn-github-actions/understanding-github-actions).

### CHANGELOG.md
Every repository shall include the `CHANGELOG.md` file where all changes are described. Check the example provided on [reference-system-software repository](https://github.com/COPRS/reference-system-software/blob/release/CHANGELOG.md).

> ![Example of CHANGELOG.md file](/.github/assets/images/changelog.png)

Visit https://keepachangelog.com for more information and best practice.

### LICENCE.md
The `LICENCE.md` file explains the respostory's legal license, such as any legal rights, any copyright restrictions, etc. If you include a detectable license in your repository, people who visit your repository will see it at the top of the repository page.  
See more here : https://docs.github.com/en/communities/setting-up-your-project-for-healthy-contributions/adding-a-license-to-a-repository

### README.md
In our organisation, the `README.md` file is the installation manual and is written by the maintainer of the component. It also contains several part that are described below.

### User Manuals
This **folder** is used to store the user's manuals. They contain more detailled instructions on how to use and configure the component that are not described in the Installation Manual.

### Apps & Specific folders
These **folders** are related to the source code of the component.

## README.md
### Link to the Reference System Sotfware repository
You must add a link on your README page to go back to the Reference System Software repository:  
> :arrow_heading_up: Go back to the [Reference System Sotfware repository](https://github.com/COPRS/reference-system-software) :arrow_heading_up:  

Use the code snippet below:  
```Markdown
:arrow_heading_up: Go back to the [Reference System Sotfware repository](https://github.com/COPRS/reference-system-software) :arrow_heading_up:
```

### Pre-requierements
Describe the pre-requierements: What is needed in order to execute the installation procedure. For e.g. :
- A cloud provider
- Access to the internet
- ssh

### Installation procedure
Describe the steps of how to install the component with the command used and if possible an example of the output result. For e.g. :
#### Create and configure machines:
```shellsession
ansible-playbook cluster.yaml \
    -i inventory/mycluster/hosts.yaml
```

