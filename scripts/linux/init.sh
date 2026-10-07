#! /bin/bash

mkdir /usr/local/ba
mkdir /usr/local/ba/admin
mkdir /usr/local/ba/client

cp ~/Novus/src/admin/Bootstrap.Admin/appsettings.json /usr/local/ba/admin
cp ~/Novus/src/admin/Bootstrap.Admin/Novus.db /usr/local/ba/admin
cp ~/Novus/src/client/Bootstrap.Client/appsettings.json /usr/local/ba/client

cp ~/Novus/scripts/linux/services/* /usr/lib/systemd/system
systemctl enable ba.admin
systemctl enable ba.client
systemctl enable nginx
