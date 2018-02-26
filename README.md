# Docker Registry for ARM

[![pipeline status](https://gitlab.com/ulm0/registry/badges/master/pipeline.svg)](https://gitlab.com/ulm0/registry/commits/master) [![Version](https://images.microbadger.com/badges/version/ulm0/registry.svg)](https://microbadger.com/images/ulm0/registry "Get your own version badge on microbadger.com") [![Layers](https://images.microbadger.com/badges/image/ulm0/registry.svg)](https://microbadger.com/images/ulm0/registry "Get your own image badge on microbadger.com") [![License](https://img.shields.io/badge/license-MIT-orange.svg)](LICENSE)


Docker Registry v2 image for ARMv6, based on the scratch image. The rest is taken from the official registry image.

## Compose

Simply use `make`

> `make`

Test the image

> `make test`

And push it to the docker hub

> `make push`

The erase the generated binaries.

> `make clean`

## Usage

See: https://docs.docker.com/registry/deploying/
