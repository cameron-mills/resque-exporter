# Changelog

## [1.1.0](https://github.com/cameron-mills/resque-exporter/compare/v1.0.1...v1.1.0) (2024-09-06)


### Features

* automatically build and push new docker images on release ([e6150df](https://github.com/cameron-mills/resque-exporter/commit/e6150dfba21d33fd0dac816c377130b916ece6a0))
* configure dependabot ([0c00c7d](https://github.com/cameron-mills/resque-exporter/commit/0c00c7d52951a50b91789fde033e42c5f6f483bd))

## [1.0.1](https://github.com/cameron-mills/resque-exporter/compare/v1.0.0...v1.0.1) (2024-09-06)


### Bug Fixes

* Introduce Redis ACL support, remove dep, upgrade dependancies ([c27fadc](https://github.com/cameron-mills/resque-exporter/commit/c27fadc125a9fe2b37f7abc618dfffd10cf467d5))

## 0.3.0

#### Changed

* Run as user `nobody` and group `nogroup` instead of `root`.

## 0.2.2

#### Fixed

* Stop missing `stat` keys from preventing other metrics from being scraped.

## 0.2.1

#### Changed

* Support scaling to zero workers when using `resque_processing_ratio`.

## 0.2.0

#### Added

* Add `resque_processing_ratio` metric.
* Add `resque_workers_per_queue` metric.

#### Changed

* Rename the repository to `resque-exporter`.

## 0.1.0

* Initial release.
