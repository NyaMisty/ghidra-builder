all: flatRepo

dirs:
	mkdir -p flatRepo
	mkdir -p Downloads

flatRepo: dirs flatRepo/dex-tools-2.0.jar

Downloads/dex-tools-2.0.zip:
	curl -OL https://github.com/pxb1988/dex2jar/releases/download/2.0/dex-tools-2.0.zip

flatRepo/dex-tools-2.0.jar: Downloads/dex-tools-2.0.zip
	pushd Downloads	
	unzip dex-tools-2.0.zip
	cp dex2jar-2.0/lib/dex-*.jar ../flatRepo
	popd

clean:
	rm -rf flatRepo Downloads
