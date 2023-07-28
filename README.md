:arrow_heading_up: Go back to the [Reference System Website](https://referencesystem.copernicus.eu/) :arrow_heading_up:

# Trivy Security Scan

### Context

Trivy scans the images built and uploads a report on Github Security tab

### How to use

Here's an example on how to use this github action : 

```yaml
name: GitHub-Action

on:
  push:
  workflow_dispatch:
jobs:
  scan:
    runs-on: ubuntu-latest
    name: Test GitHub Action
    steps:
      - name: Pull image
        run: |
          docker pull tutum/hello-world:latest
      - name: Scan
        
        uses: COPRS/reference-system-software@trivy-security-scan-v1
        with:
          IMAGE_REF: 'tutum/hello-world:latest'
          EXIT_CODE: '1'
          SEVERITY: 'CRITICAL,HIGH'
          ARTIFACT_NAME: 'test'
```

You can customize the inputs IMAGE_REF, EXIT_CODE, SEVERITY, ARTIFACT_NAME to match your needs.

## Contribute to the project

This project has been created in order to facilitate the incorporation of new satellite's processor without having to recreate the infrastructure, the production common, the monitoring and the user web client.

If you're interested in contributing to the reference system project, for exemple to incorporate new processing for satellite or reporting a bug, please start by reading the [Contributing guide](/contribute/) !


