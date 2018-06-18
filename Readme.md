# C++ Insights - Docker 

## Contents

- [Installing](#installing)
- [Usage](#usage)


## Installing

Run [C++ Insights](https://cppinsights.io) in a docker container locally.


Build the docker container:

```
make
```

This will download the latest [C++ Insights](https://cppinsights.io) binary and create a docker container named `cppinsights-trusty`.


## Usage

```
cat <YOUR_CPP_FILE> | docker run -i cppinsights-trusty /usr/bin/insights -stdin x.cpp -- -std=c++17
```

or

```
./run.sh <ABSOLUTE_PATH_TO_YOUR_CPP_FILE>
```

