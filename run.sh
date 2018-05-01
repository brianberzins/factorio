docker build -t factorio:latest .
docker run \
  --publish 34197:34197/udp \
  --cpuset-cpus 2 \
  --volume /home/murasaki/.factorio/saves:/factorio/saves/ \
  --volume /home/murasaki/.factorio/mods:/factorio/mods \
  --volume /home/murasaki/.factorio/server-settings:/factorio/server-settings \
  factorio:latest \
  --server-settings /factorio/server-settings/server-settings.json \
  --start-server /factorio/saves/bobs-mods.zip \
  --mod-directory /factorio/mods
