# Blue Cow Moon: Simple

Generate project names that are:

* three words long
* separated by spaces
* contain letters of the alphabet only
* two runs should yield the same result only with a very, very low probability
  * i.e. don't give the same project name every time
  * do something random instead

i.e. of the form:

```bash
([A-Za-z]{3,} ){2}[A-Za-z]{3,}
```

* Your entry MUST contain, at its root, a `run.sh` bash script
* `run.sh` must perform any steps required to build and then run
* `run.sh` must only output the program output to stdout, not e.g. the build output
* Your entry MUST NOT require anything other than Docker to build/run.
  * Test harness execution should not require polluting the host with software installs
  * See https://github.com/ashatch/testy-moon-cow-simple-alpha for an example build/run environment.

## Trophies available

Invent your trophy here:

* Faldo Award (smallest program)
* Boaty Award (funniest output)
* Wolf Award (most profanity)
* f(x) Award (for gratuitous FP)
* Shell Warrior Award (for only using shell)
* Synthwave Award (for oldest language)
* Wet Award (for use of assembly - below C-level)
* Worst Award (for all PERL implementations)
* Wollly Award (for most parallel-threaded)

## Add an entry

* Add git submodules as entrants
* Submodule directories MUST have `entry-` as a prefix.

```bash
cd moon-cow-simple
git submodule add https://github.com/ashatch/testy-moon-cow-simple-alpha entry-ashatch-alpha
```

## Update your entry

This can be done by doing a fetch/pull in your directory. Please only do that in your
own submodules!

## Run all tests

```bash
./test.sh
```

## Run a single test

e.g:

```bash
./test.sh entry-ashatch-alpha
```
