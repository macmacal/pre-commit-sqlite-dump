# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Added
### Changed
### Deprecated
### Removed
### Fixed
### Security

## 2.0.0

### Added

- Support for multiple database files in the project directory.

### Changed

- Changed `args` type from explicit paths for database & dump to a list of database extensions.

## 1.0.0

### Added

- Pre-commit hook for calling `sqlite3 .dump` command.
