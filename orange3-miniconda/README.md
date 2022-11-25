# ubatuba-container-singularity
Simple container with miniconda and some necessary libs to run the the [orange-spectroscopy](https://github.com/Quasars/orange-spectroscopy) package from [orange3](https://orangedatamining.com/) sharing the local machine display and meant to be used as sandbox. 

This container is built based on the [continuum.io/miniconda3](https://hub.docker.com/r/continuumio/miniconda3) docker image.

## build container as a sandbox:

- (Took 4m54s on a 16GiB RAM Lenovo ThinkPad E14 Gen 2 with 11th Gen Intel® Core™ i7-1165G7 @ 2.80GHz × 8 processor and SAMSUNG SSD drive with 64-bit Ubuntu 22.04.1 LTS)
```
   sudo singularity build --sandbox <sandbox-path> orange3-miniconda.def   
```   

## installing the local package with pip in the container
### run the writable shell in the container mapping the local directory

```
   singularity shell --writable <sandbox-path>
```      

### install via shell the local package in the container package manager (pip in a conda env):

```
   pip install -e orange-spectroscopy
```

## run orange inside the container using the local display (from inside the container):

```
   python -m Orange.canvas
```

## run orange from ouside the container using the local display:

```
   singularity run <sandbox-path> python -m Orange.canvas
```

## known error messages after singularity run:

```
   QStandardPaths: error creating runtime directory '/run/user/1000' (No such file or directory)
   QStandardPaths: error creating runtime directory '/run/user/1000' (No such file or directory)
   libGL error: No matching fbConfigs or visuals found
   libGL error: failed to load driver: swrast
   Qt: Session management error: None of the authentication protocols specified are supported
```
