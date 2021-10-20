# Getting started using the GitHub CI 

## Create a repo 

Create a repo following [this tutorial](https://docs.github.com/en/get-started/quickstart/create-a-repo)

## Push your java maven project

Push your project on the repo. The project should look like [this one](https://github.com/mkyong/maven-examples/tree/master/maven-code-coverage)

## Enable the Gitub Action 

On the root of the repo, create a folder called `.github`. 
Inside this folder, create another folder called `workflows`

Inside the `workflows` folder, paste [this GitHub Action configuration](.github/workflows/java-maven-ci.yaml)
Then push your modifications


To understand the configuration file, you can refer to the [official documentation](https://github.com/features/actions)

## Check the state of the CI on the Action tab  

Click on the [Action tab](https://github.com/COPRS/reference-system/actions/workflows/java-maven-ci.yml) on the GitHub repository. 

The output should look like this:

Click on the first CI run. And then on Package. Github will propose you to download a file. 

That's the Jar that has been created.  
![retrive-jar](.github/images/retrieve_jar.png)

## Technical Points

Technicals explantations can be found on [this file](technical_points.md)

## Requiered secrets

Sensitive informations informations needed by the CI are store as [secrets](https://docs.github.com/en/actions/security-guides/encrypted-secrets)

Here is the list of secret needed for the CI to work:

| Name         | Description           |
| ------------- |:-------------:|
| ARTIFACTORY_USER | Username of the artifactory technical account |
| ARTIFACTORY_PASSWORD | Password of the artifactory technical account |
| SONARQUBE_HOST | url (or ip) of the sonarqube host  |
| SONARQUBE_TOKEN | token generated in the SonarQube GUI |
| GITGUARDIAN_API_KEY | API Key generated in the GitGuardian GUI |