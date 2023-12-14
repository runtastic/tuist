# RT Changelog

### Added

- Add support for new `--url` git template url parameter to `tuist scaffold` command (similar to `tuist init -t <git url>` does) by [@Buju77](https://github.com/Buju77)

### Fixed

- Fixed a "Template.swift" file not found error when executing `tuist init -t <git url>` by [@Buju77](https://github.com/Buju77)
- Fixed wrong http regex for repo url used in `TemplateLocationParsing` (old regex wrongfully matched with ssh urls that included username) by [@MohgaNabil](https://github.com/MohgaNabil)
