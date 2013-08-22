# Git split

## What is it?

Lets say you're working on a feature when you realise some of the commits you've made really belong on a separate branch.

For instance:
```
$$> git log --oneline
b19c856 Useful feature work # master
41ea3b9 Refactored checkout code to allow multiple observers
a19524c Added a utility method
```
You could use git-split to extract the refactor into its own branch.
```
$$> git-split features/allow_multiple_checkout_observers 41ea3b9

$$> git log --oneline
b19c856 Useful feature work # master
a19524c Added a utility method

$$> git log --oneline features/allow_multiple_checkout_observers
41ea3b9 Refactored checkout code to allow multiple observers
```

## Status
Alpha.
Works on my machine.
Hasn't caused me to lose data yet.
MIT licence.

## Installation

Put the files in your path.
Have ruby installed (any version should do).
Have git installed (any version should do).


