# create needed directories
mkdir -p ./node1/nifi/state/zookeeper
mkdir -p ./node2/nifi/state/zookeeper
mkdir -p ./node3/nifi/state/zookeeper

mkdir -p ./node1/nifi/files
mkdir -p ./node2/nifi/files
mkdir -p ./node3/nifi/files

# Create the myid for zookeeper
echo 1 > ./node1/nifi/state/zookeeper/myid
echo 2 > ./node2/nifi/state/zookeeper/myid
echo 3 > ./node3/nifi/state/zookeeper/myid

docker-compose up -d