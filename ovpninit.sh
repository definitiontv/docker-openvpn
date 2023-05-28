docker compose run --rm openvpn ovpn_genconfig -u udp://$(export myhost=$(hostname) && echo "${myhost^^}").HUBGOO.COM
docker compose run --rm openvpn ovpn_initpki
docker compose up -d openvpn
