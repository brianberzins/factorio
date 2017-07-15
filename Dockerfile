FROM centos

ENV TMPFILE /tmp/factorio.tar.gz

RUN curl -s -L -o $TMPFILE https://www.factorio.com/get-download/0.15.30/headless/linux64 \
  && tar -xf $TMPFILE --directory /opt \
  && rm -rf $TMPFILE

EXPOSE 34197/udp
ENTRYPOINT ["/opt/factorio/bin/x64/factorio"]
