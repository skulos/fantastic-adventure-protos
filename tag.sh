#/bin/bash

TAG=v0.0.2

git tag $TAG
git push origin $TAG

GOPROXY=proxy.golang.org go list -m github.com/skulos/fantastic-adventure-protos@$TAG