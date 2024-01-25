#!/bin/bash

export PATH="$PATH:$HOME/.pub-cache/bin"
protoc -I protos/ protos/user.proto --dart_out=grpc:generated

echo "Successfully generated"
