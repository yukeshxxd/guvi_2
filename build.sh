#!/bin/bash
docker build -t test .
docker run -itd -p 60:80 test
