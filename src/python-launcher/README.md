

# Python Launcher (python-launcher)

Python Launcher for Unix

## Example Usage

Running `python-launcher` inside the built container.

```jsonc
{
    "image": "mcr.microsoft.com/devcontainers/base:ubuntu",
    "features": {
        "ghcr.io/oleksis/python-launcher/python-launcher:1": {}
    }
}
```

```bash
$ py --help

Python Launcher for Unix 1.0.0
usage: py [launcher-args] [python-args]
...
```

## Options

| Options Id | Description | Type | Default Value |
|-----|-----|-----|-----|
| version | Select or enter a Python Launcher version | string | 1.0.0 |



---

_Note: This file was auto-generated from the [devcontainer-feature.json](https://github.com/oleksis/python-launcher/blob/main/src/python-launcher/devcontainer-feature.json).  Add additional notes to a `NOTES.md`._
