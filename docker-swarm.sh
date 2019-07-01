docker-compose up -d
docker exec swarm-manager docker swarm init
docker exec swarm-manager docker swarm join-token worker >./data/join.sh
sed -i '1d' data/join.sh
docker exec swarm-node1 sh /home/data/join.sh
docker exec swarm-node2 sh /home/data/join.sh
docker exec swarm-manager docker node ls
