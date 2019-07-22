all: build

init:
	git submodule update --init --recursive

download: init
	cd ghidra
	gradle --init-script gradle/support/fetchDependencies.gradle init

build: download
	cd ghidra
	gradle buildGhidra

clean:
	rm -rf flatRepo Downloads
