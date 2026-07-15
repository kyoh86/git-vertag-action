# Git Vertag Action

An GitHub action image to put local new git tag for next semantic version

## Usage

```yaml
    steps:
      - uses: actions/checkout@v3
      - uses: kyoh86/git-vertag-action@v1
        with:
          method: minor  # "major", "minor", "patch", "get" or "validate"
        id: vertag
      - run: echo ${{ steps.vertag.outputs.vertag }}
```

Validate an existing semantic version tag without creating or pushing a new tag:

```yaml
    steps:
      - uses: actions/checkout@v3
      - uses: kyoh86/git-vertag-action@v1
        with:
          method: validate
          tag: v1.2.3 # Optional. If omitted, validates tags pointing at HEAD.
        id: vertag
      - run: echo ${{ steps.vertag.outputs.vertag }}
```

## Input

### `method` (required)

Which number to increment in the semantic versioning.
You can set "major", "minor" or "patch" to increment one.
If you won't increment, use "get" to get one.
If you only want to validate a tag, use "validate".

### `tag` (optional)

Tag to validate when `method` is "validate".
If omitted, validates tags pointing at HEAD.

## Output

### `vertag`

A semantic version tag from the selected method.
You can use it with `steps` context with `id` in the step.

```yaml
        id: vertag
      - run: echo ${{ steps.vertag.outputs.vertag }}
```
