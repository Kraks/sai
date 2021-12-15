#!/bin/bash
# requires sbt to be installed
cd ../dev-clean
curl -fLo coursier https://git.io/coursier-cli &&
	chmod +x coursier &&
	./coursier install bloop --only-prebuilt=true &&
	echo 'addSbtPlugin("ch.epfl.scala" % "sbt-bloop" % "1.4.11")' | tee -a project/plugins.sbt ../lms-clean/project/plugins.sbt &&
	sbt bloopInstall
rm coursier
# to make bloop available, do 
# export PATH="$PATH:/root/.local/share/coursier/bin"
