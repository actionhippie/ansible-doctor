# ansible-doctor

[![Current Tag](https://img.shields.io/github/v/tag/actionhippie/ansible-doctor?sort=semver)](https://github.com/actionhippie/ansible-doctor) [![Docker Build](https://github.com/actionhippie/ansible-doctor/workflows/docker/badge.svg)](https://github.com/actionhippie/ansible-doctor/actions/workflows/docker.yml)

[GitHub Action](https://github.com/features/actions) to generate docs for Ansible roles.

## Usage

```yml
name: Example

on:
  - push
  - pull_request

jobs:
  test:
    runs-on: ubuntu-latest

    steps:
      - uses: actions/checkout@v2

      - uses: actionhippie/ansible-doctor@v1
        with:
          config: optional/path/to/.doctor.yml

```

## Inputs

### `config`

Path to configuration file

### `output`

Base directory to output result

### `force`

Force overwrite the output file, defaults to `false`

### `dry_run`

Dry run without writing output, defaults to `false`

### `role_detection`

Automatic role detection, defaults to `true`

### `verbose`

Increase logging level, defaults to `false`

### `quiet`

Decrease logging level, defaults to `false`

### `path`

Path of role directory, defaults to working dir

## Outputs

None

## Security

If you find a security issue please contact thomas@webhippie.de first.

## Contributing

Fork -> Patch -> Push -> Pull Request

## Authors

* [Thomas Boerger](https://github.com/tboerger)

## License

Apache-2.0

## Copyright

```console
Copyright (c) 2021 Thomas Boerger <thomas@webhippie.de>
```
