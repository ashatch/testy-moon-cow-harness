#!/bin/bash

cd "$(dirname "$0")"

run_test () {
    echo "--== [Running entry $1] ==--"
    pushd $1 > /dev/null
    result=`./run.sh`
    if [[ "${result}" =~ ([A-Za-z]{3,} ){2}[A-Za-z]{3,} ]]; then
        echo "${result} <<= pass"
    else
        echo "${result} <<< FAILED!"
    fi
    popd > /dev/null
    echo ''
}

if [ -z "$1" ]; then
    echo "Running all tests..."
    for entry in `find . -type d -name "entry-*"`
    do
        run_test ${entry}
    done
else
    run_test $1
fi
