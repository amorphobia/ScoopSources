# Scoop Bucket Template

[![Tests](https://github.com/<username>/<bucketname>/actions/workflows/ci.yml/badge.svg)](https://github.com/<username>/<bucketname>/actions/workflows/ci.yml) [![Excavator](https://github.com/<username>/<bucketname>/actions/workflows/excavator.yml/badge.svg)](https://github.com/<username>/<bucketname>/actions/workflows/excavator.yml)

Sources bucket for [Scoop](https://scoop.sh), the Windows command-line installer.

## Prerequisites

### MSVC

[Build Tools for Visual Studio](https://visualstudio.microsoft.com/downloads/?q=build+tools)

## How do I install these manifests?

After manifests have been committed and pushed, run the following:

```pwsh
scoop bucket add sources https://github.com/amorphobia/ScoopSources
scoop install sources/<manifestname>
```

## How do I contribute new manifests?

To make a new manifest contribution, please read the [Contributing
Guide](https://github.com/ScoopInstaller/.github/blob/main/.github/CONTRIBUTING.md)
and [App Manifests](https://github.com/ScoopInstaller/Scoop/wiki/App-Manifests)
wiki page.
