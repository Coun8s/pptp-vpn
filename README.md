# pptp-vpn
VPN PPTP in Docker
## Quick Start

Create volumes:
```bash
  $ sudo docker volume create pptp-conf
```
Start container:
```bash
$ sudo docker run -d --name pptp-vpn \
--restart always \
--privileged \
--net=host \
--volume pptp-conf:/etc/ppp coun/pptp-vpn:latest
```
or
```bash
sudo docker run -d --name pptp-guest \
--restart always \
--cap-add=NET_ADMIN \
--cap-add=SYS_MODULE \
--cap-add MKNOD --device=/dev/ppp \
--net=host \
--volume pptp-conf:/etc/ppp coun/pptp-vpn:latest
 ```
 
 directory structure /etc/ppp:
 ```bash
 /etc/ppp/
  ├── chap-secrets
  ├── eaptls-client
  ├── eaptls-server
  ├── options
  ├── options.pptp
  ├── options.pptpd
  ├── pap-secrets
  └── pptpd.conf (symlink on /etc/pptpd.conf)
  ```
