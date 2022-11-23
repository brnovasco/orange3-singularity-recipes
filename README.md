# ubatuba-container-singularity
Simple container with miniconda and some necessary libs to run the the [orange-spectroscopy](https://github.com/Quasars/orange-spectroscopy) package from [orange3](https://orangedatamining.com/) sharing the local machine display and meant to be used as sandbox.

This container is meant to be used as a sandbox and ```ubt``` refers to Ubatuba, which is a city with beautiful beaches with beautiful sand. Hence the name. 

This container is built based on the [continuum.io/miniconda3](https://hub.docker.com/r/continuumio/miniconda3) docker image.

## build container:

```
   ./build.sh sandbox-path sandbox-name
```   

## installing the local package with pip in the container
### run the writable shell in the container mapping the local directory

```
   singularity shell --writable miniconda-sandbox
```      

### install via shell the local package in the container package manager (pip in a conda env):

```
   pip install -e orange-spectroscopy
```

## run orange in the container using the local display (from inside the container):

```
   python -m Orange.canvas
```

## run orange in the container from ouside the container using the local display:

```
   singularity run miniconda-sandbox python -m Orange.canvas
```

## known error messages after singularity run:

```
   QStandardPaths: error creating runtime directory '/run/user/1000' (No such file or directory)
   QStandardPaths: error creating runtime directory '/run/user/1000' (No such file or directory)
   libGL error: No matching fbConfigs or visuals found
   libGL error: failed to load driver: swrast
   Qt: Session management error: None of the authentication protocols specified are supported
```
