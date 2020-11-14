# Git Vertag Action

An GitHub action image to put new git tag local for next semantic version

## Usage

```yaml
    steps:
      - uses: actions/checkout@v2
      - uses: kyoh86/git-vertag-action@v1
        with:
          method: minor  # "major", "minor", "patch" or "get"
        id: vertag
      - run: echo ${{ steps.vertag.outputs.vertag }}
```
