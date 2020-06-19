# Blue Cow Moon: Simple

Generate project names that are:

* three words long
* separated by spaces
* contain letters of the alphabet only
* two runs should yield the same result only with a very, very low probability
  * i.e. don't give the same project name every time
  * do something random instead

i.e. of the form:

```
([A-Za-z]{3,} ){2}[A-Za-z]{3,}
```

* Your entry MUST contain, at its root, a `run.sh` bash script
* `run.sh` must perform any steps required to build and then run
* `run.sh` must only output the program output to stdout, not e.g. the build output

## Run all tests

```
./test.sh
```

## Run a single test

e.g:

```
./test.sh entry-ashatch-alpha
```
