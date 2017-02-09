#!/bin/bash

rm -rf $(find . -name '*pom*.xml');
gradle install;
for p in $(find . -name poms); do
    cd "$p"; mv pom-default.xml ../../pom.xml;
    cd -;
done
