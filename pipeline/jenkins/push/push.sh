#!/bin/bash

echo "************************************"
echo "***** Pushing Image ****************"
echo "************************************"

IMAGE="maven-project"

echo "***********Login in*****************"
docker login -u learndevops1980 -p $PASS

echo "************** Tagginh image************"

docker tag $IMAGE:$BUILD_TAG learndevops1980/$IMAGE:$BUILD_TAG

echo "************* Pushing Image **************"
docker push learndevops1980/$IMAGE:$BUILD_TAG
