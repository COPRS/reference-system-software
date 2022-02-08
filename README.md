:arrow_heading_up: Go back to the [Reference System Website](https://referencesystem.copernicus.eu/) :arrow_heading_up:

# Copernicus

## Reference System

### Context

The Reference System (RS) is a key component of the Copernicus Space Component (CSC) Ground Segment: it provides to the community a complete and open source processing and distribution environment software. Integrated with the Sentinel Data Processors, it has the capacity to substitute the nominal CSC Production and Distribution services. 

The Reference System Service is hosted on a secure Public Commercial Cloud and provides 3 operational functions:

- environment to assure the test, integration, validation, benchmarking of Sentinel Data Processors (new processor versions, new user level data, new Sentinel units);
- sampled systematic Production and Distribution Service;
- ad-hoc Production and Distribution Service.

This software is the exact complement of the ESA-driven Sentinel Data Processors. It provides all the components to integrate them in processing chains and to distribute the output products.

### Technical characteristics

The solution key points are as follows:
- A micro-service architecture has proven its benefits in the past years, especially on operational systems delivering services with public access through Internet, including Commercial Public Cloud;
- It is a robust architecture relying on independent, self-deployable software components bricks.

![RS---context-schema-github](https://user-images.githubusercontent.com/86782407/152809255-73a88a05-b4c8-489c-9d5f-44b5cffef537.jpg)

### Summary of repositories' components
- [infrastructure](https://github.com/COPRS/infrastructure) : This repository contains infrastructure Layout components of the Reference System Software
- [monitoring](https://github.com/COPRS/monitoring) : This repository contains the components that support monitoring functions for Sentinel-1, Sentinel-2 and Sentinel-3 missions. Including metrics, log & trace collection, performance Indicator computing and monitoring GUI.
- [production-common](https://github.com/COPRS/production-common) : This repository contains multi-Sentinel common processing components such as Ingestion chain, PRIP I/F, Data life Cycle, Catalog....
- [user-web-client](https://github.com/COPRS/user-web-client) : This repository contains the User web-client component aiming at displaying products on a map
- [processing-sentinel-1](https://github.com/COPRS/processing-sentinel-1) : This repository contains components for sentinel-1 processing chain : production trigger, preparation worker, execution worker and internal interface management with S3 Object Storage.
- [processing-sentinel-2](https://github.com/COPRS/processing-sentinel-2) : This repository contains components for sentinel-2 processing chain : production trigger, preparation worker, execution worker and internal interface management with S3 Object Storage.
- [processing-sentinel-3](https://github.com/COPRS/processing-sentinel-3) : This repository contains components for sentinel-3 processing chain : production trigger, preparation worker, execution worker and internal interface management with S3 Object Storage.

## Contribute to the project

If you're interested in contributing to the reference system project, please start by reading the [Contributing guide](https://github.com/COPRS/reference-system/tree/main/contribute) !
