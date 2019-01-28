# create needed directories
mkdir -p ./node1/nifi/state/zookeeper
mkdir -p ./node2/nifi/state/zookeeper
mkdir -p ./node3/nifi/state/zookeeper

mkdir -p ./node1/nifi/files
mkdir -p ./node2/nifi/files
mkdir -p ./node3/nifi/files

docker-compose up -d