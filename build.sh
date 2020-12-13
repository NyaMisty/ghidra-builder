#!/usr/bin/env bash
set -e
set -x

git clone "${GHIDRA_REPO}"
cd ghidra
git remote update
git checkout ${GHIDRA_HEAD}
git log --oneline -n 15
gradle --init-script gradle/support/fetchDependencies.gradle init | grep -v Downloading
gradle buildGhidra
cd ../
curl --header "JOB-TOKEN: $CI_JOB_TOKEN" --upload-file ghidra/build/dist/* "${CI_API_V4_URL}/projects/${CI_PROJECT_ID}/packages/generic/Ghidra/${GHIDRA_VERSION}/Ghidra_${GHIDRA_VERSION}.zip"
