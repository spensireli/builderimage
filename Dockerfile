FROM alpine:3.9
COPY buildit.sh /tmp/buildit.sh
RUN apk add bash
RUN bash /tmp/buildit.sh
