# How to configure automatic release 

## GitHub Automatic Releases using tags

We are using the [GitHub Automatic Releases](https://github.com/marketplace/actions/automatic-releases).

Configure a new workflow [.github/workflows/tagged-release-dev.yml](https://github.com/COPRS/reference-system/blob/release/.github/workflows/tagged-release-dev.yml) :

```yaml
---
name: "tagged-release-dev"

on:
  push:
    tags:
      - "v[0-9]+.[0-9]+.[0-9]+-rc[0-9]+"

jobs:
  gh_tagged_release:
    runs-on: "ubuntu-latest"

    steps:
      - name: "Checkout source code"
        uses: "actions/checkout@v2.3.4"
        with:
          lfs: true
          fetch-depth: 0

      - uses: "marvinpinto/action-automatic-releases@latest"
        with:
          repo_token: "${{ secrets.GITHUB_TOKEN }}"
          prerelease: false
          draft: false
          files: CHANGELOG.md 
```

## CHANGELOG.md

All changes are written in the CHANGELOG.md file. [https://keepachangelog.com](https://keepachangelog.com) for more information.

## Content of this repo

The content is just for the example. Only the CHANGELOG.md and the workflow file are important.
