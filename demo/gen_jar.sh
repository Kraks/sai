#!/bin/bash
cd ../dev-clean
sbt assembly
cp target/scala-2.12/SAI-assembly-0.1.0-SNAPSHOT.jar ../demo/llsc.jar
