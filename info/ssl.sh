#!/bin/bash

service nginx stop
service apache2 stop


echo detendo apache y nginx
sudo certbot renew --dry-run
echo termina la renov de ssl
service nginx start
service apache2 start
echo servicios ejecutados .....  verificar