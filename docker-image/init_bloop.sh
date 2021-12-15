#!/bin/bash
# requires sbt to be installed

curl -fLo coursier https://git.io/coursier-cli &&
	chmod +x coursier &&
	./coursier install bloop --only-prebuilt=true &&
	rm -f coursier;

# import build from sbt to bloop
echo 'addSbtPlugin("ch.epfl.scala" % "sbt-bloop" % "1.4.11")' | tee -a /llsc/sai/dev-clean/project/plugins.sbt /llsc/sai/lms-clean/project/plugins.sbt
cd /llsc/sai/dev-clean
sbt bloopInstall
# to make bloop available, do 
# export PATH="$PATH:/root/.local/share/coursier/bin"
