# Git Vertag Action

An GitHub action image to put local new git tag for next semantic version

## Usage

```yaml
    steps:
      - uses: actions/checkout@v2
      - uses: kyoh86/git-vertag-action@v1
        with:
          method: minor  # "major", "minor", "patch", "release" or "get"
        id: vertag
      - run: echo ${{ steps.vertag.outputs.vertag }}
```
