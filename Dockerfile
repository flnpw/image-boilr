FROM busybox

ARG VERSION_TAG=0.3.0
ARG ARTIFACT=boilr-$VERSION_TAG-linux_amd64.tgz
ENV URL=https://github.com/tmrts/boilr/releases/download/$VERSION_TAG/$ARTIFACT
ENV BINARY=boilr

ADD $URL /tmp/$ARTIFACT
RUN set -exuo pipefail; \
  mkdir -p /usr/local/bin \
  && tar -xzf /tmp/$ARTIFACT -C /usr/local/bin/ \
  && rm -rf /tmp/$ARTIFACT \
  && chmod 755 /usr/local/bin/$BINARY

ENTRYPOINT ["boilr"]
CMD ["--help"]
