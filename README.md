Ghidra Builder
==============

[![CI](https://github.com/TorgoTorgo/ghidra-builder/workflows/CI/badge.svg)](https://github.com/TorgoTorgo/ghidra-builder/actions?query=workflow%3ACI+branch%3Amaster)
[![pipeline status](https://gitlab.com/Torgo/ghidra-builder/badges/master/pipeline.svg)](https://gitlab.com/Torgo/ghidra-builder/pipelines/latest)


This repo contains a dockerfile and CI scripts for compiling Ghidra. It will clone down Ghidra and compile it for you.

## Downloading the built products

This repo runs weekly builds of Ghidra, it'll automatically grab the latest commits from master and package it up.
You can find these builds by clicking the pipeline status badge above above, or opening the latest pipeline.

Once you've got the pipeline open, select your version and platform from the graph and hit the download artifacts
button on the right to download that build.

The Ghidra zip you get will be just for the selected platform, in the future I will bundle the zips together to produce
the combined zip similar to what https://ghidra-sre.org/ hosts.

## Custom builds

If you have your own modifications you can use the `custom` build job to compile your version.

You just need to set some build variables:
- `GHIDRA_REPO` should be set to your git URI. It defaults to the official repo.
- `GHIDRA_HEAD` or `TAG` should be set to a git reference, it defaults to `master`. You can set it to a branch, tag, commit hash, etc.

## Moving to another Gitlab or building a fork of Ghidra

This repo is easily clonable to another Gitlab instance. I've tried to use environment variables wherever possible so you can configure
the CI how you like.

The main change you need to make is setting `GHIDRA_REPO` to the git URI of your fork of Ghidra, if you haven't forked Ghidra, you can
just leave it unset and the CI will default to using the Github repo.

You should also set up scheduled builds. The `dev` CI jobs clone down the latest `GHIDRA_HEAD` from `GHIDRA_REPO` and build that, so this
is an easy way to get nightly/weekly dev builds working.
