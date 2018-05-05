FROM frolvlad/alpine-glibc

ENV TMPFILE /tmp/factorio.tar.gz

RUN apk add --no-cache curl
RUN curl -s -L -o $TMPFILE https://www.factorio.com/get-download/0.16.39/headless/linux64 \
  && tar -xf $TMPFILE --directory / \
  && rm -rf $TMPFILE

EXPOSE 34197/udp
ENTRYPOINT ["/factorio/bin/x64/factorio"]
