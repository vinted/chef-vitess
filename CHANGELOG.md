# vitess CHANGELOG

This file is used to list changes made in each version of the vitess cookbook.

# 0.1.0

Initial release.

# 2.0.0

- [CHANGE] Added support for ec34ce1 (2019-10-24) release
- [CHANGE] Replaced mysql flavour to percona57. this version was used in test env.
- [CHANGE] Removed .generate - vitess uses hash releases instead of version based, so there is no point to keep version based .generate scripts

# 3.0.0

- [CHANGE] Added support for df54e56 (2020-01-23) release
- [CHANGE] `web_dir` for vtctld deprecated

# 4.0.0

- [CHANGE] Default topology changed to etcd
- [CHANGE] Topology configuration moved to global attributes
- [FEATURE] Added etcd tests

# 4.1.0

- [CHANGE] Added support for 041757f (2020-01-30) release

# 4.2.0

- [CHANGE] Fix incompatible command arguments for artifacts  (2020-02-19) release
