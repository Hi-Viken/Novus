#! /bin/bash

cd ~/Novus
git pull
dotnet publish src/client/Bootstrap.Client -c Release

rm -f ~/Novus/src/client/Bootstrap.Client/bin/Release/net5.0/publish/appsettings*.json
systemctl stop ba.client
\cp -fr ~/Novus/src/client/Bootstrap.Client/bin/Release/net5.0/publish/* /usr/local/ba/client/
systemctl start ba.client
systemctl status ba.client -l
