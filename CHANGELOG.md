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

# 3.1.0

- [CHANGE] Default topology changed to etcd
- [FEATURE] Added etcd tests
