:arrow_heading_up: Go back to the [Reference System Website](https://referencesystem.copernicus.eu/) :arrow_heading_up:

# Copernicus

## About

The Reference System (RS) is a key component of the Copernicus Space Component (CSC) Ground Segment: it provides to the community a open source processing and distribution environment software. Integrated with the Sentinel Data Processors, it has the capacity to substitute the nominal CSC Production and Distribution services. 

The Reference System Service works with Kubernetes and can be hosted on multiple Cloud Service like Orange Flexible Engine and OVH Public Cloud.


All the module listed bellow are the pillar of the reference system. In order to execute the project, all of the module listed bellow must be deployed :

- **infrastructure** : This repository contains infrastructure Layout components of the Reference System Software
- **monitoring** : This repository contains the components that support monitoring functions for Sentinel-1, Sentinel-2 and Sentinel-3 missions. Including metrics, log & trace collection, performance Indicator computing and monitoring GUI.
- **production-common** : This repository contains multi-Sentinel common processing components such as Ingestion chain, PRIP I/F, Data life Cycle, Catalog....
- **user-web-client** : This repository contains the User web-client component aiming at displaying products on a map

In this environment, processor of satellite can be installed (there are no need to install all of them) :

- **processing-sentinel-1** : This repository contains components for sentinel-1 processing chain : production trigger, preparation worker, execution worker and internal interface management with S3 Object Storage.
- **processing-sentinel-2** : This repository contains components for sentinel-2 processing chain : production trigger, preparation worker, execution worker and internal interface management with S3 Object Storage.
- **processing-sentinel-3** : This repository contains components for sentinel-3 processing chain : production trigger, preparation worker, execution worker and internal interface management with S3 Object Storage.

## How to install 

Description of how to install and showing a short description of the version in a table

## Contribute to the project

If you're interested in contributing to the reference system project, please start by reading the [Contributing guide](/contribute/) !
