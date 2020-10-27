# Dockercoin & consul mash

This workshop is for:
* Working with several coding languages to create working containers.
* Learning to publish containers together in one compose file.
* Working with Consul by Hashicorp.

This repo is meant for the completion of the dockercoin project taken from the following git and instructions:
1. https://github.com/yanivomc/devopshift-seminars/tree/master/docker/workshop/01/dockercoins
2. https://docs.google.com/document/d/1lrLn4k16wd9-VFmNTOPTMWiLFsTaeYbis1Mi3X5hqFg


# Usage & Limitations

* Enter web UI of the DockerCoin via port 8000.

* Enter the Consul via port 8500.

To change the default ports of the hasher/rng/worker containers, you can change it after you ```docker-compose up``` and enter to the Key/Value tab in the Consul.

You can look at the changes happening from the logs of the docker-compose (you will get some errors until all of the containers are updated).
