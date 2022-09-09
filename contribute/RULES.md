:arrow_heading_up: Go back to the [Reference System Website](https://referencesystem.copernicus.eu/) :arrow_heading_up:

# Rules

## Link to the Reference System Sotfware repository in your README
You must add a link on your README page to go back to the Reference System Software repository :  
> :arrow_heading_up: Go back to the [Reference System Sotfware repository](https://github.com/COPRS/reference-system-software) :arrow_heading_up:  

Use the code snippet below :
```Markdown
:arrow_heading_up: Go back to the [Reference System Sotfware repository](https://github.com/COPRS/reference-system-software) :arrow_heading_up:

```

## README.md

Every repository shall include the README.md file to describe at least :

- Minimal instructions to deploy/clone/install/use the content of this repository,
- The purpose of this repository.

## Request Secrets

By default the new repositories don't have access to the organization's secrets (no secret configured), meaning it's impossible to use the workflows. It is the responsibility of the repository's maintainer to request access to secrets in order to use the workflows. Access to secrets will unlock several features for a repository :

- Push to the Artifactory registry (docker, helm, npm & java artifacts)
- Pull from the Artifactory registry
- Perform SonarQube analysis (Quality of code and vulnerabilities)
- Perform GitGuardian analysis (Secrets, credentials and keys detection)

To request such access, you shall create a ticket under the [collaborative-environment](https://github.com/COPRS/collaborative-environment) repository.

------

## Branches

In a repository the **main** branch is reserved for the IVV team. 

## Development 

For the development, new branches only shall be created and used by the development team :

- develop
- features
- hotfixes
- etc ...


## Deliveries 
For the deliveries, the development team shall :

1) Commit to a branch named release/X.Y.Z (e.g. release/1.0.1) where :
   1) X = MAJOR version when you make incompatible API changes,
   2) Y = MINOR version when you add functionality in a backwards compatible manner,
   3) Z = PATCH version when you make backwards compatible bug fixes.

![Example of branches](https://user-images.githubusercontent.com/86782407/142891053-29f78ac4-a520-484e-8eeb-e5a87c891f58.png)

2) Create a tag named X.Y.Z-rci (e.g. 1.0.1-rc2).
   1) X = MAJOR version when you make incompatible API changes,
   2) Y = MINOR version when you add functionality in a backwards compatible manner,
   3) Z = PATCH version when you make backwards compatible bug fixes.
   4) rc = stands for **r**elease **c**andidate,
   5) i = release candidate version.

![Example of tags](https://user-images.githubusercontent.com/86782407/142891144-26d32e92-3983-4384-b8de-48af8e8f2733.png)

------

## CHANGELOG.md

Every repository shall include the CHANGELOG.md file where all changes are described. Check the example provided on [reference-system repository](https://github.com/COPRS/reference-system/blob/release/CHANGELOG.md).

![Example of CHANGELOG.md file](https://user-images.githubusercontent.com/86782407/140076390-4e79a26f-7afd-49e9-97a6-0a73a0c6794d.png)

Visit https://keepachangelog.com for more information and best practice.

------

## Releases

The automatic creation of a release is possible when using a tag (in the format described in "Branches,Deliveries"). Visit [reference-system repository](https://github.com/COPRS/reference-system/tree/release#github-automatic-releases-using-tags) for an example to work from. 

The content of the release note will include the commits and the assets will include the source code and the CHANGELOG.md file :

![Example of a release](https://user-images.githubusercontent.com/86782407/143057423-d4a345e3-0a32-443d-8361-648904c55300.png)


------

## Backup

We run backup of every repository regularly, however we advise you to keep a backup of your repositories on your computer or on the media of your choice.

