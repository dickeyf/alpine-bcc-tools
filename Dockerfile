FROM alpine:3.20.3

LABEL maintainer=francois@dickey.io

RUN apk update && apk add --no-cache bash bcc-doc bcc-tools iproute2 python3 tcpdump

ENV PATH=/usr/share/bcc/tools:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

ENTRYPOINT ["/bin/sh", "-c", "/bin/bash"]
