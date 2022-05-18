# Git Vertag Action

An GitHub action image to put local new git tag for next semantic version

## Usage

```yaml
    steps:
      - uses: actions/checkout@v3
      - uses: kyoh86/git-vertag-action@v1
        with:
          method: minor  # "major", "minor", "patch" or "get"
        id: vertag
      - run: echo ${{ steps.vertag.outputs.vertag }}
```

## Input

### `method` (required)

Which number to increment in the semantic versioning.
You can set "major", "minor" or "patch" to increment one.
If you won't increment, use "get" to get one.

## Output

### `vertag`

A newest tag with semantic versioning.
You can use it with `steps` context with `id` in the step.

```yaml
        id: vertag
      - run: echo ${{ steps.vertag.outputs.vertag }}
```
