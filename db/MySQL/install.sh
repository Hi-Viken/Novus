#! /bin/bash

mysql  -e "drop database if exists Novus; create database Novus;" -uroot
mysql -hlocalhost -uroot -DNovus < ~/src/Longbow/Novus/DatabaseScripts/MySQL/install.sql
mysql -hlocalhost -uroot -DNovus < ~/src/Longbow/Novus/DatabaseScripts/MySQL/initData.sql
