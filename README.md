# action-plantuml

Github Action for using `plantuml`.

## Inputs

- cmd - required. Command to run `plantuml`.

## Example usage

```yaml
- uses: ngupuk/action-plantuml@main
  with:
    cmd: plantuml src/*.pu -o /github/workspace/out
```

More CLI: [https://plantuml.com/command-line](https://plantuml.com/command-line)

---

## Save result to artifact

```yaml
name: Test
on:
  push:
    branches: [main]


jobs:
  test:
    runs-on: ubuntu-18.04
    steps:
      - uses: actions/checkout@v2
      - uses: ngupuk/action-plantuml@main
        with:
          cmd: plantuml src/*.pu -o /github/workspace/out

      - uses: actions/upload-artifact@v2
        name: Upload Artifact
        with:
          name: diagrams
          path: out
```

Demo: [here](https://github.com/ngupuk/action-plantuml/actions/runs/410040629)