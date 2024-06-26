<p align="center">
 <img src="/.github/assets/images/banner.jpg" width="800" height="50" />
</p>
<p align="center">This project is funded by the EU and ESA.</p>
<br> <br>


:arrow_heading_up: Go back to the [Reference System Website](https://referencesystem.copernicus.eu/) :arrow_heading_up:

# Reference System Software

## About

 [![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0) [![Contributor Covenant](https://img.shields.io/badge/Contributor%20Covenant-2.0-4baaaa.svg)](CODE_OF_CONDUCT.md) [![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=flat-square)](https://makeapullrequest.com) 

### Context

The Reference System (RS) is a key component of the Copernicus Space Component (CSC) Ground Segment: it provides to the community a open source processing and distribution environment software. Integrated with the Sentinel Data Processors, it has the capacity to substitute the nominal CSC Production and Distribution services. 

The Reference System Service works with Kubernetes and can be hosted on multiple Cloud Service like Orange Flexible Engine and OVH Public Cloud.

> :warning: The reference sytem service consists of a **core** part that must be installed first, and optional **add-ons** that can be deployed on top. If you are already familiar with the reference system software, you might go to [Get Started](#get-started)

### Modules core / add-ons

![Reference System Schema of all modules](/.github/assets/images/rssoftware.png)

The modules listed bellow are the pillar of the reference system. In order to execute the project, this modules must be deployed :

- **infrastructure** : This repository contains infrastructure Layout components of the Reference System Software
- **production-common** : This repository contains multi-Sentinel common processing components such as Ingestion chain, PRIP I/F, Data life Cycle, Catalog....

There are two nonessential modules for monitoring and for providing a user web client. 
Their deployment is strongly recommended :

- **monitoring** : This repository contains the components that support monitoring functions for Sentinel-1, Sentinel-2 and Sentinel-3 missions. Including metrics, log & trace collection, performance Indicator computing and monitoring GUI.
- **user-web-client** : This repository contains the user facing web application of the Copernicus Reference System (COPRS). This web application intends to be used by an end user to query products in the Sentinel-1, Sentinel-2 or Sentinel-3 catalogs and displays them on a map.

On the RS environment previously deployed, the user can install as well all or some of Sentinel processing chains listed below. These Processing chain use ESA Sentinel processors provided through the ESA Sentinel Data Processor publication Service :

- **processing-sentinel-1** : This repository contains components for sentinel-1 processing chain : production trigger, preparation worker, execution worker and internal interface management with S3 Object Storage.
- **processing-sentinel-2** : This repository contains components for sentinel-2 processing chain : production trigger, preparation worker, execution worker and internal interface management with S3 Object Storage.
- **processing-sentinel-3** : This repository contains components for sentinel-3 processing chain : production trigger, preparation worker, execution worker and internal interface management with S3 Object Storage.

If you need more information on RS software internal architecture please refer to the [Reference System Design Document](ARCHITECTURE_DESIGN.md)

## Get started

### Installation
This table is an overview of the documentation and related resources of Reference System.
The table below summarizes the different versions of the system and the available features as well as a link for each of the components that make up the system.
To set up Reference System, choose a version and let yourself be guided by the links that will take you directly to their installation guide.

```
Let's start by installing the mandatory base of our system:
- click on the infrastructure link and follow the readme.md
- click on the production-common link and follow the readme.md
```
*As explained above, usign these mandatory components, you can now install the different processings and functionalities by following their readme on the same model as the base presented above.*

| RS SW version | Description                                                                                                          | Components Releases |
| :----------:  | -------------------------------------------------------------------------------------------------------------------- | -------- |
| **V2.1.1**      | [System Release Note](https://github.com/COPRS/reference-system-software/blob/main/releases/V2.1.1.md)<br>*Scope :<br>\- Deployment of RS infrastructure<br>\- Common Services: Ingestion, Catalog, Compression, Prip...<br>\- L0, L1, L2 products are available for S1, S2 and S3 workflows with SCDF<br>\- Monitoring<br>\- User Web Client* | <br>\- [infrastructure v1.6 (mandatory)](https://github.com/COPRS/infrastructure/tree/main)<br>\- [production-common v1.15.2 (mandatory)](https://github.com/COPRS/production-common/tree/main)<br>\- [processing-sentinel-1 v1.14.0](https://github.com/COPRS/processing-sentinel-1/tree/main)<br>\- [processing-sentinel-2 v1.8.0](https://github.com/COPRS/processing-sentinel-2/tree/main)<br>\- [processing-sentinel-3 v1.14.0](https://github.com/COPRS/processing-sentinel-3/tree/main)<br>\- [monitoring v1.6.0](https://github.com/COPRS/monitoring/tree/main)<br>\- [user-web-client v1.10.1](https://github.com/COPRS/user-web-client/tree/main) |

### Usage

To use the Reference System Software you can follow the [operationnal producedures](https://github.com/COPRS/infrastructure/tree/main/docs/user_manuals). 

## Contribute to the project

This project has been created in order to facilitate the incorporation of new satellite's processor without having to recreate the infrastructure, the production common, the monitoring and the user web client.

If you're interested in contributing to the reference system project, for exemple to incorporate new processing for satellite or reporting a bug, please start by reading the [Contributing guide](/contribute/) !


