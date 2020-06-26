#!/bin/bash

cd "$(dirname "$0")"


run_test () {
    echo "--== [Running entry $1] ==--"
    pushd $1 > /dev/null
    result1=`./run.sh`
    result2=`./run.sh`
    if [[ "${result1}" =~ ([A-Za-z]{3,} ){2}[A-Za-z]{3,} ]] && [[ "${result2}" =~ ([A-Za-z]{3,} ){2}[A-Za-z]{3,} ]] && [[ "${result1}" != "${result2}" ]]; then
        echo "${result1} <<= pass"
    else
        echo "${result1} / ${result2} <<< FAILED!"
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
