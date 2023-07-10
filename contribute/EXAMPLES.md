:arrow_heading_up: Go back to the [Reference System Website](https://referencesystem.copernicus.eu/) :arrow_heading_up:

# Examples

The purpose of this repository is to list examples of CI used. Browse the branches for the differents usecases:  
![branches](https://user-images.githubusercontent.com/86782407/132223702-e7fd5351-c091-4a0f-bce5-4f4871e3a4ab.png)  
Go to <https://github.com/COPRS/reference-system/actions> to check the GitHub actions.

# Branch meaning

## Main workflows

| Name | Purpose | Input | Output (deployed on artifactory) |
|------|------|:-----:|:------:|
| [java-maven-ci](https://github.com/COPRS/reference-system-software/tree/java-maven-ci) | Deploy libraires JAR. We call libraires JAR JARs that are used as dependencies by applications JAR. | Maven project | JAVA (.jar & .pom) |
| [docker-ci](https://github.com/COPRS/reference-system-software/tree/docker-ci) | Deploy docker image | Dockerfile | Docker image |
| [java-docker-ci](https://github.com/COPRS/reference-system-software/tree/java-docker-ci) | Package JARs Into a docker image | Maven project | Docker image |
| [helm-chart](https://github.com/COPRS/reference-system-software/tree/helm-chart) | Deploy helm charts | Helm project | Helm (.tgz) |
| [python-pip-ci](https://github.com/COPRS/reference-system-software/tree/python-pip-ci) | Deploy python packages on the artifactory | Python project | Pypi (.tar.gz & .whl) |

## Miscellaneous

### Dependencies

The goal of the [dependencies](https://github.com/COPRS/reference-system-software/tree/dependencies) branch is to provide dependecies for the building process. Three packages are built with three tags for three different purposes :

| Package Name | Purpose | Input | Output |
|------|------|:-----:|:------:|
| [dependencies_wkhtmltopdf](https://ghcr.io/coprs/reference-system:dependencies_wkhtmltopdf) | Convert HTML to PDF (for security report) | HTML | PDF |
| [dependencies_pandoc_latex](https://ghcr.io/coprs/reference-system-software:dependencies_pandoc_latex) | Convert Markdown to PDF (for documentation export) | Markdown | PDF |
| [dependencies_pandoc](https://ghcr.io/coprs/reference-system:dependencies_pandoc) | Convert DOCX to Markdown (for documentation import| DOCX | Markdown |

### Security scan

The branch [`trivy-security-scan-v1`](https://github.com/COPRS/reference-system-software/tree/trivy-security-scan-v1) contains a custom action based on trivy to scan Docker images, upload *sarif* report in GitHub Security and generate vulnerabilities reports in various formats (CSV, HTLM, JSON, PDF). An example is provided in the said branch.

# GitHub

GitHub is the largest and most advanced development platform in the world. Millions of developers and companies build, ship, and maintain their software on GitHub.

## What is a repository

A repository is the most basic element of GitHub. They're easiest to imagine as a project's folder. A repository contains all of the project files (including documentation), and stores each file's revision history. Repositories can have multiple collaborators and can be either public or private. You can discuss and manage your project's work within a repository. Check out the documentation to know how to create a repostory:  
<https://docs.github.com/en/github/creating-cloning-and-archiving-repositories/creating-a-repository-on-github>

## How to create an issue

Use GitHub Issues to track ideas, feedback, tasks, or bugs for work on GitHub. Have a look at the documentation to create your first issue:  
<https://docs.github.com/en/issues/tracking-your-work-with-issues/creating-an-issue>  
<https://docs.github.com/en/issues/tracking-your-work-with-issues/about-issues>  
<https://guides.github.com/features/issues/>

## How to use Markdown : a simple and easy-to-use markup language

Markdown is a lightweight and easy-to-use syntax for styling all forms of writing on the GitHub platform. GitHub supports Markdown and uses a particular form of Markdown called GitHub Flavored Markdown. You can check this "Getting started" article on GitHub:  
<https://docs.github.com/en/github/writing-on-github/getting-started-with-writing-and-formatting-on-github>

## Managing labels

You can manage your work on GitHub by creating labels to categorize issues, pull requests, and discussions. You can apply labels in the repository the label was created in. Once a label exists, you can use the label on any issue, pull request, or discussion within that repository. Get a first look at the documentation:  
<https://docs.github.com/en/issues/using-labels-and-milestones-to-track-work/managing-labels>

We highly suggest you to have a look at the Kubernetes project on GitHub to check how one of the most ever popular project uses labels, and learn how you can also use labels.  

List of labels: https://github.com/kubernetes/kubernetes/labels  
Kanban: https://github.com/kubernetes/kubernetes/projects/10
