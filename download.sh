#!/usr/bin/env bash

echo "[+] Creating Downloads"
mkdir -p Downloads

echo "[+] Creating flatRepo"
mkdir -p flatRepo
FLATREPO="`pwd`/flatRepo"

pushd Downloads
echo "[+] Downloading gradle"
if [ ! -e gradle-5.0-bin.zip ]; then
#curl -L 'https://gradle.org/next-steps/?version=5.0&format=bin' > gradle-5.0-bin.zip
curl -OL 'https://services.gradle.org/distributions/gradle-5.0-bin.zip'
fi

echo "[+] Downloading dex2jar"
if [ ! -e dex-tools-2.0.zip ]; then
curl -OL https://github.com/pxb1988/dex2jar/releases/download/2.0/dex-tools-2.0.zip
unzip dex-tools-2.0.zip
cp dex2jar-2.0/lib/dex-*.jar ${FLATREPO}
fi

echo "[+] Downloading DMG utils"
if [ ! -e hfsexplorer-0_21-bin.zip ]; then
curl -OL https://sourceforge.net/projects/catacombae/files/HFSExplorer/0.21/hfsexplorer-0_21-bin.zip
mkdir hfsx
pushd hfsx
unzip ../hfsexplorer-0_21-bin.zip
cd lib
cp csframework.jar hfsx_dmglib.jar hfsx.jar iharder-base64.jar ${FLATREPO}
popd
fi

echo "[+] Downloading yajsw for Ghidra Server"
if [ ! -e yajsw-stable-12.12.zip ]; then
curl -OL https://sourceforge.net/projects/yajsw/files/yajsw/yajsw-stable-12.12/yajsw-stable-12.12.zip
mkdir -p ../ghidra.bin/Ghidra/Features/GhidraServer/
cp yajsw-stable-12.12.zip ../ghidra.bin/Ghidra/Features/GhidraServer/
fi

echo "[+] Downloading cdt"
if [ ! -e cdt-8.6.0.zip ]; then
curl -OL 'http://www.eclipse.org/downloads/download.php?r=1&protocol=https&file=/tools/cdt/releases/8.6/cdt-8.6.0.zip'
curl -o 'cdt-8.6.0.zip.sha512' -L --retry 3 'http://www.eclipse.org/downloads/sums.php?type=sha512&file=/tools/cdt/releases/8.6/cdt-8.6.0.zip'
sha512sum -c 'cdt-8.6.0.zip.sha512'
mkdir -p ../ghidra.bin/GhidraBuild/EclipsePlugins/GhidraDev/buildDependencies/
cp cdt-8.6.0.zip ../ghidra.bin/GhidraBuild/EclipsePlugins/GhidraDev/buildDependencies/
fi

echo "[+] Downloading PyDev"
if [ ! -e 'PyDev 6.3.1.zip' ]; then
curl -L 'https://sourceforge.net/projects/pydev/files/pydev/PyDev%206.3.1/PyDev%206.3.1.zip' > 'PyDev 6.3.1.zip'
cp 'PyDev 6.3.1.zip' ../ghidra.bin/GhidraBuild/EclipsePlugins/GhidraDev/buildDependencies/
fi
popd

pushd flatRepo
echo "[+] Download AXML Parser"
if [ ! -e AXMLPrinter2.jar ]; then
curl -OL https://storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/android4me/AXMLPrinter2.jar
fi
popd
