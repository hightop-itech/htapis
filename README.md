# Hightop-itech APIs

This repository contains the original interface definitions of public
Hightop APIs that support both REST and gRPC protocols. 


## Overview

Hightop APIs are typically deployed as API services that are hosted
under different DNS names. One API service may implement multiple APIs
and multiple versions of the same API.

Hightop APIs use [Protocol Buffers](https://github.com/google/protobuf)
version 3 (proto3) as their Interface Definition Language (IDL) to
define the API interface and the structure of the payload messages. The
same interface definition is used for both REST and RPC versions of the
API, which can be accessed over different wire protocols.

There are several ways of accessing Google APIs:

1.  JSON over HTTP: You can access all Google APIs directly using JSON
    over HTTP

2.  Protocol Buffers over gRPC: You can access Google APIs published
    in this repository through [GRPC](https://github.com/grpc), which is
    a high-performance binary RPC protocol over HTTP/2. It offers many
    useful features, including request/response multiplex and full-duplex
    streaming.

## Repository Structure

This repository uses a directory hierarchy that reflects the Hightop
API product structure. In general, every API has its own root
directory, and each major version of the API has its own subdirectory.
The proto package names exactly match the directory: this makes it
easy to locate the proto definitions and ensures that the generated
client libraries have idiomatic namespaces in most programming
languages.

**NOTE:** The major version of an API is used to indicate breaking
change to the API.

## Generate gRPC Source Code

### Go gRPC Source Code
It is difficult to generate Go gRPC source code from this repository,
since Go has different directory structure.
Please use [this repository](https://github.com/hightop-itech/go-geneproto) instead.
