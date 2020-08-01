#!/bin/bash
docker run -v "${PWD}/:/code/" --rm -it unfor19/bash-cli:dev bash "$@"
