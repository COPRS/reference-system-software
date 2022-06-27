:arrow_heading_up: Go back to the [Reference System Website](https://referencesystem.copernicus.eu/) :arrow_heading_up:

# Reference System Software

## About

### Context

The Reference System (RS) is a key component of the Copernicus Space Component (CSC) Ground Segment: it provides to the community a open source processing and distribution environment software. Integrated with the Sentinel Data Processors, it has the capacity to substitute the nominal CSC Production and Distribution services. 

The Reference System Service works with Kubernetes and can be hosted on multiple Cloud Service like Orange Flexible Engine and OVH Public Cloud.

> :warning: The reference sytem service consists of a **core** part that must be installed first, and optional **add-ons** that can be deployed on top. If you know what you are doing, go to [Get Started](#get-started)

### Modules core / add-ons

![Reference System Schema of all modules](https://raw.githubusercontent.com/COPRS/reference-system-software/moe/.github/assets/images/Reference-System-6.png)

The modules listed bellow are the pillar of the reference system. In order to execute the project, this modules must be deployed :

- **infrastructure** : This repository contains infrastructure Layout components of the Reference System Software
- **production-common** : This repository contains multi-Sentinel common processing components such as Ingestion chain, PRIP I/F, Data life Cycle, Catalog....

There are two nonessential modules for monitoring and for providing a user web client. 
Their deployment is strongly recommended :

- **monitoring** : This repository contains the components that support monitoring functions for Sentinel-1, Sentinel-2 and Sentinel-3 missions. Including metrics, log & trace collection, performance Indicator computing and monitoring GUI.
- **user-web-client (included in production common)** : **This description must be remade** This module installed in production common contains the User web-client component aiming at displaying products on a map

On the RS environment previously deployed, the user can install as well all or some of Sentinel processing chains listed below. These Processing chain use ESA Sentinel processors provided through the ESA Sentinel Data Processor publication Service :

- **processing-sentinel-1** : This repository contains components for sentinel-1 processing chain : production trigger, preparation worker, execution worker and internal interface management with S3 Object Storage.
- **processing-sentinel-2** : This repository contains components for sentinel-2 processing chain : production trigger, preparation worker, execution worker and internal interface management with S3 Object Storage.
- **processing-sentinel-3** : This repository contains components for sentinel-3 processing chain : production trigger, preparation worker, execution worker and internal interface management with S3 Object Storage.

## Get started

Description of how to install and showing a short description of the version in a table

## Contribute to the project

This project has been created in order to facilitate the incorporation of new satellite's processor without having to recreate the infrastructure, the production common, the monitoring and the user web client.

If you're interested in contributing to the reference system project, for exemple to incorporate new processing for satellite, please start by reading the [Contributing guide](/contribute/) !


