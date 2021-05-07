Ghidra Builder
==============

![Ghidra Builder](doc/ghidra_builder.png)

[![CI](https://github.com/NyaMisty/ghidra-builder/workflows/CI/badge.svg)](https://github.com/NyaMisty/ghidra-builder/actions?query=workflow%3ACI+branch%3Amaster)

This repo contains Github Actions CI scripts for compiling Ghidra, and it's also the support repo for ghidra-nightly package in NyaMisty's scoop bucket.

## Install the nightly build

For Windows, install ghidra-nightly package in NyaMisty's scoop bucket: https://github.com/NyaMisty/scoop_bucket_misty

## Downloading the built products

This repo runs daily builds of Ghidra, it'll automatically grab the latest commits from master and package it up.
You can find these builds by clicking the pipeline status badge above above, or opening the latest pipeline.
