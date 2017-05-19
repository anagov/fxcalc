#!/bin/bash

currentDirectory=`pwd`
mkdir -p $currentDirectory/jars
projects="currencyconverter xmlloader application"
target=target
version=0.0.1-SNAPSHOT
ext=jar
project_jars=$currentDirectory"/jars"

for i in $projects
do
	echo $i
	cd $currentDirectory/$i
	mvn clean install
	echo "moving " $currentDirectory/$i/$target/$i-$version.$ext " to" $project_jars
	cp $currentDirectory/$i/$target/$i-$version.$ext $project_jars
done

