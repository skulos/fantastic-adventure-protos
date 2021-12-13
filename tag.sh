#/bin/bash

TAG=v0.0.3

git add .

git commit -m "initial commit"

git push

git tag $TAG
git push origin $TAG

GOPROXY=proxy.golang.org go list -m github.com/skulos/fantastic-adventure-protos@$TAG