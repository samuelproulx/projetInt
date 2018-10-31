# integration

integration package **integration** is a package developped by a newcommer in LOG

## Dependencies

- geometry_msgs
- roscpp
- std_msgs
- message_runtime

## Overview

This integration package consists of two nodes : a client and a server
The client requests a calculation of a triangle's surface area by sending three
points in space to the server. The client then publishes the response  on the triangle_pub
topic

### Usage

```sh
$ roslaunch integration airetriangle.launch
```

### Published Topics

triangle_pub

### Configuration

