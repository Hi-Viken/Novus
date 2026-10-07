#! /bin/bash

cd ~/Novus
git pull
dotnet publish src/admin/Bootstrap.Admin -c Release

rm -f ~/Novus/src/admin/Bootstrap.Admin/bin/Release/net5.0/publish/appsettings*.json
rm -f ~/Novus/src/admin/Bootstrap.Admin/bin/Release/net5.0/publish/Novus.db

systemctl stop ba.admin
\cp -fr ~/Novus/src/admin/Bootstrap.Admin/bin/Release/net5.0/publish/* /usr/local/ba/admin/
systemctl start ba.admin
systemctl status ba.admin -l
