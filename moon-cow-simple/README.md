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

## Run all tests

```
./test.sh
```

## Run a single test

e.g:

```
./test.sh entry-ashatch-alpha
```
