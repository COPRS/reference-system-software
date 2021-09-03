## Where to find the maven project? 
The maven projet is forked from [this source](https://github.com/mkyong/maven-examples/tree/master/maven-code-coverage)

# Codacy
## Configure Codacy Action 
To cofigure Codacy Action, we need connect to our account on condacy.com and [generate a API Token](https://app.codacy.com/account/access-management).
Then store this API token in a variabe called `CODACY_API_TOKEN` on GitHub, on the repository secret section. 

## Codacy Dashboard
Codacy Dashboard can be found [there](https://app.codacy.com/gh/CSC-PS-S2/TestRepoLino/dashboard)
Qualtiy and security gates are parametrables on the [Quality Settings section](https://app.codacy.com/gh/CSC-PS-S2/TestRepoLino/settings/quality)

## Jacoco code coverage report
In order for Codacy to display the code coverage report in his GUI, the jacoco.xml file must be available at the path: `target/site/jacoco/jacoco.xml`
This path is configurable on the java-maven-ci.yaml file. 
Keep in min that this path is the default path where Jacoco will generate the report file. 
