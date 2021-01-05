## run ubuntu docker image
## remove if it already exists
## run a container both in detached mode and in foreground mode or it will automatically stop when bash exits
aws-client-utility/docker/aws-client-utility-run:
	docker run --privileged -t -d -v /bootstrap --name aws-client-utility ubuntu
	docker cp ./modules/aws-client-utility/resources/bootstrap.sh  aws-client-utility:/bootstrap/bootstrap.sh

## destroy ubuntu docker image
## stop and remove the docker image
aws-client-utility/docker/aws-client-utility-destroy:
	docker stop aws-client-utility
	docker rm aws-client-utility

## execute bash on the aws-client-utility and attach to the process
aws-client-utility/docker/aws-client-utility-execute:
	docker exec -w /home/engineer -i -t --user engineer aws-client-utility /bin/bash

## bootstrap aws-client-utility container from the ground up
aws-client-utility/docker/aws-client-utility-bootstrap:
	docker exec -i -t aws-client-utility bash /bootstrap/bootstrap.sh
	docker cp ./modules/aws-client-utility/resources/bashrc  aws-client-utility:/root/.bashrc
	docker cp ./modules/aws-client-utility/resources/bashrc  aws-client-utility:/home/engineer/.bashrc

## start aws-client-utility container
aws-client-utility/docker/aws-client-utility-start:
	docker start aws-client-utility

## stop aws-client-utility container
aws-client-utility/docker/ubuntu-toolbox-stop:
	docker stop aws-client-utility