:arrow_heading_up: Go back to the [Reference System Website](https://referencesystem.copernicus.eu/) :arrow_heading_up:

# Examples
The purpose of this repository is to list examples of CI used. Browse the branches for the differents usecases:  
![branches](https://user-images.githubusercontent.com/86782407/132223702-e7fd5351-c091-4a0f-bce5-4f4871e3a4ab.png)  
Go to https://github.com/COPRS/reference-system/actions to check the GitHub actions.

# Branch meaning


| Name | Purpose | Input | Output (deployed on artifactory) |
|------|:------:|:-----:|:------:|
| java-maven-ci | deploy libraires JAR. We call libraires JAR JARs that are used as dependencies by applications JAR. | maven project | maven project |
| docker-ci | deploy docker image | Dockerfile | docker image |
| java-docker-ci | deploy applications JARS on the artifactory. Application JARs are ment to be packaged as a docker image. | maven project | docker image |
| helm-chart | deploy helm charts | helm project | helm project |



# GitHub
GitHub is the largest and most advanced development platform in the world. Millions of developers and companies build, ship, and maintain their software on GitHub.

## What is a repository
A repository is the most basic element of GitHub. They're easiest to imagine as a project's folder. A repository contains all of the project files (including documentation), and stores each file's revision history. Repositories can have multiple collaborators and can be either public or private. You can discuss and manage your project's work within a repository. Check out the documentation to know how to create a repostory:  
https://docs.github.com/en/github/creating-cloning-and-archiving-repositories/creating-a-repository-on-github

## How to create an issue
Use GitHub Issues to track ideas, feedback, tasks, or bugs for work on GitHub. Have a look at the documentation to create your first issue:  
https://docs.github.com/en/issues/tracking-your-work-with-issues/creating-an-issue  
https://docs.github.com/en/issues/tracking-your-work-with-issues/about-issues  
https://guides.github.com/features/issues/

## How to use Markdown : a simple and easy-to-use markup language
Markdown is a lightweight and easy-to-use syntax for styling all forms of writing on the GitHub platform. GitHub supports Markdown and uses a particular form of Markdown called GitHub Flavored Markdown. You can check this "Getting started" article on GitHub:  
https://docs.github.com/en/github/writing-on-github/getting-started-with-writing-and-formatting-on-github

## Managing labels
You can manage your work on GitHub by creating labels to categorize issues, pull requests, and discussions. You can apply labels in the repository the label was created in. Once a label exists, you can use the label on any issue, pull request, or discussion within that repository. Get a first look at the documentation:  
https://docs.github.com/en/issues/using-labels-and-milestones-to-track-work/managing-labels

We highly suggest you to have a look at the Kubernetes project on GitHub to check how one of the most ever popular project uses labels, and learn how you can also use labels.  
List of labels: https://github.com/kubernetes/kubernetes/labels  
Kanban: https://github.com/kubernetes/kubernetes/projects/10
