sudo echo -e "superset_version: `docker exec -it superset-app /bin/bash -c 'cat /app/superset-frontend/package.json |grep version |sed -n 1p |cut -d: -f 2'`" |sudo tee -a /data/logs/install_version.txt
