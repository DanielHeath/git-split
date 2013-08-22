
puts <<-USAGE
Git Split is a utility which splits a series of
commits into new feature branches.

Example:

$$> git status
# On branch master
# Your branch is ahead of 'origin/master' by 3 commits.
#
nothing to commit, working directory clean

$$> git log --oneline
b19c856 Baz # master
a19524c Bar
41ea3b9 Foo
5c928ea Initial import # origin/master

$$> git-split feature_branch_for_foo 41ea3b9 b19c856
Applied 41ea3b9, b19c856 to origin/feature_branch_for_foo

$$> git log --oneline
a19524c Bar # master
5c928ea Initial import # origin/master

$$> git log --oneline feature_branch_for_foo
b19c856 Baz
41ea3b9 Foo
5c928ea Initial import # origin/master

USAGE

exit(1)
