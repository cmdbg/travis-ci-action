# GitHub Action for Travis CI

The [Travis CI](https://travis-ci.com/) action wraps the [Travis CI API](https://developer.travis-ci.com/).

## Usage

```
name: Test Workflow

on:
  release:
    types: [published]
jobs:
  trigger-travis-ci:
    runs-on: ubuntu-latest
    steps:
      - name: Run e2e Tests
        uses: cmdbg/travis-ci-action@main
        env:
          TRAVIS_TOKEN: ${{ secrets.TRAVIS_TOKEN }}
          TARGET_REPOSITORY: [GITHUB_SERVER_URL]/[REPO_NAME]
```

### Secrets

* `TRAVIS_TOKEN` - **Required**. The token to use for authentication with the Travis CI API

## License

The Dockerfile and associated scripts and documentation in this project are released under the [MIT License](LICENSE).
