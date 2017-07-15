docker run \
  --publish 34197:34197/udp \
  --cpuset-cpus 2 \
  --volume `pwd`:/save/ \
  brianberzins/factorio \
  --server-settings /save/server-settings.json \
  --start-server /save/megabase.zip
