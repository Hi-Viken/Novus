# init mongodb data
@echo off

mongo ./init.js
mongo Novus --eval "printjson(db.getCollectionNames())"
