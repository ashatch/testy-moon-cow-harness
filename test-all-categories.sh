#!/bin/bash

cd "$(dirname "$0")"

run_category_test () {
   echo "Running category tests for $1"
   pushd $1 > /dev/null
   pwd
   bash ./test.sh
   popd > /dev/null
}

for categorydir in `find . -type d -name "moon-cow-*" -not -path '*/\.git/*'`
do
    run_category_test ${categorydir}
done
