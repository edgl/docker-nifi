# Docker Nifi With Registry

Bring up a fully functioning nifi cluster with a single command.

First, create a custom docker network

```bash
#> docker network create --subnet 172.21.0.0/16 --gateway --172.21.0.1 nifi
```

``` bash
# ./start-nifi-cluster.sh
```

This creates 3 subdirectories in the current directory
 * node1
 * node2
 * node3

It launches 3 nifi nodes and a single zookeeper instance

## For MAC users

For mac, you won't be able to connect using an IP:PORT combination due to bridge0 not being availabe. So you'll have to do port forwarding by using:

``` yaml
 nifi1:
 ...
 ports:
   - "8081:8080"
...
 nifi2:
 ...
 ports:
   - "8082:8080"

