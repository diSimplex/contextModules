#!/bin/bash

# This bash script gets the ConTeXt-Highlight module
# See: https://bitbucket.org/philexander/context-highlight

projName="context-highlight"
projUrl="https://bitbucket.org/philexander/$projName"
commitId="cf9fd804138171ea0089ecd6acd37cb2247b3409"

tarDir="installed/$projName"
tarFile="$tarDir/$commitId.tgz"

rm -rf $tarFile

wget $projUrl/get/$commitId.tgz --directory-prefix=$tarDir

rm -rf texmf/t-$projName

mkdir -p texmf/t-$projName

tar xvf $tarFile --strip-components=1 --directory=texmf/t-$projName
