#!/bin/bash

echo test
docker pull thekrushka/dockerizing-django
docker stop uks-tim2
docker rm uks-tim2
docker run --name uks-tim2 -d -p 8002:8002 thekrushka/dockerizing-django