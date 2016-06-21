In this repo, I'm adding various tooling and tests around statistics & machine learning.

[![Build Status](https://travis-ci.org/thbar/machine-learning-playground.svg?branch=master)](https://travis-ci.org/thbar/machine-learning-playground)

## How to install Octave

```
$ brew install octave
```

Work-around to get a working install of octave 4.0.2:

```
$ brew reinstall octave --build-from-source
$ brew reinstall qrupdate --build-from-source
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

## How to run unit tests automatically on file save

```
$ brew install entr
$ ls *.m | entr ./run_tests.sh 
```

## How to install language support for atom

```
$ apm install language-matlab-octave
```

## Useful links

* [Coursera Stanford machine learning course](https://www.coursera.org/learn/machine-learning)
* [MOxUnit travis configuration](https://github.com/MOxUnit/MOxUnit/blob/master/.travis.yml)

## Common octave commands

```
PS1('>> ');                           % change prompt
a = 3;                                % semicolon supressing output
disp(sprintf('2 decimals: %0.2f', a)) % formatting
format long
format short

A = [1 2; 3 4; 5 6]                   % 3x2 matrix - ";" means new row
v = [1; 2; 3;]
v = 1:0.1:2                           %
v = 1:6
ones(2,3)                             
zeroes(2,3)
eye(3)
rand(3,3)                             % 3x3 rand matrix with uniform distribution
randn(1,3)                            % gaussian distribution
w = -6 + sqrt(10) * randn(1,10000)
hist(w)
hist(w,50)
help(eye)
```
