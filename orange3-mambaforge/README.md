# orange3-mambaforge Singularity container

This is a Singularity container built with necessary graphic libs (installed with the dependencies of libgl1) to work with pyqt from singularity shell or singularity run commands.

## Build

```bash
    sudo singularity build --sandbox <sandbox-build-path> orange3-mambaforge.def
```

## Run

```bash
    singularity run <sandbox-build-path> orange-canvas
```

or 

```bash
    singularity run <sandbox-build-path> python -m Orange.canvas
```