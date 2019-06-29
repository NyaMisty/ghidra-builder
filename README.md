Ghidra Builder
==============

This repo contains a dockerfile and CI scripts for compiling Ghidra. It will clone down Ghidra and compile it for you.

## Custom builds

If you have your own modifications you can use the `custom` build job to compile your version.

You just need to set some build variables:
- `GHIDRA_REPO` should be set to your git URI. It defaults to the official repo.
- `GHIDRA_HEAD` or `TAG` should be set to a git reference, it defaults to `master`. You can set it to a branch, tag, commit hash, etc.

