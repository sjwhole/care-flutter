#!/bin/bash

export PATH="$PATH:$HOME/.pub-cache/bin"
protoc -I protos/ protos/*.proto google/protobuf/empty.proto google/protobuf/timestamp.proto --dart_out=grpc:generated

echo "Successfully generated"
