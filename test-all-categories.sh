#!/bin/bash

cd "$(dirname "$0")"

run_category_test () {
   echo "Running category tests for $1"
   pushd $1 > /dev/null
   pwd
   bash ./test.sh 2> /dev/null
   popd > /dev/null
}

echo "Pulling latest submodules"

git submodule update --init --recursive

for categorydir in `find . -type d -name "moon-cow-*" -not -path '*/\.git/*'`
do
    run_category_test ${categorydir}
done
