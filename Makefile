all: download

init:
	git submodule update --init --recursive

download: download.sh
	./download.sh

clean:
	rm -rf flatRepo Downloads
