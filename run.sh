#! /bin/sh

docker run --net=none -v $1:/home/insights/insights.cpp --rm -it cppinsights-trusty
