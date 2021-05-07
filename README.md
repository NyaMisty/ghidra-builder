Ghidra Builder
==============

![Ghidra Builder](doc/ghidra_builder.png)

[![CI](https://github.com/NyaMisty/ghidra-builder/workflows/CI/badge.svg)](https://github.com/NyaMisty/ghidra-builder/actions?query=workflow%3ACI+branch%3Amaster)

This repo contains a dockerfile and CI scripts for compiling Ghidra. It will clone down Ghidra and compile it for you.

## Install the nightly build

Use scoop bucket https://github.com/NyaMisty/scoop_bucket_misty

## Downloading the built products

This repo runs daily builds of Ghidra, it'll automatically grab the latest commits from master and package it up.
You can find these builds by clicking the pipeline status badge above above, or opening the latest pipeline.

Once you've got the pipeline open, select your version and platform from the graph and hit the download artifacts
button on the right to download that build.

The Ghidra zip you get will be just for the selected platform, in the future I will bundle the zips together to produce
the combined zip similar to what https://ghidra-sre.org/ hosts.
