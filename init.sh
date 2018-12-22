#!/bin/bash

set -ev

QT_ROOT=$HOME
QT_VERSION=5.12.0

rm -rf ./${QT_VERSION}
rm -rf ./Licenses


rsync -avz $QT_ROOT/Qt/${QT_VERSION}/clang_64 ./${QT_VERSION}/
rsync -avz $QT_ROOT/Qt/Licenses .


rm -rf ./${QT_VERSION}/clang_64/{doc,phrasebooks}
rm -rf ./${QT_VERSION}/clang_64/lib/{cmake,pkgconfig,libQt5Bootstrap.a}


for v in *.jsc *.log *.pro *.pro.user *.qmake.stash *.qmlc .DS_Store *_debug* *.dSYM *.la *.prl; do
	find . -name ${v} -exec rm -rf {} \;
done

mkdir -p ./${QT_VERSION}/clang_64/_bin
for v in macdeployqt moc qmake qmlimportscanner qt.conf rcc uic; do
	mv ./${QT_VERSION}/clang_64/bin/${v} ./${QT_VERSION}/clang_64/_bin/
done
rm -rf ./${QT_VERSION}/clang_64/bin && mv ./${QT_VERSION}/clang_64/_bin ./${QT_VERSION}/clang_64/bin

find ./${QT_VERSION}/clang_64/bin -type f ! -name "qt.conf" -exec strip -x {} \;





mv $QT_ROOT/Qt $QT_ROOT/Qt_orig

go run ./patch.go

gzip -n ./${QT_VERSION}/clang_64/lib/QtWebEngineCore.framework/Versions/Current/QtWebEngineCore

du -sh ./5*

#$(go env GOPATH)/bin/qtsetup
