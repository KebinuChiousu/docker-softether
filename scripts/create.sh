CONTAINER_NAME=$1
sudo mkdir -p /opt/softether
sudo touch /opt/softether/vpn_server.config
sudo chown -R docker:docker /opt/softether
sudo chown 775 /opt/softether
docker volume create --name $(CONTAINER_NAME)-logs
docker run -d -v /opt/softether/vpn_server.config:/usr/local/vpnserver/vpn_server.config \
              -v $(CONTAINER_NAME)-logs:/var/log/vpnserver --net host --cap-add NET_ADMIN \
              --name $(CONTAINER_NAME) frosquin/softether

