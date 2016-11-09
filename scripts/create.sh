mkdir -p /opt/softether
touch /opt/softether/vpn_server.config
docker volume create --name softether-logs
docker run -d -v /opt/softether/vpn_server.config:/usr/local/vpnserver/vpn_server.config \
              -v softether-logs:/var/log/vpnserver --net host --cap-add NET_ADMIN \
              --name softether frosquin/softether
