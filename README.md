# semantic-release-docker

This is a dockerized version of [semantic-release](https://github.com/semantic-release/semantic-release)

## How to use?

Simply run it with all needed parameter:

```console
$ docker run --rm flowboxab/semantic-release:<tag>
Run automated package publishing

Usage:
  semantic-release [options] [plugins]

Options
  -b, --branches        Git branches to release from                     [array]
  -r, --repository-url  Git repository URL                              [string]
  -t, --tag-format      Git tag format                                  [string]
  -p, --plugins         Plugins                                          [array]
  -e, --extends         Shareable configurations                         [array]
      --ci              Toggle CI verifications                        [boolean]
      --debug           Output debugging information                   [boolean]
  -d, --dry-run         Skip publishing                                [boolean]
  -h, --help            Show help                                      [boolean]
  -v, --version         Show version number                            [boolean]

Plugins
      --verify-conditions                                                [array]
      --analyze-commits                                                 [string]
      --verify-release                                                   [array]
      --generate-notes                                                   [array]
      --prepare                                                          [array]
      --publish                                                          [array]
      --success                                                          [array]
      --fail                                                             [array]
```

When analyzing a git-repo you have to use the `-w` and mount volumes accordingly, i.e.
```console
$ docker run --rm -w /rel -v $(pwd):/rel \
         flowboxab/semantic-release:18.0.0 -d --generate-notes
```

## Installed plugins

These plugins are installed:

- [@semantic-release/commit-analyzer](https://github.com/semantic-release/commit-analyzer)
  - **Note**: this is already part of semantic-release and does not have to be installed separately
- [@semantic-release/release-notes-generator](https://github.com/semantic-release/release-notes-generator)
  - **Note**: this is already part of semantic-release and does not have to be installed separately
- [@semantic-release/github](https://github.com/semantic-release/github)
  - **Note**: this is already part of semantic-release and does not have to be installed separately
- [@semantic-release/npm](https://github.com/semantic-release/npm)
  - **Note**: this is already part of semantic-release and does not have to be installed separately
- [@semantic-release/gitlab](https://github.com/semantic-release/gitlab)
- [@semantic-release/git](https://github.com/semantic-release/git)
- [@semantic-release/changelog](https://github.com/semantic-release/changelog)

That's it.

# User Feedback

## Issues

If you have any problems with or questions about this image, please contact us through a [GitHub issue](https://github.com/getflowbox/semantic-release-docker/issues).

## Versioning

We use re-use the versions that the original [semantic-release](https://github.com/semantic-release/semantic-release) package is using
