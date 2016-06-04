In this repo, I'm adding various tooling and tests around statistics & machine learning.

[![Build Status](https://travis-ci.org/thbar/machine-learning-playground.svg?branch=master)](https://travis-ci.org/thbar/machine-learning-playground)

## How to install Octave

```
$ brew install octave
```

## How to fix "WARNING: Plotting with an 'unknown' terminal"

```
$ brew uninstall --force gnuplot
$ brew install gnuplot --with-x11
```

Then in octave:

```
$ setenv("GNUTERM","X11")
$ hist(randn(1,10000))           % should show an histogram
```

## Installing MOxUnit for unit testing

```
$ git clone https://github.com/MOxUnit/MOxUnit.git
$ cd MOxUnit
$ make install
$ cat ~/.octaverc
```

## How to install language support for atom

```
$ apm install language-matlab-octave
```

## Useful links

* [Coursera Stanford machine learning course](https://www.coursera.org/learn/machine-learning)
* [MOxUnit travis configuration](https://github.com/MOxUnit/MOxUnit/blob/master/.travis.yml)
