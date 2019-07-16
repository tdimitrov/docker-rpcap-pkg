# docker-rpcap-pkg
Docker image used to build rpm and deb packages for tranqap. Based on [fpm](https://github.com/jordansissel/fpm).

The Dockerfile expects a build argument name **FPM_VERSION**. It is the version of fpm binary, which should be installed in the image.

Sample usage:
```bash
docker build --build-arg FPM_VERSION=1.10.0 -t tdimitrov/fpm:1.10.0 .
```
