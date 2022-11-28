# orange3-micromamba container build in two steps: Docker + Singularity

This is a Singularity container built from a Docker container with necessary graphic libs (and maybe also some that are not necessary) to work with pyqt from shell or run (singularity) commands

- Builds a docker based on ubuntu and then build the singularity with the micromamba env

> ! TODO: Separate requirements for the apt-get installed libs

## building a docker with libs to work with pyqt

- this is where the libs are installed from apt-get

```bash
    sudo docker build --tag brno-mambaforge:latest . < Dockerfile
```

## building singularity sandbox from docker and a corresponding yml file configuring the mamba environment (def)

- this is where the mamba environment is installed from the `.yml` file.

> 💡 singularity requires that the `.def` file to be in the same directory as the `.yml` file.

```bash
    sudo singularity build --sandbox <sandbox-build-path> orange3-mambaforge.def
```

