#! /bin/bash
# init mongodb data
mongo ./init.js
mongo Novus --eval "printjson(db.getCollectionNames())"
